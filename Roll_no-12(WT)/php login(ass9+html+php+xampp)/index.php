<?php
$conn=mysqli_connect('localhost','root','','phpdb'); 
if(!$conn)
{
die(mysqli_connect_error());
}
echo "connect successfully";
echo "<br>";
$tname= $_POST["name1"];
$tadd=$_POST["password1"];
$sql1="insert into phptb values ('$tname','$tadd')";
echo $sql1;
mysqli_query($conn,$sql1);

$sql = "SELECT * FROM phptb";
$result = $conn->query($sql);
if ($result->num_rows > 0)
{
echo"<table align=center border=1><form>";

while($row = $result->fetch_assoc()) {
echo "<tr>"."<th class=data>"."Username: ".$row["phpname"]."<br><br><br><br> "."Password: ".$row["phppass"]."<br><br><br><br>"."</th></tr><br>";
}
echo "</table></form>";
} else {
echo "0 results";
}
mysqli_close($conn);
?>