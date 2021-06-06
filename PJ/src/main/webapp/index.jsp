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
	<script type="text/javascript" src="apiData.js?ver=2"></script>
	<style>
		html {height:100%;}
		body { margin: 0; height:100%; }
		hr {margin:0;}
		#back-to-top {
		    position: fixed;
		    bottom: 25px;
		    right: 25px;
		    display: none;
		}
	</style>
</head>
<body>
	<!-- Nav -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light text-uppercase fixed-top"><!-- navbar navbar-expand-lg navbar-light bg-light -->
  		<a class="navbar-brand ml-3" href="index.jsp"><h4>Stream</h4></a>
  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  		</button>

  		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item dropdown active">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						Home
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#main_1">국내 현황</a>
						<a class="dropdown-item" href="#main_2">보도 자료</a>
						<a class="dropdown-item" href="#main_3">사회적 거리 두기</a>
						<a class="dropdown-item" href="#main_4">질병관리청 공지사항</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#main_5">주요 사이트</a>
					</div>
			    </li>
				<li class="nav-item">
					<a class="nav-link" href="community.jsp">Community <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="check.jsp">Self-check</a>
				</li>
				<li class="nav-item">
					<a class="nav-link disabled" href="stream.jsp" target="_blank">관리자 페이지</a>
				</li>
			</ul>
	    </div>
	</nav>
	
	<!-- 메인 이미지 -->
    <header>
        <div class="carousel slide mt-5" id="carouselExampleIndicators" data-ride="carousel">
            <ol class="carousel-indicators">
                <li class="active" data-target="#carouselExampleIndicators" data-slide-to="0"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="media/test1.jpg" alt="img1" />
                    <div class="carousel-caption d-none d-md-block">
                        <h3>코로나 관련 문구</h3>
                        <p>내용</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="media/test2.jpg" alt="img2" />
                    <div class="carousel-caption d-none d-md-block">
                        <h3>코로나 관련 문구</h3>
                        <p>내용</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="media/test4.jpg" alt="img3" />
                    <div class="carousel-caption d-none d-md-block">
                        <h3>코로나 관련 문구</h3>
                        <p>내용</p>
                    </div>
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
	<!-- 확진자 현황 -->
	<div class="container-fluid px-4 mt-5" id="main_1">
		<div class="col-xl-12 col-md-12 text-center">
			<h1>코로나19 국내 현황 </h1>(
			<%@ page import="java.util.Date" %>
			<% out.println(new Date().toLocaleString().substring(0,10)); %>
			0시 기준)
		</div>
		<div class="row justify-content-center mt-4">
			<div class="col-xl-3 col-md-4">
				<div class="card-body px-4">
					<div class="card bg-danger text-white mb-4 text-center">
						<div class="card-header mt-2"><h4>확진환자</h4></div>
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
						<div class="card-header mt-2"><h4>격리해제</h4></div>
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
						<div class="card-header mt-2"><h4>사망자</h4></div>
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
						<div class="card-header mt-2"><h5>검사진행</h5></div>
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
						<div class="card-header mt-2"><h5>치료 중</h5></div>
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
	
	<!-- 보도 자료 -->
	<div class="container-fluid px-4 mt-5">
		<div class="col-xl-12 col-md-12 text-center">
			<h1>코로나19 주요 뉴스</h1>(
			<%@ page import="java.util.Date" %>
			<% out.println(new Date().toLocaleString().substring(0,19)); %>
			 기준)
		</div>
		<div class="row justify-content-center mt-5" style="margin: 0 auto;">
			<h5><div class="col-12">
				<%@ include file="crawler.jsp" %>
			</div></h5>
		</div>
	</div>
	<hr id="main_3">
	
	<!-- 사회적 거리 두기 -->
	<div class="container-fluid px-4 mt-5 mb-5">
		<div class="col-xl-12 col-md-12 text-center">
			<h1>거리 두기 단계별 기준 및 방역 조치 </h1>
			<a href="http://ncov.mohw.go.kr/" style="color:gray;" target="_blank">(http://ncov.mohw.go.kr/ 이동)</a><br>
			<a href="http://ncov.mohw.go.kr/socdisBoardView.do?brdId=6&brdGubun=1" target="_blank">
				<img class="img-fluid rounded-3 mt-5" src="media/level.jpg" alt="level img" />
			</a>
		</div>
	</div>
	<hr id="main_4">
	
	<!-- 백신 보도 자료 -->
	<div class="container-fluid px-4 mt-5">
		<div class="col-xl-12 col-md-12 text-center">
			<h1>코로나19 백신 보도 자료</h1>(
			<%@ page import="java.util.Date" %>
			<% out.println(new Date().toLocaleString().substring(0,19)); %>
			 기준)
		</div>
		<div class="row justify-content-center mt-5" style="width: 80%; margin: 0 auto;">
			<h5><div class="col-xl-12">
				<%@ include file="crawler_2.jsp" %>
			</div></h5>
		</div>
	</div>
	<hr id="main_5">
	
	<!-- 주요 사이트 -->
	<div class="container-fluid px-4 mt-5" id="site">
		<div class="col-xl-12 col-md-12 text-center">
			<h1>코로나19 관련 사이트</h1>
		</div>
		<div class="row align-items-center text-center my-5">
			<div class="col-md-3 col-sm-12 my-3">
				<div class="card h-100">
					<a href="http://www.kdca.go.kr/" target="_blank">
						<img class="card-img-top" src="media/link1.jpg" alt="link_img">
					</a>
					<div class="card-body p-4">
						<h5 class="fw-bolder">질병관리청</h5>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-12 my-3">
				<div class="card h-100">
					<a href="https://ncvr.kdca.go.kr/cobk/index.html" target="_blank">
						<img class="card-img-top" src="media/link2.jpg" alt="link_img">
					</a>
					<div class="card-body p-4">
						<h5 class="fw-bolder">코로나19 예방접종 사전예약</h5>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-12 my-3">
				<div class="card h-100">
					<a href="https://www.0404.go.kr/m/dev/main.do" target="_blank">
						<img class="card-img-top" src="media/link3.jpg" alt="link_img">
					</a>
					<div class="card-body p-4">
						<h5 class="fw-bolder">외교부 해외안전여행</h5>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-12 my-3">
				<div class="card h-100">
					<a href="http://www.mohw.go.kr/react/index.jsp" target="_blank">
						<img class="card-img-top" src="media/link4.jpg" alt="link_img">
					</a>
					<div class="card-body p-4">
						<h5 class="fw-bolder">보건복지부</h5>
					</div>
				</div>
			</div>
			
			<!-- 보건복지부 http://www.mohw.go.kr/react/index.jsp -->
		</div>
	</div>
	<hr>
	
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