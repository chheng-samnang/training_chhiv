<?php
include_once("config.php");
$conn = connect_db($servername,$username,$password,$db);
function connect_db($servername,$username,$password,$db)
{
  $conn = new mysqli($servername, $username, $password, $db);

  // Check connection
  if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
  }
  // echo "Connected successfully";
  return $conn;
}

function query($sql,$conn)
{
  $result = mysqli_query($conn,$sql);
  return $result;
}

function fetch_assoc($query)
{
  $result = mysqli_fetch_assoc($query);
  return $result;
}
 ?>
