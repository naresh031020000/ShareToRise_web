<%@page import="com.fssa.sharetorise.model.FundRaiser"%>
<%@page import="com.fssa.sharetorise.model.Certificate"%>
<%@page import="com.fssa.sharetorise.model.Video"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Url params fundraiser</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/index.css">

<style type="text/css">
.main_title {
	margin: 30px;
}

#headline {
	font-weight: 600;
}

.container {
	display: flex;
	margin-top: 30px;
}

#headline {
	text-align: center;
}

#kidsimg1 {
	width: 500px;
	height: 600px;
	border-radius: 5px;
}

#kidsimg {
	width: 300px;
	border-radius: 5px;
}

#ask_for_update {
	border: none;
	padding: 10px;
	color: #01bfbd;
	background-color: white;
	border-radius: 5px;
	box-shadow: 0 1px 6px rgba(0, 0, 0, .2);
	margin-top: 30px;
	margin-left: 550px;
}

.details button {
	border: none;
	padding: 10px;
	background-color: white;
	margin-left: 20px;
	font-size: 18px;
}

.details button:hover {
	color: #01bfbd;
	border-bottom: solid #01bfbd;
}

.about_content, .certificates, .images, .videos {
	border: 1px solid rgb(217, 210, 210);
	padding: 10px;
	margin: 30px;
	border-radius: 5px;
}

#aboutheading, #certificates_heading, #images_playing, #achieved_videos
	{
	text-align: center;
	font-size: 26px;
	font-weight: 600;
}

#aboutpara, #certificates_heading, #images_playing, #achieved_videos {
	margin-top: 20px;
}

.contain_players_certificate_image, .contain_players_achievements_image,
	.videos_containing_div {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
	gap: 30px;
}

.contain_players_certificate_image img,
	.contain_players_achievements_image img {
	width: 700px;
	border: 1px solid black;
	border-radius: 5px;
}

.right_container {
	margin-left: 40px;
}

#contribute, #fbshare {
	border: none;
	padding: 12px;
	height: 50px;
	width: 300px;
	font-size: 20px;
	color: white;
	font-weight: 600;
	background-color: #01bfbd;
	border-radius: 6px;
}

iframe {
	border-radius: 5%;
	width: 700px;
	height: 600px;
}

#contribute:hover {
	box-shadow: 0 4px 8px rgba(1, 191, 189, .3);
}

.banking {
	display: flex;
	gap: 10px;
}

.banking button {
	font-size: 12px;
	background-color: white;
	color: #B3B3B3;
	border: thin #B3B3B3;
	box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;
	margin-top: 30px;
	padding: 8px;
}

#fbshare {
	margin-top: 50px;
	background-color: rgb(59, 89, 152);
}

#fbsharetext {
	margin-top: 10px;
	color: rgb(59, 89, 152);
}

#amt {
	font-size: 28px;
}

.suporters {
	display: flex;
	font-size: 20px;
}

#suporters1 {
	margin-right: 40px;
}

.sponsercard {
	background-color: white;
	box-shadow: 0 6px 40px 0 rgba(0, 0, 0, .1);
	border-radius: 10px;
	margin-top: 30px;
	display: flex;
	padding: 20px;
}

#profileicon {
	height: 50px;
	width: 50px;
	border-radius: 50%;
	box-shadow: 0 6px 40px 0 rgba(0, 0, 0, .1);
}

.campaigner {
	margin-left: 40px;
}

#sponsername {
	color: #007de1;
	font-weight: 600;
	margin-top: -10px;
}

.deposit_form {
	width: 40%;
	/* height: 65vh; */
	position: fixed;
	top: 100px;
	left: 480px;
	background-color: white;
	border-radius: 10px;
	padding: 20px;
	box-sizing: border-box;
	display: none;
	box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;
	font-weight: 450;
	font-size: 15px;
}

.deposit_form h2, .withdraw_form h2 {
	font-weight: 550;
	display: flex;
	align-items: center;
	justify-content: center;
}

