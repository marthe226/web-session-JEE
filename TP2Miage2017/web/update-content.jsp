<%-- 
    Document   : update-content
    Created on : 8 mai 2017, 15:42:29
    Author     : deptinfo
--%>
 <!DOCTYPE html>
<html>
<body>

     
                <form action="ServletUser?action=updateUtilisateur" method="POST">  
                    Login : <input type="text" name="login"/><br>  
                    Nom : <input type="text" name="nom"/><br>  
                    Prénom : <input type="text" name="prenom"/><br>  
                    <input type="hidden" name="action" value="updateUtilisateur"/>  
                    <input type="submit" value="Mettre à jour" name="submit"/>  
                </form>  
              
</body>
</html>


      
  