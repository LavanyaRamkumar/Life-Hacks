<html>
<head>
  <title>RAIL</title>
  <style>
  body
  {
    background-image: url("../b.jpg");
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
  <h1 class="containH1"> LIFE HACK - TRAVEL - Bus</h1>
<table>
<tr bgcolor="DCDCDC">
      <th>B_ID</th>
      <th>DEPARTURE</th>
	  <th>ARRIVAL</th>
	  <th>AVAILABILITY</th>
	  <th>SELECT</th>
    </tr>

<?php
$to=$_COOKIE["to"];
$fro=$_COOKIE["fro"];
$date=$_COOKIE["date"];
$connect = mysqli_connect("localhost","root","","LifeHacks");
$result11 = mysqli_query($connect,"SELECT BS_ID from travel_bus_bus_station where B_name='$fro'");
if (!$result11) {
trigger_error(mysqli_error($result11));
}
while($row = mysqli_fetch_assoc($result11)){
$fid = $row["BS_ID"];
}
echo $fid;
$result12 = mysqli_query($connect,"SELECT BS_ID from travel_bus_bus_station where B_name='$to'");
if (!$result12) {
trigger_error(mysqli_error($result12));
}
while($row = mysqli_fetch_assoc($result12)){
$tid = $row["BS_ID"];
}
echo $tid;
echo $date;
$result13 = mysqli_query($connect,"SELECT * FROM travel_bus_b_travel as t, travel_bus_bus as c where t.B_From='$fid' and t.B_to='$tid' and t.B_date='$date' and t.B_ID=c.B_ID");
if (!$result13) {
trigger_error(mysqli_error($result13));
}
while($row = mysqli_fetch_assoc($result13)){
$r_id = $row["B_ID"];

$dep=$row["B_Dep_Time"];
$arr=$row["B_Arr_time"];
$avail=$row["B_Availability"];
echo "<tr><td>$r_id</td>";
echo "<td>$dep</td>";
echo "<td>$arr</td>";
echo "<td>$avail</td>";
echo "<td><button onclick=\"run1('$r_id','$dep','$arr','$avail')\">Book</button></td></tr>";
}
echo "</table>";
?>
<script>
function run1(a,b,c,e){
	document.cookie = "r_id="+a;
	document.cookie = "dep="+b;
	document.cookie = "arr="+c;
	document.cookie = "avail="+e;
	window.location = "http://localhost/DBMS_Project/travel/Bus/check3sec.php?r_id="+a+"&dep="+b+"&arr="+c+"&avail="+e;
}
</script>
</body>
</html>