.deposit_form h2 img, .withdraw_form h2 img {
	width: 50px;
	margin: 0px 10px;
}

#cross_mark {
	margin-left: 280px;
	cursor: pointer;
}

.hr {
	margin: 15px 0px 20px 0px;
}

.deposit_form input, .withdraw_form input {
	border: solid grey;
	border-width: 0px 0px 1px 0px;
	margin: 20px 30px;
}

.deposit_form input:focus, .withdraw_form input:focus {
	outline: none;
}

.step1, .step3 {
	display: flex;
	align-items: center;
	margin-bottom: 20px;
}

.deposit_form p {
	font-weight: 500;
	color: #42464A;
}

.deposit_form p span, .withdraw_form p span {
	padding: 7px 15px;
	font-weight: 800;
	background-color: #01bfbd;
	border-radius: 50%;
	color: white;
	margin: 0px 15px 0px 15px;
}

.step2 p span {
	padding: 7px 15px;
}

.step1 input, .step3 input {
	padding: 5px 10px;
	width: 230px;
	font-size: 18px;
}
/* input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
} */
.step2_list {
	margin: 30px 0px 0px 0px;
	display: flex;
	justify-content: space-evenly;
	flex-wrap: wrap;
}

.step2_list div {
	display: flex;
	flex-direction: column;
	align-items: center;
	padding: 20px;
	border-radius: 5px;
	color: rgb(73, 73, 73);
	font-weight: 500;
}

.step2_list div:hover {
	background-color: rgb(244, 244, 244);
	cursor: pointer;
}

.step2_list div img {
	width: 50px;
}

.buttons span {
	padding: 7px 15px;
	border: none;
	background-color: #01bfbd;
	color: white;
	font-weight: 500;
	border-radius: 5px;
	cursor: pointer;
}

.send_request .sent {
	display: flex;
	flex-direction: row-reverse;
	align-items: center;
	margin-bottom: 20px;
}

.send_request .sent h3 {
	font-size: 12px;
	font-weight: 300;
	color: #2FA042;
	margin-left: 15px;
}

.send_request img {
	width: 30px;
	height: 30px;
}

.send_request_otp {
	font-weight: 500;
	color: #42464A;
	font-size: 14px;
	display: flex;
	align-items: center;
	justify-content: center;
	margin-bottom: 20px;
}

.send_request_otp input {
	padding: 5px 10px;
	font-size: 16px;
}

.send_request_otp img {
	width: 30px;
	margin-right: 10px;
}

.buttons {
	margin: 25px 0px;
	display: flex;
	flex-direction: row-reverse;
}

.buttons a, .buttons button {
	padding: 7px 20px;
	margin: 0px 5px;
	font-weight: 600;
	border-radius: 5px;
	color: white;
	cursor: pointer;
	border: none;
}

#back {
	background-color: #01bfbd;
}

#done, #withdraw_money {
	background-color: #2db644;
	display: flex;
	align-items: center;
}

.anonymous {
	font-weight: bold;
	font-size: 50px;
	color: rgb(191, 28, 123)
}

#send_request {
	border: none;
	padding: 12px;
	width: 70px;
	font-size: 14px;
	color: white;
	font-weight: 600;
	background-color: #01bfbd;
	border-radius: 6px;
	margin-left: 490px;
}
/* .withdraw_form p:nth-of-type(1){
    display: inline;
}
#withdraw_wallet_balance{
    display: inline;
    font-weight: 600;
    font-size: 18px;
    color: #42464A;
} */
.view {
	display: block;
	transition: 1s;
}

.view {
	display: block !important;
	transition: 1s;
}

