<html>
<head>
</head>
<body>
<table>
<tr bgcolor="DCDCDC">
    <th>R_ID</th>
    <th>DEPARTURE</th>
	  <th>ARRIVAL</th>
	  <th>DATEOFTRAVEL</th>
	  <th>TIME_OF_DEP</th>
	  <th>TIME_OF_ARR</th>
	  <th>CLASS</th>
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
$query1="UPDATE travel_airways_coach SET A_Availability = '$avail' where A_ID='$r_id'";
$res1=mysqli_query($connect,$query1);

$query2="select * from travel_airways_price where A_ID='$r_id' and Class='$coach'";
$res2=mysqli_query($connect,$query2);
while($row=mysqli_fetch_assoc($res2))
{$price=$row["Amt"];}
echo $price*sizeof($a);
?>

</body>
</html>
