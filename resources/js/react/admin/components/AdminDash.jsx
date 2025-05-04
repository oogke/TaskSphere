import React from "react";
import { useNavigate } from "react-router-dom";
import { useState,useEffect } from "react";
import usePost from "../../hooks/usePost";
import '../assets/css/adminDash.css';
export default function AdminDash()
{
// const employeeId=localStorage.getItem("userId");
  const { postData } = usePost();
    const [data, setData] = useState(null); 
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null); 
    const [showDash, setShowDash] = useState(true);
    const [selectedWorkspace,setselectedWorkspace] =useState(null);
    const [selectedTodo,setselectedTodo]=useState(null);
    const [selectedProject,setselectedProject]=useState(null);
  const employeeId=96;
  const navigate=useNavigate();
  
    useEffect(() => {
      const fetchData = async () => {
        try {
          const response = await fetch(`/api/projectManagerDashView/${employeeId}`);
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
  

  const openEmail=()=>
  {
    navigate("/react/admin/sendEmail");
  }
  const goToCreateNotice=()=>
    {
      navigate("/react/admin/createNotice");
    }
    const CheckEmployeeData=()=>
      {
        navigate("/react/admin/employees");
      }
      const goToRegisterApplication=()=>
        {
          navigate("/react/admin/registerApplication");
        }
        const CheckNotices=()=>
          {
            navigate("/react/admin/notices");
          }

return(
   <>
       <h3 class="serviceHead">Services</h3>
    <div class="serviceIndex">
      <div class="AdminEmail projectRow"><ul><li><strong>Send Email</strong></li><li><button class="statusBtn" onClick={openEmail}>Open</button></li></ul></div>
      <div class="AdminCreateNotice projectRow"><ul><li><strong>Create Notice</strong></li><li><button class="statusBtn" onClick={goToCreateNotice}>Open</button></li></ul></div>
      <div class="AdminEmployeeData projectRow"><ul><li><strong>Check Employee Data</strong></li><li><button class="statusBtn" onClick={CheckEmployeeData}>Open</button></li></ul></div>
      <div class="RegisterApplication projectRow"><ul><li><strong>Register Application</strong></li><li><button class="statusBtn" onClick={goToRegisterApplication}>Open</button></li></ul></div>
      <div class="notices projectRow"><ul><li><strong>Notices</strong></li><li><button class="statusBtn" onClick={CheckNotices}>Open</button></li></ul></div>      
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
      <div class="project">
      <div class="projectBar">
       <h1 class="projectHead">
  Projects
</h1>   
  
        </div>
        <div class="projectBody">
  <div class="projectlist">
  <div class="projectItem">
   <span class="projectSNO">1</span>
   <span class="projectTitle">Swiftstay</span>
   <span>
    <span class="ApplicationBtn ApplicationAcceptBtn"><button>Accept</button></span>
   <span class="ApplicationBtn ApplicationRejectBtn"><button>Reject</button></span>
   </span>
  </div>
</div>
<div class="projectlist">
  <div class="projectItem">
   <span class="projectSNO">2</span>
   <span class="projectTitle">Tasksphere</span>
   <span>
    <span class="ApplicationBtn ApplicationAcceptBtn"><button>Accept</button></span>
   <span class="ApplicationBtn ApplicationRejectBtn"><button>Reject</button></span>
   </span>
  </div>
</div>
<div class="projectlist">
  <div class="projectItem">
   <span class="projectSNO">3</span>
   <span class="projectTitle">Soul</span>
   <span>
    <span class="ApplicationBtn ApplicationAcceptBtn"><button>Accept</button></span>
   <span class="ApplicationBtn ApplicationRejectBtn"><button>Reject</button></span>
   </span>
  </div>
</div>
<div class="projectlist">
  <div class="projectItem">
   <span class="projectSNO">4</span>
   <span class="projectTitle">SoulApi</span>
   <span>
    <span class="ApplicationBtn ApplicationAcceptBtn"><button>Accept</button></span>
   <span class="ApplicationBtn ApplicationRejectBtn"><button>Reject</button></span>
   </span>
  </div>
</div>
<div class="projectlist">
  <div class="projectItem">
   <span class="projectSNO">5</span>
   <span class="projectTitle">Ownah</span>
   <span>
    <span class="ApplicationBtn ApplicationAcceptBtn"><button>Accept</button></span>
   <span class="ApplicationBtn ApplicationRejectBtn"><button>Reject</button></span>
   </span>
  </div>
</div>
<div class="projectlist">
  <div class="projectItem">
   <span class="projectSNO">6</span>
   <span class="projectTitle">Mental support system</span>
   <span>
    <span class="ApplicationBtn ApplicationAcceptBtn"><button>Accept</button></span>
   <span class="ApplicationBtn ApplicationRejectBtn"><button>Reject</button></span>
   </span>
  </div>
</div>
</div>
      </div>
  </div>
   
   
   </>

)
}