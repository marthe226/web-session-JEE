<%-- 
    Document   : newuser-content
    Created on : 8 mai 2017, 15:00:22
    Author     : deptinfo
--%>
 <!DOCTYPE html>
<html>
<style>
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}


</style>
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


      