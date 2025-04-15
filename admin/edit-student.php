<?php
// Include your database connection file
include("databaseConnection.php");

if (isset($_GET['id'])) {
    $studentId = $_GET['id'];
    
    // Fetch student details by ID
    $query = "SELECT * FROM add_students WHERE id = '$studentId'";
    $result = $conn->query($query);
    $student = $result->fetch_assoc();

    if (!$student) {
        die("Student not found.");
    }
}

// Update student data
if (isset($_POST['submit'])) {
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $roll = $_POST['roll'];
    $class = $_POST['class'];
    $dob = $_POST['dob'];

    $update_query = "UPDATE add_students SET fname = '$fname', lname = '$lname', roll = '$roll', class = '$class', dob = '$dob' WHERE id = '$studentId'";
    if ($conn->query($update_query)) {
        // Redirect to view-student.php after successful edit
        header("Location: viewStudent.php"); // Or fetch-student.php if you prefer dynamic fetching
        exit();
    } else {
        echo "Error: " . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Student</title>
    <link rel="stylesheet" type="text/css" href="assets/css/assets.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/dashboard.css">
</head>
<body>

<main>
    <div class="container">
        <h2>Edit Student</h2>
        <form method="POST" action="edit-student.php?id=<?= $student['id']; ?>">
            <div class="form-group">
                <label for="fname">First Name</label>
                <input type="text" name="fname" id="fname" class="form-control" value="<?= htmlspecialchars($student['fname']); ?>" required>
            </div>
            <div class="form-group">
                <label for="lname">Last Name</label>
                <input type="text" name="lname" id="lname" class="form-control" value="<?= htmlspecialchars($student['lname']); ?>" required>
            </div>
            <div class="form-group">
                <label for="roll">Roll No</label>
                <input type="text" name="roll" id="roll" class="form-control" value="<?= htmlspecialchars($student['roll']); ?>" required>
            </div>
            <div class="form-group">
                <label for="class">Class</label>
                <input type="text" name="class" id="class" class="form-control" value="<?= htmlspecialchars($student['class']); ?>" required>
            </div>
            <div class="form-group">
                <label for="dob">Date of Birth</label>
                <input type="date" name="dob" id="dob" class="form-control" value="<?= htmlspecialchars($student['dob']); ?>" required>
            </div>
            <button type="submit" name="submit" class="btn btn-primary">Save Changes</button>
        </form>
    </div>
</main>

</body>
</html>
