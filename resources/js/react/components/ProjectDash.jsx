import react from "react";
import '../assets/css/ProjectDash.css';
import '../assets/js/projectDash';
function ProjectDash()
{
    return (
        <>
        <div class="project-detail">
  <h2 class="project-title" id="title"></h2>
  <p class="project-description" id="description"></p>

  <div class="detail-row"><strong>Status:</strong> <span id="status" class="status-badge"></span></div>
  <div class="detail-row"><strong>Leader:</strong> <span id="leader"></span></div>
  <div class="detail-row"><strong>Members:</strong> <span id="members"></span></div>
  <div class="detail-row"><strong>Start Date:</strong> <span id="sdate"></span></div>
  <div class="detail-row"><strong>End Date:</strong> <span id="edate"></span></div>
  <div class="detail-row"><strong>Workspaces:</strong> <span id="workspaces"></span></div>
  <div class="detail-row"><strong>Created At:</strong> <span id="created"></span></div>
  <div class="detail-row"><strong>Last Updated:</strong> <span id="updated"></span></div>
</div>

        </>
    );

}
export default ProjectDash;