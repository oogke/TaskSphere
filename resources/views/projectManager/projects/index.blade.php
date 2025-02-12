<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>

      .features {
        background: #f8f9fc;
        padding: 50px 20px;
      }

      .features .card {
        border: none;
        border-radius: 10px;
        transition: transform 0.3s ease;
        background: #7AB2D3; /* New primary color */
        color: white;
        width: 25%;
        height: 300px;
        display: flex;
        flex-direction: column;
     
      
       /* padding: 20px 0 20px 23px; */
      }
      .features .card .card-title{
        font-size: 24px;
        font-weight: bold;
        text-align: center;
        border-bottom: 2px solid white;
        margin-bottom: 10px;
        padding: 0px 5px 10px 5px;
     
      }
      .features .card:hover {
        transform: translateY(-10px);
        background: #4e8cab; /* Darker shade for hover */
      }

      .features .card .btn-primary {
        background: #4e8cab; /* Match hover color */
        border: none;
      }

      .features .card .btn-primary:hover {
        background: #3a6d86; /* Darker blue for hover on buttons */
      }
      .card-text
      {
        font-size: 20px;
       padding:0 0 0 10px;
  
    margin: 0;
      }
.check
{
background-color: white;
width: 100px;
height: 40px;


}
.check{
    text-decoration: none;
    width: 150px;
    height: 50px;
    margin-top: 20px;
    margin-left: 28%;
    border-radius: 10px;
}
.check a{
    text-decoration: none;
    color:  #3a6d86;
    font-size: 20px;
}
    </style>
</head>
<body>
<section class="features py-5">
<div class="col-md-4 project">
            <div class="card shadow-sm text-center">
              <div class="card-body">
                <h5 class="card-title">Task and Employee Management system</h5>
                <p class="card-text">This project is used to manage task in any company Lorem ipsum dolor sit amet. Lorem ipsum dolor sit.</p>
              <button class="check"><a href="attendance.php" class="btn btn-light ">Check</a> </button>
              </div>
            </div>
          </div>
</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
    crossorigin="anonymous"></script>

</body>
</html>