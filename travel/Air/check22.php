<html>
<head>
</head>
<body>
<?php
extract($_GET);
echo $avail;
$to=$_COOKIE["to"];
$fro=$_COOKIE["fro"];
$date=$_COOKIE["date"];
$connect = mysqli_connect("localhost","root","","LifeHacks");
?>
<form action="check23.php" method="GET" id="hi">
<input type="text" name="num" onblur="fun1(this,'<?php echo $avail; ?>')" placeholder="num of tickets"/>
					<script>
					function fun2(param){
						alert("hi");
					}
					function fun1(param,avail){
						var n=param.value;
						if(n<=avail){
							console.log(n<=avail);
						fun(param);
						}
						else{
							alert(n+"seats not available");
						}

					}
				function fun(param)
				{//console.log("k");
				var n=param.value;
				var i;
				var a=[];
				for(i=0;i<n;i++)
				{var p=document.createElement("p");
				var inp=document.createElement("input");
				p.innerHTML=i+1;
				inp.setAttribute("type","text");
				inp.setAttribute("name","a[]")
				document.getElementById("hi").appendChild(p);
				document.getElementById("hi").appendChild(inp);
				}


				}


					</script>

					<input type=submit value="Add Event"><br><br>

						</form>






</body>
</html>
