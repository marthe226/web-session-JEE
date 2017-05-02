    <%--  
        Document   : index  
        Created on : 16 sept. 2009, 16:54:32  
        Author     : michel buffa  
    --%>  
      
    <%@page contentType="text/html" pageEncoding="UTF-8"%>  
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"  
        "http://www.w3.org/TR/html4/loose.dtd">  
      
    <!-- Ne pas oublier cette ligne sinon tous les tags de la JSTL seront ignorés ! -->  
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
      
    <html>  
        <head>  
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
            <title>Gestionnaire d'utilisateurs</title>  
        </head>  
        <body>  
            <h1>Gestionnaire d'utilisateurs</h1>  
      
      
            <!-- Message qui s'affiche lorsque la page est appelé avec un paramètre http message -->  
            <c:if test="${!empty param['message']}">  
                <h2>Reçu message : ${param.message}</h2>  
            </c:if>  
      
      
            <h2>Menu de gestion des utilisateurs</h2>  
            <ul>  
                <li><a href="ServletUser?action=listerLesUtilisateurs">Afficher la liste de tous les utilisateurs</a></li>  
                <p>  
            </ul>  
                <h2> Inscription</h2>  
            <ol>  
                <li><a href="ServletUser?action=creerUtilisateursDeTest">Créer 4 utilisateurs de test</a></li>  
      
                 <li>pagination</li>  
                <form action="ServletUser?pagination10" method="get">  
                    <!--login : <input type="text" name="login"/><br>  !-->
                    <input type="hidden" name="action" value="pagination10"/>  
                    <input type="submit" value="paginer" name="submit"/>  
                </form> 
                 
                <li>Créer un utilisateur</li>  
                <form action="ServletUser?creeUtilisateur" method="get">  
                    Nom : <input type="text" name="nom"/><br>  
                    Prénom : <input type="text" name="prenom"/><br>  
                    Login : <input type="text" name="login"/><br>  
                    <!-- Astuce pour passer des paramètres à une servlet depuis un formulaire JSP !-->  
                    <input type="hidden" name="action" value="creeUtilisateur"/>  
                    <input type="submit" value="Créer l'utilisateur" name="submit"/>  
                </form>  
      
                <li>Afficher les détails d'un utilisateur</li>  
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
      
      
                <li>Modifier les détails d'un utilisateur :</li>  
                <form action="ServletUser?action=updateUtilisateur" method="POST">  
                    Login : <input type="text" name="login"/><br>  
                    Nom : <input type="text" name="nom"/><br>  
                    Prénom : <input type="text" name="prenom"/><br>  
                    <input type="hidden" name="action" value="updateUtilisateur"/>  
                    <input type="submit" value="Mettre à jour" name="submit"/>  
                </form>  
            </ol>  
      
            <!-- Fin du menu -->  
      
            <!-- Zone qui affiche les utilisateurs si le paramètre action vaut listerComptes -->  
            <c:if test="${param['action'] == 'listerLesUtilisateurs'}" >  
                <h2>Liste des utilisateurs</h2>  
      
                <table border="10">  
                    <!-- La ligne de titre du tableau des comptes -->  
                    <tr>  
                        <td><b>Login</b></td>  
                        <td><b>Nom</b></td>  
                        <td><b>Prénom</b></td>  
                    </tr>  
      
                    <!-- Ici on affiche les lignes, une par utilisateur -->  
                    <!-- cette variable montre comment on peut utiliser JSTL et EL pour calculer -->  
                    <c:set var="total" value="0"/>  
      
                    <c:forEach var="u" items="${requestScope['listeDesUsers']}">  
                        <tr class="odd">
                            <td>${u.login}</td>  
                            <td>${u.firstname}</td>  
                            <td>${u.lastname}</td>  
                            <!-- On compte le nombre de users -->  
                            <c:set var="total" value="${total+1}"/>  
                        </tr>  
                    </c:forEach>  
      
                    <!-- Affichage du solde total dans la dernière ligne du tableau -->  
                    <tr><td><b>TOTAL</b></td><td></td><td><b>${total}</b></td><td></td></tr>  
                </table>  
      
            </c:if>   
       <form action="ServletUser?prev" method="get">  
                    <!--login : <input type="text" name="login"/><br>  !-->
                    <input type="hidden" name="action" value="prev"/>  
                    <input type="submit" value="prev" name="submit"/> 
                </form> 
       <form action="ServletUser?next" method="get">  
                    <!--login : <input type="text" name="login"/><br>  !-->
                    <input type="hidden" name="action" value="next"/>  
                    <input type="submit" value="next" name="submit"/>  
                </form> 
        </body>  
    </html>  