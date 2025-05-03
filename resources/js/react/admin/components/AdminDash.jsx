import React from "react";
export default function AdminDash()
{
return(
    <>
     <h3 class="workspaceHead">Services</h3>
    <div class="workspaceIndex">
      <div class="AdminEmail projectRow"><ul><li><strong>Send Email</strong></li><li><button class="statusBtn">Open</button></li></ul></div>
      <div class="AdminAttendance projectRow"><ul><li><strong>Check Attendance</strong></li><li><button class="statusBtn">Open</button></li></ul></div>
      <div class="AdminNotice projectRow"><ul><li><strong>Create Notice</strong></li><li><button class="statusBtn">Open</button></li></ul></div>
      <div class="AdminEmployeeData projectRow"><ul><li><strong>Check Employee Data</strong></li><li><button class="statusBtn">Open</button></li></ul></div>
      <div class="RegisterApplication projectRow"><ul><li><strong>Register Application</strong></li><li><button class="statusBtn">Open</button></li></ul></div>
      <div class="Feedback projectRow"><ul><li><strong>Check Feedbacks</strong></li><li><button class="statusBtn">Open</button></li></ul></div>      
    </div>

    <div class="secondDiv">
      <div class="todo">
        <div class="todoBar">
       <h1 class="todoHead">
  Todo
</h1>   
  <i class="fa-solid fa-plus btn btn-link" id="filter"></i>
        </div>

<div class="todoBody">
  <div class="todolist">
  <div class="todoItem">
    <span class="todoSerial">1</span>
    <span class="todoName">Complete dashboard</span>
    <span class="todoStatus pending">Pending</span>
  </div>
</div>
<div class="todolist">
<div class="todoItem">
    <span class="todoSerial">2</span>
    <span class="todoName">Check Attendance</span>
    <span class="todoStatus pending">Pending</span>
  </div>
</div>
<div class="todolist">
<div class="todoItem">
    <span class="todoSerial">3</span>
    <span class="todoName">Design admin panel</span>
    <span class="todoStatus done">Done</span>
  </div>
</div>
<div class="todolist">
<div class="todoItem">
    <span class="todoSerial">4</span>
    <span class="todoName">Complete list</span>
    <span class="todoStatus done">Done</span>
  </div>
</div>
<div class="todolist">
<div class="todoItem">
    <span class="todoSerial">5</span>
    <span class="todoName">Finish Design</span>
    <span class="todoStatus pending">Pending</span>
  </div>
</div>
<div class="todolist">
<div class="todoItem">
    <span class="todoSerial">6</span>
    <span class="todoName">API Handle</span>
    <span class="todoStatus done">Done</span>
  </div>
</div>
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
    </>
)
}