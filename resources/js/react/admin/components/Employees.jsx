import React from 'react';
import '../assets/css/employees.css';
import useFetch from '../../hooks/UseFetch';

function Employees()
{
  const { data, loading, error } = useFetch("/api/allUsers");
    return(
        <>
<h1 id="Employeeheading">Employees</h1>

{

data?.data?.length>0 && data.data.map((Employee,index)=>
{
  return(
    <div className="employeeRow" key={index}>
    <ul>
      <li>{index+1}</li>
      <li>{Employee.fname +" "+Employee.lname}</li>
      <li>{Employee.phone}</li>
      <li>{Employee.address}</li>
      <li>{Employee.email}</li>
      <li>{Employee.role}</li>

    </ul>
    </div> 
  )
})
}
        </>
    )
}
export default Employees;