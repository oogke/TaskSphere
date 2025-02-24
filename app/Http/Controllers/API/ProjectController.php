<?php

namespace App\Http\Controllers\API;
use App\Http\Controllers\API\BaseController as BaseController;

use App\Http\Controllers\Controller;
use App\Models\Project;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use View;

class ProjectController extends BaseController
{

    public function projectCreateView()
    {
$employees= User::all();
return View('projectManager.projects.createProject',compact('employees'));

    }
    public function projectUpdateView(Request $request)
    {
        $employees= User::all();
        $projectId= $request->query('projectId');
$project= Project::where('id',$projectId)->first();
return View('projectManager.projects.updateProject',compact('project','employees'));

    }
public function projectDash(Request $req , $id)
{
    $project= Project::where('id',$id)->first();

    // return view('/projectManager/projects/projectDash',compact('project'));

    return view('/projectManager/projects/projectDash', compact('project'));}

    public function projectView()
    {
        $projects= Project::all();
        return view('/projectManager/projects/manageProject',compact('projects'));
    }
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
            'description' => 'required|string',
            'sdate' => 'required|date',
            'edate' => 'required|date', 
            'leader' => 'required|array',
            'employee' => 'required|array'
           
        ]);
        if($validate->fails())
        {
            return $this->sendError("Validation Error" ,$validate->errors()->all(),402);
        }


        $employee=json_encode($request->employee);
        $leader=json_encode($request->leader);
$project=Project::create([
    'name'=>$request->name,
    'description'=>$request->description,
    'sdate'=>$request->sdate,
    'edate'=>$request->edate,
    'members'=>$employee,
   'leader'=> $leader
 
]);
return $this->sendResponse($project,"Project Created Successfully");

    }

    /**
     * Display the specified resource.
     */
    public function show(Request $request)
    {
        $query=Project::query();
       $projectname=$request->query("name");
       $id=$request->query("id");
       if($projectname)
       {
$query->where('name','LIKE',"%{$projectname}%");
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
            'description' => 'required|string',
            'sdate' => 'required|date',
            'edate' => 'required|date', 
            'leader' => 'required|string',
            'members' => 'required|array'  
        ]);
        if($validate->fails())
        {
            return $this->sendError("Validation Error" ,$validate->errors()->all(),402);
        }
      
        $employee=json_encode($request->employees);

$projectUpdate= Project::where("id",$id)->update([
    'name'=>$request->name,
    'description'=>$request->description,
    'sdate'=>$request->sdate,
    'edate'=>$request->edate,
    'members'=>$employee,
   'leader'=> $request->leader
]);
$project=Project::where('id',$id)->first();
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
    public function destroy(Request $request)
    {
        $id=$request->projectId;
        $project=Project::where('id',$id)->first();
        if(!$project)
        {
            return $this->sendError("project not found", [], 404);
        }
     $query=  $project->delete();
     if($query)
     {
               return $this->sendResponse([],"successfully deleted");

     }
    }
}
