<%@page import="com.fssa.sharetorise.logger.Logger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="com.fssa.sharetorise.model.FundRaiser"%>
<%@ page import="com.fssa.sharetorise.service.FundraiserService"%>


<%@ page import="java.util.stream.Collectors" %>
<%@ page import="com.fssa.sharetorise.model.User"%>
<%@ page import="com.fssa.sharetorise.logger.Logger"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/FundraiserPage/BrowserFundraiser.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/index.css">

</head>
<body>

	<!-- Header Part -->
	<jsp:include page="header.jsp"></jsp:include>


	<!------------------------- Fundraiser Section---------------------------------------->

	<div class="Whole-content">

		<div class="sidebar-categories">
			<div class="sidebar-categories-position">
				<h3>categories</h3>

				

				<div class="filter_by_cat">
					<input type="checkbox" id="football" value="football"
						name="filter_by_cat"> <label for="football">Football</label>
					<br> <input type="checkbox" id="hockey" value="hockey"
						name="filter_by_cat"> <label for="hockey">Hockey</label> <br>
					<input type="checkbox" id="cricket" value="cricket"
						name="filter_by_cat"> <label for="cricket">Cricket</label>
					<br> <input type="checkbox" id="Volley" value="volley"
						name="filter_by_cat"> <label for="v	aolley">Volley</label> <br>
					<input type="checkbox" id="Kabadi" value="kabadi"
						name="filter_by_cat"> <label for="Kabadi">Kabadi</label> <br>
					<input type="checkbox" id="Badminton" value="badminton"
						name="filter_by_cat"> <label for="Badminton">Badminton</label><br>
					<input type="checkbox" id="others" value="others"
						name="filter_by_cat"> <label for="others">Others</label>
				</div>


			</div>


			<%
			User obj = (User) session.getAttribute("obj");
			

			if (obj != null) {
			%>
			<button id="btn">
				<a href="./AddFundraiser.jsp">Start a fund raiser</a>
			</button>
			<%
			} else {
			%>
			<button id="btn">
				<a href="./register.jsp">Register to Start</a>
			</button>
			<%
			}
			%>
		</div>

		<div class="card-fundraisers">

			<div class="seacrh-funraisers">
			
			<form >
				<input type="search" name="searchTerm" id="searchbar" placeholder="Search for fundraisers">
				<button>Search</button>
			</form>
				<p>
					<i class="fa-solid fa-magnifying-glass"></i>
				</p>
			</div>
			<div class="options-for-fund">
				<p>
					<span class="showing">Showing fundraisers for</span> <span><select>
							<option>Childrens</option>
					</select></span> under <span><select>
							<option>All types</option>
							<option>Football</option>
							<option>Hockey</option>
							<option>Cricket</option>
							<option>Volley</option>
							<option>Cricket</option>
					        <option>Others</option>
							

					</select>
					</span> From <span><select>
							<option>Sort by</option>
							<option>A to Z</option>
							<option>Date</option>

					</select></span>
				</p>
			</div>


			<div class="details-fund-raiser" id="detail_fund_raisers">


				<%
				PrintWriter outer = response.getWriter();
				List<FundRaiser> allFund = (List<FundRaiser>) request.getAttribute("FundraiserList");// req from Fundraiserservlet
							
				String searchTerm = request.getParameter("searchTerm");

				if(searchTerm != null && !searchTerm.isEmpty()){
					allFund = allFund.stream()
					        .filter(fundRaiser -> fundRaiser.getTitle().toLowerCase().contains(searchTerm.toLowerCase()))
					        .collect(Collectors.toList());
				}
				else{%>
				
				<h1>No fundraisers</h1>
				<p>hello</p>
				
				<!-- <script type="text/javascript">
					alert("Not Found");
					console.log("notfound")
				</script> -->
				
				<%
				System.out.print("dfdf");
				}
 
				FundraiserService service = new FundraiserService();
			
				if (allFund != null) {
					for (FundRaiser raiser : allFund) {

						int max = 120;
						int min = 1;
						int range = max - min + 1;

						// generate random numbers within 1 to 10

						int rand = (int) (Math.random() * range) + min;
						int supporters = service.countDonationsByFundraiserId(raiser.getFundraiserId());

						double progressPercent = (raiser.getRaised_amount() / raiser.getFundingGoal()) * 100;
						if (progressPercent < 100.00) {
				%>

				<a
					href="<%=request.getContextPath()%>/PlayerDetailsServlet?emer_id=<%=raiser.getFundraiserId()%>&days=<%=rand%>">
					<div class="card">

						<div class="image-splayers">
							<img src="<%=raiser.getImageUrl()%>" class="player-img">
						</div>
						<p class="description">Funding</p>
						<div class="name">
							<div class="publisher-img">
								<img
									src="<%=raiser.getImageUrl()%>">
							</div>
							<p class="beneficiary_name"><%=raiser.getTitle()%></p>
						</div>
						<p class="fund-rs">
							<i class="fa-solid fa-indian-rupee-sign"></i>
							 <span style="font-size: 20px; margin-right: 10px;"> 
							 <b style="color: #8a8a92;"><span>&#8377</span> <%=raiser.getRaised_amount()%></b>
							 </span>
							<span>raised of</span>
							
						<div style="font-size: 20px; margin-left: 15px; padding:10px;">
							<b style="color: black;"><span>&#8377</span><%=raiser.getFundingGoal()%></b>
						</div>
						</p>



						<div class="range">
							<div class="range_value" style="width: <%=progressPercent%>%;"></div>
						</div>
						<!-- 	<p class="last-date-of-fund">Last Donation 35 days ago</p> -->
						<div class="supports-last-date-of-fund">
							<p>
								<span><%=rand%></span> Days left
							</p>
							<p>
								<span><%=supporters %></span> Supporters
							</p>
						</div>

					</div>
				</a>


				<%
				}
				}
				} else {
				%>

				<h1>No fundraisers</h1>
				<%
				}
				%>


			</div>
		</div>
</body>
</html>