<?php  require('../../../connection.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reject Application</title>
</head>
<body>
    <?php
    if(isset($_GET['id']))
    {
    $id=$_GET['id'];
    $query1="Delete FROM papplication where paid='$id'";
    $result1=mysqli_query($con,$query1);

    if($result1)
    {
        
    echo" <script>
    alert('professional application REJECTED!!');
    window.location.href='index.php';
    </script>";
    }
    }
    ?>
</body>
</html>