<?php
include("databaseConnection.php");

if (isset($_GET['class'])) {
    $class = $_GET['class'];

    // Query to fetch students from the selected class
    $query = "SELECT * FROM add_students WHERE class = '$class'";
    $students = $conn->query($query);

    if ($students && $students->num_rows > 0):
?>
        <table class="table table-striped table-hover">
            <thead class="bg-light">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Class</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $students->fetch_assoc()): ?>
                    <tr>
                        <td><?= htmlspecialchars($row['id']) ?></td>
                        <td><?= htmlspecialchars($row['fname']) ?> <?= htmlspecialchars($row['lname']) ?></td>
                        <td><?= htmlspecialchars($row['class']) ?></td>
                        <td>
                            
                        <input type="radio" name="status_<?= $row['id'] ?>" value="present"> Present
                        <input type="radio" name="status_<?= $row['id'] ?>" value="absent"> Absent

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
