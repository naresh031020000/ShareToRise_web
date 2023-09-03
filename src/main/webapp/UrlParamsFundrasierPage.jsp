<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Url params fundraiser</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/css?family=Montserrat:500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/index.css">
	
	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/FundraiserPage/url_params_fundrasier.css">
</head>

<body>

    <!------------------------- Header Section---------------------------------------->
    <header class="header_main" id="header_main">
        <a class="logo" href="/"><img src="../../assets/images/index_images/logo_main.png" alt="logo"></a>
        <nav>
            <ul class="nav__links">
                <li><a href="../../index.html">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="../fundraiser_page/browse_fundraiser.html">Fundraiser</a></li>

            </ul>
        </nav>
        <a class="cta" href="../login and register/register.html" id="register">Register</a>

        <a class="cta" href="../login and register/login.html" id="login">Login</a>

    </header>
    <!-------------------------url params div---------------------------------------->


    <div class="main_title" id="main_title">
        <!-- <h1 id="headline">Help To Provide EQUIPMENTS For The SPORTS Kids!</h1> -->

    </div>


    <div class="container" id="main_container"></div>

    <form class="deposit_form" id="contribute_form">
        <h2>Donate Money
             <img src="../../assets/images/fundraiser_images/payment_images/donate_image.png" alt="img"> 
             <span id="cross_mark"> &#10060;</span>
        </h2>
        <hr class="hr">
        <div class="step1">
            <p><span>1</span>Enter the amount</p>
            <input type="number" id="deposit_amount" placeholder="0" required>
        </div>
        <div class="step2">
            <p><span>2</span>Select the payment method</p>
            <div class="step2_list">
                <!-- <div class="card">
                    <img src="../images/card.png" alt="img">
                    Card
                </div>
                <div class="netbanking">
                    <img src="../images/netbanking.jpg" alt="img">
                    Netbanking
                </div> -->
                <div class="gpay">
                    <img src="../../assets/images/fundraiser_images/payment_images/gpay.png" alt="img">
                    Gpay
                </div>
                <div class="phonepe">
                    <img src="../../assets/images/fundraiser_images/payment_images/phonepe.png" alt="img">
                    Phonepe
                </div>
                <div class="paytm">
                    <img src="../../assets/images/fundraiser_images/payment_images/paytm.png" alt="img">
                    Paytm
                </div>
            </div>
        </div>
        <div class="step3">
            <p><span>3</span>Enter your Upi ID</p>
            <input type="email" placeholder="ex.name@okhdfcbank" required id="upiid"> <span
                id="send_request">Send</span>
        </div>
        <div class="send_request not_view">
            <div class="sent">
                <h3>Request has been sent successfully!</h3>
                <img src="../images/icons/tick_icon.jpg" alt="img">
            </div>
        </div>
        <div class="step4">
            <p><span>4</span>Accept the payment request sent to the Upi Id</p>
        </div>
        <div class="buttons">
            <button type="submit" id="done">Done &#10003;</button>
            <a href="wallet.html" id="back">Back</a>
        </div>
    </form>


    <script type="text/javascript">
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

    
    </script>

    <script src="../../assets/JS/profile.js/header.js"></script>


    <script src="../../assets/JS/fundraiser_page/url_params_fundraiser.js"></script>
</body>

</html>

    <!-- <div class="left_container">
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
