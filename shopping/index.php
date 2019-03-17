<?php
  session_start();
 ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>SHOPPING</title>
     <style media="screen">
      h1
      {
        text-align: center;
        font-size: 30px;
      }
      a
      {
        border-radius: 20px;
        margin-top: 500px;
        font-size: 20px;
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
        width: 95%;
        height: 100%;
        overflow-x: hidden;
        text-align: center;
      }

      input[type="submit"]
      {
        border: none;
        margin-left:0px;
        margin-bottom: 10px;
        width: 350px;
        padding: 30px;
        border-radius: 20px;
        background-color: rgba(255,255,255,0.9);
      }
      input[type="submit"]:hover
      {
        border: none;
        margin-left:0px;
        margin-bottom: 10px;
        width: 350px;
        padding: 30px;
        border-radius: 20px;
        background-color: rgba(0,0,0,0.9);
        color: white;
      }
      .contain
      {
        margin-top: 1%;
        margin-left: 22%;
        padding: 10px;
        border-radius: 20px;
        width:60%;
        height:80%;
        background-color: rgba(255,255,255,0.6);
      }
      .containH1
      {
        margin-left: 5%;
        padding: 5px;
        border-radius: 20px;
        width:90%;
        height:80%;
        background-color: rgba(255,255,255,0.6);
      }
    </style>
  </head>
  <body>
      <div class="containH1">
          <h1>
              LIFE HACK
        <br>
          <h2>
              SHOPPING
          </h2>
      </div>
    <div class="contain" id="mainDiv">
      <br>
    <form class="" action="index.php" method="post">
      <h2> SELECT Category<br>
      <br>
      <select name="cat" id="cat">
          <option value="1" selected >BIKE_AND_CAR</option>
          <option value="2">Personal_Care</option>
          <option value="3">Clothing</option>
          <option value="4">Electronic</option>
          <option value="5">ALL</option>
      </select>
        <br><br>
        <input type="submit">
    </form>
  </div>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "dbms_project_2018";
$kk = "cat";
if(isset($_POST[$kk])){
$c = mysqli_connect($servername,$username,$password,$dbname);
if(!$c)
{
    echo("conection failed!<br>");
}
else
{
//  echo("conection established!<br>");
  $q = "SELECT * FROM shopping_website_list where C_ID = '$_POST[$kk]'";
  $res = mysqli_query($c,$q);
  $qq = "SELECT * FROM shopping_category where C_ID = '$_POST[$kk]'";
  $res1 = mysqli_query($c,$qq);
  $val1 = mysqli_fetch_assoc($res1);
  echo "<script>
    var el = document.createElement(\"h2\");
    el.innerHTML = \"$val1[C_Name]<br><br>\" ;
    el.style.marginTop = \"20px\";
    document.querySelector(\"#mainDiv\").appendChild(el);
  </script>";
  while(($val = mysqli_fetch_assoc($res))!=NULL)
  {
    echo "<script>
      var el = document.createElement(\"a\");
      el.setAttribute(\"href\",\"$val[Website]\");
      el.innerHTML = \"$val[Website_name]<br><br>\" ;
      el.style.marginTop = \"20px\";
      document.querySelector(\"#mainDiv\").appendChild(el);
    </script>";
  }

}
}
 ?>

</body>
</html>
