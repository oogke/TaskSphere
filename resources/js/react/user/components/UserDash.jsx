import React, { useState, useEffect } from "react";
import "../assets/css/userDash.css";

import { useNavigate } from "react-router-dom";
import usePost from "../../hooks/usePost";

export default function UserDash() {
  const employeeId= localStorage.getItem("userId");
 const { postData } = usePost();
  const [data, setData] = useState(null); 
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null); 
  const [showDash, setShowDash] = useState(true);
  const [selectedWorkspace,setselectedWorkspace] =useState(null);
  const [selectedTodo,setselectedTodo]=useState(null);
  const [selectedProject,setselectedProject]=useState(null);
  const navigate=useNavigate();

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch(`/api/userDashView/${employeeId}`);
        if (!response.ok) {
          throw new Error("Failed to fetch data");
        }
        const result = await response.json();
        setData(result);
        setLoading(false);
      } catch (err) {
        setError(err.message);
        setLoading(false);
      }
    };
    fetchData();
  }, [employeeId]); 

const OpenWorkspace=(id)=>
{
  setselectedWorkspace(id);
  navigate('/react/projectManager/workspaceDash',{state:{workspaceId :id}});
}
const OpenProject=(id)=>
{
  setselectedProject(id);
  navigate('/react/projectManager/projectDash',{ state: { selectedProjectId: id } });
}
const ChangeTodoStatus=async(id,status,employeeId)=>
{
  setselectedTodo(id);

  const updatedStatus = status === "pending" ? "completed" : "pending";

  const input = {
    id: id,
    status: updatedStatus,
    employeeId: employeeId,
  };

  const result = await postData("/api/changeTodoStatus", input);
}
  if (loading) {
    return <div>Loading...</div>;
  }

  if (error) {
    return <div>Error: {error}</div>;
  }

  return (
    <div>
      {showDash && (
        <>


<h3 className="ReportHead">Report</h3>
          <div className="ReportIndex">
              <div  className="reportRow">
                <ul>
                  <li><strong>Project Count:</strong></li>
                  <li>
                   {data.data.projectCount}
                  </li>
                </ul>
              </div>

              <div  className="reportRow">
                <ul>
                  <li><strong>Workspaces Count:</strong></li>
                  <li>
                {data.data.workspaceCount}
                  </li>
                </ul>
              </div>

              <div  className="reportRow">
                <ul>
                  <li><strong>Tasks Count:</strong></li>
                  <li>
               {data.data.taskCount}
                  </li>
                </ul>
              </div>

              <div  className="reportRow">
                <ul>
                  <li><strong>Employee Count:</strong></li>
                  <li>
                    {data.data.employeeCount}
                  </li>
                </ul>
              </div>

          </div>




          <h3 className="workspaceHead">Workspaces</h3>
          <div className="workspaceIndex">
            {data.data.workspaces.map((workspace, index) => (
              <div key={index} className="projectRow">
                <ul>
                  <li><strong>{workspace.name}</strong></li>
                  <li><button className="statusBtn" onClick={()=>OpenWorkspace(workspace.id)}>Open</button></li>
                </ul>
              </div>
            ))}
          </div>

          <div className="secondDiv">
            <div className="todo">
              <div className="todoBar">
                <h1 className="todoHead">Todo</h1>
                <i className="fa-solid fa-plus btn btn-link" id="filter"></i>
              </div>

              <div className="todoBody">
              
                {data.data.todo.map((todo, index) => (
                  <div key={index} className="todolist">
                    <div className="todoItem">
                      <span className="todoSerial">{index+1}</span>
                      <span className="todoName">{todo.todo}</span>
                      <span className={`todoStatus ${todo.status.toLowerCase()}`} onDoubleClick={()=>ChangeTodoStatus(todo.id,todo.status,todo.employeeId)}>
                        {todo.status}
                      </span>
                    </div>
                  </div>
                ))}
              </div>
            </div>

            <div className="project">
              <div className="projectBar">
                <h1 className="projectHead">Projects</h1>
              </div>
              <div className="projectBody">
                {data.data.projects.map((project, index) => (
                  <div key={index} className="projectlist">
                    <div className="projectItem">
                      <span className="projectSNO">{index + 1}</span>
                      <span className="projectTitle">{project.name}</span>
                      <span className="ProjectOpenBtn">
                        <button onClick={()=>OpenProject(project.id)}>Open</button>
                      </span>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          </div>

          <div className="pmthirdDiv">
            <h1 id="pmheading">Tasks</h1>
            <div className="pmtable-container">
              <table>
                <thead>
                  <tr>
                    <th>S.N</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Employee Username</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Status</th>
                    <th>Priority</th>
                  </tr>
                </thead>
                <tbody>
                  {data.data.tasks.map((task, index) => (
                    <tr key={index}>
                      <td>{index + 1}</td>
                      <td>{task.name}</td>
                      <td>{task.description}</td>
                      <td>
                        {task.employee}
                      </td>
                      <td>{task.sdate}</td>
                      <td>{task.edate}</td>
                      <td>{task.status}</td>
                      <td>{task.priority}</td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </div>
        </>
      )}
    </div>
  );
}
