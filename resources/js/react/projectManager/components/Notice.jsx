import React from "react";
import useFetch from "../../hooks/UseFetch";

function Notice(){
       const { data, loading, error } = useFetch("/api/projectIndex/7");
        console.log(data);
    return(
        <>
        This is Notice for Project Manager Notice
        </>
    )
}
export default Notice;