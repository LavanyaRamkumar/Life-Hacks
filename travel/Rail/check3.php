<html>
<head>
  <title>RAIL</title>
  <style>
  body
  {
    background-image: url("../r.jpg");
    background-size: cover;
    background-attachment: fixed;
    background-repeat: no-repeat;
    text-align: center;
  }
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
</style>
</head>
<body>
  <h1 class="containH1">LIFE HACK - TRAVEL - RAIL</h1>
<table>
<tr bgcolor="DCDCDC">
      <th>R_ID</th>
      <th>DEPARTURE</th>
	  <th>ARRIVAL</th>
	  <th>DATEOFTRAVEL</th>
	  <th>TIME_OF_DEP</th>
	  <th>TIME_OF_ARR</th>
	  <th>COACH</th>
    </tr>
<?php
extract($_GET);
$a=$_GET["a"];

$r_id=$_COOKIE["r_id"];
$fro=$_COOKIE["fro"];
$to=$_COOKIE["to"];
$date=$_COOKIE["date"];
$dep=$_COOKIE["dep"];
$arr=$_COOKIE["arr"];
$coach=$_COOKIE["coach"];
$avail=$_COOKIE["avail"];
$connect = mysqli_connect("localhost","root","","LifeHacks");
echo "<tr><td>$r_id</td>";
echo "<td>$fro</td>";
echo "<td>$to</td>";
echo "<td>$dep</td>";
echo "<td>$arr</td>";
echo "<td>$date</td>";
echo "<td>$coach</td></tr>";
echo "</table>";
echo "<table>";
echo "<tr>";
echo "<th>Name</th></tr>";


foreach($a as $suid)
{echo $suid;
$res=mysqli_query($connect,"SELECT * FROM super_user WHERE SU_ID='$suid'");
if (!$res) {
echo ("hello");
trigger_error(mysqli_error($res));
}

while($row=mysqli_fetch_assoc($res))
{echo "hi";
	$name=$row["SU_Name"];
$dob=$row["SU_DOB"];
echo "<tr><td>$name</td>";
echo "<td>$dob</td>";
echo "<td>$avail</td></tr>";
$avail=$avail-1;
}
}

echo "</table>";
$query1="UPDATE travel_railway_coach SET availability = '$avail' where R_ID='$r_id'";
$res1=mysqli_query($connect,$query1);

$query2="select * from travel_railway_price where R_ID='$r_id' and Coach='$coach'";
$res2=mysqli_query($connect,$query2);
while($row=mysqli_fetch_assoc($res2))
{$price=$row["Amt"];}
echo $price*sizeof($a);
?>

</body>
</html>
