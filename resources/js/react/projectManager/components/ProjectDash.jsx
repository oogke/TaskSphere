import React from 'react';
import '../assets/css/projectDash.css';
import useFetch from "../../hooks/UseFetch";
import { useNavigate,useLocation } from 'react-router-dom';


function ProjectDash() {  
     const location= useLocation();
    const { selectedProjectId } = location.state; 
    const {data, loading, error } = useFetch(`/api/projectShow/${selectedProjectId}`);
    const {data: workspace, loading1 ,error2}= useFetch(`/api/workspaceExtract/${selectedProjectId}`);
 const navigate=useNavigate();
    // const projectId= selectedProjectId; 
   const CreateWorkspace=()=>
   {
    console.log("Create Workspace Button Clicked");
    navigate('/react/projectManager/workspaceCreateForm');
   }
    return (
    <>
      <div className="project-dash-wrapper">
            <h1>{data?.data?.name}</h1>
            <button id="createWorkspace" onClick={CreateWorkspace}>Create Workspace</button>

            <div className="projectIntro">
                <h2>Project Details</h2>
                <div className="details">
                    <div><span>Name:</span><p>{data?.data?.name}</p></div>
                    <div><span>Description:</span><p>{data?.data?.description}</p></div>
                    <div><span>Start Date:</span><p>{data?.data?.sdate}</p></div>
                    <div><span>End Date:</span><p>{data?.data?.edate}</p></div>
                    <div><span>Members:</span> 
                    <div>
    {data?.data?.members?.includes('[') && (JSON.parse(data?.data?.members)?.map((member, index) => (
      <p key={index}>{member}</p>
)))}
  </div>
  </div>
                    <div><span>Leader:</span><p>{data?.data?.leader}</p></div>
                    <div><span>Workspace Count:</span><p>{data?.data?.workspaceCount}</p></div>
                    <div><span>Status:</span><p>{data?.data?.status}</p></div>
                </div>
            </div>

     <h1>Workspaces</h1>  
<div className="projectDashWorkspaceIndex">
    {workspace?.length > 0 ? (
        workspace.map((workspace, index) => (
            <div key={index} className="ProjectWorkspaceData">
                <ul>
                    <li><strong>{workspace?.name}</strong></li>
                    <li><button className="statusBtn">Open</button></li>
                </ul>
            </div>
        ))
    ) : (
        <p>No workspaces available.</p>
    )}
</div>

     </div> 
    </>
  );
}

export default ProjectDash;
