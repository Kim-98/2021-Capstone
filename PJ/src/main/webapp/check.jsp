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
						<a class="dropdown-item" href="index.jsp#main_1">?????? ??????</a>
						<a class="dropdown-item" href="index.jsp#main_2">?????? ??????</a>
						<a class="dropdown-item" href="index.jsp#main_3">????????? ?????? ??????</a>
						<a class="dropdown-item" href="index.jsp#main_4">??????????????? ????????????</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="index.jsp#main_5">?????? ?????????</a>
					</div>
			    </li>
				<li class="nav-item">
					<a class="nav-link" href="community.jsp"><b>Community</b> <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="check.jsp"><b>Self-check</b></a>
				</li>
				<li class="nav-item">
					<a class="nav-link disabled" href="http://gwonk.iptime.org:98/vnc.html" target="_blank"><b>????????? ?????????</b></a>
				</li>
			</ul>
	    </div>
	</nav>

	<!-- header -->
	<header>
		<div class="container-fluid px-4 mt-5">
			<div class="col-xl-12 col-md-12 text-center" style="margin-top: 12em; margin-bottom: 8em">
				<h1>[ ?????????19 ???????????? ]</h1>
			</div>
			<hr id="hr_line">
		</div>
	</header>

	<div class="container-fluid px-4 mt-5 text-center">
		<form method="get" action="check_sum.jsp">
			<h2 style="margin: 100px 0px;">????????????????????? ?????????-19 ????????? ????????? <mark>?????? ??????</mark>??? ???????????? ???????????????.</h2>
			
			<h3>1. 37.5??C ?????? ?????? ????????? ??????.</h3><br>
			<h4><label for="q1_yes">???</label> <input type="radio" name="q1" value="???" style="margin-right: 5%;" id="q1_yes" />
			<label for="q1_no">?????????</label> <input type="radio" name="q1" value="?????????" id="q1_no" /></h4><hr width="40%" style="margin-top:50px; margin-bottom:50px;">
			
			<h3>2. ???????????? ????????? ????????? ??????.</h3><br>
			<h4><label for="q2_yes">???</label> <input type="radio" name="q2" value="???" style="margin-right: 5%;" id="q2_yes" />
			<label for="q2_no">?????????</label> <input type="radio" name="q2" value="?????????" id="q2_no" /></h4><hr width="40%" style="margin-top:50px; margin-bottom:50px;">
			
			<h3>3. ??????????????? ?????? ????????? ?????? ?????? ??????.</h3><br>
			<h4><label for="q3_yes">???</label> <input type="radio" name="q3" value="???" style="margin-right: 5%;" id="q3_yes" />
			<label for="q3_no">?????????</label> <input type="radio" name="q3" value="?????????" id="q3_no" /></h4><hr width="40%" style="margin-top:50px; margin-bottom:50px;">
			
			<h3>4. ???????????? ???????????? ?????????(????????? ?????? ??????).</h3><br>
			<h4><label for="q4_yes">???</label> <input type="radio" name="q4" value="???" style="margin-right: 5%;" id="q4_yes" />
			<label for="q4_no">?????????</label> <input type="radio" name="q4" value="?????????" id="q4_no" /></h4><hr width="40%" style="margin-top:50px; margin-bottom:50px;">
			
			<h3>5. ????????? ??? ??? ????????? ????????? ????????? ??? ?????? ??????.</h3><br>
			<h4><label for="q5_yes">???</label> <input type="radio" name="q5" value="???" style="margin-right: 5%;" id="q5_yes" />
			<label for="q5_no">?????????</label> <input type="radio" name="q5" value="?????????" id="q5_no" /></h4><hr width="40%" style="margin-top:50px; margin-bottom:50px;">
			
			<h3>6. ?????? ????????? ??????.</h3><br>
			<h4><label for="q6_yes">???</label> <input type="radio" name="q6" value="???" style="margin-right: 5%;" id="q6_yes" />
			<label for="q6_no">?????????</label> <input type="radio" name="q6" value="?????????" id="q6_no" /></h4><hr width="40%" style="margin-top:50px; margin-bottom:50px;">
			
			<h3>7. ?????? ????????? ????????? ??? ?????? ??????.</h3><br>
			<h4><label for="q7_yes">???</label> <input type="radio" name="q7" value="???" style="margin-right: 5%;" id="q7_yes"/>
			<label for="q7_no">?????????</label> <input type="radio" name="q7" value="?????????" id="q7_no" /></h4><hr width="40%" style="margin-top:50px; margin-bottom:50px;">
			
			<h3>8. ????????? ??? ?????? ???????????? ?????? ????????? ??????.</h3><br>
			<h4><label for="q8_yes">???</label> <input type="radio" name="q8" value="???" style="margin-right: 5%;" id="q8_yes"/>
			<label for="q8_no">?????????</label> <input type="radio" name="q8" value="?????????" id="q8_no" /></h4>
			
			<div style="margin: 100px 0px;">
				<input type="submit" value="????????????" class="btn btn-lg btn-primary mr-5"/>
				<input type="reset" value="?????????" class="btn btn-lg btn-light ml-5" />
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