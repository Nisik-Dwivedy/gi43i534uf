<?php
    include("databaseConnection.php");
?>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from educhamp.themetrades.com/demo/admin/add-listing.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:09:05 GMT -->
<head>


	
	<!-- FAVICONS ICON ============================================= -->
	<link rel="icon" href="../error-404.html" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
	
	<!-- PAGE TITLE HERE ============================================= -->
	<title>Management</title>
	
	<!-- MOBILE SPECIFIC ============================================= -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.min.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
	
	<!-- All PLUGINS CSS ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/assets.css">
	<link rel="stylesheet" type="text/css" href="assets/vendors/calendar/fullcalendar.css">
	
	<!-- TYPOGRAPHY ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/typography.css">
	
	<!-- SHORTCODES ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/shortcodes/shortcodes.css">
	
	<!-- STYLESHEETS ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link rel="stylesheet" type="text/css" href="assets/css/dashboard.css">
	<link class="skin" rel="stylesheet" type="text/css" href="assets/css/color/color-1.css">
	
</head>
<body class="ttr-opened-sidebar ttr-pinned-sidebar">
	
	<!-- header start -->
<header class="ttr-header">
		<div class="ttr-header-wrapper">
			<!--sidebar menu toggler start -->
			<div class="ttr-toggle-sidebar ttr-material-button">
				<i class="ti-close ttr-open-icon"></i>
				<i class="ti-menu ttr-close-icon"></i>
			</div>
			<!--sidebar menu toggler end -->
			<!--logo start -->
			
			<!--logo end -->
			<div class="ttr-header-menu">
				<!-- header left menu start -->
				<ul class="ttr-header-navigation">
					<li>
						<a href="../index.html" class="ttr-material-button ttr-submenu-toggle">HOME</a>
					</li>
					
				</ul>
				<!-- header left menu end -->
			</div>
			<div class="ttr-header-right ttr-with-seperator">
				<!-- header right menu start -->
				<ul class="ttr-header-navigation">
				
				
					


				</ul>
				<!-- header right menu end -->
			</div>
		
		</div>
	</header>
	<!-- header end -->
	<!-- Left sidebar menu start -->
	<div class="ttr-sidebar">
		<div class="ttr-sidebar-wrapper content-scroll">
			<!-- side menu logo start -->
			<div class="ttr-sidebar-logo">
			
				<div class="ttr-sidebar-toggle-button">
					<i class="ti-arrow-left"></i>
				</div>
			</div>
			<!-- side menu logo end -->
			<!-- sidebar menu start -->
			<nav class="ttr-sidebar-navi">
				<ul>
					
					
		            <li class="ttr-seperate"></li>
				</ul>
				<!-- sidebar menu end -->
			</nav>
			<!-- sidebar menu end -->
		</div>
	</div>
	<!-- Left sidebar menu end -->
	<!-- header end -->
	<!-- Left sidebar menu start -->
	<div class="ttr-sidebar">
		<div class="ttr-sidebar-wrapper content-scroll">
			<!-- side menu logo start -->
			
			<!-- side menu logo end -->
			<!-- sidebar menu start -->
			<nav class="ttr-sidebar-navi">
				<ul>
					<li>
						<a href="dashboard.html" class="ttr-material-button">
							<span class="ttr-icon"><i class="ti-home"></i></span>
		                	<span class="ttr-label">Dashboard</span>
		                </a>
		            </li>

					<li>
						<a href="add-listing.html" class="ttr-material-button">
							<span class="ttr-icon"><i class="ti-user"></i></span>
		                	<span class="ttr-label">Add Teacher</span>	
		                </a>
		            </li>

					<li>
						<a href="attendance.php" class="ttr-material-button">
							<span class="ttr-icon"><i class="ti-user"></i></span>
		                	<span class="ttr-label">Attendance</span>	
		                </a>
		            </li>
					
					
		            <li class="ttr-seperate"></li>
				</ul>
				<!-- sidebar menu end -->
			</nav>
			<!-- sidebar menu end -->
		</div>
	</div>

	<!--Main container start -->
	<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">Add Students</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
					<li>Add Students</li>
				</ul>
			</div>	
			<div class="row">

				<!-- FORM -->
				 <form action="add-students.php" method="post">
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="widget-inner">
							<form class="edit-profile m-b30">
								<div class="row">
									<div class="col-12">
										<div class="ml-auto">
											<h3>1. Student's info</h3>
										</div>
									</div>
									<div class="form-group col-6">
										<label class="col-form-label">First Name</label>
										<div>
											<input class="form-control" type="text" value="" name="fname">
										</div>
									</div>
									<div class="form-group col-6">
										<label class="col-form-label">Last Name</label>
										<div>
											<input class="form-control" type="text" value="" name="lname">
										</div>
									</div>
									<div class="form-group col-6">
										<label class="col-form-label">Class</label>
										<div>
											<input class="form-control" type="text" value="" name="cls">
										</div>
									</div>
									<div class="form-group col-6">
										<label class="col-form-label">Division</label>
										<div>
											<input class="form-control" type="text" value="" name="div">
										</div>
									</div>
									<div class="form-group col-6">
										<label class="col-form-label">Contact No.</label>
										<div>
											<input class="form-control" type="tel" value="" name="cont">
										</div>
									</div>

                                    <div class="form-group col-6">
										<label class="col-form-label">Roll Number</label>
										<div>
											<input class="form-control" type="text" value="" name="rollno">
										</div>
									</div>


									<div class="seperator"></div>
									
									<div class="col-12 m-t20">
										<div class="ml-auto m-b5">
											<h3>2. Details</h3>
										</div>
									</div>
									<div class="form-group col-12">
										<label class="col-form-label">Address</label>
										<div>
											<textarea class="form-control" name="Address"> </textarea>
										</div>
									</div>
								 

                                    <div class="form-group col-6">
										<label class="col-form-label">Father's Name</label>
										<div>
											<input class="form-control" type="text" value="" name="fathName">
										</div>
									</div>
									<div class="form-group col-6">
										<label class="col-form-label">Mother's Name</label>
										<div>
											<input class="form-control" type="text" value="" name="Mothname">
										</div>
									</div>

									<div class="col-12">
										<table id="item-add" style="width:100%;">
											<tr class="list-item">
												<td>
													<div class="row">
														<div class="col-md-4">
															<label class="col-form-label">D.O.B</label>
															<div>
																<input class="form-control" type="date" value="" name="dob">
															</div>
														</div>
														<div class="col-md-3">
															<label class="col-form-label">Date of Admission</label>
															<div>
																<input class="form-control" type="date" value="" name="doa">
															</div>
														</div>
														
														</div>
													
														</div>
													</div>
												</td>
											</tr>
										</table>
									</div>
									
									<div class="col-12">
										
										<button>Save</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- Your Profile Views Chart END-->
			</div>
		</div>
	</main>
	<div class="ttr-overlay"></div>

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
<script src='assets/vendors/scroll/scrollbar.min.js'></script>
<script src="assets/js/functions.js"></script>
<script src="assets/vendors/chart/chart.min.js"></script>
<script src="assets/js/admin.js"></script>
<script src='assets/vendors/switcher/switcher.js'></script>
<script>
// Pricing add
	function newMenuItem() {
		var newElem = $('tr.list-item').first().clone();
		newElem.find('input').val('');
		newElem.appendTo('table#item-add');
	}
	if ($("table#item-add").is('*')) {
		$('.add-item').on('click', function (e) {
			e.preventDefault();
			newMenuItem();
		});
		$(document).on("click", "#item-add .delete", function (e) {
			e.preventDefault();
			$(this).parent().parent().parent().parent().remove();
		});
	}
