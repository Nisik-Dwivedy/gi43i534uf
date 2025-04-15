<?php
include("databaseConnection.php");

// Pagination Setup
$limit = 10;
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$start_from = ($page - 1) * $limit;

// Total teacher count for pagination
$totalQuery = $conn->query("SELECT COUNT(*) AS total FROM add_teachers");
$totalRow = $totalQuery->fetch_assoc();
$total_teachers = $totalRow['total'];
$total_pages = ceil($total_teachers / $limit);

// Fetch current page's teachers
$query = "SELECT * FROM add_teachers LIMIT $start_from, $limit";
$teachers = $conn->query($query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>View Teachers</title>
    <link rel="stylesheet" type="text/css" href="assets/css/assets.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/dashboard.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body class="ttr-opened-sidebar ttr-pinned-sidebar">

<main class="ttr-wrapper">
    <div class="container-fluid">
        <div class="db-breadcrumb">
            <h4 class="breadcrumb-title">View Teachers</h4>
            <ul class="db-breadcrumb-list">
                <li><a href="#"><i class="fa fa-home"></i> Home</a></li>
                <li>View Teachers</li>
            </ul>
        </div>

        <div class="row mb-3">
            <div class="col-md-4">
                <input type="text" id="searchInput" class="form-control" placeholder="Search by name or subject...">
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="card shadow">
                    <div class="card-header bg-primary text-white">
                        <h4 class="mb-0">Teacher List</h4>
                    </div>
                    <div class="card-body table-responsive">
                        <table class="table table-striped table-hover" id="teacherTable">
                            <thead class="bg-light">
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Subject 1</th>
                                    <th>Subject 2</th>
                                    <th>Contact</th>
                                    <th>Date of Joining</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php while ($row = $teachers->fetch_assoc()): ?>
                                    <tr>
                                        <td><?= htmlspecialchars($row['id']) ?></td>
                                        <td><?= htmlspecialchars($row['Fname']) . ' ' . htmlspecialchars($row['Lname']) ?></td>
                                        <td><?= htmlspecialchars($row['Subject']) ?></td>
                                        <td><?= htmlspecialchars($row['Subject2']) ?></td>
                                        <td><?= htmlspecialchars($row['Contact']) ?></td>
                                        <td><?= htmlspecialchars($row['doj']) ?></td>
                                        <td>
                                       
                                             <a href="edit-teacher.php?id=<?= $row['id']; ?>" class="btn btn-sm btn-success rounded-pill px-3">Edit</a>
                                            <a href="delete-teacher.php?id=<?= $row['id']; ?>" class="btn btn-sm btn-danger rounded-pill px-3" onclick="return confirm('Are you sure?')">Delete</a>
                                            <a href="view-teacher-profile.php?id=<?= $row['id']; ?>" class="btn btn-sm btn-info rounded-pill px-3">Profile</a>
                                        </td>
                                    </tr>
                                <?php endwhile; ?>
                            </tbody>
                        </table>

                        <!-- Pagination Controls -->
                        <div class="d-flex justify-content-between align-items-center mt-3">
                            <div>
                                Showing <?= $start_from + 1 ?> to <?= min($start_from + $limit, $total_teachers) ?> of <?= $total_teachers ?> entries
                            </div>
                            <div>
                                <a href="?page=<?= max($page - 1, 1) ?>" class="btn btn-outline-secondary btn-sm <?= ($page == 1) ? 'disabled' : '' ?>">← Prev</a>
                                <a href="?page=<?= min($page + 1, $total_pages) ?>" class="btn btn-outline-secondary btn-sm <?= ($page == $total_pages) ? 'disabled' : '' ?>">Next →</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<script>
    // Filter table rows by search input
    $('#searchInput').on('keyup', function () {
        var value = $(this).val().toLowerCase();
        $('#teacherTable tbody tr').filter(function () {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    });
</script>

</body>
</html>
