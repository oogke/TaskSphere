import React from "react";
import '../assets/css/userdash.css';
function UserDash()
{
return (
    <>
     <h3 class="workspaceHead">Workspaces</h3>
    <div class="workspaceIndex">
      <div class="projectRow"><ul><li><strong>Designing</strong></li><li><button class="statusBtn">Open</button></li></ul></div>
      <div class="projectRow"><ul><li><strong>Designing</strong></li><li><button class="statusBtn">Open</button></li></ul></div>
      <div class="projectRow"><ul><li><strong>Designing</strong></li><li><button class="statusBtn">Open</button></li></ul></div>
      <div class="projectRow"><ul><li><strong>Designing</strong></li><li><button class="statusBtn">Open</button></li></ul></div>
      <div class="projectRow"><ul><li><strong>Designing</strong></li><li><button class="statusBtn">Open</button></li></ul></div>
      <div class="projectRow"><ul><li><strong>Project Management</strong></li><li><button class="statusBtn">Open</button></li></ul></div>
      <div class="projectRow"><ul><li><strong>Backend</strong></li><li><button class="statusBtn">Open</button></li></ul></div>
      <div class="projectRow"><ul><li><strong>Frontend</strong></li><li><button class="statusBtn">Open</button></li></ul></div>
      <div class="projectRow"><ul><li><strong>Frontend</strong></li><li><button class="statusBtn">Open</button></li></ul></div>
      <div class="projectRow"><ul><li><strong>Frontend</strong></li><li><button class="statusBtn">Open</button></li></ul></div>
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
      <div class="notification">
      <div class="notificationBar">
       <h1 class="notificationHead">
  Notification
</h1>   
  
        </div>
        <div class="notificationBody">
  <div class="notificationlist">
  <div class="notificationItem">
    <span class="notificationIcon">  <i class="fa-solid fa-envelope btn btn-link" id="envelope"></i>    </span>
    <span class="notificationTitle">Task is Assigned</span>
    <span class="notificationTime">10 min ago</span>
  </div>
</div>
<div class="notificationlist">
<div class="notificationItem">
    <span class="notificationIcon">  <i class="fa-solid fa-envelope btn btn-link" id="envelope"></i>    </span>
    <span class="notificationTitle">Have you checked your notice?</span>
    <span class="notificationTime">15 min ago</span>
  </div>
  </div>
  <div class="notificationlist">
  <div class="notificationItem">
    <span class="notificationIcon">  <i class="fa-solid fa-envelope btn btn-link" id="envelope"></i>    </span>
    <span class="notificationTitle">Have you checked your Attendance?</span>
    <span class="notificationTime">30 min ago</span>
  </div>
  </div>
  <div class="notificationlist">
  <div class="notificationItem">
    <span class="notificationIcon">  <i class="fa-solid fa-envelope btn btn-link" id="envelope"></i>    </span>
    <span class="notificationTitle">You have 20 minutes to check attendance</span>
    <span class="notificationTime">1 hr ago</span>
  </div>
  </div>
  <div class="notificationlist">
  <div class="notificationItem">
    <span class="notificationIcon">  <i class="fa-solid fa-envelope btn btn-link" id="envelope"></i>    </span>
    <span class="notificationTitle">Update ypur password</span>
    <span class="notificationTime">1 day ago</span>
  </div>
  </div> 
   <div class="notificationlist">
   <div class="notificationItem">
    <span class="notificationIcon">  <i class="fa-solid fa-envelope btn btn-link" id="envelope"></i>    </span>
    <span class="notificationTitle">Task is assigned</span>
    <span class="notificationTime">1 day ago</span>
  </div>
  </div>

</div>
      </div>
    </div>

    </>
);
}
export default UserDash;