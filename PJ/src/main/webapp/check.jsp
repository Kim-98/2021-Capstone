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
				<h1>[ 코로나19 자가진단 ]</h1>
			</div>
			<hr id="hr_line">
		</div>
	</header>

	<div class="container-fluid px-4 mt-5 text-center">
		<form method="get" action="check_sum.jsp">
			<h2 style="margin: 100px 0px;">코로나바이러스 감염증-19 예방을 위하여 <mark>건강 상태</mark>를 확인하는 내용입니다.</h2>
			
			<h3>1. 37.5°C 이상 발열 증상이 있다.</h3><br>
			<h4><label for="q1_yes">예</label> <input type="radio" name="q1" value="예" style="margin-right: 5%;" id="q1_yes" />
			<label for="q1_no">아니오</label> <input type="radio" name="q1" value="아니오" id="q1_no" /></h4><hr width="40%" style="margin-top:50px; margin-bottom:50px;">
			
			<h3>2. 기침이나 인후통 증상이 있다.</h3><br>
			<h4><label for="q2_yes">예</label> <input type="radio" name="q2" value="예" style="margin-right: 5%;" id="q2_yes" />
			<label for="q2_no">아니오</label> <input type="radio" name="q2" value="아니오" id="q2_no" /></h4><hr width="40%" style="margin-top:50px; margin-bottom:50px;">
			
			<h3>3. 호흡곤란을 겪고 있거나 겪은 적이 있다.</h3><br>
			<h4><label for="q3_yes">예</label> <input type="radio" name="q3" value="예" style="margin-right: 5%;" id="q3_yes" />
			<label for="q3_no">아니오</label> <input type="radio" name="q3" value="아니오" id="q3_no" /></h4><hr width="40%" style="margin-top:50px; margin-bottom:50px;">
			
			<h3>4. 근육통과 피로감을 느낀다(몸살과 같은 증세).</h3><br>
			<h4><label for="q4_yes">예</label> <input type="radio" name="q4" value="예" style="margin-right: 5%;" id="q4_yes" />
			<label for="q4_no">아니오</label> <input type="radio" name="q4" value="아니오" id="q4_no" /></h4><hr width="40%" style="margin-top:50px; margin-bottom:50px;">
			
			<h3>5. 기침을 할 때 가래가 있거나 각혈을 한 적이 있다.</h3><br>
			<h4><label for="q5_yes">예</label> <input type="radio" name="q5" value="예" style="margin-right: 5%;" id="q5_yes" />
			<label for="q5_no">아니오</label> <input type="radio" name="q5" value="아니오" id="q5_no" /></h4><hr width="40%" style="margin-top:50px; margin-bottom:50px;">
			
			<h3>6. 두통 증상이 있다.</h3><br>
			<h4><label for="q6_yes">예</label> <input type="radio" name="q6" value="예" style="margin-right: 5%;" id="q6_yes" />
			<label for="q6_no">아니오</label> <input type="radio" name="q6" value="아니오" id="q6_no" /></h4><hr width="40%" style="margin-top:50px; margin-bottom:50px;">
			
			<h3>7. 최근 설사나 구토를 한 적이 있다.</h3><br>
			<h4><label for="q7_yes">예</label> <input type="radio" name="q7" value="예" style="margin-right: 5%;" id="q7_yes"/>
			<label for="q7_no">아니오</label> <input type="radio" name="q7" value="아니오" id="q7_no" /></h4><hr width="40%" style="margin-top:50px; margin-bottom:50px;">
			
			<h3>8. 동거인 중 현재 자가격리 중인 가족이 있다.</h3><br>
			<h4><label for="q8_yes">예</label> <input type="radio" name="q8" value="예" style="margin-right: 5%;" id="q8_yes"/>
			<label for="q8_no">아니오</label> <input type="radio" name="q8" value="아니오" id="q8_no" /></h4>
			
			<div style="margin: 100px 0px;">
				<input type="submit" value="결과확인" class="btn btn-lg btn-primary mr-5"/>
				<input type="reset" value="초기화" class="btn btn-lg btn-light ml-5" />
			</div>
			
		</form>
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