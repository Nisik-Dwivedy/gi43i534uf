<?php
if (isset($_POST['upload'])) {
    $targetDir = "uploads/";

    // Check if directory exists, if not create it
    if (!is_dir($targetDir)) {
        mkdir($targetDir, 0777, true);
    }

    $fileName = basename($_FILES["pdf_file"]["name"]);
    $targetFilePath = $targetDir . $fileName;

    // Allow only PDF files
    $fileType = strtolower(pathinfo($targetFilePath, PATHINFO_EXTENSION));
    if ($fileType === "pdf") {
        if (move_uploaded_file($_FILES["pdf_file"]["tmp_name"], $targetFilePath)) {
            echo "The file " . htmlspecialchars($fileName) . " has been uploaded.";
        } else {
            echo "Sorry, there was an error uploading your file.";
        }
    } else {
        echo "Only PDF files are allowed.";
    }
}
?>
