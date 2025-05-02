import React from "react";
import { useLocation } from "react-router-dom";
import useFetch from "../../hooks/UseFetch";
import '..assets/css/noticeDash.css';

function NoticeDash() {
  const location = useLocation();
  const { noticeId } = location.state;
  const { data, loading, error } = useFetch(`/api/singleNotice/${noticeId}`);

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;

  const { head, description, image, publishedDate } = data;

  return (
    <div className="notice-dashboard">
      <div className="notice-header">
        <h2>{head}</h2>
        <span className="notice-date">{new Date(publishedDate).toLocaleDateString()}</span>
      </div>
      <div className="notice-description">
        <p>{description}</p>
      </div>
      {image && <img className="notice-image" src={image} alt="Notice" />}
    </div>
  );
}

export default NoticeDash;
