<?php
include("databaseConnection.php");

// Step 1: Get teacher ID and fetch details
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = "SELECT * FROM add_teachers WHERE id = $id";
    $result = $conn->query($query);

    if ($result && $result->num_rows > 0) {
        $teacher = $result->fetch_assoc();
    } else {
        echo "Teacher not found.";
        exit;
    }
} else {
    echo "No ID provided.";
    exit;
}

// Step 2: Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $subject = $_POST['subject'];
    $subject2 = $_POST['subject2'];
    $contact = $_POST['contact'];
    $doj = $_POST['doj'];

    $updateQuery = "UPDATE add_teachers SET 
        fname = '$fname', 
        lname = '$lname', 
        subject = '$subject', 
        subject2 = '$subject2', 
        contact = '$contact', 
        doj = '$doj' 
        WHERE id = $id";

    if ($conn->query($updateQuery)) {
        header("Location: view-teachers.php");
        exit();
    } else {
        echo "Error updating teacher: " . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Teacher</title>
    <link rel="stylesheet" href="assets/css/assets.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/dashboard.css">
</head>
<body class="ttr-opened-sidebar ttr-pinned-sidebar">

<main class="ttr-wrapper">
    <div class="container-fluid">
        <div class="db-breadcrumb">
            <h4 class="breadcrumb-title">Edit Teacher</h4>
            <ul class="db-breadcrumb-list">
                <li><a href="dashboard.php"><i class="fa fa-home"></i> Home</a></li>
                <li><a href="view-teachers.php">Teachers</a></li>
                <li>Edit Teacher</li>
            </ul>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="card shadow">
                    <div class="card-header bg-primary text-white">
                        <h4 class="mb-0">Edit Teacher Information</h4>
                    </div>
                    <div class="card-body">
                        <form method="POST">
                            <div class="form-group">
                                <label>First Name</label>
                                <input type="text" name="fname" class="form-control" value="<?= htmlspecialchars($teacher['Fname']) ?>" required>
                            </div>
                            <div class="form-group">
                                <label>Last Name</label>
                                <input type="text" name="lname" class="form-control" value="<?= htmlspecialchars($teacher['Lname']) ?>" required>
                            </div>
                            <div class="form-group">
                                <label>Subject</label>
                                <input type="text" name="subject" class="form-control" value="<?= htmlspecialchars($teacher['Subject']) ?>" required>
                            </div>
                            <div class="form-group">
                                <label>Subject 2</label>
                                <input type="text" name="subject2" class="form-control" value="<?= htmlspecialchars($teacher['Subject2']) ?>">
                            </div>
                            <div class="form-group">
                                <label>Contact</label>
                                <input type="text" name="contact" class="form-control" value="<?= htmlspecialchars($teacher['Contact']) ?>" required>
                            </div>
                            <div class="form-group">
                                <label>Date of Joining</label>
                                <input type="date" name="doj" class="form-control" value="<?= $teacher['doj'] ?>" required>
                            </div>

                            <button type="submit" class="btn btn-success mt-3">Update Teacher</button>
                            <a href="view-teachers.php" class="btn btn-secondary mt-3 ml-2">Cancel</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

</body>
</html>
