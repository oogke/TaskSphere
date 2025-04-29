import React from "react";
import '../assets/css/registerApplication.css';
import useFetch from '../../hooks/UseFetch';

function RegisterApplication()
{
    const {data,loading,error}=useFetch()
return(
    <>
  {/* <div id="toast-container" aria-live="polite" aria-atomic="true" class="position-fixed top-0 end-0 p-3" 
         style="z-index: 11">

    </div> 
     <section class="adapplication">
        <h1 id="adapplication-head">Employee Register Application</h1>
        <div id="adapplication-table"> */}
{/* //             <table>
//                 <thead>
//                     <tr>
//                         <th scope="col" width="2%">S.N</th>
//                         <th scope="col" width="10%">First Name</th>
//                         <th scope="col" width="10%">Last Name</th>
//                         <th scope="col" width="10%">Phone Number</th>
//                         <th scope="col" width="10%">Email</th>
//                         <th scope="col" width="10%">Applied At</th>
//                         <th scope="col" width="25%">Response</th>
//                     </tr>
//                 </thead>
//                 <tbody>
//                     @foreach($userApplication as $application)  
//                         <tr>
//                             <td>{{ $loop->iteration }}</td> */}
{/* //                             <td>{{ $application['fname'] }}</td>
//                             <td>{{ $application['lname'] }}</td>
//                             <td>{{ $application['phone'] }}</td>
//                             <td>{{ $application['email'] }}</td>
//                             <td>{{ $application['created_at'] }}</td>
//                             <td>
//                                 <a href="" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#acceptModal"
//                                     data-application-id="{{ $application['id'] }}">Accept</a>
//                                 <a href="" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#rejectModal"
//                                     data-application-id="{{ $application['id'] }}">Reject</a>

//                             </td>
//                         </tr>


//                     @endforeach

//                     <!-- secret code Modal -->
//                     <div class="modal fade" id="scodeModal" data-bs-backdrop="static" data-bs-keyboard="false"
//                         tabindex="-1" aria-labelledby="singlePostLabel" aria-hidden="true">
//                         <div class="modal-dialog">
//                             <div class="modal-content">
//                                 <div class="modal-header">
//                                     <h5 class="modal-title" id="singlePostLabel">Enter the secret code and role</h5>
//                                     <button type="button" class="btn-close" data-bs-dismiss="modal"
//                                         aria-label="Close"></button>
//                                 </div>
//                                 <div class="modal-body">
//                                     <input type="Password" id="scode" placeholder="secret code">
//                                     <input type="text" id="role" placeholder="Role">
//                                     <input type="hidden" name="applicationId" id="applicationIdInput">
//                                 </div>
//                                 <div class="modal-footer">
//                                     <button type="button" class="btn btn-success scodeEnter">okay</button>
//                                 </div>
//                             </div>
//                         </div>
//                     </div>
                    */}

{/* 
                  
//                     <div class="modal fade" id="rejectModal" data-bs-backdrop="static" data-bs-keyboard="false"
//                         tabindex="-1" aria-labelledby="deleteLabel" aria-hidden="true">
//                         <div class="modal-dialog">
//                             <div class="modal-content">
//                                 <div class="modal-header">                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
//                                         aria-label="Close"></button>
//                                 </div>
//                                 <div class="modal-body">
//                                     <div class="single-data" width="100%" height="100%">
//                                         Are you sure you want to reject?
//                                     </div>
//                                 </div>
//                                 <div class="modal-footer">
//                                     <button type="button" class="btn btn-primary rejectConfirmBtn">Reject</button>
//                                 </div>
//                             </div>
//                         </div>
//                     </div>

//                     <!-- confirm reject -->

//                     <!--confirm accept -->
//                     <div class="modal fade" id="acceptModal" data-bs-backdrop="static" data-bs-keyboard="false"
//                         tabindex="-1" aria-labelledby="deleteLabel" aria-hidden="true">
//                         <div class="modal-dialog">
//                             <div class="modal-content">
//                                 <div class="modal-header">

//                                     <button type="button" class="btn-close" data-bs-dismiss="modal"
//                                         aria-label="Close"></button>
//                                 </div>
//                                 <div class="modal-body">
//                                     <div class="single-data" width="100%" height="100%">
//                                         Are you sure you want to Accept?
//                                     </div>
//                                 </div>
//                                 <div class="modal-footer">
//                                     <button type="button" class="btn btn-primary acceptConfirmBtn"
//                                         data-bs-toggle="modal" data-bs-target="#scodeModal"
//                                         data-bs-dismiss="modal">Accept</button>
//                                 </div>
//                             </div>
//                         </div>
//                     </div>
                    
//                 </tbody>



//             </table>

//         </div>

//     </section>
//     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
//         integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
//         crossorigin="anonymous"></script>

//     <script></script> */}
    </>
)
}
export default RegisterApplication;