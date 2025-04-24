import useFetch from "../../hooks/UseFetch";

function Projects() {
    
    const { data, loading, error } = useFetch("/api/projectIndex");
    return (
        <div>
            <h1>I am here</h1>
            {loading && <p>Loading...</p>}
            {error && <p>Error: {error}</p>}
            {data && <pre>{JSON.stringify(data, null, 2)}</pre>}
        </div>
    );
}
export default Projects;