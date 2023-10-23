<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">

<link
	href="<%=request.getContextPath()%>/assets/css/page-not-found.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>


<style>

body {
       background-color: #0098a6;
   
}

.u-text-1 {
    background-image: none;
    font-size: 4.5rem;
    text-transform: uppercase;
    font-weight: 700;
    text-shadow: 5px 4px 0px rgba(0,0,0,0.25);
    margin: 0 222px;
}

.u-body h1, .u-body h2, .u-body h3, .u-body h4, .u-body h5, .u-body h6 {
    padding: 0;
}

.u-text-body-alt-color, a.u-button-style.u-text-body-alt-color, a.u-button-style.u-text-body-alt-color[class*="u-border-"] {
    color: #ffffff !important;
}
.u-text {
    word-wrap: break-word;
    position: relative;
}
.u-align-center {
    text-align: center;
}

.u-text-body-alt-color, a.u-button-style.u-text-body-alt-color, a.u-button-style.u-text-body-alt-color[class*="u-border-"] {
    color: #ffffff !important;
}
.u-text-2 {
    word-wrap: break-word;
    position: relative;
    color:red;
}

.u-btn-2 {
    background-image: none;
    letter-spacing: 1px;
    border-style: solid;
    box-shadow: 0 0 7px 0 rgba(71,138,201,0.7);
    text-shadow: 0 0 0 rgba(0,0,0,0);
    font-size: 1.125rem;
    text-transform: uppercase;
    font-weight: 700;
    margin: 0 0 0 auto;
    padding: 15px 41px 15px 40px;
    text-decoration: none;
}

.u-button-style.u-border-white {
    border-color: #ffffff !important;
    color: #ffffff !important;
    background-color: transparent !important;
}
.u-radius-50, .u-radius-50:before, .u-radius-50 .u-background-effect, .u-radius-50 > .u-container-layout {
    border-radius: 50px !important;
}

</style>
</head>
<body>

	<%-- <h1>Error something went wrong</h1>
	<p>Page doesn't exist</p>


	<p>
		Please go to <a href="index.jsp"></a> <img
			src="<%=request.getContextPath()%>/assets/Images/" class="player-img">home
		</a> page
	</p>
 --%>
	<div class="u-clearfix u-sheet u-valign-middle-xs u-sheet-1">
		<img
			src="//images01.nicepage.com/c461c07a441a5d220e8feb1a/88fd8a9bc9c556dbb3d4d299/12.png"
			alt="" class="u-image u-image-contain u-image-default u-image-1"
			data-image-width="788" data-image-height="684">
		<h1
			class="u-align-center u-custom-font u-font-pt-sans u-text u-text-body-alt-color u-text-1">Page
			not  found</h1>
		<p
			class="u-custom-font u-font-montserrat u-text u-text-body-alt-color u-text-2">The
			requested URL was not found on this server</p>
		
		</p>
		<div class="u-clearfix u-gutter-0 u-layout-wrap u-layout-wrap-1">
			<div class="u-layout">
				<div class="u-layout-row">
					<div
						class="u-align-center-sm u-align-center-xs u-align-right-lg u-align-right-md u-align-right-xl u-container-style u-layout-cell u-left-cell u-size-30 u-layout-cell-1">
						<div
							class="u-container-layout u-valign-middle-lg u-valign-middle-xl u-container-layout-1">
							<a href="index.jsp"
								class="u-active-white u-border-2 u-border-active-white u-border-hover-white u-border-white u-btn u-btn-round u-button-style u-hover-white u-radius-50 u-text-active-palette-4-base u-text-hover-palette-4-base u-text-palette-4-base u-white u-btn-2">Go
								Home</a>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>



</body>
</html>


