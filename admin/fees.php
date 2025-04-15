<?php
include('databaseConnection.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $student_id = $_POST['student_id'];
    $student_name = $_POST['student_name'];
    $fee_amount = $_POST['fee_amount'];
    $fee_status = $_POST['fee_status'];
    $payment_date = $_POST['payment_date'];

    $stmt = $conn->prepare("INSERT INTO fees (student_id, student_name, fee_amount, fee_status, payment_date) 
                            VALUES (?, ?, ?, ?, ?)");

    $stmt->bind_param("ssdss", $student_id, $student_name, $fee_amount, $fee_status, $payment_date);

    if ($stmt->execute()) {
        echo "<script>
                alert('Record entered successfully!');
                window.location.href = 'fees.html'; // redirect to form page or another page
              </script>";
    } else {
        echo "<script>
                alert('Error: " . $stmt->error . "');
              </script>";
    }

    $stmt->close();
}
$conn->close();
?>
