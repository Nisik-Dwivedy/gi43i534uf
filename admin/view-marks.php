<?php
session_start();
include 'databaseConnection.php';

// Define how many records to show per page
$records_per_page = 100;

// Get the current page number from the URL, default to 1 if not set
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$start_from = ($page - 1) * $records_per_page;

// Fetch the total number of rows in the student_marks table
$query = "SELECT COUNT(*) AS total FROM student_marks";
$result = $conn->query($query);
$row = $result->fetch_assoc();
$total_records = $row['total'];
$total_pages = ceil($total_records / $records_per_page);

// Fetch the data for the current page
$sql = "SELECT * FROM student_marks LIMIT $start_from, $records_per_page";
$res = $conn->query($sql);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Marks</title>
    <link rel="stylesheet" href="styles.css"> <!-- Linking external CSS -->
    <style>
        /* Basic Reset */
        body, html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        /* Page container */
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }

        /* Table styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        /* Pagination styles */
        .pagination {
            text-align: center;
            margin-top: 20px;
        }

        .pagination a {
            padding: 10px 20px;
            color: #4CAF50;
            text-decoration: none;
            margin: 0 5px;
            border-radius: 5px;
            border: 1px solid #4CAF50;
            transition: background-color 0.3s ease;
        }

        .pagination a:hover {
            background-color: #4CAF50;
            color: white;
        }

        .pagination .disabled {
            color: #ccc;
            border: 1px solid #ccc;
            pointer-events: none;
        }

        h2 {
            text-align: center;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>View Marks</h2>
        
        <table>
            <tr>
                <th>ID</th>
                <th>Student ID</th>
                <th>Subject 1</th>
                <th>Marks 1</th>
                <th>Subject 2</th>
                <th>Marks 2</th>
                <th>Percentage</th>
            </tr>

            <?php
            while ($row = $res->fetch_assoc()) {
                echo "<tr>
                        <td>{$row['id']}</td>
                        <td>{$row['student_id']}</td>
                        <td>{$row['subject1']}</td>
                        <td>{$row['marks1']}</td>
                        <td>{$row['subject2']}</td>
                        <td>{$row['marks2']}</td>
                        <td>{$row['percentage']}%</td>
                    </tr>";
            }
            ?>
        </table>

        
</body>
</html>

<?php
$conn->close();
?>
