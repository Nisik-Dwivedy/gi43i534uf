<?php
include("databaseConnection.php");

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = "DELETE FROM add_teachers WHERE id = $id";

    if ($conn->query($query)) {
        header("Location: view-teachers.php");
        exit();
    } else {
        echo "Error deleting teacher.";
    }
}
?>
