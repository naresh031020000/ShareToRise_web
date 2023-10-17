


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/LoginAndRegister/register.css">
	
		<script src="<%=request.getContextPath() %>/assets/JS/sweetAlertJs.js"></script>
	
<title>Insert title here</title>

</head>

<body>

	<div class="container">

		<%
		String error = (String) request.getAttribute("error");
		String path = (String) request.getAttribute("path");
		if (error != null) {
		%>
		<script type="text/javascript">
		setTimeout(() => {
			window.location.href="<%=path%>"
		}, 4000);
		;
		</script>
		<h5 id="already_email_available">***<%=error%></h5>
		
	
		
		
		<%
		}
		%>
		
		


		<div class="title">Registration</div>


		<div class="content">

			<form id="form"
				action="<%=request.getContextPath()%>/RegisterServlet" method="post">


				<div class="user-details">
					<div class="input-box">
						<span class="details">First Name</span> <input type="text"
							id="first_name" name="first_name" placeholder="Enter your name"
							pattern="[A-Za-z]{0,32}"
							oninvalid="setCustomValidity('Please enter a valid Name')"
							oninput="setCustomValidity('')" required>
					</div>

					<div class="input-box">
						<span class="details">Last Name</span> <input type="text"
							id="last_name" name="last_name" placeholder="Enter your username"
							pattern="[A-Za-z]{0,32}"
							oninvalid="setCustomValidity('Please enter a valid Name')"
							oninput="setCustomValidity('')"
							required>
					</div>

					<div class="input-box">
						<span class="details">Email</span> <input type="email" id="email"
							name="email" placeholder="Enter your email"
							title="Please input a valid email"
							oninvalid="setCustomValidity('Please enter a valid email')"
							oninput="setCustomValidity('')" required>
					</div>

					<div class="input-box">
						<span class="details">Phone Number</span> <input type="tel"
							id="phone_number" name="phone_number"
							placeholder="Enter your number" pattern="^[6-9][0-9]{9}$"
							minlength="10" maxlength="10"
							title="Please enter valid mobile number without alphabets, special characters and white spaces"
							title="Please enter a valid phone number"
							oninvalid="setCustomValidity('Please enter a valid phone number')"
							oninput="setCustomValidity('')" required>
					</div>

					<div class="input-box">
						<span class="details">Password</span> <input type="password"
							id="password" name="password" placeholder="Enter your password"
							pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$"
							title="Uppercase letters: A-Z. Lowercase letters: a-z. Special: !@#$%^&*()"
							oninvalid="setCustomValidity('Please enter a valid password which contains Uppercase letters: A-Z. Lowercase letters: a-z. Special: !@#$%^&*() ')"
							oninput="setCustomValidity('')" required>
					</div>

					<div class="input-box">
						<span class="details">Confirm Password</span> <input
							type="password" id="confirm_password" name="confirm_password"
							placeholder="Confirm your password"
							title="Please correct the match password"
							pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$"
							oninvalid="setCustomValidity('Please enter a valid password which contains Uppercase letters: A-Z. Lowercase letters: a-z. Special: !@#$%^&*() ')"
							oninput="setCustomValidity('')" required>
					</div>
				</div>


				<div class="button">
					<button type="submit" id="btn_register">Register</button>
				</div>

			</form>

			<p class="text-center">Already Have an account?</p>
			
					<div class="button">
						<a class="btn_register1" href="login.jsp">login</a>
					</div>

		</div>


	</div>
	
	
			<script src="assets/JS/register.js"></script>
			

</body>
</html>