.not_view {
	display: none;
}
</style>
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:500&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>

	<!-- Header -->
	<jsp:include page="header.jsp"></jsp:include>


	<!-------------------------url params div---------------------------------------->


	<div class="main_title" id="main_title">
		<!-- <h1 id="headline">Help To Provide EQUIPMENTS For The SPORTS Kids!</h1> -->

	</div>


	<%
	FundRaiser fundraiser = (FundRaiser) request.getAttribute("fundraiser");
	int id = (Integer) (request.getAttribute("emer_id"));
	System.out.println("hiurl");
	int supporters_count=(int) request.getAttribute("count");
	System.out.println(supporters_count);

	double raisedAmount = (Double) (request.getAttribute("raisedAmount"));
	System.out.println(raisedAmount);

	boolean isArrived = fundraiser != null ? true : false;
	
	int days_left = (int) request.getAttribute("days");
	System.out.println(days_left);
	%>



	<div class="container" id="main_.container">

		<div class="left_container">


			<img src="<%=fundraiser.getImageUrl()%>" alt="Kids Images"
				id="kidsimg1">

			<button id="ask_for_update">
				<i class="fa fa-share-alt"></i>Ask for update
			</button>
			<div class="details">
				<button id="about_navbar" class="fa fa-globe">
					<i></i> About
				</button>

				<button id="certificates_navbar">

					<i class="fa fa-edit"></i> Certificates
				</button>
				<button id="images_navbar">
					<i class="fa fa-comment"></i> Images
				</button>
			</div>
			<hr>
			<div class="about_content" id="about_content">
				<h3 id="aboutheading">About The Fundraisers</h3>
				<p id="aboutpara"><%=fundraiser.getDescription() %></p>
			</div>
			<div class="certificates">
				<h3 id="certificates_heading">Achievements</h3>
				<div class="contain_players_certificate_image">
					<%
					List<Certificate> certificates = fundraiser.getCertificate();
					%>
					<%
					for (int i = 0; i < certificates.size(); i++) {
					%>
					<img src="<%=fundraiser.getCertificate().get(i).getCerUrl()%>"
						alt="Kids Images" id="kidsimg">
					<%
					}
					%>
				</div>


			</div>
			<!--  
			<div class="images">
				<h3 id="images_playing">Achievement Images</h3>
				<div class="contain_players_achievements_image"></div>
			</div>
			-->
			<div class="videos">
				<h3 id="achieved_videos">Achieved_videos</h3>
				<div class="videos_containing_div"></div>
				<%
				List<Video> videos = fundraiser.getVideo();
				%>
				<%
				for (int i = 0; i < videos.size(); i++) {
				%>
				<iframe src="<%=fundraiser.getVideo().get(i).getVideoUrl()%>"></iframe>


				<%
				}
				%>
			</div>
		</div>
		<div class="right_container">
			<button id="contribute">
				<i class="fa fa-heart"></i> CONTRIBUTE NOW
			</button>
			<div class="banking">
				<button>
					All Credit &amp; <br> Debit Cards
				</button>
				<button id="netbanking">
					Net <br> Banking
				</button>
				<button>
					Paytm &amp; <br> UPI
				</button>
				<button>
					Direct Bank <br> Transfer
				</button>
			</div>
			<div class="share">
				<button id="fbshare">
					<i class="fa fa-facebook-f"></i> Spread The Sports
				</button>
				<p id="fbsharetext">
					<i>Every Social Media Share Can Bring ₹5000</i>
				</p>
			</div>
			<h3 id="amt">
				<b style="color: black;"><span>&#8377</span><%=raisedAmount%></b>
			</h3>
			<p>
				raised of <strong> <span>&#8377</span><%=fundraiser.getFundingGoal()%>
				</strong> goal
			</p>
			
			<%
			double progressPercent = (raisedAmount /fundraiser.getFundingGoal()) * 100;
			%>
			
			<div class="supporterbar">
				<div class="progress"
					style="background-color: rgba(1, 191, 189, 0.3);">
					<div class="progress-bar"
						style="width: <%=progressPercent%>%; background-color: rgb(1, 191, 189);">
						<span class="sr-only">70% Complete</span>
					</div>
				</div>
				<div class="suporters">
					<p id="suporters1"><%=supporters_count%>  Supporters</p>
					<p><%=days_left%> days left</p>
				</div>
			</div>
			<div class="sponsercard">
				<img src="https://freeimghost.net/images/2023/05/22/kohli_img.jpeg"
					alt="image_broken" id="profileicon">
				<div class="campaigner">
					<p>Campaigner</p>
				</div>
			</div>
		</div>
	</div>


	<form class="deposit_form" id="contribute_form"
		action="./DonateFund?fundRaiserId=<%=id%>" method="post">
		<h2>
			Donate Money <img
				src="../../assets/images/fundraiser_images/payment_images/donate_image.png"
				alt="img"> <span id="cross_mark"> &#10060;</span>
		</h2>
		<hr class="hr">
		<div class="step1">
			<p>
				<span>1</span>Enter the amount
			</p>
			<input type="number" id="deposit_amount" min="1" name="amount"
				placeholder="0" 
				oninvalid="setCustomValidity('Please enter a valid amount')"
				oninput="setCustomValidity('')"
				required>
		</div>
		<div class="step2">
			<p>
				<span>2</span>Select the payment method
			</p>
			<div class="step2_list">
				<div class="card">
					<img src="../images/card.png" alt="img"> Card
				</div>
				<div class="netbanking">
					<img src="../images/netbanking.jpg" alt="img"> Netbanking
				</div>
				<div class="gpay">
					<img
						src="../../assets/images/fundraiser_images/payment_images/gpay.png"
						alt="img"> Gpay
				</div>
				<div class="phonepe">
					<img
						src="../../assets/images/fundraiser_images/payment_images/phonepe.png"
						alt="img"> Phonepe
				</div>
				<div class="paytm">
					<img
						src="../../assets/images/fundraiser_images/payment_images/paytm.png"
						alt="img"> Paytm
				</div>
			</div>
		</div>
		
		
	
		
		        <button type="submit"  id="send_request">send</button>
		
	</form>



	<script type="text/javascript">
	
	

   

    //--------------------------------- function for add certificate button----------------------------------------
    let contribute_form = document.getElementById("contribute_form")

    let contribute_btn = document.getElementById("contribute")


    contribute_btn.addEventListener("click", e => {
        contribute_form.style.display = "block"
    })

    //--------------------------------- function for cross mark----------------------------------------

    let cross_mark = document.getElementById("cross_mark")

    cross_mark.addEventListener("click", e => {
        contribute_form.style.display = "none"
        // $("#form_creation_fundraiser").removeClass("background_blur")
    })

   
    </script>

	<script src="../../assets/JS/profile.js/header.js"></script>


	<script src="../../assets/JS/fundraiser_page/url_params_fundraiser.js"></script>
