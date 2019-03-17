<html>
<head>
	<title> AIR </title>
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
		background-image: url("../a.jpg");
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
	.containh2
	{
		margin-left: 35%;
		padding: 10px;
		border-radius: 20px;
		width:30%;
		height:5%;
		background-color: rgba(0,0,0,0.8);
		color: white;
	}
	.containH1
	{
		margin-left: 5%;
		padding: 10px;
		border-radius: 20px;
		width:90%;
		height:5%;
		background-color: rgba(0,0,0,0.8);
		color: white;
	}
	select
	{
		width: 30%;
		font-size: 30px;
	}
	button
	{
		border: none;
		border-radius: 20px;
		width: 50%;
		font-size: 30px;
		padding: 20px;
	}
	button:hover
	{
		border: none;
		border-radius: 20px;
		width: 50%;
		padding: 20px;
		font-size: 30px;
		background-color: rgba(0, 0, 0, 0.6);
		color: white;
	}
	</style>


	</head>
<body>
	<h1 class="containH1">LIFE HACK - Travel - AIR</h1>
<h2 class="containh2">From:</h1>
<select name="from">
<?php
$connect = mysqli_connect("localhost","root","","LifeHacks");
$query1="SELECT * FROM travel_airways_airport";
$res1=mysqli_query($connect,$query1);
while($row = mysqli_fetch_assoc($res1))
{$from = $row["A_name"];
echo "<option value='$from'>$from</option>";
}
echo"</select></br>";
echo"<h2 class=\"containh2\">To:</h1>";
echo"<select name='to'>";
$query2="SELECT * FROM travel_airways_airport";
$res2=mysqli_query($connect,$query2);
while($row1 = mysqli_fetch_assoc($res2))
{$to = $row1["A_name"];
echo "<option value='$to'>$to</option>";
}
echo"</select></br>";
echo"<h2 class=\"containh2\">Date:</h1>";
echo"<select name='date'>";
$query3="SELECT * FROM travel_airways_a_travel";
$res3=mysqli_query($connect,$query3);
while($row2 = mysqli_fetch_assoc($res3))
{$date = $row2["A_date"];
echo "<option value='$date'>$date</option>";
}

?>
</select>
<br><br>
<button value='Submit' onclick='run()'>Submit</button>
<script>
function run(){
	var to = document.getElementsByTagName("select")[1].value;
	var fro= document.getElementsByTagName("select")[0].value;
	var date=document.getElementsByTagName("select")[2].value;
	//var seats=document.getElementsByTagName("input")[0].value;
	console.log(to);
	document.cookie = "to="+to;
	document.cookie = "fro="+fro;
	document.cookie = "date="+date;
	window.location = "http://localhost/DBMS_Project/travel/Air/check12.php";
}
</script>
</body>
</html>
