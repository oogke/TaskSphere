import React from "react";
// import { useLoaderData } from "react-router-dom";
import { useState,useEffect } from "react";


function Github()
{
const [data, setData] = useState([]);
    useEffect(()=>
    {
fetch("https://api.github.com/users/archanatimilsina").then(res=>res.json()).then(data=>
{
    console.log(data);
setData(data);
}
)
    },[])
// const data= useLoaderData()
return (
    <>
    <img src={data.avatar_url} alt="" />
    <div>Github Follower: 
{data.followers}
    </div>
    </>
)


}
export default Github;

// export const githubInfoLoader= async()=>
// {
//     const response= await fetch("https://api.github.com/users/archanatimilsina")
//     return response.json();
// }