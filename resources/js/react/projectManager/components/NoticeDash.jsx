import React from "react";
import { useLocation } from "react-router-dom";
import useFetch from "../../hooks/UseFetch";
import '../assets/css/noticeDash.css';


function NoticeDash() {
  const location = useLocation();
  const { noticeId } = location.state;
  const { data:notice, loading, error } = useFetch(`/api/singleNotice/${noticeId}`);

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;

  
  return (
    <div className="notice-dashboard">
      <div className="notice-header">
        <h2>{notice.noticeHead}</h2>
        <span className="notice-date">{notice.created_at}</span>
      </div>
      <div className="notice-description">
        <p>{notice.noticeDescription}</p>
      </div>
      {notice.image && <img className="notice-image" src={notice.image} alt="Notice" />}
    </div>
  );
}

export default NoticeDash;
