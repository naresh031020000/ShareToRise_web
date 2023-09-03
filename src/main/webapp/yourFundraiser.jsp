<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1">
<title>Profile_page</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/index.css">
	
	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/FundraiserPage/form_creation_fundraiser.css">
	

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/FundraiserPage/BrowserFundraiser.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/Profile/your_fundraiser.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/Profile/profile_all_style.css">



<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>

</head>


<body>
	<a href=""></a>


	<header class="header_main" id="header_main">
		<a class="logo" href="/"><img
			src="../../assets/images/index_images/logo_main.png" alt="logo"></a>
		<nav>
			<ul class="nav__links">
				<li><a href="../../index.html">Home</a></li>
				<li><a href="#">About</a></li>
				<li><a href="../fundraiser_page/browse_fundraiser.html">Fundraiser</a></li>

			</ul>
		</nav>
		<a class="cta" href="../login and register/register.html"
			id="register">Register</a> <a class="cta"
			href="../login and register/login.html" id="login">Login</a>

	</header>


	<div class="sidebar">
		<div class="side-header">
			<h3>
				S<span>2R</span>
			</h3>
		</div>

		<div class="side-content">


			<div class="side-menu">
				<ul>
					<li><a href="profile_detail.html"> <span
							class="las la-home"></span> <small>PROFILE</small>
					</a></li>
					<li><a href="../fundraiser_page/form_creation_fundraiser.html">
							<span class="las la-user-alt"></span> <small>RAISE FUND</small>
					</a></li>
					<li><a href="#"> <span class="las la-envelope"></span> <small>DONATIONS</small>
					</a></li>
					<li><a href="#" class="active"> <span
							class="las la-clipboard-list"></span> <small>FUNDRAISERS</small>
					</a></li>

					<li><a href="#"> <span class="las la-tasks"></span> <small>ABOUT</small>
					</a></li>

				</ul>
			</div>
		</div>
	</div>

	<div class="main-content">

		<main>

			<div class="page-header">
				<h1>Profile</h1>
			</div>

			<div class="page-content" id="page_content">
				<div class="details-fund-raiser" id="detail_fund_raisers"></div>
			</div>
		</main>
	</div>




	<script src="../../assets/JS/profile.js/header.js"></script>


	<script src="../../assets/JS/profile.js/your_fundraiser.js"></script>





	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

</body>

</html>