<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Employee Register Application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <style>
        table,
        th,
        td {
            border: 3px solid black;
            border-collapse: collapse;

        }

        .adapplication {
            width: 100%;

        }

        .adapplication-head {
            text-align: center;
            font-size: 29px;

        }

        #adapplication-table {
            width: 100%;

        }

        #adapplication-table table {
            width: 100%;

        }

        #adapplication-table table th {
            font-size: 18px;
        }

        #adapplication-table table tr {
            height: 100px;

        }

        #adapplication-table table tr td {
            text-align: center;
            font-size: 19px;

        }

        #accept-btn {
            width: 80px;
            height: 35px;

            margin-top: 50%;
            margin-left: 10px;
            background-color: Green;
            color: Black;

        }

        #reject-btn {
            width: 80px;
            height: 35px;
            margin-top: 50%;
            margin-left: 10px;
            background-color: Red;
        }

        #response-col {
            padding: 15px;
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;

        }

        .profile-img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
        }

        #adapplication-head {
            text-align: center;
            font-size: 27px;
            font-family: cursive;
        }

        #offuserpopup {
            width: 300px;
            height: 190px;
            border: 1px solid black;
            margin: auto;
            flex-direction: column;
            margin-top: 100px;
            z-index: 1;
            display: none;
            padding: 10px 10px 20px 10px;
            position: fixed;
            background-color: white;
            left: 450px;
            top: 100px;
        }

        .reset-heading {
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: space-between;
        }

        #offuserpopup .reset-btn {
            position: relative;
            right: 0;

        }

        #offuserpopup p {
            font-size: 17px;
            padding: 35px 5px 15px 5px;

        }

        #offuserpopup .sub-btn {
            width: 150px;
            height: 50px;
            background-color: blue;
            color: white;
            border: 1px solid blue;
            border-radius: 5px;
            position: relative;
            left: 53px;
        }

        .buttons {
            display: flex;
            flex-direction: row;
        }

        #offuserpopup1 {
            width: 300px;
            height: 190px;
            border: 1px solid black;
            margin: auto;
            flex-direction: column;
            margin-top: 100px;
            z-index: 1;
            display: none;
            padding: 10px 10px 20px 10px;
            position: fixed;
            background-color: white;
            left: 450px;
            top: 100px;

        }

        #offuserpopup1 .reset-btn {
            position: relative;
            right: 0;

        }

        #offuserpopup1 form p {
            font-size: 17px;
            padding: 35px 5px 15px 5px;

        }

        #offuserpopup1 .sub-btn {
            width: 150px;
            height: 50px;
            background-color: blue;
            color: white;
            border: 1px solid blue;
            border-radius: 5px;
            position: relative;
            left: 53px;
        }
    </style>
</head>

<body>
<div id="toast-container" aria-live="polite" aria-atomic="true" class="position-fixed top-0 end-0 p-3" style="z-index: 11">
  
</div>
    <section class="adapplication">
        <h1 id="adapplication-head">Employee Register Application</h1>
        <div id="adapplication-table">
            <table>
                <thead>
                    <tr>
                        <th scope="col" width="2%">S.N</th>
                        <th scope="col" width="10%">First Name</th>
                        <th scope="col" width="10%">Last Name</th>
                        <th scope="col" width="10%">Phone Number</th>
                        <th scope="col" width="10%">Email</th>
                        <th scope="col" width="10%">Applied At</th>
                        <th scope="col" width="25%">Response</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($userApplication as $application)  
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $application['fname'] }}</td>
                            <td>{{ $application['lname'] }}</td>
                            <td>{{ $application['phone'] }}</td>
                            <td>{{ $application['email'] }}</td>
                            <td>{{ $application['created_at'] }}</td>
                            <td>
                            <a href="" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#acceptModal" data-application-id="{{ $application['id'] }}">Accept</a>
                            <a href="" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#rejectModal" data-application-id="{{ $application['id'] }}">Reject</a>

                            </td>
    </tr>
                    
                    
                    @endforeach

        <!-- secret code Modal -->
        <div class="modal fade" id="scodeModal" data-bs-backdrop="static" data-bs-keyboard="false"
                                tabindex="-1" aria-labelledby="singlePostLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="singlePostLabel">Enter the secret code</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <input type="Password" id="scode" placeholder="secret code">
                                            <input type="hidden" name="applicationId"  id="applicationIdInput">
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-success scodeEnter">okay</button>
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal" id="dismissModal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- secret code Modal -->


                <!-- confirm reject -->
                <div class="modal fade" id="rejectModal" data-bs-backdrop="static" data-bs-keyboard="false"
                    tabindex="-1" aria-labelledby="deleteLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">

                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="single-data" width="100%" height="100%">
                                    Are you sure you want to reject?
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">close</button>
                                <button type="button" class="btn btn-primary rejectConfirmBtn" >Reject</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- confirm reject -->

                <!--confirm accept -->
                <div class="modal fade" id="acceptModal" data-bs-backdrop="static" data-bs-keyboard="false"
                    tabindex="-1" aria-labelledby="deleteLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">

                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="single-data" width="100%" height="100%">
                                    Are you sure you want to Accept?
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">close</button>
                                <button type="button" class="btn btn-primary acceptConfirmBtn"  data-bs-toggle="modal"
                                    data-bs-target="#scodeModal" data-bs-dismiss="modal">Accept</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!--confirm accept -->
                </tbody>



            </table>

        </div>

    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>

    <script>

