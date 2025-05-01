import React from 'react';
import ReactDOM from 'react-dom/client';
import { BrowserRouter, Routes, Route } from 'react-router-dom';

import Attendances from './components/Attendances';
import Projects from './components/Projects';
import Tasks from './components/Tasks';
import Workspaces from './components/Workspaces';
import ProjectDash from './components/ProjectDash';
import ProjectCreateForm from './components/ProjectCreateForm';
import CreateWorkspace from './components/CreateWorkspace';
import TaskForm from './components/TaskForm';
import Comment from './components/Comment';
import Members from './components/Members';
import WorkspaceDash from './components/WorkspaceDash';
import Profile from './components/Profile';
import WorkspaceTaskForm from './components/WorkspaceTaskForm';
const App = () => {
    return (
        <BrowserRouter>
          <Routes>
          <Route path="/react/projectManager/projects" element={<Projects />} />
      <Route path="/react/projectManager/workspaces" element={<Workspaces />} />
      <Route path="/react/projectManager/tasks" element={<Tasks />} />
      <Route path="/react/projectManager/attendances" element={<Attendances />} />
      <Route path="/react/projectManager/projectDash" element={<ProjectDash />} />
      <Route path="/react/projectManager/projectCreateForm" element={<ProjectCreateForm />} />
      <Route path="/react/projectManager/workspaceCreateForm" element={<CreateWorkspace />} />
      <Route path="/react/projectManager/TaskCreateForm" element={<TaskForm />} />
      <Route path="/react/projectManager/workspaceTaskForm" element={<WorkspaceTaskForm />} />
      <Route path="/react/projectManager/comments" element={<Comment />} />
      <Route path="/react/projectManager/members" element={<Members />} />
      <Route path="/react/projectManager/workspaceDash" element={<WorkspaceDash />} />
      <Route path="/react/projectManager/profile" element={<Profile />} />
          </Routes>
        </BrowserRouter>
      );
};

ReactDOM.createRoot(document.getElementById('main')).render(<App />);
