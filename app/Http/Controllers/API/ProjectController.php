<?php

namespace App\Http\Controllers\API;
use App\Http\Controllers\API\BaseController as BaseController;

use App\Http\Controllers\Controller;
use App\Models\Project;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ProjectController extends BaseController
{

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
    $project= Project::all();
    return $this->sendResponse($project,"All the projects");
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



$project=Project::create([
    'name'=>$request->name,
    'description'=>$request->description,
    'location'=>$request->location,
    'district'=>$request->district,
    'email'=>$request->email,
    'phone'=>$request->phone,
    'website'=>$request->website   
]);
return $this->sendResponse($project,"Data inserted Successfully");

    }

    /**
     * Display the specified resource.
     */
    public function show(Request $request)
    {
        $query=Project::query();
       $cafename=$request->query("name");
       $district=$request->query("district");
       $location=$request->query("location");
       $rating=$request->query("rating");
       $id=$request->query("id");
       if($cafename)
       {
$query->where('name','LIKE',"%{$cafename}%");
       }
       if($district)
       {
$query->where('district','LIKE',"%{$district}%");
       }
       if($location)
       {
$query->where('location','LIKE',"%{$location}%");
       }
       if($rating)
       {
$query->where('rating','LIKE',"%{$rating}%");
       }
       if($id)
{
    $query->where('id','LIKE',"%{$id}%");

}


$project=$query->get();
if($project->isEmpty())
{
    return $this->sendResponse([],"No data found");

}
      return $this->sendResponse($project,"Your result");

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
      

$projectUpdate= Project::where("id",$id)->update([
    'name'=>$request->name,
    'description'=>$request->description,
    'location'=>$request->location,
    'district'=>$request->district,
    'email'=>$request->email,
    'phone'=>$request->phone,
    'website'=>$request->website,  
]);
$project=User::where('id',$id)->first();
if($projectUpdate>0)
{
return $this->sendResponse($project,"Data is updated");
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
        $project=Project::where('id',$id)->first();
        if(!$project)
        {
            return $this->sendError("cafe not found", [], 404);
        }
     $query=  $project->delete();
     if($query)
     {
               return $this->sendResponse([],"successfully deleted");

     }
    }
}
