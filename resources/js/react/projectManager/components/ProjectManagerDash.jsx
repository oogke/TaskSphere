import React from "react";
import "../assets/css/projectManagerDash.css";
 export default function ProjectManagerDash()
 {
    return(
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
   <span class="ProjectOpenBtn"><button>Open</button></span>
  </div>
</div>
<div class="projectlist">
  <div class="projectItem">
   <span class="projectSNO">2</span>
   <span class="projectTitle">Tasksphere</span>
   <span class="ProjectOpenBtn"><button>Open</button></span>
  </div>
</div>
<div class="projectlist">
  <div class="projectItem">
   <span class="projectSNO">3</span>
   <span class="projectTitle">Soul</span>
   <span class="ProjectOpenBtn"><button>Open</button></span>
  </div>
</div>
<div class="projectlist">
  <div class="projectItem">
   <span class="projectSNO">4</span>
   <span class="projectTitle">SoulApi</span>
   <span class="ProjectOpenBtn"><button>Open</button></span>
  </div>
</div>
<div class="projectlist">
  <div class="projectItem">
   <span class="projectSNO">5</span>
   <span class="projectTitle">Ownah</span>
   <span class="ProjectOpenBtn"><button>Open</button></span>
  </div>
</div>
<div class="projectlist">
  <div class="projectItem">
   <span class="projectSNO">6</span>
   <span class="projectTitle">Mental health support system</span>
   <span class="ProjectOpenBtn"><button>Open</button></span>
  </div>
</div>
</div>
      </div>
    </div>

<div class="pmthirdDiv">
<h1 id="pmheading">Tasks</h1>
<div class="pmtable-container">
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
                    <th>Updated At</th>
                </tr>
            </thead>
            <tbody id="pmTaskTableBody">
                <tr>
                    <td>1</td>
                    <td>Website Redesign</td>
                    <td>Update homepage layout</td>
                    <td>johndoe</td>
                    <td>2025-04-10</td>
                    <td>2025-04-20</td>
                    <td>Ongoing</td>
                    <td>High</td>
                    <td>2025-04-21 14:30</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>API Fix</td>
                    <td>Resolve login issues</td>
                    <td>janedoe</td>
                    <td>2025-04-15</td>
                    <td>2025-04-18</td>
                    <td>Completed</td>
                    <td>Medium</td>
                    <td>2025-04-19 10:00</td>
                </tr>
            </tbody>
        </table>
    </div>

</div>

        
        </>
    )
 }