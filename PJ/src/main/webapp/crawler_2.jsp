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
	.news2 { margin: 40px 0px; }
	.news2:hover { 
		transform: translate(-30px, 0px);
		background-color: #31B404;
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
	String url2 = "https://search.naver.com/search.naver?where=news&sm=tab_jum&query=%EC%BD%94%EB%A1%9C%EB%82%98+%EB%B0%B1%EC%8B%A0"; //크롤링할 url지정
	Document doc2 = null;        //Document에는 페이지의 전체 소스가 저장된다
	
	try {
		doc2 = Jsoup.connect(url2).get();
	} catch (IOException e) {
		e.printStackTrace();
	}
	//select를 이용하여 원하는 태그를 선택한다. select는 원하는 값을 가져오기 위한 중요한 기능이다.
	Elements element2 = doc2.select("div.group_news");
	//Iterator을 사용하여 하나씩 값 가져오기
	Iterator<Element> ie1_2 = element2.select("a.news_tit").iterator(); //title
	Iterator<Element> ie2_2 = element2.select("div.news_dsc").iterator(); //sub
	Iterator<Element> ie3_2 = element2.select("a.news_tit").iterator(); //link
	
	Element link1 = ie3_2.next();
	String href1 = link1.attr("href");
	
	Element link2 = ie3_2.next();
	String href2 = link2.attr("href");
	
	Element link3 = ie3_2.next();
	String href3 = link3.attr("href");
	
	Element link4 = ie3_2.next();
	String href4 = link4.attr("href");
%>
	<div class="news2">
		<a href="<%= href1 %>" target="_blank">
			<h2><%= ie1_2.next().text() %></h2>
			<h5><%= ie2_2.next().text() %></h5> <br>
		</a>
	</div>
	<div class="news2">
		<a href="<%= href2 %>" target="_blank">
			<h2><%= ie1_2.next().text() %></h2>
			<h5><%= ie2_2.next().text() %></h5> <br>
		</a>
	</div>
	<div class="news2">
		<a href="<%= href3 %>" target="_blank">
			<h2><%= ie1_2.next().text() %></h2>
			<h5><%= ie2_2.next().text() %></h5> <br>
		</a>
	</div>
	<div class="news2">
		<a href="<%= href4 %>" target="_blank">
			<h2><%= ie1_2.next().text() %></h2>
			<h5><%= ie2_2.next().text() %></h5> <br>
		</a>
	</div>
</a>
</body>
</html>