<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">

		<title>Movie Database</title>

		<!-- Loading third party fonts -->
		<link href="http://fonts.googleapis.com/css?family=Roboto:300,400,700|" rel="stylesheet" type="text/css">
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

		<!-- Loading main css file -->
		<link rel="stylesheet" href="style.css">

		<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->
		<style media="screen">
		.contain
		{
			margin-top: 1%;
			margin-left: 22%;
			padding: 10px;
			border-radius: 20px;
			width:60%;
			height:80%;
			background-color: rgba(255,255,255,0.6);
			color: black;
		}
			body
			{
				width: 100%;
				text-align: center;
			}
			table
			{
				width: 80%;
				margin-left: 10%;
				background-color: rgba(204, 238, 255, 0.7);
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
		</style>
	</head>


	<body>


		<div id="site-content">
			<header class="site-header">
				<div class="container">
					<a href="index.php" id="branding">
						<img src="images/logo.png" alt="" class="logo">
						<div class="logo-copy">
							<h1 class="site-title" style="font-size:40px;">Life Hacks</h1>
							<small class="site-description" style="font-size:30px;">Making things easy!!!!</small>
						</div>
					</a> <!-- #branding -->

		</div>

		<div style="padding-left:100px;padding-top:30px;">

			<form action="index.php" method="post">
				<p style="font-size:20px;">
					Please choose your Movie :
					<select name = "genre">
						<option value="ALL">ALL</option>
						<option value = "Drama">Drama</option>
						<option value = "Thriller">Thriller</option>
						<option value = "Fantasy">Fantasy</option>
						<option value = "Romance">Romance</option>
						<option value = "Science Fiction">Science Fiction</option>
						<option value = "Action">Action</option>
						<option value = "Mystery">Mystery</option>
						<option value = "Crime">Crime</option>
						<option value = "War">War</option>
						<option value = "Comedy">Comedy</option>

					</select>
				  </p>
				<p style="font-size:20px;">Please select the rating of the movie :
					<select name="rating">
						<option value = "1">1</option>
						<option value = "2">2</option>
						<option value = "3">3</option>
						<option value = "4">4</option>
						<option value = "5">5</option>
						<option value = "6">6</option>
						<option value = "7">7</option>
						<option value = "8">8</option>
						<option value = "9">9</option>
					</select>
				</p>
				<p style="font-size:20px;">Please select your Theatre :
					<select name="Theatre">
						<option value = "PVR_01">PVR Cinemas</option>
						<option value = "GALAXY_01">GALAXY Cinemas</option>
						<option value = "IMAX_01">IMAX Movies</option>
						<option value = "INOX_01">INOX Movies</option>
						<option value = "Cinepolis_01">Cinepolis Movies</option>
					</select>
				</p>


     <input type="submit">
			</form>
			<br>
			<br>

</div>
<?php
if(isset($_POST['genre']))
{
		$gen = $_POST['genre'];

if(isset($gen))
{
	/*  echo $gen;*/
}
if(isset($_POST['rating']))
{
		$rat = $_POST['rating'];
}
if(isset($rat))
{
	/*  echo $rat; */
}
		if(isset($_POST['Theatre']))
		{
				$theat = $_POST['Theatre'];
		}
		if(isset($theat))
		{
			/*  echo $theat;  */
		}
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

	 if($gen == "ALL")
	 {
		$result = mysqli_query($c,"SELECT * FROM movie_main where Rating >= '$rat'");
		echo "<h1 class=\"contain\">FULL LIST OF MOVIES rated above $rat<h1>";
		 echo "<table>
		 <tr>
		 <th style = \"font-size:25px;\">Movie</th>
		 <th style = \"font-size:25px;\">Rating</th>
		 <th style = \"font-size:25px;\">Genre</th>
		 <th style = \"font-size:25px;\">Length</th>
		 </tr>";
		 while($row = mysqli_fetch_array($result))
		 {		 echo "<tr>";
					 echo "<td height = \"70\" align = \"center\" style = \"font-size:25px;\">" . $row['Title'] . "</td>";
					 echo "<td height = \"70\" align = \"center\" style = \"font-size:25px;\">" . $row['Rating'] . "</td>";
					 echo "<td height = \"70\" align = \"center\" style = \"font-size:25px;\">" . $row['Genre'] . "</td>";
					 echo "<td height = \"70\" align = \"center\" style = \"font-size:25px;\">" . $row['length'] . "</td>";
					 echo "</tr>";
		 }
		 echo "</table>";

	 }
	else
	 {
		 $result = mysqli_query($c,"SELECT * FROM movie_main where Rating >= '$rat'");


	 echo "<h1 class=\"contain\">$gen and rated above $rat<h1>";
		echo "<table>
		<tr>
		<th style = \"font-size:25px;\">Movie</th>
		<th style = \"font-size:25px;\">Rating</th>
		<th style = \"font-size:25px;\">Genre</th>
		<th style = \"font-size:25px;\">Length</th>
		</tr>";

		while($row = mysqli_fetch_array($result))
		{
			$v = explode("/",$row["Genre"]);
			if($gen == $v[0] || $gen == $v[1] )
				{
					echo "<tr>";
					echo "<td height = \"70\" align = \"center\" style = \"font-size:25px;\">" . $row['Title'] . "</td>";
					echo "<td height = \"70\" align = \"center\" style = \"font-size:25px;\">" . $row['Rating'] . "</td>";
					echo "<td height = \"70\" align = \"center\" style = \"font-size:25px;\">" . $row['Genre'] . "</td>";
					echo "<td height = \"70\" align = \"center\" style = \"font-size:25px;\">" . $row['length'] . "</td>";
					echo "</tr>";
				}
		}
		echo "</table>";
}
		mysqli_close($c);
	}
?>
<!--PHP files -->
	</body>

</html>
