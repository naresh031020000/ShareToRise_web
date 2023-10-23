<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<!-- <link rel="stylesheet" href="../../assets/css/profile/profile_detail.css"> -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/Profile/your_donation.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/notify.css">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200">
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css">
</link>
</head>
<body>
<body>

		<jsp:include page="header.jsp"></jsp:include>


	<!-- <input type="checkbox" id="menu-toggle"> -->

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
							
							<li><a href="AddFundraiser.jsp"> <span
									class="las la-user-alt"></span> <small>RAISE FUND</small>
							</a></li>
							
							<li><a  href="yourFundraiser.jsp">
									<span class="las la-clipboard-list"></span> <small>FUNDRAISERS</small>
							</a></li>
							<li><a class="active" href="#"> <span
									class="las la-envelope"></span> <small>DONATIONS</small>
							</a></li>
							
				</ul>
			</div>
		</div>
	</div>

	<div class="main-content">

		<main>

			<div class="page-header"></div>

			<div class="page-content" id="page_content">

				<h1 class="text-center">Your Contribution</h1>

				<section class="table__body">
					<table>
						<thead>
							<tr>
								<th>sl.no</th>
								<th>Donated To</th>
								<th>Sports Type</th>
								<th>Image</th>
								<th>Amount</th>
							</tr>
						</thead>
						<tbody class="body_table">

							<tr>
								<td>1</td>
								<td><p>Kohli</p></td>
								<td><p>Cricket</p></td>
								<td><img
									src="https://freeimghost.net/images/2023/05/22/kohli_img.jpeg"
									alt=" 193"></td>
								
								<td><p><span>&#8377</span>10</p></td>
							</tr>
						
						</tbody>
					</table>
				</section>

			</div>
		</main>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>

<!-- 	<script src="../../assets/JS/profile.js/your_donation.js"></script>
 -->
	

</body>

</body>

</html>