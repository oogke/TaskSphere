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
                                    <td id="response-col">
                                        <!-- <a id="accept-btn" type="button" class="btn btn-primary"  data-bs-toggle="modal" data-bs-target="#codemodal">Accept</a> -->
                                        <button class="registerBtn" name="register" id="register-btn" data-bs-toggle="modal"
                                            data-bs-target="#codemodal">Register</button>
                                        <a href="reject.php?id=1"><button id="reject-btn">Reject</button></a>
                                    </td>
                                </tr>
                    @endforeach

     
        </tbody>   
        </table>
</div>
    </section>
    <script>

    </script>
</body>

</html>