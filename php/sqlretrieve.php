<?php

$servername = "localhost";
$username = "player";
$password = "password";
$dbname = "root_quest";
    
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    
    die("Connection failed: " . $conn->connect_error);
    echo json_encode("something went wrong");
} 

$sql = "SELECT * FROM game";
$result = $conn->query($sql);

$row = $result->fetch_assoc();


echo json_encode(array($row["xpos"], $row["ypos"]));

$conn->close();

//echo json_encode($playerpos);
?>