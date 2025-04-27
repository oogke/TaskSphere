import React, { useState } from "react";
import useFetch  from "../../hooks/UseFetch";
import '../assets/css/workspaceDash.css';
import { useNavigate } from "react-router-dom";

function WorkspaceDash()
{
    const {data,loading,error}= useFetch("/api/projectIndex");
    const [activeTab,setActiveTab]=useState(null);
    const navigate=useNavigate();
    const renderComment=()=>
    {
        setActiveTab("commentSpan")
        navigate("/react/projectManager/comments");
    }
    const rendertask=()=>
        {
            setActiveTab("taskSpan")
            navigate("");
        }
        const renderMember=()=>
            {
                setActiveTab("memberSpan")
                navigate("/react/projectManager/members");
            }
    return(
        <>
        <div className="headBar">
  <span className={activeTab==="commentSpan"?"active":""} onClick={renderComment}>Comment</span>
  <span className={activeTab==="taskSpan"?"active":""} onClick={rendertask}>Tasks</span>
  <span className={activeTab==="memberSpan"?"active":""} onClick={renderMember}>Members</span>
</div>
<div className="DashMain">

</div>
        </>
    )
}
export default WorkspaceDash;