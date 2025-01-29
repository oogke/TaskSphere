
<?php 
require('../../../connection.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Application Accept</title>
    <style>
        #offuserpopup1
{
    width: 300px;
    height: 190px;
border: 1px solid black;
margin:auto;
flex-direction: column;
margin-top: 100px;
z-index: 1;
padding: 10px 10px 20px 10px;
position: fixed;
background-color: white;
left: 450px;
top: 100px;  
display: flex;
}

#offuserpopup1 .reset-btn{
   position: relative;
   right: 0;

}
#offuserpopup1 form p{
    font-size:17px;
    padding: 35px 5px 15px 5px;

}
#offuserpopup1 .sub-btn{
    width: 150px;
    height: 50px;
    background-color: blue;
    color: white;
    border: 1px solid blue;
    border-radius:5px;
    position: relative;
    left: 53px;
}
.buttons{
    display: flex;
    flex-direction: row;
}
    </style>
</head>
<body>

<div id="offuserpopup1">
<h3 class="reset-heading">
<span>Secret Code</span>
<button type="reset" onclick="subpopup1()" class="reset-btn">X</button></h3>
<form action="accept.php" method="POST">
<p>Enter the secret code:</p>
<input type="password" class="scode-input" placeholder="Upto 5 character" name="profcode">
<input type="hidden" value="<?php echo $_GET['id'];?>" name="urlid" class="">
    <input type="submit" value="submit" name="submit">
</form>
</div> 
    <?php 
  if(isset($_POST['submit']))
  {
        $id=$_POST['urlid'];
       $profcode=$_POST['profcode']; 
$query1="SELECT * FROM papplication where paid='$id' ";
$result=mysqli_query($con,$query1);
$data=mysqli_fetch_array($result);

$profile=$data['profile'];
$fullname=$data['fullname'];
$username=$data['username'];
$address=$data['address'];
$phnum=$data['phnum'];
$email=$data['email'];
$password=$data['password'];
$created_at=$data['created_at'];
$check_query="SELECT * FROM professional WHERE email='$email'";
$check_result=mysqli_query($con,$check_query);
$data1=mysqli_fetch_array($check_result);
if($check_result)
{
if(mysqli_num_rows($check_result)>0)
{
if($email=$data1['email'])
{
    echo" <script>
    alert('This email is already registered.');
    window.location.href='index.php';
    </script>";
}
}
else{ 
    
$insert_query="INSERT INTO professional (profile, fullname, username, address, phnum, email, password, pcode, created_at) VALUES('$profile','$fullname','$username','$address','$phnum','$email','$password','$profcode','$created_at')";
$result1=mysqli_query($con,$insert_query);
if($result1)
{
    echo" <script>
alert('Registration successful');
</script>";
$remove_query="Delete from papplication where paid='$id'";
$remove_result=mysqli_query($con,$remove_query);

if($remove_result)
{
    
    echo" <script>
     window.location.href='index.php';
    </script>";
}
}
else{

    echo" <script>
    alert('Registration failed');
    window.location.href='index.php';
    </script>";
}
}
}  
}
    ?>
 <script>
                    function subpopup1()
            {
                let y=document.getElementById('offuserpopup1');
            
                if(y.style.display=="none" )
                {
                    y.style.display="flex";
                   
                    }
                    else{
                        y.style.display="none";
                       
                        }
                        }
    </script> 
</body>
</html>
<!-- //index page
function subpopup()
    //         {
    //             let x=document.getElementById('offuserpopup');
    //             if(x.style.display=="none")
    //             {
    //                 x.style.display="flex";
    //                 }
    //                 else{
    //                     x.style.display="none";
    //                     }
    //                     }
    //                     function subpopup1()
    //         {
    //             let y=document.getElementById('offuserpopup1');
    //             let z=document.getElementById('offuserpopup');
    //             if(y.style.display=="none" )
    //             {
    //                 y.style.display="flex";
    //                 z.style.display="none";
    //                 }
    //                 else{
    //                     y.style.display="none";
                       
    //                     }
    //                     } -->
<!-- 

    <div id="offuserpopup">
<h3 class="reset-heading">
<span>Professional Application</span>
<button type="reset" onclick="subpopup()" class="reset-btn">X</button></h3>
<p>Are You sure You want to accept Application?</p>
<div class="buttons">
    <a href="accept.php?id=1"><button >Yes,Sure</button></a>
    <a href="#"><button onclick="subpopup()">No</button></a>
</div>
 onclick="subpopup1()" -->
<!-- </div>
<div id="offuserpopup1">
<h3 class="reset-heading">
<span>professional Application</span>
<button type="reset" onclick="subpopup1()" class="reset-btn">X</button></h3>
<form action="accept.php" method="GET">
<p>Enter the secret code:</p>
<input type="password" class="scode-input" placeholder="Upto 5 character" name="scode">
    <a href="accept.php?id=1"><input type="submit" value="submit" name="submit"></a>
</form>
</div>       -->

<!-- 
<div class="modal fade" id="codemodal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="CodemodalLabel" aria-hidden="true">
      
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="CodemodalLabel">Enter verification code</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" id="modalBody">
                <div id="codeInput">
      <input type="text" placeholder="Enter here" name="verifcodeUser" id="code">
      <input type="hidden" value="user" name="role" id="role">
      <button class="btn btn-primary" id="code-submit">Submit</button>
    </div>
                </div>
            </div>
        </div>
    </div> -->