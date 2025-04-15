<?php
include("databaseConnection.php");

// Check if the form is submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get the date
    $date = $_POST['date'];

    // Loop through all employee status inputs
    foreach ($_POST as $key => $value) {
        // Check if the key is for status (employee status)
        if (strpos($key, 'status_') !== false) {
            // Extract employee ID from the name (status_1, status_2, etc.)
            $employee_id = str_replace('status_', '', $key);

            // Get the employee's first and last name (these are hidden fields in the form)
            $fname = $_POST['Fname_' . $employee_id];
            $lname = $_POST['Lname_' . $employee_id];

            // Determine if present or absent
            $status = $value;  // Can be 'present' or 'absent'

            // Now insert the attendance record into the database
            $insert_query = "INSERT INTO employee_attendance (id, fname, lname, status, date, created_at) 
                             VALUES ('$employee_id', '$fname', '$lname', '$status', '$date', NOW())";

            // Execute the query
            if (!$conn->query($insert_query)) {
                // Show the error if the query fails
                echo "Error: " . $conn->error;
            }
        }
    }

    // Redirect or display success message
    echo "Attendance has been successfully recorded!";
    // Redirect to the attendance page (or wherever you want)
    header("Location: employee_attendance.php");
    exit;
}
?>
