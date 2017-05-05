<%-- 
    Document   : recheacheuser-content
    Created on : 2 mai 2017, 09:53:35
    Author     : deptinfo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <!-- Ne pas oublier cette ligne sinon tous les tags de la JSTL seront ignorés ! -->  
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <li>Afficher les détails d'un utilisateur</li>  
                <form action="ServletUser?action=rechercherUtilisateur" method="POST">  
                    login : <input type="text" name="login"/><br>  
                    <input type="hidden" name="action" value="chercherParLogin"/>  
                    <input type="submit" value="Chercher" name="submit"/>
                    <a href="${pageContext.request.contextPath}/ServletUser">Cancel</a>
                </form>  
    </body>
</html>
