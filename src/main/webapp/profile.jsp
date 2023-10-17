<%@page import="java.awt.Window"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.fssa.sharetorise.model.User"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/index.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/Profile/profile_all_style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/Profile/profile_detail.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/notify.css">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200">
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body>


	<jsp:include page="header.jsp"></jsp:include>


	<div class="sidebar">
		<div class="side-header">
			<h3>
				S<span>2R</span>
			</h3>
		</div>

		<%
		User obj = (User) session.getAttribute("obj");
		%>

		<div class="side-content">

			<div class="side-menu">
				<ul>
					<li><a href="#" class="active"> <span class="las la-home"></span>
							<small>PROFILE</small>
					</a></li>
					<li><a href="AddFundraiser.jsp"> <span
							class="las la-user-alt"></span> <small>RAISE FUND</small>
					</a></li>
					<li><a href="page-not-found.jsp"> <span
							class="las la-envelope"></span> <small>DONATIONS</small>
					</a></li>
					<li><a href="<%=request.getContextPath()%>/yourFundraiser">
							<span class="las la-clipboard-list"></span> <small>FUNDRAISERS</small>
					</a></li>
					<!--  <li>
            <a href="../profile/chat.html">
              <span class="las la-tasks"></span>
              <small>Livescore</small>
            </a>
          </li>
 -->

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
				<form>
					<div profile_form class="form-row">

						<div class="col-md-6">
							<label for="first_name">First Name</label> <input type="text"
								id="first_name" class="form-control" placeholder="First name"
								value="<%=obj.getFirstName()%>
              " disabled>

						</div>

						<div class="col-md-6">
							<label for="last_name">Last Name</label> <input type="text"
								id="last_name" class="form-control" placeholder="Last name"
								value="<%=obj.getLastName()%>
              " disabled>
						</div>



						<div class="col-md-6">
							<label for="email">email</label> <input type="email" id="email"
								class="form-control" placeholder="email"
								value="<%=obj.getEmail()%>
              " disabled>
						</div>

						<div class="col-md-6">
							<label for="phone no.">phone no.</label> <input type="number"
								id="number" class="form-control" placeholder="Phone no."
								value="<%=obj.getPhoneNumber()%>" disabled>

						</div>


						<div form class="container">
							<button class="button_form " id="edit_button">Edit</button>

							<button class="button_form " id="save_change_button">Save
								changes</button>
							<button class="button_form " id="del_button">
								<a href=<%=request.getContextPath()%> /LogoutServlet1>LogOut</a>
							</button>
						</div>

						<a
							href="../../../naresh.vellingiri__web_project/pages/profile/profile_detail.html"></a>
					</div>
				</form>
			</div>
		</main>
	</div>

	<script src="<%=request.getContextPath()%>/assets/JS/profile_detail.js"></script>
</body>
</html>