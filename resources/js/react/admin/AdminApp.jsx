import React from 'react';
import ReactDOM from 'react-dom/client';
import { BrowserRouter, Routes, Route } from 'react-router-dom';

import Attendances from './components/Attendances';
import Projects from './components/Projects';
import Tasks from './components/Tasks';
import Workspaces from './components/Workspaces';
import Notice from './components/Notice';
import CreateNotices from './components/CreateNotices';
import Comment from './components/Comment'
const App = () => {
    return (
        <BrowserRouter>
          <Routes>
          <Route path="/react/admin/projects" element={<Projects />} />
      <Route path="/react/admin/workspaces" element={<Workspaces />} />
      <Route path="/react/admin/tasks" element={<Tasks />} />
      <Route path="/react/admin/attendances" element={<Attendances />} />
      <Route path="/react/admin/comments" element={<Comment />} />
      <Route path="/react/admin/createNotices" element={<CreateNotices />} />
      <Route path="/react/admin/notices" element={<Notice />} />
          </Routes>
        </BrowserRouter>
      );
};

ReactDOM.createRoot(document.getElementById('main')).render(<App />);
