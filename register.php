<?php
include 'admin/databaseConnection.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = mysqli_real_escape_string($conn, trim($_POST["username"]));
    $password = $_POST["password"];
    $role     = isset($_POST["role"]) ? $_POST["role"] : '';

    // Check if fields are filled
    if (empty($username) || empty($password) || empty($role)) {
        echo "<script>alert('All fields are required.'); window.history.back();</script>";
        exit;
    }

    // Hash the password
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Prepare and bind statement
    $stmt = $conn->prepare("INSERT INTO users (username, password, role) VALUES (?, ?, ?)");
    if (!$stmt) {
        die("Error preparing statement: " . $conn->error);
    }
    $stmt->bind_param("sss", $username, $hashed_password, $role);

    // Execute the statement
    if ($stmt->execute()) {
        header("Location: login.html");
        exit();
    } else {
        if (mysqli_errno($conn) == 1062) {
            echo "<script>alert('Username already taken.'); window.history.back();</script>";
        } else {
            echo "Error: " . $stmt->error;
        }
    }

    $stmt->close();
    $conn->close();
}
?>
