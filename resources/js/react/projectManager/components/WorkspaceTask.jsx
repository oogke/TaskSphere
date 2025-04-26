import React from "react";
import '../assets/css/workspaceTask.css'
function WorkspaceTask()
{
    return(
        <>
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
export default WorkspaceTask;