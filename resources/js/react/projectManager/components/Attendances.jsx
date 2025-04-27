import React from "react";
import useFetch from "../../hooks/UseFetch";

function Attendances()
{
           const { data, loading, error } = useFetch("/api/projectShow/7");
            console.log(data);
    return(
        <>
        <h1>Hello projectManager</h1><br />
         <h3>Ohh! you click the Attendances right?</h3>
        </>
        );
}
export default Attendances;