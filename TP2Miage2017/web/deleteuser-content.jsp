<%-- 
    Document   : deleteuser-content
    Created on : 8 mai 2017, 15:38:07
    Author     : deptinfo
--%>
 <!DOCTYPE html>
<html>

<body>

     <form action="ServletUser?action=supprimerUtilisateur" method="POST">  
                    Login : <input type="text" name="login"/><br>  
                    <input type="hidden" name="action" value="supprimerUtilisateur"/>  
                    <input type="submit" value="Supprimer" name="submit"/>  
                </form>  

</body>
</html>