</script>
</body>

<!-- Mirrored from educhamp.themetrades.com/demo/admin/add-listing.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:09:05 GMT -->
</html>




<!-- PHP -->
<?php


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $firstName = $_POST["fname"];
    $lastName = $_POST["lname"];
    $class = $_POST["cls"];
    $division = $_POST["div"];
    $contact = $_POST["cont"];
    $rollNumber = $_POST["rollno"];  
    $address = $_POST["Address"];
    $fatherName = $_POST["fathName"];
    $motherName = $_POST["Mothname"];
    $dob = $_POST["dob"];
    $admissionDate = $_POST["doa"]; 

  
    if (empty($firstName) || empty($lastName) || empty($class) || empty($division) || empty($contact) || empty($rollNumber) || empty($dob) || empty($admissionDate) || empty($address)) {
        echo "Please fill in all required fields!";
    } else {
        // Insert Query
        $sql = "INSERT INTO add_students (fname, lname, class, division, contact, roll, address, father, mother, dob, admissionDate) 
                VALUES ('$firstName', '$lastName', '$class', '$division', '$contact', '$rollNumber', '$address', '$fatherName', '$motherName', '$dob', '$admissionDate')";

        // Execute Query
        if (mysqli_query($conn, $sql)) {
            echo "Student Added Successfully!";
        } else {
            echo "Error: " . mysqli_error($conn);
        }
    }
}

error_reporting(E_ALL);
ini_set('display_errors', 1);

// Close connection
mysqli_close($conn);
?>
