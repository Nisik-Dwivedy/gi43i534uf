
<?php
include("databaseConnection.php");  // Ensure this connects to 'schoolmanagementsystem'

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $firstName = $_POST["fname"];
    $lastName = $_POST["lname"];
    $subject1 = $_POST["sub"];
    $subject2 = $_POST["sub2"];
    $phone = $_POST["cont"];
    $dob = $_POST["dob"];
    $doj = $_POST["doj"];
    $address = $_POST["Address"];

    // Check if required fields are empty
    if (empty($firstName) || empty($lastName) || empty($subject1) || empty($phone) || empty($dob) || empty($doj) || empty($address)) {
        echo "Please fill in all fields!";
    } else {
        // Corrected SQL Query
        $sql = "INSERT INTO add_teachers (Fname, Lname, Subject, Subject2, Contact, Address, dob, doj) 
                VALUES ('$firstName', '$lastName', '$subject1', '$subject2', '$phone', '$address', '$dob', '$doj')";

        // Execute Query
        if (mysqli_query($conn, $sql)) {
            echo "Teacher Added Successfully!";
        } else {
            echo "Error: " . mysqli_error($conn);
        }
    }
}

// Close connection
mysqli_close($conn);
?>
