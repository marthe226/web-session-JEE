<%-- 
    Document   : newuser
    Created on : 2 mai 2017, 10:02:51
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
         <li>Créer un utilisateur</li>  
                <form action="ServletUser?creeUtilisateur" method="get">  
                    Nom : <input type="text" name="nom"/><br>  
                    Prénom : <input type="text" name="prenom"/><br>  
                    Login : <input type="text" name="login"/><br>  
                    <!-- Astuce pour passer des paramètres à une servlet depuis un formulaire JSP !-->  
                    <input type="hidden" name="action" value="creeUtilisateur"/>  
                    <input type="submit" value="Créer l'utilisateur" name="submit"/>  
                </form>  
    </body>
</html>
