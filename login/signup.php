<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>SIGN UP</title>
    <style>
    body
    {
      background-image: url("signup.jpg");
      background-size: cover;
      background-attachment: fixed;
    }
    input[type=text],input[type=password],input[type=email],input[type=date],input[type=tel] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    img
    {
      margin-left: 300px;
    }

    /* Set a style for all buttons */
    input[type="submit"] {
        background-color: #4CAF50;
        border-radius: 20px;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
    }
    .signup
    {
      margin-left: 100px;
    }
    /* Extra styles for the cancel button */
    .cancelbtn {
        padding: 14px 20px;
        background-color: black;
        border: 1px solid white;
    }

    /* Float cancel and signup buttons and add an equal width */
    .cancelbtn,.signupbtn {
        float: left;
        width: 50%;
        background-color: black;
        border: 1px solid white;
    }

    /* Add padding to container elements */
    .container {
        padding: 16px;
        width: 40%;
        margin: auto;
        margin-top: 2%;

    }
    .signupbtn
    {
      width: 10%;
    }

    /* Clear floats */
    .clearfix::after {
        content: "";
        clear: both;
        display: table;
    }

    /* Change styles for cancel button and signup button on extra small screens */
    @media screen and (max-width: 300px) {
        .cancelbtn, .signupbtn {
           width: 100%;
        }
    }
    .thumbs
    {
      display: flex;
      justify-content: space-between;
    }
    .check
    {
      display: flex;
      flex-direction: column;
    }
    .container2
    {
      width: 50%;
      color: white;
      margin-left: 400px;
      background-color: rgba(0,0,0,0.7);
      padding: 10px;
    }
    .h1text
    {
      margin-left: 700px;
      margin-top: 10px;
      color: white;
      font-size: 40px;
    }
    </style>
  </head>
  <body>
    <h1 class="h1text">SIGN UP</h1>
    <div class="container2">

    <form action="signup.php" method="post">
      <h3>Enter your EMAIL : <br><input type="email" name="email" required placeholder="dave@comp.com"></h3>
      <h3>Enter username : <br><input type="text" name="id"  required placeholder="username" ></h3>
      <h3>Enter DOB:  <br><input type="date" name="dob" require placeholder="29/04/1998"></h3>
      <h3>Enter Ph-number: <br><input type="tel" name="number" require placeholder="8988754659"></h3>
      <h3>Enter ADDRESS: <br><input type="text" name="add" require placeholder="INDIA" value="india" ></h3>
      <h3>Enter password :  <br><input type="password" required name="pass" > </h3>
      <h3>Re - Enter password: <br><input type="password" required name="repassword" > </h3>
      <input type="submit" value="SUBMIT">
    </form>
  </div>
    <?php
    if(isset($_POST["id"]))
    {
     $servername = "localhost";
     $username = "root";
     $password = "";
     $dbname = "test";
     $c = mysqli_connect($servername,$username,$password,$dbname);
     if($_POST["pass"] == $_POST["repassword"] && $_POST["pass"] != NULL){
         $q = "INSERT INTO `super_user` (`SU_Name`, `SU_Email`, `SU_DOB`, `SU_Ph_No`, `SU_Address`,`SU_pass`) VALUES ('$_POST[id]','$_POST[email]','$_POST[dob]','$_POST[number]','$_POST[add]','$_POST[pass]')";
         mysqli_query($c,$q);
         header("Location:http://localhost/DBMS_PROJECT/login/login.php");
     }
     else
        echo ("reenter the password ");
    }
    ?>
</body>
</html>
