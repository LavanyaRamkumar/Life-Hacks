<?php
  session_start();
 ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>LOGIN</title>
    <style media="screen">
      h1
      {
        text-align: center;
        font-size: 50px;
      }
      h2
      {
        text-align: center;
      }
      body
      {
        background-image: url("bg.jpg");
        background-size: cover;
        background-attachment: fixed;
        background-repeat: no-repeat;
        width: 100%;
        height: 100%;
        overflow: hidden;
      }
      input[type="text"]
      {
        border: none;
        height:30px;
        width: 400px;
        
      }
      input[type="password"]
      {
        
        border: none;
        height:30px;
        width: 400px;
      }
      input[type="submit"]
      {
        border: none;
        margin-left:275px;
        margin-bottom: 100px;
        width: 350px;
        padding: 30px;
        border-radius: 20px;
        background-color: rgba(255,255,255,0.9);
      }
      input[type="submit"]:hover
      {
        border: none;
        margin-left:275px;
        margin-bottom: 100px;
        width: 350px;
        padding: 30px;
        border-radius: 20px;
        background-color: rgba(0,0,0,0.9);
        color: white;
      }
      .contain
      {
        margin-top: 10%;
        margin-left: 22%;
        width:60%;
        height:80%;
        background-color: rgba(255,255,255,0.6);
      }
    </style>
  </head>
  <body>
    <div class="contain">
      <br>
    <h1>LOGIN</h1>
    <form class="" action="login.php" method="post">
      <h2> Enter your username <br>
      <br>
      <input type="text" name="id" required></h2>
      <h2>Enter your password <br><br>
        <input type="password" name="password" required></h2>
        <br><br>
        <input type="submit">
    </form>
  </div>

<?php
if(isset($_POST["id"]))
{
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "test";
$check = "FALSE";
$c = mysqli_connect($servername,$username,$password,$dbname);
if(!$c)
{
    echo("conection failed!<br>");
}
else
{
//  echo("conection established!<br>");
  $q = "SELECT * FROM super_user";
  $res = mysqli_query($c,$q);
  while(($val = mysqli_fetch_assoc($res))!=NULL)
  {
    if($val["SU_Name"] == $_POST["id"] && $val["SU_pass"] == $_POST["password"])
      {
        $check = "TRUE";
        $_SESSION["ID"] = $val["SU_ID"];
      }

  }
if($check == "TRUE")
{
  echo "WELCOME ".$val["SU_Name"];
  header("Location:http://localhost/DBMS_PROJECT/select/");
}
else {
  echo "TRY AGAIN";
 }
}
}
 ?>

</body>
</html>
