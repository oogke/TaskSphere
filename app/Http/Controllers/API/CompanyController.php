<?php

namespace App\Http\Controllers\API;
use App\Http\Controllers\API\BaseController as BaseController;

use App\Http\Controllers\Controller;
use App\Models\Company;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CompanyController extends BaseController
{

public function taskView(Request $request)
{

}
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
    $company= Company::all();
    return $this->sendResponse($company,"All the companies");
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'name' => 'required|string',
            'district' => 'required|string',
            'description' => 'required|string',
            'location' => 'required|string',
            'phone' => 'required|string', 
            'email' => 'required|email',
            'website' => 'required|url'
           
        ]);
        if($validate->fails())
        {
            return $this->sendError("Validation Error" ,$validate->errors()->all(),402);
        }



$company=Company::create([
    'name'=>$request->name,
    'description'=>$request->description,
    'location'=>$request->location,
    'district'=>$request->district,
    'email'=>$request->email,
    'phone'=>$request->phone,
    'website'=>$request->website   
]);
return $this->sendResponse($company,"Data inserted Successfully");

    }

    /**
     * Display the specified resource.
     */
    public function show(Request $request)
    {
        $query=Company::query();
       $companyname=$request->query("name");
       $id=$request->query("id");
       if($companyname)
       {
$query->where('name','LIKE',"%{$companyname}%");
       }
       if($id)
{
    $query->where('id','LIKE',"%{$id}%");

}


$company=$query->get();
if($company->isEmpty())
{
    return $this->sendResponse([],"No data found");

}
      return $this->sendResponse($company,"Your result");

    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validate = Validator::make($request->all(), [
            'name' => 'required|string',
            'district' => 'required|string',
            'description' => 'required|string',
            'location' => 'required|string',
            'phone' => 'required|string', 
            'email' => 'required|email',
            'website' => 'required|url'    
        ]);
        if($validate->fails())
        {
            return $this->sendError("Validation Error" ,$validate->errors()->all(),402);
        }
      

$companyUpdate= Company::where("id",$id)->update([
    'name'=>$request->name,
    'description'=>$request->description,
    'location'=>$request->location,
    'district'=>$request->district,
    'email'=>$request->email,
    'phone'=>$request->phone,
    'website'=>$request->website,  
]);
$company=User::where('id',$id)->first();
if($companyUpdate>0)
{
return $this->sendResponse($company,"Data is updated");
}
else{
    return $this->sendError("Data is not updated try again",[],402);
}

    } 
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $company=User::where('id',$id)->first();
        if(!$company)
        {
            return $this->sendError("cafe not found", [], 404);
        }
     $query=  $company->delete();
     if($query)
     {
               return $this->sendResponse([],"successfully deleted");

     }
    }
}
