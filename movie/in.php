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
    echo $gen;
}
if(isset($_POST['rating']))
{
    $rat = $_POST['rating'];
}
if(isset($rat))
{
    echo $rat;
}
    if(isset($_POST['Theatre']))
    {
        $theat = $_POST['Theatre'];
    }
    if(isset($theat))
    {
        echo $theat;
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

//    if($gen = "ALL")
//    {
//      echo  $gen;
//      $result = mysqli_query($c,"SELECT * FROM movie_main where Rating >= '$rat'");
//    }
//    else
//    {
//      echo "NOT DONE";
     $result = mysqli_query($c,"SELECT * FROM movie_main where Genre = '$gen' and Rating >= '$rat'");
 //  }


    echo "<table border='1'>
    <tr>
    <th>Movie</th>
    <th>Rating</th>
    <th>Genre</th>
    <th>Length</th>
    </tr>";

    while($row = mysqli_fetch_array($result))
    {
      
    echo "<tr>";
    echo "<td>" . $row['Title'] . "</td>";
    echo "<td>" . $row['Rating'] . "</td>";
    echo "<td>" . $row['Genre'] . "</td>";
    echo "<td>" . $row['length'] . "</td>";
    echo "</tr>";
    }
    echo "</table>";

    mysqli_close($c);
?>
</body>
</html>
