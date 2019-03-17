<?php
session_start();
 ?>
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
	  <th>COACH</th>
	  <th>AVAILABILITY</th>
	  <th>SELECT</th>
    </tr>

<?php
$to=$_COOKIE["to"];
$fro=$_COOKIE["fro"];
$date=$_COOKIE["date"];
$connect = mysqli_connect("localhost","root","","LifeHacks");
$result11 = mysqli_query($connect,"SELECT S_ID from travel_railway_station where S_name='$fro'");

while($row = mysqli_fetch_assoc($result11)){
$fid = $row["S_ID"];
}
echo $fid;
$result12 = mysqli_query($connect,"SELECT S_ID from travel_railway_station where S_name='$to'");

while($row2 = mysqli_fetch_assoc($result12)){
$tid = $row2["S_ID"];
}
echo $tid;
echo $date;
$result13 = mysqli_query($connect,"SELECT * FROM travel_railway_t_travel as t, travel_railway_coach as c where t.R_From='$fid' and t.R_to='$tid' and t.R_date='$date' and t.R_ID=c.R_ID");

while($row = mysqli_fetch_assoc($result13)){
$r_id = $row["R_ID"];

$dep=$row["R_dept_time"];
$arr=$row["R_Arr_Time"];
$coach=$row["coach"];
$avail=$row["availability"];
echo "<tr><td>$r_id</td>";
echo "<td>$dep</td>";
echo "<td>$arr</td>";
echo "<td>$coach</td>";
echo "<td>$avail</td>";
echo "<td><button onclick=\"run1('$r_id','$dep','$arr','$coach','$avail')\">Book</button></td></tr>";
}
echo "</table>";
?>
<script>
function run1(a,b,c,d,e){
	document.cookie = "r_id="+a;
	document.cookie = "dep="+b;
	document.cookie = "arr="+c;
	document.cookie = "coach="+d;
	document.cookie = "avail="+e;
	window.location = "http://localhost/DBMS_Project/travel/Rail/check2.php?r_id="+a+"&dep="+b+"&arr="+c+"&coach="+d+"&avail="+e;
}
</script>
</body>
</html>
