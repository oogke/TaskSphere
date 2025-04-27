import React from "react";
import useFetch  from "../../hooks/UseFetch";

function WorkspaceDash()
{
    const {data,loading,error}= useFetch("/api/projectIndex")
    return(
        <>
        <div class="headBar">
  <span>Comment</span>
  <span>Tasks</span>
  <span>Members</span>
</div>
        </>
    )
}
export default WorkspaceDash;