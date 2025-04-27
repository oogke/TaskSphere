import React, { useState } from "react";
import "../assets/css/taskForm.css"; 

function TaskForm() {
  const [taskData, setTaskData] = useState({
    name: "",
    description: "",
    sdate: "",
    edate: "",
    employee: "",
    priority: "medium",
    status: "not started",
    workspaceId: "",
    projectId: "",
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setTaskData({ ...taskData, [name]: value });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log("Form Submitted:", taskData);
    // 🚀 Here you will send `taskData` to your backend API.
  };

  return (
    <form onSubmit={handleSubmit} className="task-form">
      <h2 className="form-title">Add New Task</h2>

      <div className="form-grid">
        <div className="form-group">
          <label>Task Name</label>
          <input
            type="text"
            name="name"
            value={taskData.name}
            onChange={handleChange}
            required
          />
        </div>

        <div className="form-group">
          <label>Priority</label>
          <select
            name="priority"
            value={taskData.priority}
            onChange={handleChange}
          >
            <option value="high">High</option>
            <option value="medium">Medium</option>
            <option value="low">Low</option>
          </select>
        </div>

        <div className="form-group">
          <label>Start Date</label>
          <input
            type="date"
            name="sdate"
            value={taskData.sdate}
            onChange={handleChange}
          />
        </div>

        <div className="form-group">
          <label>End Date</label>
          <input
            type="date"
            name="edate"
            value={taskData.edate}
            onChange={handleChange}
          />
        </div>

        <div className="form-group">
          <label>Workspace ID</label>
          <input
            type="number"
            name="workspaceId"
            value={taskData.workspaceId}
            onChange={handleChange}
          />
        </div>

        <div className="form-group">
          <label>Project ID</label>
          <input
            type="number"
            name="projectId"
            value={taskData.projectId}
            onChange={handleChange}
          />
        </div>

        <div className="form-group full-width">
          <label>Employee IDs (Comma separated)</label>
          <input
            type="text"
            name="employee"
            value={taskData.employee}
            onChange={handleChange}
            placeholder="Example: 22,28,29"
          />
        </div>

        <div className="form-group full-width">
          <label>Description</label>
          <textarea
            name="description"
            value={taskData.description}
            onChange={handleChange}
            rows="3"
          />
        </div>

        <div className="form-group full-width">
          <label>Status</label>
          <select
            name="status"
            value={taskData.status}
            onChange={handleChange}
          >
            <option value="not started">Not Started</option>
            <option value="in progress">In Progress</option>
            <option value="completed">Completed</option>
          </select>
        </div>
      </div>

      <button type="submit" className="submit-btn">
        Submit Task
      </button>
    </form>
  );
}

export default TaskForm;
