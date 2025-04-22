import React from "react";
import { useParams } from "react-router-dom";
function User() {
    const {userid} = useParams()
    return (
        <>
        <div>This is User: {userid}</div>
 
        </>
    )
}
export default User;