import useFetch from "../../hooks/UseFetch";
import '../assets/css/tasks.css'

function Tasks()
{
const {data, loading, error} = useFetch("/api/taskIndex");
console.log(data);
return (

    <>

    <div className="header-bar">
        <h1 id="taskHeading">Tasks</h1>
        <i className="fa-solid fa-filter" id="filter" title="Filter"></i>
    </div>

   
    <div className="table-container">
        <table>
            <thead>
                <tr>
                    <th>S.N</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Employee Username</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Status</th>
                    <th>Priority</th>
                    <th>Updated At</th>
                    <th>Response</th>
                </tr>
            </thead>
            <tbody id="TaskTableBody">
               
               {data?.data?.length>0 && data?.data?.map((task,index)=>
               {
                return(
 <tr>
                    <td>{index+1}</td>
                    <td>{task.name}</td>
                    <td>{task.description}</td>
                    <td>{task.employee}</td>
                    <td>{task.sdate}</td>
                    <td>{task.edate}</td>
                    <td>{task.status}</td>
                    <td>{task.priority}</td>
                    <td>{task.updated_at}</td>
                    <td className="ResponseTd">
                        <button className="TaskResponseBtn UpdateBtn">Update</button>
                        <button className="TaskResponseBtn DeleteBtn">Delete</button>
                    </td>
                </tr>

                )
               })

               }
               
          
            </tbody>
        </table>
    </div>

    </>
)
}
export default Tasks;