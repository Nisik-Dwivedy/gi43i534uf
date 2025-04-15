<?php
include("databaseConnection.php");

// Fetch teacher data
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
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Teacher Profile</title>
    <link rel="stylesheet" href="assets/css/assets.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/dashboard.css">
</head>
<body class="ttr-opened-sidebar ttr-pinned-sidebar">

<main class="ttr-wrapper">
    <div class="container-fluid">
        <div class="db-breadcrumb">
            <h4 class="breadcrumb-title">Teacher Profile</h4>
            <ul class="db-breadcrumb-list">
                <li><a href="dashboard.php"><i class="fa fa-home"></i> Home</a></li>
                <li><a href="view-teachers.php">Teachers</a></li>
                <li>Profile</li>
            </ul>
        </div>

        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow">
                    <div class="card-header bg-primary text-white text-center">
                        <h4 class="mb-0">Profile: <?= htmlspecialchars($teacher['Fname'] . ' ' . $teacher['Lname']) ?></h4>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <tr>
                                <th>Teacher ID</th>
                                <td><?= $teacher['id'] ?></td>
                            </tr>
                            <tr>
                                <th>First Name</th>
                                <td><?= htmlspecialchars($teacher['Fname']) ?></td>
                            </tr>
                            <tr>
                                <th>Last Name</th>
                                <td><?= htmlspecialchars($teacher['Lname']) ?></td>
                            </tr>
                            <tr>
                                <th>Subject</th>
                                <td><?= htmlspecialchars($teacher['Subject']) ?></td>
                            </tr>
                            <tr>
                                <th>Subject 2</th>
                                <td><?= htmlspecialchars($teacher['Subject2']) ?></td>
                            </tr>
                            <tr>
                                <th>Contact</th>
                                <td><?= htmlspecialchars($teacher['Contact']) ?></td>
                            </tr>
                            <tr>
                                <th>Date of Joining</th>
                                <td><?= htmlspecialchars($teacher['doj']) ?></td>
                            </tr>

                            <tr>
                                <th>D.O.B</th>
                                <td><?= htmlspecialchars($teacher['dob']) ?></td>
                            </tr>

                            <tr>
                                <th>Address</th>
                                <td><?= htmlspecialchars($teacher['Address']) ?></td>
                            </tr>

                            <tr>
                                <th>Salary</th>
                                <td><?= htmlspecialchars($teacher['Salary']) ?></td>
                            </tr>
                        </table>
                        <div class="text-center mt-4">
                            <a href="view-teachers.php" class="btn btn-secondary rounded-pill px-4">Back to Teachers</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</main>

</body>
</html>