</body>

</html>

<!-- 

            // // scroll function for about section

            // let about_btn = document.getElementById("about_navbar")

            // about_btn.addEventListener("click", e => {
            //     window.scrollBy(0, 400)
            // })
            // // scroll function for certificate section
            // let certificates_btn = document.getElementById("certificates_navbar")

            // certificates_btn.addEventListener("click", e => {
            //     window.scrollBy(0, 800)
            // })
/*
    let fundraiser_list = JSON.parse(localStorage.getItem("fundraiser_list"));
    const url = window.location.search;
    const urlparams = new URLSearchParams(url);
    const emer_id = urlparams.get("emer_id");




        const headline = document.createElement("h1");
        headline.textContent = obj.player_title;
        headline.id = "headline";

        // Then you can append the element to its parent container
        let main_title = document.getElementById("main_title")
        main_title.append(headline)



        let main_container = document.getElementById("main_container")



        // Create left container div
        const leftContainer = document.createElement("div");
        leftContainer.classList.add("left_container");

        // Create kids image
        const kidsImg = document.createElement("img");
        kidsImg.src = obj.player_image_url;
        kidsImg.alt = "Kids Images";
        kidsImg.id = "kidsimg";
        leftContainer.appendChild(kidsImg);

        // Create share button
        const shareBtn = document.createElement("button");
        shareBtn.id = "share";
        const shareIcon = document.createElement("i");
        shareIcon.classList.add("fa", "fa-share-alt");
        shareBtn.appendChild(shareIcon);
        shareBtn.innerHTML += " Share This Fundraisers";
        leftContainer.appendChild(shareBtn);

        // Create details div
        const detailsDiv = document.createElement("div");
        detailsDiv.classList.add("details");

        // Create about button
        const aboutBtn = document.createElement("button");
        aboutBtn.id = "about_navbar";
        aboutBtn.classList.add("fa", "fa-globe");
        aboutBtn.innerHTML += "<i></i> About";
        detailsDiv.appendChild(aboutBtn);

        // Create certificates button
        const certificatesBtn = document.createElement("button");
        certificatesBtn.id = "certificates_navbar";
        certificatesBtn.innerHTML += "<i class='fa fa-edit'></i> Certificates";
        detailsDiv.appendChild(certificatesBtn);

        // Create images button
        const imagesBtn = document.createElement("button");
        imagesBtn.id = "images_navbar";
        imagesBtn.innerHTML += "<i class='fa fa-comment'></i> Images";
        detailsDiv.appendChild(imagesBtn);

        leftContainer.appendChild(detailsDiv);

        // Create horizontal rule
        const hr = document.createElement("hr");
        leftContainer.appendChild(hr);

        // Create about content div
        const aboutContentDiv = document.createElement("div");
        aboutContentDiv.classList.add("about_content");
        aboutContentDiv.id = "about_content";

        const aboutHeading = document.createElement("h3");
        aboutHeading.id = "aboutheading";
        aboutHeading.innerHTML = "About The Fundraisers";
        aboutContentDiv.appendChild(aboutHeading);

        const aboutPara = document.createElement("p");
        aboutPara.id = "aboutpara";
        aboutPara.innerHTML = "Hi this is naresh";
        aboutContentDiv.appendChild(aboutPara);

        leftContainer.appendChild(aboutContentDiv);

        // Create certificates div
        const certificatesDiv = document.createElement("div");
        certificatesDiv.classList.add("certificates");

        const certificatesHeading = document.createElement("h3");
        certificatesHeading.id = "certificates_heading";
        certificatesHeading.innerHTML = "Certificates";
        certificatesDiv.appendChild(certificatesHeading);

        const containPlayersCertificateImageDiv = document.createElement("div");
        containPlayersCertificateImageDiv.classList.add("contain_players_certificate_image");

        let cert_arr = obj.certificate_arr;

        for (let i = 0; i < cert_arr.length; i++) {

          let certificateImg = document.createElement("img");
          certificateImg.src = cert_arr[i]["cer_img"];
          certificateImg.alt = "";
          containPlayersCertificateImageDiv.appendChild(certificateImg);
        }

        certificatesDiv.appendChild(containPlayersCertificateImageDiv);

        leftContainer.appendChild(certificatesDiv);

        // // Create achievemnts images div
        // const imagesDiv = document.createElement("div");
        // imagesDiv.classList.add("images");

        // const imagesPlayingHeading = document.createElement("h3");
        // imagesPlayingHeading.id = "images_playing";
        // imagesPlayingHeading.innerHTML = "Achievement Images";
        // imagesDiv.appendChild(imagesPlayingHeading);

        // const containPlayersAchievementsImageDiv = document.createElement("div");
        // containPlayersAchievementsImageDiv.classList.add("contain_players_achievements_image")


        // for (let i = 0; i < 5; i++) {
        //   const achievementImg = document.createElement("img");
        //   achievementImg.src = "../../assets/images/Certificate/running_medal_images.jfif";
        //   achievementImg.alt = "";
        //   containPlayersAchievementsImageDiv.appendChild(achievementImg);
        // }

        // imagesDiv.appendChild(containPlayersAchievementsImageDiv)

        // leftContainer.appendChild(imagesDiv)

        // add the whole container to the main_container
        main_container.appendChild(leftContainer)



        // ---------------------------------right container-------------------------
        // create a div element with class 'right_container'
        const rightContainer = document.createElement('div');
        rightContainer.classList.add('right_container');

        // create a button element with id 'contribute'
        const contributeButton = document.createElement('button');
        contributeButton.setAttribute('id', 'contribute');
        contributeButton.innerHTML = '<i class="fa fa-heart"></i> CONTRIBUTE NOW';
        rightContainer.appendChild(contributeButton);

        // create a div element with class 'banking' and four child button elements
        const bankingDiv = document.createElement('div');
        bankingDiv.classList.add('banking');

        const creditDebitButton = document.createElement('button');
        creditDebitButton.innerHTML = 'All Credit &amp; <br> Debit Cards';
        bankingDiv.appendChild(creditDebitButton);

        const netbankingButton = document.createElement('button');
        netbankingButton.setAttribute('id', 'netbanking');
        netbankingButton.innerHTML = 'Net <br> Banking';
        bankingDiv.appendChild(netbankingButton);

        const paytmButton = document.createElement('button');
        paytmButton.innerHTML = 'Paytm &amp; <br> UPI';
        bankingDiv.appendChild(paytmButton);

        const directBankButton = document.createElement('button');
        directBankButton.innerHTML = 'Direct Bank <br> Transfer';
        bankingDiv.appendChild(directBankButton);

        rightContainer.appendChild(bankingDiv);

        // create a div element with class 'share' and two child elements
        const shareDiv = document.createElement('div');
        shareDiv.classList.add('share');

        const fbShareButton = document.createElement('button');
        fbShareButton.setAttribute('id', 'fbshare');
        fbShareButton.innerHTML = '<i class="fa fa-facebook-f"></i> Spread The Sports';
        shareDiv.appendChild(fbShareButton);

        const fbShareText = document.createElement('p');
        fbShareText.setAttribute('id', 'fbsharetext');
        fbShareText.innerHTML = '<i>Every Social Media Share Can Bring ₹5000</i>';
        shareDiv.appendChild(fbShareText);

        rightContainer.appendChild(shareDiv);

        // create a h3 element with id 'amt' and a p element with text content
        const amtHeading = document.createElement('h3');
        amtHeading.setAttribute('id', 'amt');
        amtHeading.textContent = '₹ 16,67,002';
        rightContainer.appendChild(amtHeading);

        const goalText = document.createElement('p');
        goalText.innerHTML = 'raised of <bold>₹ 18,00,000 </bold>goal';
        rightContainer.appendChild(goalText);

        // create a div element with class 'supporterbar', two child elements and a progress bar
        const supporterBarDiv = document.createElement('div');
        supporterBarDiv.classList.add('supporterbar');

        const progressBarDiv = document.createElement('div');
        progressBarDiv.classList.add('progress');

        const progressBar = document.createElement('div');
        progressBar.classList.add('progress-bar');
        progressBar.style.width = '20%';
        progressBar.style.backgroundColor = '#039b9a';


        const progressBarSpan = document.createElement('span');
        progressBarSpan.classList.add('sr-only');
        progressBarSpan.textContent = '70% Complete';
        progressBar.appendChild(progressBarSpan);

        progressBarDiv.appendChild(progressBar);
        supporterBarDiv.appendChild(progressBarDiv);

        // create a div element with class 'supporters'

        const supportersDiv = document.createElement('div');
        supportersDiv.classList.add('suporters');

        const supporters1Text = document.createElement('p');
        supporters1Text.setAttribute('id', 'suporters1');
        supporters1Text.textContent = '734 supporters';
        supportersDiv.appendChild(supporters1Text)

        const daysLeftText = document.createElement('p');
        daysLeftText.textContent = '40 days left';
        supportersDiv.appendChild(daysLeftText);

        supporterBarDiv.appendChild(supportersDiv);
        rightContainer.appendChild(supporterBarDiv);

        // create a div element with class 'sponsercard' and two child elements
        const sponsorCardDiv = document.createElement('div');
        sponsorCardDiv.classList.add('sponsercard');

        const profileIcon = document.createElement('img');
        profileIcon.setAttribute('src', 'ketoo.jpeg');
        profileIcon.setAttribute('alt', 'image_broken');
        profileIcon.setAttribute('id', 'profileicon');
        sponsorCardDiv.appendChild(profileIcon);

        const campaignerDiv = document.createElement('div');
        campaignerDiv.classList.add('campaigner');

        const campaignerText1 = document.createElement('p');
        campaignerText1.textContent = 'Campaigner';
        campaignerDiv.appendChild(campaignerText1);

        const sponserName = document.createElement('p');
        sponserName.setAttribute('id', 'sponsername');
        sponserName.textContent = 'NARESH';
        campaignerDiv.appendChild(sponserName);

        sponsorCardDiv.appendChild(campaignerDiv);
        rightContainer.appendChild(sponsorCardDiv);

        // add the whole container to the main_container
        main_container.appendChild(rightContainer)

*/
<div class="left_container">
            <img src="../../assets/images/fundraiser_images/fundraiser_running.jpg" alt="Kids Images" id="kidsimg">
            <button id="share"><i class="fa fa-share-alt"></i> Share This Fundraisers</button>


            <div class="details">
                <button class="fa fa-globe" id="about_navbar"><i></i> About</button>
                <button id="certificates_navbar"><i class="fa fa-edit"></i> Certificates</button>
                <button id="images_navbar"><i class='fa fa-comment'></i> Images</button>
            </div>


            <hr>


            <div class="about_content" id="about_content">

                <h3 id="aboutheading">About The Fundraisers</h3>
                <p id="aboutpara">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum nobis maiores hic
                    dolor. Consequatur, odio. Necessitatibus, voluptates.
                    Laudantium enim corporis quod accusantium et optio consequuntur, dolore alias quasi architecto vel.
                </p>
            </div>


            <div class="certificates">

                <h3 id="certificates_heading">Certificates</h3>

                <div class="contain_players_certificate_image">
                    <img src="../../assets/images/Certificate/Certificate_running.jpg" alt="">
                    <img src="../../assets/images/Certificate/Certificate_running.jpg" alt="">
                    <img src="../../assets/images/Certificate/Certificate_running.jpg" alt="">
                    <img src="../../assets/images/Certificate/Certificate_running.jpg" alt="">
                    <img src="../../assets/images/Certificate/Certificate_running.jpg" alt="">

                </div>
            </div>


            <div class="images">

                <h3 id="images_playing">Achievement Images</h3>
                <div class="contain_players_achievements_image">
                    <img src="../../assets/images/Certificate/running_medal_images.jfif" alt="">
                    <img src="../../assets/images/Certificate/running_medal_images.jfif" alt="">
                    <img src="../../assets/images/Certificate/running_medal_images.jfif" alt="">
                    <img src="../../assets/images/Certificate/running_medal_images.jfif" alt="">
                    <img src="../../assets/images/Certificate/running_medal_images.jfif" alt="">


                </div>

            </div>

        </div> -->

