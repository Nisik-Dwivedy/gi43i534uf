<?php
// Include your database connection file
include("databaseConnection.php");

// Initialize variables
$class = isset($_GET['class']) ? $_GET['class'] : '';
$search = isset($_GET['search']) ? $_GET['search'] : '';

// Only proceed if class is set
if (!empty($class)) {
    // Sanitize inputs to prevent SQL injection
    $class = $conn->real_escape_string($class);
    $search = $conn->real_escape_string($search);

    // Build query with optional search keyword
    $query = "SELECT * FROM add_students WHERE class = '$class'";
    if (!empty($search)) {
        $query .= " AND (fname LIKE '%$search%' OR lname LIKE '%$search%' OR roll LIKE '%$search%')";
    }

    $students = $conn->query($query);

    if ($students && $students->num_rows > 0):
?>
        <table class="table table-striped table-hover">
            <thead class="bg-light">
                <tr>
                    <th>Student ID</th>
                    <th>Name</th>
                    <th>Roll No</th>
                    <th>Class</th>
                    <th>D.O.B</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $students->fetch_assoc()): ?>
                    <tr>
                        <td><?= htmlspecialchars($row['id']) ?></td>
                        <td><?= htmlspecialchars($row['fname']) ?> <?= htmlspecialchars($row['lname']) ?></td>
                        <td><?= htmlspecialchars($row['roll']) ?></td>
                        <td><?= htmlspecialchars($row['class']) ?></td>
                        <td><?= htmlspecialchars($row['dob']) ?></td>
                        <td>
                            <!-- Edit Button -->
                            <a href="edit-student.php?id=<?= $row['id']; ?>" class="btn btn-sm btn-success rounded-pill px-3">Edit</a>

                            <!-- Delete Button -->
                            <a href="delete-student.php?id=<?= $row['id']; ?>" class="btn btn-sm btn-danger rounded-pill px-3" onclick="return confirm('Are you sure you want to delete this student?')">Delete</a>
                        </td>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
<?php
    else:
        echo '<p class="text-center text-muted">No students found for this class.</p>';
    endif;
}
?>
