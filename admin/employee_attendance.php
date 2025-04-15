<?php
include("databaseConnection.php");

// Search filter
$search = isset($_GET['search']) ? $conn->real_escape_string($_GET['search']) : '';
$query = "SELECT * FROM add_teachers";
if (!empty($search)) {
    $query .= " WHERE Fname LIKE '%$search%' OR Lname LIKE '%$search%' OR Salary LIKE '%$search%'";
}
$employees = $conn->query($query);

if (!$employees) {
    die("Query failed: " . $conn->error);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Attendance</title>
    <link rel="stylesheet" href="assets/css/assets.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/dashboard.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body class="ttr-opened-sidebar ttr-pinned-sidebar">

<main class="ttr-wrapper">
    <div class="container-fluid">
        <div class="db-breadcrumb">
            <h4 class="breadcrumb-title">Employee Attendance</h4>
            <ul class="db-breadcrumb-list">
                <li><a href="#"><i class="fa fa-home"></i> Home</a></li>
                <li>Attendance</li>
            </ul>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="card shadow">
                    <div class="card-header bg-primary text-white">
                        <h4 class="mb-0">Mark Attendance</h4>
                    </div>
                    <div class="card-body">

                        <!-- Search Form -->
                        <form method="GET" class="form-inline mb-3">
                            <input type="text" name="search" class="form-control mr-2" placeholder="Search employee" value="<?= htmlspecialchars($search) ?>">
                            <button type="submit" class="btn btn-secondary">Search</button>
                        </form>

                        <!-- Attendance Form -->
                        <form id="attendanceForm" method="POST" action="submit-employee-attendance.php">
                            <!-- Date -->
                            <div class="form-group">
                                <label for="date">Date:</label>
                                <input type="date" name="date" class="form-control" value="<?= date('Y-m-d'); ?>" readonly>
                            </div>

                            <!-- Table -->
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>Salary</th>
                                            <th>Contact</th>
                                            <th>Present</th>
                                            <th>Absent</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php while ($row = $employees->fetch_assoc()): ?>
                                            <tr>
                                                <td><?= $row['id'] ?></td>
                                                <td><?= $row['Fname'] . ' ' . $row['Lname'] ?></td>
                                                <td><?= $row['Salary'] ?></td>
                                                <td><?= $row['Contact'] ?></td>
                                                <td><input type="radio" name="status_<?= $row['id'] ?>" value="present"></td>
                                                <td><input type="radio" name="status_<?= $row['id'] ?>" value="absent"></td>
                                                <input type="hidden" name="Fname_<?= $row['id'] ?>" value="<?= $row['Fname'] ?>">
                                                <input type="hidden" name="Lname_<?= $row['id'] ?>" value="<?= $row['Lname'] ?>">
                                            </tr>
                                        <?php endwhile; ?>
                                    </tbody>
                                </table>
                            </div>

                            <button type="submit" class="btn btn-primary mt-3">Submit Attendance</button>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<!-- Optional: AJAX handler -->
<script>
    $('#attendanceForm').on('submit', function (e) {
        e.preventDefault();
        $.ajax({
            url: $(this).attr('action'),
            method: 'POST',
            data: $(this).serialize(),
            success: function (res) {
                alert('Attendance submitted successfully!');
            },
            error: function () {
                alert('Error submitting attendance.');
            }
        });
    });
</script>

</body>
</html>
