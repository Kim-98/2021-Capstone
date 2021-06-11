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
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Serif+KR:wght@300;400;700&display=swap');
		html {height:100%;}
		body { margin: 0; height:100%; font-family: 'Nanum Gothic', sans-serif; }
		h1 {font-family: 'Noto Serif KR', serif; font-weight: bold; }
		#hr_line {
			border-top: 4px double #8c8b8b;
			text-align: center;
		}
		#hr_line:after {
			content: '\002665';
			display: inline-block;
			position: relative;
			top: -15px;
			padding: 0 10px;
			background: #f0f0f0;
			color: #8c8b8b;
			font-size: 18px;
		}
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
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<b>Home</b>
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="index.jsp#main_1">국내 현황</a>
						<a class="dropdown-item" href="index.jsp#main_2">보도 자료</a>
						<a class="dropdown-item" href="index.jsp#main_3">사회적 거리 두기</a>
						<a class="dropdown-item" href="index.jsp#main_4">질병관리청 공지사항</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="index.jsp#main_5">주요 사이트</a>
					</div>
			    </li>
				<li class="nav-item">
					<a class="nav-link" href="community.jsp"><b>Community</b> <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="check.jsp"><b>Self-check</b></a>
				</li>
				<li class="nav-item">
					<a class="nav-link disabled" href="http://gwonk.iptime.org:98/vnc.html" target="_blank"><b>관리자 페이지</b></a>
				</li>
			</ul>
	    </div>
	</nav>

	<!-- header -->
	<header>
		<div class="container-fluid px-4 mt-5">
			<div class="col-xl-12 col-md-12 text-center" style="margin-top: 12em; margin-bottom: 8em">
				<h1>[ 코로나19 자가진단 결과 ]</h1>
			</div>
			<hr id="hr_line">
		</div>
	</header>
<%
	request.setCharacterEncoding("utf-8");
	
	int yes = 0;

	String msg;
	String notice;
	String q1 = request.getParameter("q1");
	String q2 = request.getParameter("q2");
	String q3 = request.getParameter("q3");
	String q4 = request.getParameter("q4");
	String q5 = request.getParameter("q5");
	String q6 = request.getParameter("q6");
	String q7 = request.getParameter("q7");
	String q8 = request.getParameter("q8");
	
	if(q1.equalsIgnoreCase("예"))
		yes++;
	if(q2.equalsIgnoreCase("예"))
		yes++;
	if(q3.equalsIgnoreCase("예"))
		yes++;
	if(q4.equalsIgnoreCase("예"))
		yes++;
	if(q5.equalsIgnoreCase("예"))
		yes++;
	if(q6.equalsIgnoreCase("예"))
		yes++;
	if(q7.equalsIgnoreCase("예"))
		yes++;
	if(q8.equalsIgnoreCase("예"))
		yes++;
	
	if (yes < 3) {
		msg = "무증상";
		notice = "코로나19 감염에서 안전한 상태입니다. 꾸준히 청결 관리에 신경쓰십시오.";
	}
	else if (yes < 5) {
		msg = "의심증상";
		notice = "코로나19 감염이 의심되는 상태입니다. 가까운 선별진료소를 방문하셔서 검사받기를 권장합니다.";
	}
	else {
		msg = "코로나19 감염증상";
		notice = "코로나19 감염 증상과 흡사합니다. 검사를 받은 뒤 자가격리하시기를 권장합니다.";
	}
%>
	
	<div class="container-fluid px-4 mt-5 text-center">
		<h2 style="color:red; margin-top: 100px;"> <%= msg %></h2><br>
		<h2 style="color:blue; margin-bottom: 30px;"> <%= notice %></h2><br>
		<input type="button" value="돌아가기" class="btn btn-success btn-lg mb-5" onclick="location.href='check.jsp'" />
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