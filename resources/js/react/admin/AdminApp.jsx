import React from 'react';
import ReactDOM from 'react-dom/client';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Attendances from './components/Attendances';
import Notice from './components/Notice';
import CreateNotices from './components/CreateNotices';
import Comment from './components/Comment';
import Employees from './components/Employees';
import RegisterApplication from './components/RegisterApplication';


const App = () => {
    return (
        <BrowserRouter>
          <Routes>
      <Route path="/react/admin/attendances" element={<Attendances />} />
      <Route path="/react/admin/comments" element={<Comment />} />
      <Route path="/react/admin/createNotices" element={<CreateNotices />} />
      <Route path="/react/admin/notices" element={<Notice />} />
      <Route path="/react/admin/employees" element={<Employees />} />
      <Route path="/react/admin/registerApplication" element={<RegisterApplication />} />
          </Routes>
        </BrowserRouter>
      );
};

ReactDOM.createRoot(document.getElementById('main')).render(<App />);
