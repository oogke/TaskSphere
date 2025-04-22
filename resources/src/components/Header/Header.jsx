import React from "react";
import { Link } from "react-router-dom"; 
import "../../assets/css/components/Header.css";
function Header()
{
    return (
        <>
      
<nav class="navbar navbar-expand-lg bg-body-tertiary container-fluid">
  <div class="container-fluid">
   <img src="https://images.pexels.com/photos/3586761/pexels-photo-3586761.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="" id="logo"/>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
        <li class="nav-item">
          <Link class="nav-link active border-bottom" aria-current="page" to="">Home</Link>
        </li>
       <li class="nav-item">
          <Link class="nav-link border-bottom" to="/about">About</Link>
        </li>
       
        <li class="nav-item">
          <Link class="nav-link border-bottom" to="/contact">Contact</Link>
        </li> 
        <li class="nav-item">
          <Link class="nav-link border-bottom" to="/context">Context</Link>
        </li> 
        <li class="nav-item">
          <Link class="nav-link border-bottom" to="/github"><i class="fa-brands fa-github"></i></Link>
        </li> 
        </ul>  
    </div>
  </div>
  </nav>

        </>
    );
}
export default Header;