const acceptModal = document.getElementById('acceptModal');
acceptModal.addEventListener('show.bs.modal', (event) => {
  const button = event.relatedTarget; 
  const applicationId = button.dataset.applicationId; 
  const acceptBtn = document.querySelector(".acceptConfirmBtn");
  acceptBtn.setAttribute("data-application-id",applicationId);
});
const rejectModal = document.getElementById('rejectModal');
rejectModal.addEventListener('show.bs.modal', (event) => {
  const button = event.relatedTarget; 
  const applicationId = button.dataset.applicationId; 
  const rejectBtn = document.querySelector(".rejectConfirmBtn");
  rejectBtn.setAttribute("data-application-id",applicationId);

});
const scodeModal = document.getElementById('scodeModal');
scodeModal.addEventListener('show.bs.modal', (event) => {
  const button = event.relatedTarget; 
  const applicationId = button.dataset.applicationId; 
    scodeModal.querySelector('#applicationIdInput').value = applicationId; 
});

const table=document.getElementById("adapplication-table");
table.addEventListener("click",(e)=>
{
    if(e.target.classList.contains("scodeEnter"))
{
const secretCode= document.getElementById("scode").value;
const applicationID= document.getElementById("applicationIdInput").value;

const formData= new FormData();
formData.append("scode",secretCode);
formData.append("applicationId",applicationID);
console.log(formData);
fetch('/api/passScode',{
    method:"POST",
    headers:
    {
   
    },
    body: formData
}).then(response=>{return response.json()}

).then(data=>
{
    console.log(data);
    if(data.status == true)
{
    const dismissModal=document.getElementById("dismissModal").click();
const msg="user Registered successfully";
    showToast(msg);

fetch('/api/removeData',{
    method:"POST",
    headers:
    {

    },
    body:formData
}).then(response=>{
    // console.log(response)
    return response.json()
})
.then(data=>
{
    console.log(data);
    if(data.status==true)
{
    location.reload();
}
}
)

}
}
);
}
}
);

//accept operation


//accept operation

//reject operation


//reject operation



function showToast(msg)
{
var ToastMsg= msg;
    const toastHtml=`
<div class="toast align-items-center text-white bg-primary border-0" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="d-flex">
    <div class="toast-body">
${ToastMsg}
    </div>
    <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
  </div>
</div>`;
    const toastElement = document.createElement('div');
    toastElement.innerHTML = toastHtml;
    const toastContainer = document.getElementById('toast-container');
  toastContainer.appendChild(toastElement);
  const toast = new bootstrap.Toast(toastElement.querySelector('.toast'),{
    autohide:true,
    delay:5000
  });

  toast.show();
  toastElement.addEventListener('hidden.bs.toast', () => {
    toastElement.remove();
    if (toastContainer.children.length === 0) {
      toastContainer.style.display = 'none';
    }
  });
  toastContainer.style.display = 'block';
}

    </script>
</body>

</html>