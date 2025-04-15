<?php
include 'databaseConnection.php';

// Get form values
$student_name = $_POST['student_name'];
$class = $_POST['class'];
$month = $_POST['month'];
$amount = $_POST['amount'];
$payment_method = $_POST['payment_method'];
$remarks = $_POST['remarks'] ?? null;

// If card method selected, get additional details
$card_number = isset($_POST['card_number']) ? $_POST['card_number'] : null;
$expiry_date = isset($_POST['expiry_date']) ? $_POST['expiry_date'] : null;
$cvv = isset($_POST['cvv']) ? $_POST['cvv'] : null;

// Insert into DB
$sql = "INSERT INTO pay_fees (student_name, class, month, amount, payment_method, card_number, expiry_date, cvv, remarks)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

$stmt = $conn->prepare($sql);
$stmt->bind_param("sssdsisss", $student_name, $class, $month, $amount, $payment_method, $card_number, $expiry_date, $cvv, $remarks);

if ($stmt->execute()) {
    echo "<script>
        alert('✅ Record Entered Successfully!');
        window.location.href='pay-fee.html'; // Redirect back to form
    </script>";
} else {
    echo "❌ Error: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
