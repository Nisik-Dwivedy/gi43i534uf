<?php
include("databaseConnection.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Check if data is being posted
    if (empty($_POST)) {
        echo "No data submitted!";
    }

    $date = $_POST['date'];  // Today's date from the form

    // Debugging - Show the POST data to confirm what is being submitted
    echo '<pre>';
    print_r($_POST);
    echo '</pre>';

    // Loop through the submitted data
    foreach ($_POST as $key => $value) {
        // Process only attendance data (keys will be like status_{student_id})
        if (strpos($key, 'status_') !== false && !empty($value)) {
            // Extract the student_id from the key (e.g., status_1 => 1)
            $student_id = substr($key, 7);
            $status = $value; // The status can be either 'present' or 'absent'

            // Fetch student data (fname, lname)
            $query = "SELECT fname, lname FROM add_students WHERE id = $student_id";
            $result = $conn->query($query);
            $student = $result->fetch_assoc();

            if ($student) {
                // Insert the attendance record into the database
                $stmt = $conn->prepare("INSERT INTO student_attendance (student_id, fname, lname, status, attendance_date) VALUES (?, ?, ?, ?, ?)");
                $stmt->bind_param("issss", $student_id, $student['fname'], $student['lname'], $status, $date);
                $stmt->execute();
            } else {
                echo "Student with ID $student_id not found.";
            }
        }
    }

    // Redirect back to the attendance page after successful submission
    header("Location: attendance.php");
    exit();
}
?>