<!-- <div class="right_container">
            <button id="contribute"><i class="fa fa-heart"></i> CONTRIBUTE NOW</button>
            <div class="banking">
                <button>All Credit & <br> Debit Cards</button>
                <button id="netbanking">Net <br> Banking</button>
                <button>Paytm & <br> UPI</button>
                <button>Direct Bank <br> Transfer</button>
            </div>
            <div class="share">
                <button id="fbshare"><i class="fa fa-facebook-f"></i> Spread The Sports</button>
                <p id="fbsharetext"><i>Every Social Media Share Can Bring ₹5000</i></p>
            </div>
            <h3 id="amt">₹ 16,67,002</h3>
            <p>raised of <bold>₹ 18,00,000 </bold>goal</p>
            <div class="supporterbar">
                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
                        aria-valuemax="100" style="width:70%" ; color:>
                        <span class="sr-only">70% Complete</span>
                    </div>
                </div>
                <div class="suporters">
                    <p id="suporters1">734 supporters</p>
                    <p>40 days left</p>
                </div>
            </div>
            <div class="sponsercard">
                <img src="ketoo.jpeg" alt="/" id="profileicon">
                <div class="campaigner">
                    <p>Campaigner</p>
                    <p id="sponsername">NARESH</p>
                </div>
            </div>
        </div> -->

