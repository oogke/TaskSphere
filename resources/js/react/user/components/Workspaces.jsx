import useFetch from "../../hooks/UseFetch";
import '../assets/css/workspaces.css';

function Workspaces() {
    const { data, loading, error } = useFetch("/api/workspaceIndex");

    return (
        <>
            <h1 id="workspaceHeading">Workspaces</h1>

            <div className="workspaceIndex">
                <div className="workspaceCard">
                    <ul>
                        <li>TaskSphere</li>
                        <li><button className="workspaceBtn">Open</button></li>
                    </ul>
                </div>

                <div className="workspaceCard">
                    <ul>
                        <li>SwiftStay</li>
                        <li><button className="workspaceBtn">Open</button></li>
                    </ul>
                </div>

                <div className="workspaceCard">
                    <ul>
                        <li>Ownah</li>
                        <li><button className="workspaceBtn">Open</button></li>
                    </ul>
                </div>

                <div className="workspaceCard">
                    <ul>
                        <li>Mental Health Support System</li>
                        <li><button className="workspaceBtn">Open</button></li>
                    </ul>
                </div>

                <div className="workspaceCard">
                    <ul>
                        <li>Soul</li>
                        <li><button className="workspaceBtn">Open</button></li>
                    </ul>
                </div>

                <div className="workspaceCard">
                    <ul>
                        <li>Soul API</li>
                        <li><button className="workspaceBtn">Open</button></li>
                    </ul>
                </div>

                <div className="workspaceCard">
                    <ul>
                        <li>Soul API</li>
                        <li><button className="workspaceBtn">Open</button></li>
                    </ul>
                </div>

                <div className="workspaceCard">
                    <ul>
                        <li>Soul API</li>
                        <li><button className="workspaceBtn">Open</button></li>
                    </ul>
                </div>

                <div className="workspaceCard">
                    <ul>
                        <li>Soul API</li>
                        <li><button className="workspaceBtn">Open</button></li>
                    </ul>
                </div>

                <div className="workspaceCard">
                    <ul>
                        <li>Soul API</li>
                        <li><button className="workspaceBtn">Open</button></li>
                    </ul>
                </div>
            </div>
        </>
    );
}

export default Workspaces;
