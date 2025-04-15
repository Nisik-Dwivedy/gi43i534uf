<?php
include("databaseConnection.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Loop through each student entry
    foreach ($_POST as $key => $value) {
        // Check if the key is for marks1 or marks2
        if (strpos($key, 'marks1_') !== false) {
            $student_id = str_replace('marks1_', '', $key);
            $marks1 = $value;
            $subject1 = $_POST["subject1_".$student_id];

            $marks2 = $_POST["marks2_".$student_id];
            $subject2 = $_POST["subject2_".$student_id];

            // Calculate percentage
            $percentage = ($marks1 + $marks2) / 2;

            // Get exam date
            $exam_date = $_POST['exam_date'];

            // Insert into student_marks table
            $insert_query = "INSERT INTO student_marks (student_id, subject1, marks1, subject2, marks2, percentage, exam_date) 
                             VALUES ('$student_id', '$subject1', '$marks1', '$subject2', '$marks2', '$percentage', '$exam_date')";

            if ($conn->query($insert_query)) {
                echo "Marks for student ID $student_id inserted successfully!";
            } else {
                echo "Error inserting marks for student ID $student_id: " . $conn->error;
            }
        }
    }

    // Redirect or display success message
    header("Location: marks-entry.php"); // Change this to the correct page to redirect after submission
    exit();
}
?>
