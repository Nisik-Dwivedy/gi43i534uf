<?php
    $dbServer = "localhost";
    $dbUser = "root";
    $dbPass = "";  
    $dbName = "schoolmanagementsystem";

    $conn = mysqli_connect($dbServer, $dbUser, $dbPass, $dbName);

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
?>