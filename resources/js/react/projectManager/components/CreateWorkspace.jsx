import React, { useState } from "react";

const CreateWorkspace = () => {
  const [workspace, setWorkspace] = useState({
    name: "",
    description: "",
    sdate: "",
    edate: "",
    leader: "",
    status: "",
    projectId: "",
    members: { member1: "", member2: "" },
  });

  const handleChange = (e) => {
    const { name, value } = e.target;

    // Handle nested members separately
    if (name === "member1" || name === "member2") {
      setWorkspace((prev) => ({
        ...prev,
        members: {
          ...prev.members,
          [name]: value,
        },
      }));
    } else {
      setWorkspace((prev) => ({
        ...prev,
        [name]: value,
      }));
    }
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log("Workspace Created:", workspace);

    // Later you can send this data to backend using Axios/Post
    // Example: axios.post('/api/workspace', workspace);

    // Clear form after submit
    setWorkspace({
      name: "",
      description: "",
      sdate: "",
      edate: "",
      leader: "",
      status: "",
      projectId: "",
      members: { member1: "", member2: "" },
    });
  };

  return (
    <div style={{ maxWidth: "600px", margin: "auto", padding: "20px" }}>
      <h2 style={{ textAlign: "center", marginBottom: "20px" }}>Create New Workspace</h2>

      <form onSubmit={handleSubmit} style={{ display: "flex", flexDirection: "column", gap: "15px" }}>
        <input
          type="text"
          name="name"
          placeholder="Workspace Name"
          value={workspace.name}
          onChange={handleChange}
          required
          style={inputStyle}
        />
        <textarea
          name="description"
          placeholder="Workspace Description"
          value={workspace.description}
          onChange={handleChange}
          required
          style={{ ...inputStyle, height: "100px" }}
        />
        <input
          type="date"
          name="sdate"
          value={workspace.sdate}
          onChange={handleChange}
          required
          style={inputStyle}
        />
        <input
          type="date"
          name="edate"
          value={workspace.edate}
          onChange={handleChange}
          required
          style={inputStyle}
        />
        <input
          type="text"
          name="leader"
          placeholder="Leader Name"
          value={workspace.leader}
          onChange={handleChange}
          required
          style={inputStyle}
        />
        <input
          type="text"
          name="status"
          placeholder="Status (e.g., not started)"
          value={workspace.status}
          onChange={handleChange}
          required
          style={inputStyle}
        />
        <input
          type="text"
          name="projectId"
          placeholder="Project ID (e.g., P001)"
          value={workspace.projectId}
          onChange={handleChange}
          required
          style={inputStyle}
        />

        <div style={{ display: "flex", gap: "10px" }}>
          <input
            type="text"
            name="member1"
            placeholder="Member 1 Name"
            value={workspace.members.member1}
            onChange={handleChange}
            required
            style={{ ...inputStyle, flex: 1 }}
          />
          <input
            type="text"
            name="member2"
            placeholder="Member 2 Name"
            value={workspace.members.member2}
            onChange={handleChange}
            required
            style={{ ...inputStyle, flex: 1 }}
          />
        </div>

        <button type="submit" style={buttonStyle}>
          Create Workspace
        </button>
      </form>
    </div>
  );
};

const inputStyle = {
  padding: "10px",
  borderRadius: "8px",
  border: "1px solid #ccc",
  fontSize: "16px",
};

const buttonStyle = {
  padding: "12px",
  backgroundColor: "#4CAF50",
  color: "white",
  border: "none",
  borderRadius: "8px",
  fontSize: "16px",
  cursor: "pointer",
  marginTop: "10px",
};

export default CreateWorkspace;
