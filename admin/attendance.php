<?php
include("databaseConnection.php");

// Check if a class is selected
$class = isset($_GET['class']) ? $_GET['class'] : null;

// Only fetch students if a class is selected
$students = null;
if ($class) {
    $query = "SELECT * FROM add_students WHERE class = '$class'";
    $students = $conn->query($query);
    if (!$students) {
        die("Query failed: " . $conn->error);
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Attendance</title>
    <link rel="stylesheet" href="assets/css/assets.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/dashboard.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body class="ttr-opened-sidebar ttr-pinned-sidebar">

<main class="ttr-wrapper">
    <div class="container-fluid">
        <div class="db-breadcrumb">
            <h4 class="breadcrumb-title">Student Attendance</h4>
            <ul class="db-breadcrumb-list">
                <li><a href="#"><i class="fa fa-home"></i> Home</a></li>
                <li>Attendance</li>
            </ul>
        </div>

        <!-- Class Dropdown Form (GET) -->
        <form method="GET" id="filterForm" class="form-group row align-items-center mb-4">
            <label for="class" class="col-sm-2 col-form-label font-weight-bold">Select Class:</label>
            <div class="col-sm-6">
                <select name="class" id="class" class="form-control custom-select" onchange="document.getElementById('filterForm').submit();">
                    <option value="">-- Select Class --</option>
                    <?php
                    $class_query = "SELECT DISTINCT class FROM add_students";
                    $class_result = $conn->query($class_query);
                    while ($row = $class_result->fetch_assoc()) {
                        $selected = ($row['class'] == $class) ? "selected" : "";
                        echo "<option value='{$row['class']}' $selected>Class {$row['class']}</option>";
                    }
                    ?>
                </select>
            </div>
        </form>

        <div class="row">
            <div class="col-12">
                <div class="card shadow">
                    <div class="card-header bg-primary text-white">
                        <h4 class="mb-0">Mark Attendance</h4>
                    </div>
                    <div class="card-body">
                        <?php if ($students && $students->num_rows > 0): ?>
                            <form id="attendanceForm" method="POST" action="submit-attendance.php">
                                <!-- Date Picker -->
                                <div class="form-group">
                                    <label for="date">Date:</label>
                                    <input type="date" name="date" class="form-control" value="<?= date('Y-m-d'); ?>" readonly>
                                </div>

                                <!-- Student Table -->
                                <div class="table-responsive" id="studentTable">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Student ID</th>
                                                <th>Name</th>
                                                <th>Present</th>
                                                <th>Absent</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php while ($row = $students->fetch_assoc()): ?>
                                                <tr>
                                                    <td><?= htmlspecialchars($row['id']) ?></td>
                                                    <td><?= htmlspecialchars($row['fname']) ?> <?= htmlspecialchars($row['lname']) ?></td>
                                                    <td><input type="radio" name="status_<?= $row['id'] ?>" value="present"></td>
                                                    <td><input type="radio" name="status_<?= $row['id'] ?>" value="absent"></td>
                                                </tr>
                                            <?php endwhile; ?>
                                        </tbody>
                                    </table>
                                </div>

                                <!-- Submit Button -->
                                <button type="submit" class="btn btn-primary mt-3">Submit Attendance</button>
                            </form>
                        <?php elseif ($class): ?>
                            <div class="alert alert-warning">No students found in Class <?= htmlspecialchars($class) ?>.</div>
                        <?php else: ?>
                            <div class="alert alert-info">Please select a class to view students.</div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<script>
    // AJAX Attendance Submission
    $('#attendanceForm').on('submit', function (e) {
        e.preventDefault();
        var formData = $(this).serialize();

        $.ajax({
            url: $(this).attr('action'),
            method: 'POST',
            data: formData,
            success: function(response) {
                alert('Attendance submitted successfully!');
            },
            error: function() {
                alert('Error submitting attendance');
            }
        });
    });
</script>

</body>
</html>
