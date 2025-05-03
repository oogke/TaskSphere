import { useNavigate } from "react-router-dom";
import useFetch from "../../hooks/UseFetch";
import '../assets/css/workspaces.css';
import { useState } from "react";


function Workspaces() {
    const {data, loading, error } = useFetch("/api/workspaceIndex");
   const [workspaceId,setWorkspaceId]=useState(null);
const navigate= useNavigate();
    const WorkspaceDash=(id)=>
    {
        setWorkspaceId(id);
        navigate('/react/projectManager/workspaceDash',{state:{workspaceId :id}});
    }
    return (
        <>
 <h1 id="workspaceHeading">Workspaces</h1> 
            <div className="workspaceIndex">
                {data?.data?.length > 0 && data?.data?.map((workspace, index) => {
                    return (  // Add return here
                        <div key={index} className="workspaceCard">
                            <ul>
                                <li>{workspace?.name}</li>
                                <li><button className="workspaceBtn" onClick={() => WorkspaceDash(workspace.id)}>Open</button></li>
                            </ul>
                        </div>
                    );
                })}
            </div>
        </>
    );
}

export default Workspaces;
