import useFetch from "../../hooks/UseFetch";

function Tasks()
{
const {data, loading, error} = useFetch("/api/taskIndex");
if(loading)console.log(loading)
return (

    <>
    {data && <pre>
        {JSON.stringify(data,null,2)}
        </pre>}
    </>
)
}
export default Tasks;