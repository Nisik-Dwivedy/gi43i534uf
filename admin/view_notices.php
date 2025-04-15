<?php
$uploadDir = 'uploads/';
$files = array_diff(scandir($uploadDir), array('.', '..'));
?>

<!DOCTYPE html>
<html>
<head>
    <title>View Notices</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 30px;
            background-color: #f4f4f4;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 80%;
            margin: 0 auto;
            background-color: white;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ccc;
        }
        th {
            background-color: #007BFF;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .download-btn {
            text-decoration: none;
            background-color: #28a745;
            color: white;
            padding: 8px 12px;
            border-radius: 5px;
            transition: background 0.3s;
        }
        .download-btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

    <h2>Uploaded Notices (PDF)</h2>

    <table>
        <tr>
            <th>#</th>
            <th>File Name</th>
            <th>Action</th>
        </tr>
        <?php
        $count = 1;
        foreach ($files as $file):
            $filePath = $uploadDir . $file;
            if (is_file($filePath) && pathinfo($filePath, PATHINFO_EXTENSION) === 'pdf'):
        ?>
        <tr>
            <td><?= $count++ ?></td>
            <td><?= htmlspecialchars($file) ?></td>
            <td><a class="download-btn" href="<?= $filePath ?>" download>Download</a></td>
        </tr>
        <?php
            endif;
        endforeach;

        if ($count === 1): // No PDFs found
        ?>
        <tr>
            <td colspan="3">No PDF notices uploaded yet.</td>
        </tr>
        <?php endif; ?>
    </table>

</body>
</html>
