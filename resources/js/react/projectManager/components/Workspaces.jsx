import { useNavigate } from "react-router-dom";
import useFetch from "../../hooks/UseFetch";
import '../assets/css/workspaces.css';


function Workspaces() {
    const {data, loading, error } = useFetch("/api/workspaceIndex");
    console.log(data);
const navigate= useNavigate();
    const WorkspaceDash=()=>
    {
        navigate('/react/projectManager/workspaceDash');
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
                                <li><button className="workspaceBtn" onClick={WorkspaceDash}>Open</button></li>
                            </ul>
                        </div>
                    );
                })}
            </div>
        </>
    );
}

export default Workspaces;
