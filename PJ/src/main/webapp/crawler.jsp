<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	a { color: black; }
	a:hover { text-decoration: none; 
        color: white;}
	.news { margin: 40px 0px; }
	.news:hover { 
		transform: translate(-30px, 0px);
		background-color: dodgerblue;
        transition-duration: 0.5s;
    }
	
</style>
</head>
<body>
<%@ page import="java.io.IOException" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="org.jsoup.Jsoup" %>
<%@ page import="org.jsoup.nodes.Document" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %>

<%
	String url = "https://www.google.com/search?q=%EC%BD%94%EB%A1%9C%EB%82%98+%EB%89%B4%EC%8A%A4&oq=%EC%BD%94%EB%A1%9C%EB%82%98+%EB%89%B4%EC%8A%A4&aqs=chrome..69i57j35i39l2j0i131i433l2j69i61j69i60j69i61.1427j0j7&sourceid=chrome&ie=UTF-8"; //크롤링할 url지정
	Document doc = null;        //Document에는 페이지의 전체 소스가 저장된다
	
	try {
		doc = Jsoup.connect(url).get();
	} catch (IOException e) {
		e.printStackTrace();
	}
	//select를 이용하여 원하는 태그를 선택한다. select는 원하는 값을 가져오기 위한 중요한 기능이다.
	Elements element = doc.select("div#kp-wp-tab-Latest");
	//Iterator을 사용하여 하나씩 값 가져오기
	Iterator<Element> ie1 = element.select("div.JheGif.nDgy9d").iterator();
	Iterator<Element> ie2 = element.select("div.Y3v8qd").iterator();
	Iterator<Element> ie3 = element.select("a").iterator();

	Element link1_1 = ie3.next();
	String href1_1 = link1_1.attr("href");
	
	Element link2_1 = ie3.next();
	String href2_1 = link2_1.attr("href");

	Element link3_1 = ie3.next();
	String href3_1 = link3_1.attr("href");
	
	Element link4_1 = ie3.next();
	String href4_1 = link4_1.attr("href");
%>
	
	<div class="news">
		<a href="<%= href1_1 %>" target="_blank">
			<h2><%= ie1.next().text() %></h2>
			<h5><%= ie2.next().text() %></h5> <br>
		</a>
	</div>
	<div class="news">
		<a href="<%= href2_1 %>" target="_blank">
			<h2><%= ie1.next().text() %></h2>
			<h5><%= ie2.next().text() %></h5> <br>
		</a>
	</div>
	<div class="news">
		<a href="<%= href3_1 %>" target="_blank">
			<h2><%= ie1.next().text() %></h2>
			<h5><%= ie2.next().text() %></h5> <br>
		</a>
	</div>
	<div class="news">
		<a href="<%= href4_1 %>" target="_blank">
			<h2><%= ie1.next().text() %></h2>
			<h5><%= ie2.next().text() %></h5> <br>
		</a>
	</div>
</a>
</body>
</html>