import React from 'react';
import ReactDOM from 'react-dom/client';
import { BrowserRouter, Routes, Route } from 'react-router-dom';

import Attendances from './components/Attendances';
import Projects from './components/Projects';
import Tasks from './components/Tasks';
import Workspaces from './components/Workspaces';

const App = () => {
    return (
        <BrowserRouter>
          <Routes>
          <Route path="/react/admin/projects" element={<Projects />} />
      <Route path="/react/admin/workspaces" element={<Workspaces />} />
      <Route path="/react/admin/tasks" element={<Tasks />} />
      <Route path="/react/admin/attendances" element={<Attendances />} />
          </Routes>
        </BrowserRouter>
      );
};

ReactDOM.createRoot(document.getElementById('main')).render(<App />);
