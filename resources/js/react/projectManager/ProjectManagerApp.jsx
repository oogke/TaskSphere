import React from 'react';
import ReactDOM from 'react-dom/client';
import { BrowserRouter, Routes, Route } from 'react-router-dom';

import Attendances from './components/Attendances';
import Projects from './components/Projects';
import Tasks from './components/Tasks';
import Workspaces from './components/Workspaces';
import ProjectDash from '../../components/ProjectDash';

const App = () => {
    return (
        <BrowserRouter>
          <Routes>
          <Route path="/react/projectManager/projects" element={<Projects />} />
      <Route path="/react/projectManager/workspaces" element={<Workspaces />} />
      <Route path="/react/projectManager/tasks" element={<Tasks />} />
      <Route path="/react/projectManager/attendances" element={<Attendances />} />
      <Route path="/react/projectManager/projectDash" element={<ProjectDash />} />
          </Routes>
        </BrowserRouter>
      );
};

ReactDOM.createRoot(document.getElementById('main')).render(<App />);
