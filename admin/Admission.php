


<?php
    include("databaseConnection.php");

    if (isset($_POST['submit'])) {
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];
        $phone = $_POST['phone'];
        $class = $_POST['class'];
        $dob = $_POST['dob'];
        $address = $_POST['address'];
        $city = $_POST['city'];
        $state = $_POST['state'];
        $pincode = $_POST['pincode'];
        $bloodgroup = $_POST['bloodgroup'];

        // Handle the photo upload
        $photo = $_FILES['photo']['tmp_name'];
        $photoData = addslashes(file_get_contents($photo)); // Read binary data

        // Insert data into database
        $sql = "INSERT INTO admission_form (photo, fname, lname, phone, class, dob, address, city, state, pincode, bloodgroup)
                VALUES ('$photoData', '$fname', '$lname', '$phone', '$class', '$dob', '$address', '$city', '$state', '$pincode', '$bloodgroup')";

        if (mysqli_query($conn, $sql)) {
            echo "<script>alert('Admission form submitted successfully!');</script>";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
    }
?>





<!DOCTYPE html>
<html lang="en">

<head>

	<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
	<title>SCHOOL MANAGEMENT SYSTEM </title>
	<link rel="stylesheet" type="text/css" href="assets/css/assets.css">
	<link rel="stylesheet" type="text/css" href="assets/css/typography.css">
	<link rel="stylesheet" type="text/css" href="assets/css/shortcodes/shortcodes.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link class="skin" rel="stylesheet" type="text/css" href="assets/css/color/color-1.css">
	
