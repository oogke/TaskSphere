import React from 'react';
import ReactDOM from 'react-dom/client';
import { BrowserRouter, Routes, Route } from 'react-router-dom';

import Attendances from './components/Attendances';
import Projects from './components/Projects';
import Tasks from './components/Tasks';
import Workspaces from './components/Workspaces';
import UserDash from './components/UserDash';
import ProjectDash from './components/ProjectDash';
import WorkspaceDash from './components/WorkspaceDash';
import Comment from './components/Comment';
const App = () => {
    return (
        <BrowserRouter>
          <Routes>
          <Route path="/react/user/projects" element={<Projects />} />
      <Route path="/react/user/workspaces" element={<Workspaces />} />
      <Route path="/react/user/tasks" element={<Tasks />} />
      <Route path="/react/user/attendances" element={<Attendances />} />
      <Route path="/react/user/userdash" element={<UserDash />} />
      <Route path="/react/user/projectDash" element={<ProjectDash />} />
      <Route path="/react/user/comments" element={<Comment />} />
      <Route path="/react/user/workspaceDash" element={<WorkspaceDash />} />
     <Route path="/react/user/profile" element={<Profile />} />
    


          </Routes>
        </BrowserRouter>
      );
};

ReactDOM.createRoot(document.getElementById('main')).render(<App />);
