
import useFetch from "../../hooks/UseFetch";

function Projects() {
    const [clickCount, setClickCount] = useState(0);
    const { data, loading, error } = useFetch("/api/projectIndex");

    // 🔍 See what you're getting from the API
    const handleClick = () => {
        setClickCount(prev => prev + 1); // Increment click count to trigger re-fetch
    };

    useEffect(() => {
        console.log("Fetching data...");
        // Trigger a new fetch or other logic based on clickCount change
    }, [clickCount]);
    return (
        <div>
            <h1>I am here</h1>
            <button onClick={handleClick}>Click me</button>
            {loading && <p>Loading...</p>}
            {error && <p>Error: {error}</p>}
            {data && <pre>{JSON.stringify(data, null, 2)}</pre>}
        </div>
    );
}
export default Projects;