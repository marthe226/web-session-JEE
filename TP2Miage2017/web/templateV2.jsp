<%-- 
    Document   : templateV2
    Created on : 1 mai 2017, 18:27:47
    Author     : idani
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE HTML>  
<html>  
<head>  
<title>${param.title}</title>  
<link rel="stylesheet" type="text/css"  
    href="${pageContext.request.contextPath}/ressources/styleV2.css" />  
</head>  
<body>  
    <jsp:include page="headerV2.jsp"/>  
  
      
    <h1>${param.title} test</h1>  
  
    <jsp:include page="${param.content}.jsp"/>  
      
    <jsp:include page="footerV2.jsp"/>  
      
      
</body>  
</html> 
