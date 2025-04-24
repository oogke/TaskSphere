import useFetch from "../../hooks/UseFetch";
import '../assets/css/projects.css';

function Projects() {
    const { data, loading, error } = useFetch("/api/projectIndex");

    return (
        <>
            <h1 id="projectHeading">Projects</h1>
            <div className="topBar">
                <i className="fa-solid fa-filter btn btn-link" id="filter"></i>
            </div>

            <div className="projectCard">
                <ul>
                    <li>1</li>
                    <li>TaskSphere</li>
                    <li>Working</li>
                    <li><button className="projectBtn">Open</button></li>
                </ul>
            </div>

            <div className="projectCard">
                <ul>
                    <li>2</li>
                    <li>SwiftStay</li>
                    <li>Completed</li>
                    <li><button className="projectBtn">Open</button></li>
                </ul>
            </div>

            <div className="projectCard">
                <ul>
                    <li>3</li>
                    <li>Ownah</li>
                    <li>Completed</li>
                    <li><button className="projectBtn">Open</button></li>
                </ul>
            </div>

            <div className="projectCard">
                <ul>
                    <li>4</li>
                    <li>Mental health support system</li>
                    <li>Completed</li>
                    <li><button className="projectBtn">Open</button></li>
                </ul>
            </div>

            <div className="projectCard">
                <ul>
                    <li>5</li>
                    <li>Soul</li>
                    <li>Working</li>
                    <li><button className="projectBtn">Open</button></li>
                </ul>
            </div>

            <div className="projectCard">
                <ul>
                    <li>6</li>
                    <li>Soul API</li>
                    <li>Completed</li>
                    <li><button className="projectBtn">Open</button></li>
                </ul>
            </div>
        </>
    );
}

export default Projects;
