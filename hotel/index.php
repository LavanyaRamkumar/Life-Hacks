<?php
  session_start();
 ?>
<!DOCTYPE html>
<html>
<head>
	<title> Hotels </title>
    <style type="text/css">
    	h1{color: lightblue;
    	font-family: 'Tangerine', serif;
        font-size: 100px;}
        body{
        	background :url("./bg.jpg");
        	background-size:100% ;
          text-align: center;
        }
        p{font-family:courier new;font-size: 20px;color: lightblue;}

        .button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 10px 500px;
    cursor: pointer;
        background-color: white;
    color: black;
    border: 2px solid #008CBA;
      }
      table
      {
        width: 80%;
        margin-left: 10%;
        background-color: rgba(255, 255, 255, 0.5);
        color: black;
      }
      th
      {
        border: none;
      }
      tr
      {
         border:none;
      }
      td
      {
        border: none;
        border-top:solid 2px black ;
      }
      h2
      {

      }
    </style>


    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine">

</head>
<body>
	<h1>Hotels</h1>

	<form action="index.php" method="post">

		<p>Please select the prefered type of Room
			<select name="roomType">
				<option value="Delux">Delux</option>
				<option value="Single">Single</option>
				<option value="Double">Double</option>
				<option value="Economy">Economy</option>
			</select>
		</p>
		<p>Please select your Budget
			<select name="budget">
				<option value="2500">Less than 2500 Rupees</option>
				<option value="5000">2500-5000 Rupees</option>
				<option value="10000">5001-10000 Rupees</option>
				<option value="10001">Above 10001</option>
			</select>
		</p>
		<p>Select the Discount amount you wish to avail
			<select name="discount">
			<option value="20"> &lt 20%</option>
			<option value="25"> &lt 25%</option>
			<option value="30"> &lt 30% </option>
			</select>
		</p>
		<input type="submit" class="button" value="Check Avilability">

	</form>
  <?php
  if(isset($_POST['roomType']))
  {
      $rt = $_POST['roomType'];

  if(isset($rt))
  {
    //  echo $rt;
  }
  if(isset($_POST['budget']))
  {
      $bud = $_POST['budget'];
  }
  if(isset($bud))
  {
    //  echo $bud;
  }
      if(isset($_POST['discount']))
      {
          $dis = $_POST['discount'];
      }
      if(isset($dis))
      {
      //    echo $dis;
      }
  $x = (int)$bud  - 2500;
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "dbms_project_2018";
  $check = "FALSE";
  $c = mysqli_connect($servername,$username,$password,$dbname);
      if(!$c)
      {
          echo("connection failed!<br>");
      }

     if(isset($_POST['roomType']))
     {
       echo  "<h2>$rt</h2>";
       $result = mysqli_query($c,"SELECT * FROM hotels as h,rooms as r,cost as c where r.Type='$rt' and
          r.H_id=h.H_id and c.Amount<='$bud' and c.Amount>=$x and c.Discount<='$dis' and c.H_id=r.H_id and c.Room_id=r.Room_id");
     }

      echo "<table border='1'>
      <tr>
      <th>hotel id </th>
      <th>hotel name </th>
      <th>price</th>
      <th>discount</th>
      <th>type</th>
      </tr>";

      while($row = mysqli_fetch_array($result))
      {
      echo "<tr>";
      echo "<td>" . $row['H_id'] . "</td>";
      echo "<td>" . $row['Name'] . "</td>";
      echo "<td>" . $row['Amount'] . "</td>";
      echo "<td>" . $row['Discount'] . "</td>";
      echo "<td>" . $row['Type'] . "</td>";
      echo "</tr>";
      }
      echo "</table>";

      mysqli_close($c);
      }
  ?>











</body>
</html>
