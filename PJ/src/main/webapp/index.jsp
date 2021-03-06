<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Stream</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
	<script type="text/javascript" src="apiData.js?ver=1"></script>
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Serif+KR:wght@300;400;700&display=swap');
		html {height:100%;}
		body { margin: 0; height:100%; font-family: 'Nanum Gothic', sans-serif; }
		h1 {font-family: 'Noto Serif KR', serif; font-weight: bold; }
		hr {margin:0;}
		#back-to-top {
		    position: fixed;
		    bottom: 25px;
		    right: 25px;
		    display: none;
		}
		#carousel:hover { opacity: 0.8; }
		.carousel-caption {
			font-family: 'Noto Serif KR', serif;
		}
		#carousel_1 { color:black; }
		#carousel_2 { color:#FF5E07; }
		#carousel_3 { color:blue; }
		img.card-img-top:hover { opacity: 0.6; transition-duration: 0.5s;}
	</style>
</head>
<body>
	<!-- Nav -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light text-uppercase fixed-top"><!-- navbar navbar-expand-lg navbar-light bg-light -->
  		<a class="navbar-brand ml-3 p-0 m-0 mt-2" href="index.jsp"><h3><b>Stream</b></h3></a>
  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  		</button>

  		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item dropdown active">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<b>Home</b>
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#main_1">?????? ??????</a>
						<a class="dropdown-item" href="#main_2">?????? ??????</a>
						<a class="dropdown-item" href="#main_3">????????? ?????? ??????</a>
						<a class="dropdown-item" href="#main_4">??????????????? ????????????</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#main_5">?????? ?????????</a>
					</div>
			    </li>
				<li class="nav-item">
					<a class="nav-link" href="community.jsp"><b>Community</b> <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="check.jsp"><b>Self-check</b></a>
				</li>
				<li class="nav-item">
					<a class="nav-link disabled" href="http://gwonk.iptime.org:98/vnc.html" target="_blank"><b>????????? ?????????</b></a>
				</li>
			</ul>
	    </div>
	</nav>
	
	<!-- ?????? ????????? -->
    <header>
        <div class="carousel slide mt-5" id="carouselExampleIndicators" data-ride="carousel">
            <ol class="carousel-indicators">
                <li class="active" data-target="#carouselExampleIndicators" data-slide-to="0"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active" id="carousel">
                	<a href="http://ncov.mohw.go.kr/infoBoardView.do?brdId=3&brdGubun=32&dataGubun=321&ncvContSeq=1079&contSeq=1079&board_id=&gubun=" target="_blank">
	                    <img class="d-block w-100" src="media/test1.jpg" alt="img1" />
	                    <div class="carousel-caption d-none d-md-block">
	                    	<div id="carousel_1">
		                        <h2>?????? ????????? ?????????19 ??????????????????</h2>
		                        <h5>???????????? ???????????? ???????????? ?????? ?????????19 ???????????? ??????????????????</h5>
	                        </div>
	                    </div>
                    </a>
                </div>
                <div class="carousel-item" id="carousel">
                	<a href="http://ncov.mohw.go.kr/shBoardView.do?brdId=3&brdGubun=32&ncvContSeq=569" target="_blank">
                    	<img class="d-block w-100" src="media/test2.jpg" alt="img2" />
	                    <div class="carousel-caption d-none d-md-block">
	                    	<div id="carousel_2">
		                        <h2>?????????19 ???????????? ????????? ?????? ???????</h2>
		                        <h5>?????????19??? ??????????????? ??????, ?????? ????????? ????????? ????????? ???????????????.</h5>
		                    </div>
	                    </div>
                    </a>
                </div>
                <div class="carousel-item" id="carousel">
                    <a href="https://korean.cdc.gov/coronavirus/2019-ncov/prevent-getting-sick/hand-sanitizer.html" target="_blank">
	                    <img class="d-block w-100" src="media/test4.jpg" alt="img3" />
	                    <div class="carousel-caption d-none d-md-block">
	                    	<div id="carousel_3">
		                        <h2>???????????? ????????? ??????</h2>
		                        <h5>?????? ??????????????? ?????? ??????</h5>
	                        </div>
	                    </div>
                    </a>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </header>
	<!-- ????????? ?????? -->
	<div class="container-fluid px-4 mt-5" id="main_1">
		<div class="col-xl-12 col-md-12 text-center fw-bold">
			<h1>?????????19 ?????? ?????? </h1>(
			<%@ page import="java.util.Date" %>
			<% out.println(new Date().toLocaleString().substring(0,12)); %>
			0??? ??????)
		</div>
		<div class="row justify-content-center mt-4">
			<div class="col-xl-3 col-md-4">
				<div class="card-body px-4">
					<div class="card bg-danger text-white mb-4 text-center">
						<div class="card-header mt-2"><h4>????????????</h4></div>
						<div class="card-body text-center">
							<h3><span id="all_decide"></span></h3><br>
							<h4><span id="decide"></span></h4>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-md-4">
				<div class="card-body px-4">
					<div class="card bg-primary text-white mb-4 text-center">
						<div class="card-header mt-2"><h4>????????????</h4></div>
						<div class="card-body text-center">
							<h3><span id="all_clear"></span></h3><br>
							<h4><span id="clear"></span></h4>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-md-4">
				<div class="card-body px-4">
					<div class="card bg-secondary text-white mb-4 text-center">
						<div class="card-header mt-2"><h4>?????????</h4></div>
						<div class="card-body text-center">
							<h3><span id="all_death"></span></h3><br>
							<h4><span id="death"></span></h4>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-xl-3 col-md-6">
				<div class="card-body px-4">
					<div class="card bg-warning text-white mb-4 text-center">
						<div class="card-header mt-2"><h5>????????????</h5></div>
						<div class="card-body text-center">
							<h3><span id="all_exam"></span></h3><br>
							<h4><span id="exam"></span></h4>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-md-6">
				<div class="card-body px-4">
					<div class="card bg-success text-white mb-4 text-center">
						<div class="card-header mt-2"><h5>?????? ???</h5></div>
						<div class="card-body text-center">
							<h3><span id="all_care"></span></h3><br>
							<h4><span id="care"></span></h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<hr id="main_2">
	
	<!-- ?????? ?????? -->
	<div class="container-fluid px-4 mt-5">
		<div class="col-xl-12 col-md-12 text-center">
			<h1 class="fw-bold">?????????19 ?????? ??????</h1>(
			<%@ page import="java.util.Date" %>
			<% out.println(new Date().toLocaleString().substring(0,19)); %>
			 ??????)
		</div>
		<div class="row justify-content-center mt-5" style="margin: 0 auto;">
			<h5><div class="col-12">
				<%@ include file="crawler.jsp" %>
			</div></h5>
		</div>
	</div>
	<hr id="main_3">
	
	<!-- ????????? ?????? ?????? -->
	<div class="container-fluid px-4 mt-5 mb-5">
		<div class="col-xl-12 col-md-12 text-center">
			<h1>?????? ?????? ????????? ?????? ??? ?????? ?????? </h1>
			<a href="http://ncov.mohw.go.kr/" style="color:gray;" target="_blank">(http://ncov.mohw.go.kr/ ??????)</a><br>
			<a href="http://ncov.mohw.go.kr/socdisBoardView.do?brdId=6&brdGubun=1" target="_blank">
				<img class="img-fluid rounded-3 mt-5" src="media/level.jpg" alt="level img" />
			</a>
		</div>
	</div>
	<hr id="main_4">
	
	<!-- ?????? ?????? ?????? -->
	<div class="container-fluid px-4 mt-5">
		<div class="col-xl-12 col-md-12 text-center">
			<h1>?????????19 ?????? ?????? ??????</h1>(
			<%@ page import="java.util.Date" %>
			<% out.println(new Date().toLocaleString().substring(0,19)); %>
			 ??????)
		</div>
		<div class="row justify-content-center mt-5" style="width: 80%; margin: 0 auto;">
			<h5><div class="col-xl-12">
				<%@ include file="crawler_2.jsp" %>
			</div></h5>
		</div>
	</div>
	<hr id="main_5">
	
	<!-- ?????? ????????? -->
	<div class="container-fluid px-4 mt-5" id="site">
		<div class="col-xl-12 col-md-12 text-center">
			<h1>?????????19 ?????? ?????????</h1>
		</div>
		<div class="row align-items-center text-center my-5">
			<div class="col-md-3 col-sm-12 my-3">
				<div class="card h-100">
					<a href="http://www.kdca.go.kr/" target="_blank">
						<img class="card-img-top" src="media/link1.jpg" alt="link_img">
					</a>
					<div class="card-body p-4">
						<h5 class="fw-bolder">???????????????</h5>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-12 my-3">
				<div class="card h-100">
					<a href="https://ncvr.kdca.go.kr/cobk/index.html" target="_blank">
						<img class="card-img-top" src="media/link2.jpg" alt="link_img">
					</a>
					<div class="card-body p-4">
						<h5 class="fw-bolder">?????????19 ???????????? ????????????</h5>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-12 my-3">
				<div class="card h-100">
					<a href="https://www.0404.go.kr/m/dev/main.do" target="_blank">
						<img class="card-img-top" src="media/link3.jpg" alt="link_img">
					</a>
					<div class="card-body p-4">
						<h5 class="fw-bolder">????????? ??????????????????</h5>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-12 my-3">
				<div class="card h-100">
					<a href="http://www.mohw.go.kr/react/index.jsp" target="_blank">
						<img class="card-img-top" src="media/link4.jpg" alt="link_img">
					</a>
					<div class="card-body p-4">
						<h5 class="fw-bolder">???????????????</h5>
					</div>
				</div>
			</div>
			
			<!-- ??????????????? http://www.mohw.go.kr/react/index.jsp -->
		</div>
	</div>
	<hr>
	
	<!-- footer -->
	<footer class="p-1 mx-auto mt-5">
		<div class="container">
			<div class="row">
				<div class="col-xl-4">
					<a href="#">
						<img class="img-fluid img-brand d-block mx-auto" src="media/logo.jpg" alt="logo_image" />
					</a>
				</div>
				<div class="col-xl-5 ml-5">
					<p class="mb-1"><u>Stream</u></p>
					<p class="mb-1">Developer: Junggwon Kim / Email: jyhkjg69@gmail.com</p>
					<p class="mb-1">2021 Capstone Design / <a href="https://github.com/hallymsw/2021_1_CapstoneDesign" target="_blank" style="color:blue;">2021 Capstone github link</a>.</p>
					<p class="mb-0">copyright &copy; HALLYM University All rights reserved.</p>
				</div>
				<div class="col-xl-1">
					<p class="float-end">
					<a href="#" style="color:red;">Top</a>
					</p>
				</div>
			</div>
		</div>
	</footer>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>