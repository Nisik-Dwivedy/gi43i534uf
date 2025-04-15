<?php
session_start();
include 'admin/databaseConnection.php';

$username = isset($_POST['username']) ? mysqli_real_escape_string($conn, trim($_POST['username'])) : '';
$password = isset($_POST['password']) ? $_POST['password'] : '';
$role     = isset($_POST['role']) ? $_POST['role'] : '';

// Check for empty inputs
if (empty($username) || empty($password) || empty($role)) {
    echo "<script>alert('Please enter username, password, and role.'); window.history.back();</script>";
    exit;
}

// Prepare SQL statement
$stmt = $conn->prepare("SELECT id, username, password, role FROM users WHERE username = ? AND role = ?");
if (!$stmt) {
    die("Database error: " . $conn->error);
}
$stmt->bind_param("ss", $username, $role);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 1) {
    $user = $result->fetch_assoc();
    
    if (password_verify($password, $user['password'])) {
        // Password correct
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['username'] = $user['username'];
        $_SESSION['role'] = $user['role'];

        // Redirect based on role
        if ($role === 'Student') {
            header("Location: index2.html");
            exit;
        } elseif ($role === 'Staff') {
            header("Location: admin/dashboard2.html");
            exit;
        } elseif ($role === 'Admin') {
            header("Location: admin/dashboard.html");
            exit;
        } else {
            echo "<script>alert('Unknown role.'); window.history.back();</script>";
            exit;
        }
    } else {
        echo "<script>alert('Incorrect password.'); window.history.back();</script>";
        exit;
    }
} else {
    echo "<script>alert('Invalid username or role.'); window.history.back();</script>";
    exit;
}

$stmt->close();
$conn->close();
?>
