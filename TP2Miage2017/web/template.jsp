<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>${param.title}</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/style.css" />
</head>
<body>
	<jsp:include page="header.jsp"/>
        
         <ulien>
  <lien><a href="index.html">Home</a></lien>
  <lien><a href="news.asp">News</a></lien>
  <lien><a href="contact.asp">Contact</a></lien>
  <lien><a href="about.asp">About</a></lien>
        </ulien> 
	
	<h1>${param.title}</h1>

	<jsp:include page="${param.content}.jsp"/>
	
	<jsp:include page="footer.jsp"/>
	
	
</body>
</html>