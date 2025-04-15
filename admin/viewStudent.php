<?php
// Include your database connection file
include("databaseConnection.php");

// Fetch all classes from the database to avoid hardcoding the classes
$query = "SELECT DISTINCT class FROM add_students";
$classes_result = $conn->query($query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Students</title>
    <link rel="stylesheet" type="text/css" href="assets/css/assets.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/dashboard.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body class="ttr-opened-sidebar ttr-pinned-sidebar">

<main class="ttr-wrapper">
    <div class="container-fluid">
        <div class="db-breadcrumb">
            <h4 class="breadcrumb-title">View Students</h4>
            <ul class="db-breadcrumb-list">
                <li><a href="#"><i class="fa fa-home"></i> Home</a></li>
                <li>View Students</li>
            </ul>
        </div>



        <div class="row">
            <div class="col-12">
                <div class="card shadow">
                    <div class="card-header bg-primary text-white">
                        <h4 class="mb-0">Student List</h4>
                    </div>
                    <div class="card-body">
                        <!-- Dropdown for selecting class -->
                        <form id="classForm">
                            <div class="form-group">
                                <label for="class">Select Class</label>
                                <select name="class" id="class" class="form-control">
                                    <option value="">-- Select a Class --</option>
                                    <?php while ($row = $classes_result->fetch_assoc()): ?>
                                        <option value="<?= $row['class'] ?>">Class <?= $row['class'] ?></option>
                                    <?php endwhile; ?>
                                </select>
                            </div>
                        </form>

                        <!-- Search bar -->
<div class="form-group mt-3">
    <label for="search">Search Students</label>
    <input type="text" id="search" class="form-control" placeholder="Search by name or roll number">
</div>


                        <!-- Student Table -->
                        <div class="table-responsive" id="studentTable">
                            <!-- The table content will be updated dynamically here -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<script>
    // AJAX request to fetch students based on selected class
    $('#class').on('change', function () {
        var classVal = $(this).val();

        if (classVal !== "") {
            $.ajax({
                url: "fetch_students.php", // Server-side script to fetch student data
                method: "GET",
                data: {class: classVal},
                success: function (data) {
                    $('#studentTable').html(data); // Update the table with the received data
                },
                error: function () {
                    alert('Error fetching data');
                }
            });
        } else {
            $('#studentTable').html(""); // Clear the table if no class is selected
        }
    });


</script>

<script>
    function fetchStudents() {
        var classVal = $('#class').val();
        var searchVal = $('#search').val();

        if (classVal !== "") {
            $.ajax({
                url: "fetch_students.php",
                method: "GET",
                data: {
                    class: classVal,
                    search: searchVal
                },
                success: function (data) {
                    $('#studentTable').html(data);
                },
                error: function () {
                    alert('Error fetching data');
                }
            });
        } else {
            $('#studentTable').html("");
        }
    }

    // Trigger fetch on class change
    $('#class').on('change', fetchStudents);

    // Trigger fetch on search keyup
    $('#search').on('input', function () {
        fetchStudents();
    });
</script>


</body>
</html>
