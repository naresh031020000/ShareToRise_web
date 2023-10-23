<%@page import="org.apache.taglibs.standard.tag.el.core.ForEachTag"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*"%>

<%@ page import="com.fssa.sharetorise.model.FundRaiser"%>

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
	href="<%=request.getContextPath()%>/assets/css/Profile/profile_all_style.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/FundraiserPage/BrowserFundraiser.css">



<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/Profile/your_fundraiser.css">




<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>

</head>


<body>
	<a href=""></a>


	<!-- Header Part -->
	<jsp:include page="header.jsp"></jsp:include>


	<div class="sidebar">
		<div class="side-header">
			<h3>
				S<span>2R</span>
			</h3>
		</div>

		<div class="side-content">


			<div class="side-menu">
				<ul>
					<li><a href="profile.jsp"> <span class="las la-home"></span>
							<small>PROFILE</small>
					</a></li>
					<li><a href="AddFundraiser.jsp"> <span
							class="las la-user-alt"></span> <small>RAISE FUND</small>
					</a></li>
					
					<li><a href="yourFundraiser.jsp" class="active"> <span
							class="las la-clipboard-list"></span> <small>FUNDRAISERS</small>
					</a></li>
					<li><a href="yourDonations.jsp"> <span class="las la-envelope"></span> <small>DONATIONS</small>
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


				<div class="details-fund-raiser" id="detail_fund_raisers">



					<h1 class="text-center">Your Fundraisers</h1>

					<%
					List<FundRaiser> UserIdObject = (List<FundRaiser>) session.getAttribute("userFundraisers");

					if (UserIdObject != null) {
						for (FundRaiser raiser : UserIdObject) {
							double progressPercent = (raiser.getRaised_amount() / raiser.getFundingGoal()) * 100;
					%>

					<div class="details-fund-raiser_flex" id="detail_fund_raisers_flex">

						<div class="card_main_div">
							<div class="card">
								<div class="image-splayers">
									<img src="<%=raiser.getImageUrl()%>" class="player-img">
								</div>
								<p class="description">Funding</p>
								<div class="name">
									<div class="publisher-img">
										<img src="<%=raiser.getImageUrl()%>">
									</div>
									<p class="beneficiary_name"><%=raiser.getTitle()%></p>
								</div>
								<p class="fund-rs">
									<i class="fa-solid fa-indian-rupee-sign"></i> <span
										style="font-size: 20px; margin-right: 10px;"> <b
										style="color: #8a8a92;"><span>&#8377</span> <%=raiser.getRaised_amount()%></b>
									</span> <span>raised of</span>
								<div style="font-size: 20px; margin-left: 15px; padding: 10px;">
									<b style="color: black;"><span>&#8377</span><%=raiser.getFundingGoal()%></b>
								</div>
								</p>



								<div class="range">
									<div class="range_value" style="width: <%=progressPercent%>%;"></div>
								</div>
								<!-- 	<p class="last-date-of-fund">Last Donation 35 days ago</p> -->
								<div class="supports-last-date-of-fund">
									<p></p>
									<p>
										<span>45</span> Supporters
									</p>
								</div>

							</div>

							<form action="<%=request.getContextPath()%>/UpdateServlet"
								method="post">
								<input type="hidden" name="UpdateId"
									value="<%=raiser.getFundraiserId()%>">
								<button type="submit" class="edit_btn_form_creation_fundraiser"
									id="edit_btn_form_creation_fundraiser">Edit</button>
							</form>

							<form action="<%=request.getContextPath()%>/DeleteServlet"
								method="post">
								<input type="hidden" name="deleteId"
									value="<%=raiser.getFundraiserId()%>">
								<button type="submit"
									class="delete_btn_form_creation_fundraiser"
									id="delete_btn_form_creation_fundraiser">Delete</button>
							</form>
						</div>


						<%
						}
						}

						else {
						%>
						<p>No fundraisers</p>
						<%
						}
						%>

						<!-- <div class="notification_show" id="notification_show">
							<p class="message" id="message">Donations</p>
							<hr>
							<div class="notify_containing_div" id="notify_containing_div"></div>
						</div> -->
					</div>
				</div>
		</main>
	</div>










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