<?php
include("databaseConnection.php");

// Set the number of records per page
$records_per_page = 3;

// Get the current page number, default is 1 if not set
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;

// Calculate the offset (starting record)
$offset = ($page - 1) * $records_per_page;

// Search filter (if applied)
$search = isset($_GET['search']) ? $conn->real_escape_string($_GET['search']) : '';
$query = "SELECT * FROM add_students";
if (!empty($search)) {
    $query .= " WHERE Fname LIKE '%$search%' OR Lname LIKE '%$search%'";
}

// Query to fetch students with LIMIT and OFFSET
$query .= " LIMIT $records_per_page OFFSET $offset";
$students = $conn->query($query);

if (!$students) {
    die("Query failed: " . $conn->error);
}

// Query to count total records for pagination
$count_query = "SELECT COUNT(*) as total FROM add_students";
if (!empty($search)) {
    $count_query .= " WHERE Fname LIKE '%$search%' OR Lname LIKE '%$search%'";
}
$count_result = $conn->query($count_query);
$total_records = $count_result->fetch_assoc()['total'];

// Calculate the total number of pages
$total_pages = ceil($total_records / $records_per_page);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Marks Entry</title>
    <link rel="stylesheet" href="assets/css/assets.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/dashboard.css">
</head>
<body>

<main class="ttr-wrapper">
    <div class="container-fluid">
        <div class="db-breadcrumb">
            <h4 class="breadcrumb-title">Marks Entry</h4>
            <ul class="db-breadcrumb-list">
                <li><a href="#"><i class="fa fa-home"></i> Home</a></li>
                <li>Marks</li>
            </ul>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="card shadow">
                    <div class="card-header bg-primary text-white">
                        <h4 class="mb-0">Enter Marks</h4>
                    </div>
                    <div class="card-body">

                        <!-- Search Form -->
                        <form id="marksForm" method="POST" action="submit-marks.php">
    <!-- Exam Date -->
    <div class="form-group">
        <label for="exam_date">Exam Date:</label>
        <input type="date" name="exam_date" class="form-control" value="<?= date('Y-m-d'); ?>" required>
    </div>

    <!-- Table -->
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Subject 1</th>
                    <th>Marks 1</th>
                    <th>Subject 2</th>
                    <th>Marks 2</th>
                    <th>Percentage</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $students->fetch_assoc()): ?>
                    <tr>
                        <td><?= $row['id'] ?></td>
                        <td><?= $row['fname'] . ' ' . $row['lname'] ?></td>
                        <td>
                            <select name="subject1_<?= $row['id'] ?>" class="form-control" required>
                                <option value="Maths">Maths</option>
                                <option value="Science">Science</option>
                                <option value="English">English</option>
                                <option value="Hindi">Hindi</option>
                                <option value="SST">SST</option>
                            </select>
                        </td>
                        <td>
                            <input type="number" name="marks1_<?= $row['id'] ?>" class="form-control" required>
                        </td>
                        <td>
                            <select name="subject2_<?= $row['id'] ?>" class="form-control" required>
                                <option value="Maths">Maths</option>
                                <option value="Science">Science</option>
                                <option value="English">English</option>
                                <option value="Hindi">Hindi</option>
                                <option value="SST">SST</option>
                            </select>
                        </td>
                        <td>
                            <input type="number" name="marks2_<?= $row['id'] ?>" class="form-control" required>
                        </td>
                        <td>
                            <input type="text" name="percentage_<?= $row['id'] ?>" class="form-control" readonly>
                        </td>
                        <input type="hidden" name="student_id_<?= $row['id'] ?>" value="<?= $row['id'] ?>">
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    </div>

    <button type="submit" class="btn btn-primary mt-3">Submit Marks</button>
</form>


                        <!-- Pagination -->
                        <div class="pagination mt-4">
                            <?php if ($page > 1): ?>
                                <a href="?page=<?= $page - 1 ?>&search=<?= htmlspecialchars($search) ?>" class="btn btn-secondary">Previous</a>
                            <?php endif; ?>
                            <?php if ($page < $total_pages): ?>
                                <a href="?page=<?= $page + 1 ?>&search=<?= htmlspecialchars($search) ?>" class="btn btn-secondary">Next</a>
                            <?php endif; ?>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

</body>
</html>
