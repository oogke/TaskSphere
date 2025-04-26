
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@500&display=swap" rel="stylesheet">

    <title>Ownah Homepage</title>
    <style>
        h1{
            text-align: center;
            font-size: 30px;
            font-family: 'Baloo 2', cursive;
           margin-top: 15px;
      
        }
      #attendance{
            min-width: 600px;
            width: auto;
         display: none;
            min-height: 300px;
            height: auto;
            margin-top: 20px;
            
        }
       
     table tbody tr{
        height: 70px;
     }
     #delete-btn{
    border-left: 1px solid blue;
    padding: 5px;
   }
   .attend-today{
    width: 80%;
    height: 380px;
   }
   #check-attendance{
margin: 30px 0px 20px 20px;
background-color: #7AB2D3;
color: white;
   }
    #update-attendance{
background-color: #7AB2D3;
color: white;
font-size: 20px;
position: absolute;
right: 10px;
top: 100px;

display: none;
   }
  .attend-today{
    width: 400px;
    display: flex;
    flex-direction: column;
    padding: 20px;
  }
  label{
    font-size: 1.5rem;
    font-family: 'Baloo 2', cursive;
    margin-top: 20px;

  }
  input{
   height: 35px;

  }

  select{
    height: 35px;
  }
  #attend-btn{
    height: 40px;
    margin-top: 20px;
    font-size: 20px;
    font-family: 'Baloo 2', cursive;
    background-color: #7AB2D3;
  }
  #attendance-alert{
margin-top: 10px;

  }
    </style>
</head>
<body>   

<div class="alert alert-warning alert-dismissible fade show" role="alert" id="attendance-alert">
  <strong>warning!</strong> If You don't update your attendance everyday it will be null and you need to meet admin to update it.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<button class="btn " id="check-attendance">Check Your Attendance</button>
<button class="btn " id="update-attendance">update Your Attendance</button>


 <form action="attendance.php" method="POST">
  <div class="container border border-dark attend-today" id="attendance-update">
<h1>Attendance Today</h1>
<label for="today-date">Date</label>
<input type="date" id="today-date" name="date">
<label for="">Attendance</label>
<select name="attendance" id="">
    <option value="present">Present</option>
    <option value="present">Absent</option>
    <option value="present">Half-day</option>
</select>
<button class="btn btn-primary" id="attend-btn" type="submit" name="submit">
Submit Attendance
</button>
</div>
</form>

<div class="attendance" id="attendance">
  <table class="table table-striped table-hover table-bordered align-middle">
        <thead>
            <tr>
                <th scope="col">S.N</th>
                <th scope="col">Date</th>
                <th scope="col">Attendance</th>
                
            </tr>
        </thead>
        <tbody>
     <?php
   $eusername=$_SESSION['user_panel']['username'];
     $query="Select * from attendance where employee_name='$eusername'";
    //   where employee_name='$eusername'
     $result=mysqli_query($con,$query);
     $n=1;
     while($data=mysqli_fetch_array($result))
     { 
     ?> 
  <tr>
<td><?php echo $n++;?></td>
<td><?php echo $data['attendance_date'];?></td>
<td><?php echo $data['attendance'];?></td>
  </tr> 
     <?php
     }
     ?>
        </tbody>

    </table>
  </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script>
      const checkAttendance=document.getElementById("check-attendance");
      const updateAttendanceBtn=document.getElementById("update-attendance");
      const attendanceUpdate=document.getElementById("attendance-update");
      const attendancetable=document.getElementById("attendance");
      checkAttendance.addEventListener("click",()=>
    {
      attendanceUpdate.style.display="none";
      checkAttendance.style.display="none";
      updateAttendanceBtn.style.display="block";
     updateAttendanceBtn.style.top="180px";
      attendancetable.style.display="block";
      attendancetable.style.marginTop="120px";
    });
    updateAttendanceBtn.addEventListener("click",
      ()=>
    {
      attendanceUpdate.style.display="flex";
      attendanceUpdate.style.marginTop="100px";
      attendancetable.style.display="none";
      checkAttendance.style.display="block";
      updateAttendanceBtn.style.display="none";
    }
    )
    </script>
</body>
</html>