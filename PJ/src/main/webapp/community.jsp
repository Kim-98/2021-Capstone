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
					<a class="nav-link active" href="community.jsp"><b>Community</b> <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="check.jsp"><b>Self-check</b></a>
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
				<h1>[ 커뮤니티 게시판 ]</h1>
			</div>
			<hr id="hr_line">
		</div>
	</header>


	<div class="container-fluid px-5 my-5 w-80" >
		<table class="table table-hover text-center">
			<thead>
			<tr style="background-color: #CFC4FF;">
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>날짜</th>
				<th>조회수</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td class="col-md-1">10</td>
				<td class="col-md-5">테이블 디자인입니다.</td>
				<td class="col-md-2">ㅇㅇ</td>
				<td class="col-md-2">16:03</td>
				<td class="col-md-2">0</td>
			</tr>
			<tr>
				<td class="col-md-1">9</td>
				<td class="col-md-5">추후 DB테이블 연결 예정입니다.</td>
				<td class="col-md-2">ㅇㅇ</td>
				<td class="col-md-2">2021-06-07</td>
				<td class="col-md-2">0</td>
			</tr>
			<tr>
				<td class="col-md-1">8</td>
				<td class="col-md-5">데이터베이스 연결 안 된 게시판입니다.</td>
				<td class="col-md-2">팩트</td>
				<td class="col-md-2">2021-06-05</td>
				<td class="col-md-2">3</td>
			</tr>
			<tr>
				<td class="col-md-1">7</td>
				<td class="col-md-5">'이것'먹으면 면역력 높아진다!</td>
				<td class="col-md-2">광고아님</td>
				<td class="col-md-2">2021-06-05</td>
				<td class="col-md-2">8</td>
			</tr>
			<tr>
				<td class="col-md-1">6</td>
				<td class="col-md-5">자가격리 13일차</td>
				<td class="col-md-2">어이쿠</td>
				<td class="col-md-2">2021-06-05</td>
				<td class="col-md-2">68</td>
			</tr>
			<tr>
				<td class="col-md-1">5</td>
				<td class="col-md-5">코로나19 공공데이터활용 공모전!</td>
				<td class="col-md-2">갭알자</td>
				<td class="col-md-2">2021-06-05</td>
				<td class="col-md-2">26</td>
			</tr>
			<tr>
				<td class="col-md-1">4</td>
				<td class="col-md-5">치료제 접종 후기</td>
				<td class="col-md-2">주사따끔</td>
				<td class="col-md-2">2021-06-04</td>
				<td class="col-md-2">84</td>
			</tr>
			<tr>
				<td class="col-md-1">3</td>
				<td class="col-md-5">백신 정보 공유합니다</td>
				<td class="col-md-2">코로롱</td>
				<td class="col-md-2">2021-06-03</td>
				<td class="col-md-2">32</td>
			</tr>
			<tr>
				<td class="col-md-1">2</td>
				<td class="col-md-5">코로나19 증상 질문</td>
				<td class="col-md-2">유저1</td>
				<td class="col-md-2">2021-06-03</td>
				<td class="col-md-2">16</td>
			</tr>
			<tr>
				<td class="col-md-1">1</td>
				<td class="col-md-5">테스트 페이지 입니다</td>
				<td class="col-md-2">관리자</td>
				<td class="col-md-2">2021-06-01</td>
				<td class="col-md-2">3</td>
			</tr>
			</tbody>
		</table>
		
		<hr/>
		<div class="text-right">
			<button type="button" class="btn btn-default">글쓰기</button>
		</div>
		<ul class="pagination justify-content-center">
			<li><a href="#" style="margin-right: 20px;" class="text-secondary"><</a></li>
			<li><a href="#" style="margin-right: 20px;" class="text-secondary">1</a></li>
			<li><a href="#" style="margin-right: 20px;" class="text-secondary">2</a></li>
			<li><a href="#" style="margin-right: 20px;" class="text-secondary">3</a></li>
			<li><a href="#" style="margin-right: 20px;" class="text-secondary">4</a></li>
			<li><a href="#" style="margin-right: 20px;" class="text-secondary">5</a></li>
			<li><a href="#" style="margin-right: 20px;" class="text-secondary">></a></li>
		</ul>
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