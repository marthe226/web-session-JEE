<%-- 
    Document   : brouillon
    Created on : 8 mai 2017, 15:59:00
    Author     : deptinfo
--%>

      
    <html>  
        <head>  
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
            <title>Gestionnaire d'utilisateurs</title>  
        </head>  
        <body>  
            <h1>Gestionnaire d'utilisateurs</h1>  
      
      
            <!-- Message qui s'affiche lorsque la page est appel� avec un param�tre http message -->  
            <c:if test="${!empty param['message']}">  
                <h2>Re�u message : ${param.message}</h2>  
            </c:if>  
      
      
            <h2>Menu de gestion des utilisateurs</h2>  
            <ul>  
                <li><a href="ServletUser?action=listerLesUtilisateurs">Afficher la liste de tous les utilisateurs</a></li>  
                <p>  
            </ul>  
                <h2> Inscription</h2>  
            <ol>  
                <li><a href="ServletUser?action=creerUtilisateursDeTest">Cr�er 4 utilisateurs de test</a></li>  
      
                 <li>pagination</li>  
                <form action="ServletUser?pagination10" method="get">  
                    <!--login : <input type="text" name="login"/><br>  !-->
                    <input type="hidden" name="action" value="pagination10"/>  
                    <input type="submit" value="paginer" name="submit"/>  
                </form> 
                 
                <li>Cr�er un utilisateur</li>  
                <form action="ServletUser?creeUtilisateur" method="get">  
                    Nom : <input type="text" name="nom"/><br>  
                    Pr�nom : <input type="text" name="prenom"/><br>  
                    Login : <input type="text" name="login"/><br>  
                    <!-- Astuce pour passer des param�tres � une servlet depuis un formulaire JSP !-->  
                    <input type="hidden" name="action" value="creeUtilisateur"/>  
                    <input type="submit" value="Cr�er l'utilisateur" name="submit"/>  
                </form>  
      
                <li>Afficher les d�tails d'un utilisateur</li>  
                <form action="ServletUser?action=rechercherUtilisateur" method="POST">  
                    login : <input type="text" name="login"/><br>  
                    <input type="hidden" name="action" value="chercherParLogin"/>  
                    <input type="submit" value="Chercher" name="submit"/>  
                </form>  
                
                
                 <li>Supprimer un utilisateur</li>  
                <form action="ServletUser?supprimerUtilisateur" method="POST">  
                    login : <input type="text" name="login"/><br>  
                    <input type="hidden" name="action" value="supprimerUtilisateur"/>  
                    <input type="submit" value="Supprimer" name="submit"/>  
                </form>  
      
      
                <li>Modifier les d�tails d'un utilisateur :</li>  
                <form action="ServletUser?action=updateUtilisateur" method="POST">  
                    Login : <input type="text" name="login"/><br>  
                    Nom : <input type="text" name="nom"/><br>  
                    Pr�nom : <input type="text" name="prenom"/><br>  
                    <input type="hidden" name="action" value="updateUtilisateur"/>  
                    <input type="submit" value="Mettre � jour" name="submit"/>  
                </form>  
            </ol>  
      
