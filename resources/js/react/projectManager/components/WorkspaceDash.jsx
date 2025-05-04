import React, { useState } from "react";
import useFetch from "../../hooks/UseFetch";
import '../assets/css/workspaceDash.css';
import Comment from "./Comment";
import Members from "./Members";
import WorkspaceTask from "./WorkspaceTask";
import { useLocation } from "react-router-dom";


// Create simple small components


function WorkspaceDash() {
    const [activeTab, setActiveTab] = useState(null);
    const location= useLocation();
    const { workspaceId } = location.state;
    const renderComment = () => {
        setActiveTab("commentSpan");
    }
    const renderTask = () => {
        setActiveTab("taskSpan");
    }
    const renderMember = () => {
        setActiveTab("memberSpan");
    }

    // function to choose which content to show
    const renderContent = () => {
        if (activeTab === "commentSpan") return <Comment id={workspaceId}/>;
        if (activeTab === "taskSpan") return <WorkspaceTask id={workspaceId}/>;
        if (activeTab === "memberSpan") return <Members id={workspaceId}/>;
        return <Comment id={workspaceId}/> 
    }
    return (
        <>
            <div className="headBar">
                <span className={activeTab === "commentSpan" ? "active" : ""} onClick={renderComment}>Comment</span>
                <span className={activeTab === "taskSpan" ? "active" : ""} onClick={renderTask}>Tasks</span>
                <span className={activeTab === "memberSpan" ? "active" : ""} onClick={renderMember}>Members</span>
            </div>
            <div className="DashMain">
                {renderContent()}
            </div>
        </>
    );
}

export default WorkspaceDash;
