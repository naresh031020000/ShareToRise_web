<%@ page import="com.fssa.sharetorise.model.User"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Your Page Title</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/style.css">
</head>
<body>

	<header class="header_main" id="header_main">
		<a class="logo" href="<%=request.getContextPath()%>/index.jsp"><img
			src="<%=request.getContextPath()%>/assets/Images/header/logo_main.png"
			alt="logo"></a>
		<nav>
			<ul class="nav__links">
				<li><a href="./index.jsp">Home</a></li>
				<li><a href="./FundraiserServlet">Fundraiser List</a></li>

				<%
				User obj = (User) session.getAttribute("obj");

				if (obj != null) {
				%>
				<li><a class="button_form1" href="./profile.jsp"><%=obj.getFirstName()%></a></li>

				<%
				} else {
				%>
				<li><a class="cta" href="./register.jsp" id="register">Register</a></li>
				<li><a class="cta" href="./login.jsp" id="login">Login</a></li>

				<%
				}
				%>

			</ul>
		</nav>
	</header>

	<!-- Rest of your HTML content -->

</body>
</html>
