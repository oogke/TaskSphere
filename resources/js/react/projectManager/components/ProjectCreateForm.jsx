import { useState } from "react";
import "../assets/css/ProjectCreateForm.css"; 

export default function ProjectCreateForm() {
  const [formData, setFormData] = useState({
    name: "",
    description: "",
    sdate: "",
    edate: "",
    members: "",
    leader: "",
    workspaceCount: "",
    status: "",
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({ ...prev, [name]: value }));
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log(formData); 
  };

  return (
    <div className="form-container">
      <h2 className="form-title">Create New Project</h2>
      <form onSubmit={handleSubmit} className="form-content">
        @csrf
        <div className="form-group">
          <label className="form-label">Project Name</label>
          <input
            type="text"
            name="name"
            className="form-input"
            value={formData.name}
            onChange={handleChange}
            required
          />
        </div>

        <div className="form-group">
          <label className="form-label">Description</label>
          <textarea
            name="description"
            className="form-input"
            value={formData.description}
            onChange={handleChange}
            required
          />
        </div>

        <div className="form-group">
          <label className="form-label">Start Date</label>
          <input
            type="date"
            name="sdate"
            className="form-input"
            value={formData.sdate}
            onChange={handleChange}
            required
          />
        </div>

        <div className="form-group">
          <label className="form-label">End Date</label>
          <input
            type="date"
            name="edate"
            className="form-input"
            value={formData.edate}
            onChange={handleChange}
            required
          />
        </div>

        <div className="form-group">
          <label className="form-label">Members (comma-separated)</label>
          <input
            type="text"
            name="members"
            placeholder='e.g. "Liam, Olivia, Ethan"'
            className="form-input"
            value={formData.members}
            onChange={handleChange}
            required
          />
        </div>

        <div className="form-group">
          <label className="form-label">Leader</label>
          <input
            type="text"
            name="leader"
            className="form-input"
            value={formData.leader}
            onChange={handleChange}
            required
          />
        </div>

        <div className="form-group">
          <label className="form-label">Workspace Count</label>
          <input
            type="number"
            name="workspaceCount"
            min="1"
            className="form-input"
            value={formData.workspaceCount}
            onChange={handleChange}
            required
          />
        </div>

        <div className="form-group">
          <label className="form-label">Status</label>
          <select
            name="status"
            className="form-input"
            value={formData.status}
            onChange={handleChange}
            required
          >
            <option value="">Select Status</option>
            <option value="on hold">On Hold</option>
            <option value="in progress">In Progress</option>
            <option value="completed">Completed</option>
            <option value="not started">Not Started</option>
          </select>
        </div>

        <div className="form-button-wrapper">
          <button type="submit" className="form-button">
            Create Project
          </button>
        </div>
      </form>
    </div>
  );
}
