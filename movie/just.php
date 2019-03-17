<?php
 session_start();
 ?>
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

	</head>


	<body>


		<div id="site-content">
			<header class="site-header">
				<div class="container">
					<a href="index.html" id="branding">
						<img src="images/logo.png" alt="" class="logo">
						<div class="logo-copy">
							<h1 class="site-title" style="font-size:40px;">Life Hacks</h1>
							<small class="site-description" style="font-size:30px;">Making things easy!!!!</small>
						</div>
					</a> <!-- #branding -->

					<div class="main-navigation">
						<button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
						<ul class="menu">
							<li class="menu-item current-menu-item"><a href="index.html">Home</a></li>
							<li class="menu-item"><a href="#">About</a></li>
							<li class="menu-item"><a href="#">Movie reviews</a></li>
							<li class="menu-item"><a href="#">Join us</a></li>
							<li class="menu-item"><a href="#">Contact</a></li>
						</ul> <!-- .menu -->

					</div>

		</div>

		<div style="padding-left:100px;padding-top:30px;">

			<form action="in.php" method="post">
				<p style="font-size:20px;">
					Please choose your Movie :
					<select name = "genre">
						<option value="ALL">ALL</option>
						<option value = "Drama">Drama</option>
						<option value = "Drama/Thriller">Thriller</option>
						<option value = "Drama/Fantasy">Fantasy</option>
						<option value = "Drama/Romance">Romance</option>
						<option value = "Fantasy/Science Fiction">Science Fiction</option>
						<option value = "Drama/Action">Action</option>
						<option value = "Science Fiction/Thriller">Thriller-Science Fiction</option>
						<option value = "Drama/Mystery">Mystery</option>
						<option value = "Crime/Thriller">Crime-Thriller</option>
						<option value = "Thriller/Action">Action-Thriller</option>
						<option value = "War/Thriller">War</option>
						<option value = "Drama/Comedy">Comedy</option>

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

		<footer class="site-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-2">
						<div class="widget">
							<h3 class="widget-title">About Us</h3>
							<p>Movies is part of Life Hacks which is the biggest database of information related to our everyday lives.Happy to Help!</p>
						</div>
					</div>
					<div class="col-md-2">
						<div class="widget">
							<h3 class="widget-title">Recent Review</h3>
							<ul class="no-bullet">
								<li><a href="#">Lorem ipsum dolor</a></li>
								<li><a href="#">Sit amet consecture</a></li>
								<li><a href="#">Dolorem respequem</a></li>
								<li><a href="#">Invenore veritae</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-2">
						<div class="widget">
							<h3 class="widget-title">Help Center</h3>
							<ul class="no-bullet">
								<li><a href="#">Lorem ipsum dolor</a></li>
								<li><a href="#">Sit amet consecture</a></li>
								<li><a href="#">Dolorem respequem</a></li>
								<li><a href="#">Invenore veritae</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-2">
						<div class="widget">
							<h3 class="widget-title">Join Us</h3>
							<ul class="no-bullet">
								<li><a href="#">Lorem ipsum dolor</a></li>
								<li><a href="#">Sit amet consecture</a></li>
								<li><a href="#">Dolorem respequem</a></li>
								<li><a href="#">Invenore veritae</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-2">
						<div class="widget">
							<h3 class="widget-title">Social Media</h3>
							<ul class="no-bullet">
								<li><a href="#">Facebook</a></li>
								<li><a href="#">Twitter</a></li>
								<li><a href="#">Google+</a></li>
								<li><a href="#">Pinterest</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-2">
						<div class="widget">
							<h3 class="widget-title">Newsletter</h3>
							<form action="#" class="subscribe-form">
								<input type="text" placeholder="Email Address">
							</form>
						</div>
					</div>
				</div> <!-- .row -->

				<div class="colophon">Copyright 2014 .All Rights Reserved.</div>
			</div> <!-- .container -->
	</footer>
  <?php
   session_start();
  ?>
  <html>
  <body>
  <?php
  if(isset($_POST['genre']))
  {
      $gen = $_POST['genre'];
  }
  else {
    echo "Not done";
  }
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
  $servername = "jaydeeps-macbook-air.local";
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
     }
     elseif ($gen == "Drama")
     {
      $result = mysqli_query($c,"SELECT * FROM movie_main where Rating >= '$rat' and Genre LIKE 'Drama/%' ");
     }
    else
     {
       $result = mysqli_query($c,"SELECT * FROM movie_main where Genre = '$gen' and Rating >= '$rat'");
     }




      echo "<table width = \"100%\" bgcolor = \"#cceeff\">
      <tr>
      <th style = \"font-size:25px;\">Movie</th>
      <th style = \"font-size:25px;\">Rating</th>
      <th style = \"font-size:25px;\">Genre</th>
      <th style = \"font-size:25px;\">Length</th>
      </tr>";

      while($row = mysqli_fetch_array($result))
      {
      echo "<tr>";
      echo "<td height = \"70\" align = \"center\" style = \"font-size:25px;\">" . $row['Title'] . "</td>";
      echo "<td height = \"70\" align = \"center\" style = \"font-size:25px;\">" . $row['Rating'] . "</td>";
      echo "<td height = \"70\" align = \"center\" style = \"font-size:25px;\">" . $row['Genre'] . "</td>";
      echo "<td height = \"70\" align = \"center\" style = \"font-size:25px;\">" . $row['length'] . "</td>";
      echo "</tr>";
      }
      echo "</table>";

      mysqli_close($c);
  ?>

	</body>

</html>
