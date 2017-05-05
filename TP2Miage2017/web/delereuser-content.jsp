<%-- 
    Document   : delereuser
    Created on : 2 mai 2017, 09:45:47
    Author     : deptinfo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <!-- Ne pas oublier cette ligne sinon tous les tags de la JSTL seront ignorés ! -->  
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>suppression</title>
    </head>
    <body>
        <li>Supprimer un utilisateur</li>  
                <form action="ServletUser?supprimerUtilisateur" method="POST">  
                    login : <input type="text" name="login"/><br>  
                    <input type="hidden" name="action" value="supprimerUtilisateur"/>  
                    <input type="submit" value="Supprimer" name="submit"/>  
                </form>  
    </body>
</html>
