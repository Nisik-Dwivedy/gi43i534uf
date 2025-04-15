<?php
// Include your database connection file
include("databaseConnection.php");

if (isset($_GET['id'])) {
    $studentId = $_GET['id'];
    
    // Query to delete the student by ID
    $query = "DELETE FROM add_students WHERE id = '$studentId'";
    
    if ($conn->query($query)) {
        // Redirect to view-student.php after successful delete
        header("Location: viewStudent.php"); // Or fetch-student.php if you prefer dynamic fetching
        exit();
    } else {
        echo "Error: " . $conn->error;
    }
}
?>