</head>
<body id="bg">
<div class="page-wraper">
<div id="loading-icon-bx"></div>

    <header class="header rs-nav">
		<div class="top-bar">
			<div class="container">
				<div class="row d-flex justify-content-between">
					<div class="topbar-left">
						<ul>
							
							<li><a href="javascript:;"><i class="fa fa-envelope-o"></i>SkyHorizon@gmail.com</a></li>
						</ul>
					</div>
					<div class="topbar-right">
						<ul>
							
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="sticky-header navbar-expand-lg">
            <div class="menu-bar clearfix">
                <div class="container clearfix">
					<!-- Header Logo ==== -->
					<div class="menu-logo">
						<a href="index.html"><img src="main-logo.png" alt=""></a>
					</div>
					<!-- Mobile Nav Button ==== -->
                    <button class="navbar-toggler collapsed menuicon justify-content-end" type="button" data-toggle="collapse" data-target="#menuDropdown" aria-controls="menuDropdown" aria-expanded="false" aria-label="Toggle navigation">
						<span></span>
						<span></span>
						<span></span>
					</button>
					<!-- Author Nav ==== -->
                    <div class="secondary-menu">
                        <div class="secondary-inner">
                            
						</div>
                    </div>

					<!-- Navigation Menu ==== -->
                    <div class="menu-links navbar-collapse collapse justify-content-start" id="menuDropdown">
						<div class="menu-logo">
							<a href="index.html"><img src="assets/images/logo-mobile.png" alt=""></a>
						</div>
                        <ul class="nav navbar-nav">	
							<li class="active"><a href="javascript:;">Home <i class="fa fa-chevron-down"></i></a>
								<ul class="sub-menu">
									
						</ul>
							</li>

                    </div>
					<!-- Navigation Menu END ==== -->
                </div>
            </div>
        </div>
    </header>
    <!-- header END ==== -->
    <!-- Content -->
    <div class="page-content bg-white">
        <!-- inner page banner -->
        <div class="page-banner ovbl-dark" style="background-image:url(assets/images/banner/banner3.jpg);">
            <div class="container">
                <div class="page-banner-entry">
                    <h1 class="text-white">Admission Form</h1>
				 </div>
            </div>
        </div>
		<!-- Breadcrumb row -->
		<div class="breadcrumb-row">
			<div class="container">
				<ul class="list-inline">
					<li><a href="#">Home</a></li>
					<li>Form</li>
				</ul>
			</div>
		</div>
		<!-- Breadcrumb row END -->
	
        <!-- inner page banner -->
        <div class="page-banner contact-page section-sp2">
            <div class="container">
                <div class="row">
					<div class="col-lg-5 col-md-5 m-b30">
						<div class="bg-primary text-white contact-info-bx">
							<h2 class="m-b10 title-head">Contact <span>Information</span></h2>
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
							<div class="widget widget_getintuch">	
								<ul>
									<li><i class="ti-location-pin"></i>Sky Horizon School, Surat</li>
									<li><i class="ti-mobile"></i>0800-123456 </li>
									
								</ul>
							</div>
							
							
						</div>
					</div>
					<div class="col-lg-7 col-md-7">
						<!-- <form class="contact-bx ajax-form" action=""> -->
						<form class="contact-bx ajax-form" action="" method="POST" enctype="multipart/form-data">

						<div class="ajax-message"></div>
							<div class="heading-bx left">
								<h2 class="title-head">Admission <span>Form</span></h2>
								
							</div>

							<!-- FORM STARTING -->
							<div class="col-12">
    <form>
        <table id="item-add" style="width:100%;">
            <tr class="list-item">
                <td>
                    <!-- Student Photo -->
                    <div class="row mb-4">
                        <div class="col-md-4">
                            <label class="col-form-label">Student's Photo</label>
                            <input class="form-control" type="file" name="photo">
                        </div>
                    </div>

                    <!-- Name Fields -->
                    <div class="row placeani mb-4">
                        <div class="col-lg-6 mb-3">
                            <div class="form-group">
                                <label>First Name</label>
                                <input name="fname" type="text" required class="form-control valid-character">
                            </div>
                        </div>
                        <div class="col-lg-6 mb-3">
                            <div class="form-group">
                                <label>Last Name</label>
                                <input name="lname" type="text" class="form-control" required>
                            </div>
                        </div>
                    </div>

                    <!-- Phone & Class -->
                    <div class="row placeani mb-4">
                        <div class="col-lg-6 mb-3">
                            <div class="form-group">
                                <label>Your Phone</label>
                                <input name="phone" type="text" required class="form-control int-value">
                            </div>
                        </div>
                        <div class="col-lg-6 mb-3">
                            <div class="form-group">
                                <label>Enter the class you want admission in.</label>
                                <input name="class" type="number" required class="form-control">
                            </div>
                        </div>
                    </div>

                    <!-- Date of Birth -->
                    <div class="row mb-4">
                        <div class="col-md-4">
                            <label class="col-form-label">D.O.B</label>
                            <input class="form-control" type="date" name="dob">
                        </div>
                    </div>

                    <!-- Address -->
                    <div class="form-group col-12 mb-4">
                        <label class="col-form-label">Address</label>
                        <textarea class="form-control" name="address"></textarea>
                    </div>

                    <!-- City & State -->
                    <div class="row placeani mb-4">
                        <div class="col-lg-6 mb-3">
                            <div class="form-group">
                                <label>City</label>
                                <input name="city" type="text" required class="form-control valid-character">
                            </div>
                        </div>
                        <div class="col-lg-6 mb-3">
                            <div class="form-group">
                                <label>State</label>
                                <input name="state" type="text" class="form-control" required>
                            </div>
                        </div>
                    </div>

                    <!-- Pincode & Blood Group -->
                    <div class="row placeani mb-4">
                        <div class="col-lg-6 mb-3">
                            <div class="form-group">
                                <label>Pincode</label>
                                <input name="pincode" type="number" required class="form-control valid-character">
                            </div>
                        </div>
                        <div class="col-lg-6 mb-3">
                            <div class="form-group">
                                <label>Blood Group</label>
                                <input name="bloodgroup" type="text" class="form-control" required>
                            </div>
                        </div>
                    </div>

                    <!-- Submit Button -->
                    <div class="col-lg-12 mt-4">
                        <button name="submit" type="submit" value="Submit" class="btn button-md">Submit</button>
                    </div>
                </td>
            </tr>
        </table>
    </form>
</div>

				
        <!-- inner page banner END -->
    </div>
    <!-- Content END-->
    <!-- Footer ==== -->
    
    <!-- Footer END ==== -->
    <!-- scroll top button -->
    <button class="back-to-top fa fa-chevron-up" ></button>
</div>
<!-- External JavaScripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/vendors/bootstrap/js/popper.min.js"></script>
<script src="assets/vendors/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
<script src="assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
<script src="assets/vendors/magnific-popup/magnific-popup.js"></script>
<script src="assets/vendors/counter/waypoints-min.js"></script>
<script src="assets/vendors/counter/counterup.min.js"></script>
<script src="assets/vendors/imagesloaded/imagesloaded.js"></script>
<script src="assets/vendors/masonry/masonry.js"></script>
<script src="assets/vendors/masonry/filter.js"></script>
<script src="assets/vendors/owl-carousel/owl.carousel.js"></script>
<script src="assets/js/functions.js"></script>
<script src="assets/js/contact.js"></script>
<script src='assets/vendors/switcher/switcher.js'></script>
<script src='../../www.google.com/recaptcha/api.js'></script>
</body>


</html>