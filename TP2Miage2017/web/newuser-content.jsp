<%-- 
    Document   : newuser-content
    Created on : 8 mai 2017, 15:00:22
    Author     : deptinfo
--%>
 <!DOCTYPE html>
<html>
<body>

     <li><a href="ServletUser?action=creerUtilisateursDeTest">Cr�er 100 utilisateurs de test</a></li> 
     
    <form action="ServletUser?creeUtilisateur" method="get">  
                    Nom : <input type="text" name="nom"/><br>  
                    Pr�nom : <input type="text" name="prenom"/><br>  
                    Login : <input type="text" name="login"/><br>  
                    <!-- Astuce pour passer des param�tres � une servlet depuis un formulaire JSP !-->  
                    <input type="hidden" name="action" value="creeUtilisateur"/>  
                    <input type="submit" value="Cr�er l'utilisateur" name="submit"/>  
                </form>  
</body>
</html>


      