<?php
include 'databaseConnection.php';

// Fetch the latest record
$sql = "SELECT * FROM fees ORDER BY id DESC LIMIT 1";
$result = $conn->query($sql);
$record = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Fee Invoice</title>
    <link rel="stylesheet" type="text/css" href="assets/css/assets.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/dashboard.css">
    <link class="skin" rel="stylesheet" type="text/css" href="assets/css/color/color-1.css">
    <style>
        .invoice-box {
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        .invoice-title {
            font-size: 28px;
            margin-bottom: 20px;
            border-bottom: 2px solid #ddd;
            padding-bottom: 10px;
        }
        .invoice-detail label {
            font-weight: 600;
        }
        .print-btn {
            margin-top: 20px;
        }
    </style>
</head>
<body class="ttr-opened-sidebar ttr-pinned-sidebar">

<!-- Check if these paths are correct! -->


<main class="ttr-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="invoice-box">
                    <div class="invoice-title">📄 Fee Invoice</div>
                    <?php if ($record): ?>
                    <div class="invoice-detail">
                        <p><label>Student Name:</label> <?= isset($record['student_name']) ? htmlspecialchars($record['student_name']) : 'N/A' ?></p>
                        <p><label>Class:</label> <?= isset($record['class']) ? htmlspecialchars($record['class']) : 'N/A' ?></p>
                        <p><label>Month:</label> <?= isset($record['month']) ? htmlspecialchars($record['month']) : 'N/A' ?></p>
                        <p><label>Amount Paid:</label> ₹<?= isset($record['amount']) ? number_format($record['amount'], 2) : '0.00' ?></p>
                        <p><label>Payment Method:</label> <?= isset($record['payment_method']) ? htmlspecialchars($record['payment_method']) : 'N/A' ?></p>
                        <?php if (isset($record['payment_method']) && ($record['payment_method'] === 'Debit Card' || $record['payment_method'] === 'Credit Card')): ?>
                            <p><label>Card Number:</label> **** **** **** <?= isset($record['card_number']) ? substr($record['card_number'], -4) : 'XXXX' ?></p>
                        <?php endif; ?>
                        <p><label>Remarks:</label> <?= isset($record['remarks']) ? htmlspecialchars($record['remarks']) : 'N/A' ?></p>
                        <p><label>Payment Date:</label> <?= isset($record['payment_date']) ? date("d M Y, h:i A", strtotime($record['payment_date'])) : 'N/A' ?></p>
                    </div>
                    <button class="btn btn-primary print-btn" onclick="window.print()">🖨️ Print / Download</button>
                    <?php else: ?>
                        <p>No recent payment found.</p>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</main>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/functions.js"></script>
</body>
</html>
