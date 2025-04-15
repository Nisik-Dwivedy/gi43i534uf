<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Include necessary stylesheets -->
    <link rel="stylesheet" type="text/css" href="assets/css/assets.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/dashboard.css">
    <link class="skin" rel="stylesheet" type="text/css" href="assets/css/color/color-1.css">
</head>
<body class="ttr-opened-sidebar ttr-pinned-sidebar">

    <!-- header start -->
    <header class="ttr-header">
        <div class="ttr-header-wrapper">
            <div class="ttr-header-menu">
                <ul class="ttr-header-navigation">
                    <li><a href="../index.html" class="ttr-material-button">HOME</a></li>
                </ul>
            </div>
        </div>
    </header>
    <!-- header end -->

    <!-- Left sidebar menu start -->
    <div class="ttr-sidebar">
        
    </div>
    <!-- Left sidebar menu end -->

    <!-- Main container start -->
    <main class="ttr-wrapper">
        <div class="container-fluid">
            <div class="db-breadcrumb">
                <h4 class="breadcrumb-title">Notice Page</h4>
                <ul class="db-breadcrumb-list">
                    <li><a href="#"><i class="fa fa-home"></i>Home</a></li>
                    <li>Notice Page</li>
                </ul>
            </div>

            <!-- File upload form -->
            <div class="row">
                <div class="col-md-6">
                    <div class="widget-box">
                        <div class="wc-title">
                            <h4>Upload Notice (PDF)</h4>
                        </div>
                        <div class="widget-inner">
                            <form action="upload_notice.php" method="POST" enctype="multipart/form-data">
                                <input type="file" name="pdf_file" accept=".pdf" required />
                                <button type="submit" name="upload" class="btn btn-primary">Upload</button>
                            </form>
                        </div>
                    </div>
                </div>



                <?php
$dir = "uploads/";
$files = scandir($dir);

echo "<h3>Uploaded Files:</h3>";
echo "<ul>";
foreach ($files as $file) {
    if ($file !== "." && $file !== "..") {
        echo "<li><a href='$dir$file' download>$file</a></li>";
    }
}
echo "</ul>";
?>


                <!-- Display list of uploaded PDFs -->
                <div class="col-md-6">
                    <div class="widget-box">
                        <div class="wc-title">
                            <h4>Uploaded Notices</h4>
                        </div>
                        <div class="widget-inner">
                            <ul>
                                <!-- PHP to fetch and list uploaded PDFs -->
                                <?php
                                // Assuming connection to the database and file upload handling is done here.
                                $dir = 'uploads/'; // Directory for storing uploaded files
                                $files = array_diff(scandir($dir), array('.', '..')); // Fetch uploaded files

                                foreach ($files as $file) {
                                    echo "<li><a href='$dir$file' target='_blank'>$file</a></li>";
                                }
                                ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- Main container end -->

    <!-- Include necessary JavaScript files -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/vendors/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
