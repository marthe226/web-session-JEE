<%-- 
    Document   : updateUser
    Created on : 2 mai 2017, 09:41:03
    Author     : deptinfo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <!-- Ne pas oublier cette ligne sinon tous les tags de la JSTL seront ignorés ! -->  
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update user</title>
    </head>
    <body>
        <li>Modifier les détails d'un utilisateur :</li>  
                <form action="ServletUser?action=updateUtilisateur" method="POST">  
                    Login : <input type="text" name="login"/><br>  
                    Nom : <input type="text" name="nom"/><br>  
                    Prénom : <input type="text" name="prenom"/><br>  
                    <input type="hidden" name="action" value="updateUtilisateur"/>  
                    <input type="submit" value="Mettre à jour" name="submit"/>  
                </form> 
    </body>
</html>
