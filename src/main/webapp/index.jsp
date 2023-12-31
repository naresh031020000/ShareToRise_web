<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.sharetorise.model.User"%>
<!DOCTYPE html>



<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ShareToRise</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/index.css">

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:500&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>

<body>



	<!------------------------- Header Section---------------------------------------->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- <div id="mobile__menu" class="overlay">
            <a class="close">&times;</a>
            <div class="overlay__content">
                <a href="#">Register</a>
                <a href="#">Register</a>
                <a href="#">Login</a>
            </div>
        </div> -->
	<a href=></a>

	<!------------------------- Intro banner section Section---------------------------------------->

	<div class="main_banner_content">

		<h1 class="title">Share To Rise</h1>


		<div class="heading_left">
			<div class="heading">
				<h1>Sports Funding Is a Great Way to Get Support From Fans and
					Followers</h1>
			</div>

			<div class="sub_heading">
				<h3>Share your profile with 0% cost</h3>
				<div class="border_color"></div>
			</div>

			<div class="funding_news">
				<img src="https://iili.io/J9WwLga.th.png" alt="image broken">
				<h1>Cricket Association of India raised ₹ 32,34,976 for Women's
					Cricket Team in just 10 days.</h1>
			</div>
		</div>
	</div>


	<a href="pages/profile/profile.jsp"></a>
	<!-------------------------About Sports funding---------------------------------------->


	<div start_funding class="text-center sports_funding_intro"
		id="start_funding">

		<p class="mb-0">Sports Crowdfunding</p>

		<div class="border_color_block"></div>

		<p class="mb-1">It is essential to any athlete or sportsperson
			trying to become the best they can be in what they do. However,
			unfortunately, it isn’t always easy for them to get the funds they
			need for training, equipment, and overall development.</p>

	</div>



	<!-------------------------About brief---------------------------------------->



	<div class="half-half-image-text">


		<div class="specific_1">



			<div class="specific_1_about">
				<h3>Equipment, Nutrition & Coaching costs are a Burden for Many
					Individuals and Families of Athletes</h3>
				<h6>Participation in local, state, and international sports
					competitions are costly. With the continuously shrinking of
					monetary funds from numerous sports & governing bodies, the expense
					provided by family and friends is exhausted quickly.</h6>
			</div>
			<div class="specific_1_img">
				<img src="https://iili.io/J9WwXxS.th.png" alt="">
			</div>


		</div>
		<div class="specific_1">
			<div class="specific_1_img">
				<img src="https://iili.io/J9WwLga.th.png" alt="">
			</div>

			<div class="specific_1_about">
				<h3>Try Sports Crowdfunding with Sports To Rural</h3>
				<h6>Through Sports Crowdfunding, we are aim to provide
					athletes, parents, friends, and sports governing bodies a unique
					platform that can empower athletes while simultaneously allowing
					you to be part of their journey and share their dreams as well as
					making sure your money is going towards a great cause!</h6>
			</div>



		</div>

		<div class="specific_1">

			<div class="specific_1_about">
				<h3>Start a Sports Crowdfunding Campaign for Yourself or a
					Deserving Athlete/Sportsmen</h3>
				<h6>Rather than look for sponsors via traditional channels, why
					not go online through Ketto Crowdfunding and reach a massive
					audience! It’s simple; create your crowdfunding campaign and let
					everyone know about it. We will provide you with a page where you
					can tell your story, and display photos and videos about what
					inspired you to do this in the first place. This will give
					supporters and people a chance to get to know who you are as an
					athlete. It’s a great way to connect with them, take them on the
					journey with you, and share your passion! By using Ketto’s
					Crowdfunding and fundraising platform, we will also enhance your
					profile and increase your fanbase. Start your Sports Fundraising
					Campaign on Ketto today!</h6>
			</div>

			<div class="specific_1_img">
				<img src="https://iili.io/J9Wwt5v.th.png" alt="">
			</div>

		</div>

	</div>


	<!------------------------- questions---------------------------------------->

	<div class="text-center sports_funding_intro" id="fund_questions_div">

		<p class="mb-0" id="fund_questions">What can you raise funds for?</p>
		<div class="border_color_block"></div>
	</div>


	<!------------------------- questions_explanation---------------------------------------->


	<div class="explain_boxes_div_main">
		<div class="explain_boxes_div">

			<div class="explain_box">
				<img src="assets/images/index_images/jersey.png"
					class="explain_box_img" alt="">
				<div class="border_color_explain_box"></div>
				<span id="explain_spans">Tournament</span>

			</div>

			<div class="explain_box">
				<img src="assets/images/index_images/team_trips.png"
					class="explain_box_img" alt="">
				<div class="border_color_explain_box"></div>
				<span id="explain_spans">Team Trips</span>

			</div>



			<div class="explain_box">
				<img src="assets/images/index_images/equipments.png"
					class="explain_box_img" alt="">
				<div class="border_color_explain_box"></div>
				<span id="explain_spans">Equipments</span>

			</div>

			<div class="explain_box">
				<img src="assets/images/index_images/medals.png"
					class="explain_box_img" alt="">
				<div class="border_color_explain_box"></div>
				<span id="explain_spans">Medals</span>

			</div>
			<div class="explain_box">
				<img src="assets/images/index_images/question-mark.png"
					class="explain_box_img" alt="">
				<div class="border_color_explain_box"></div>
				<span id="explain_spans">Others</span>

			</div>
		</div>

	</div>


	<!------------------------- why athelets need money---------------------------------------->

	<div class="why_athelets_need_main_div">

		<div class="text-center sports_funding_intro" id="athlets_need">

			<p class="mb-0" id="fund_questions">Why are Athletes and Coaches
				choosing sports crowdfunding?</p>
			<div class="border_color_block" id="fund_questions_border"></div>
		</div>






		<!------------------------- why athelets need money  columns---------------------------------------->

		<div why_athelets_need_main_div_explains class="row">

			<div class="col-md-6 .col-lg-6">
				<i class="fa fa-rupee first_font"
					style="font-size: 48px; color: #f1bf7a"></i>

				<div _naresh class="text-heading text-center">High Cost Of
					Equipment & Maintenance</div>
				<div class="text-desc">Buying new sports equipment is
					expensive. Maintenance costs are recurring and create a tremendous
					financial burden on the athletes and their coaches. Savings are not
					enough to cover the expensive bills. Sports crowdfunding helps you
					pay these expensive bills and purchase new equipment.</div>
			</div>

			<div naresh class="col-md-6 .col-lg-6">
				<i class="fa fa-money first_font "
					style="font-size: 48px; color: #f1bf7a"></i>
				<div class="text-heading text-center">Sports equipment,
					nutrition & training requires money</div>
				<div class="text-desc">Athletes, coaches, and trainers pursue
					their dream of winning a gold medal. Team fees, equipment costs,
					and travelling fees become a financial burden. Costs of living such
					as rent, food, gas, etc., increase this burden. Crowdfunding on
					Ketto helps you gather required funds quickly.</div>
			</div>
			<div class="col-md-6 .col-lg-6">
				<i class="fa fa-money first_font "
					style="font-size: 48px; color: #f1bf7a"></i>
				<div class="text-heading text-center">Asking For Money Isn’t
					Easy</div>
				<div class="text-desc">When in need, asking for help from
					people, and describing financial problems face-to-face can be
					awkward and inconvenient for teams, athletes, and coaches. Online
					sports crowdfunding makes the process of asking for money easier
					and seamless..</div>
			</div>
			<div class="col-md-6 .col-lg-6">
				<i class="fa fa-envelope-open first_font"
					style="font-size: 48px; color: #f1bf7a"></i>


				<div class="text-heading text-center">Loan Repayment Is
					Stressful</div>
				<div class="text-desc">Getting drowned in personal loans is a
					common phenomenon in families of sportsmen and women. Once the
					money is gathered, repaying that loan may take months, sometimes
					years together. Online crowdfunding for sports-related expenses
					comes without debts.</div>
			</div>
		</div>
	</div>


	<!------------------------- footer---------------------------------------->
	<div class="footer">
		<div last class="row">
			<div last class="cp-md-3 col-lg-3 col12 col-sm-7">
				<img src="assets/images/index_images/face_avatar_profile.avif"
					alt="">
				<div last class="share-icons">
					<a href="" class="fa fa-facebook special_icons"></a> <a href=""
						class="fa fa-whatsapp special_icons"></a> <a href=""
						class="fa fa-instagram special_icons"></a> <a href=""
						class="fa fa-linkedin special_icons"></a> <a href=""
						class="fa fa-snapchat special_icons"></a>

				</div>
				<div last class="followers">
					<h2 class="mb-0">1.5 M+</h2>
					<br> <span last>Followers</span><br> <br>
				</div>
				<div last class="reach-out">
					<b> For any queries </b><br> <b>Email: info@s2r.org</b><br>
					<b>Contact No: +91 1234567890</b><br>

				</div>
			</div>
		</div>
		<a href=""></a>

		<p class="last_para">Copyright © 2023 S2R Ltd. All Rights
			Reserved.</p>
	</div>

	<script src="assets/JS/profile.js/header.js"></script>
	<script src="assets/JS/main.js"></script>















</body>

</html>