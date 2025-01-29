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

        .adapplication-table {
            width: 100%;

        }

        .adapplication-table table {
            width: 100%;

        }

        .adapplication-table table th {
            font-size: 18px;
        }

        .adapplication-table table tr {
            height: 100px;

        }

        .adapplication-table table tr td {
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
    <section class="adapplication">
        <h1 id="adapplication-head">Employee Register Application</h1>
        <div class="adapplication-table">
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
                                <a href="" id="view-btn" class="btn btn-success" data-bs-toggle="modal"
                                    data-bs-target="#acceptModal" data-bs-postid="${advenact.id}">Accept</a>
                                <a href="" id="delete-btn" class="btn btn-danger" data-bs-toggle="modal"
                                    data-bs-target="#rejectModal" data-bs-postid="${advenact.id}">Reject</a>

                            </td>

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
                                            <input type="hidden" name="scode" value="{{ $application['id'] }}">
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-success" id="acceptBtn">okay</button>
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- secret code Modal -->
                        </tr>
                    @endforeach


                </tbody>




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
                                <button type="button" class="btn btn-primary" id="rejectConfirmBtn">Reject</button>
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
                                <button type="button" class="btn btn-primary" id="acceptConfirmBtn" data-bs-toggle="modal"
                                    data-bs-target="#scodeModal" data-bs-dismiss="modal">Accept</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!--confirm accept -->
            </table>

        </div>

    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>

    <script>
const rejectBtn = document.getElementById("rejectConfirmBtn");
const acceptBtn = document.getElementById("acceptBtn");


//accept operation


//accept operation

//reject operation


//reject operation
    </script>
</body>

</html>