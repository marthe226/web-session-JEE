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

         <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        
             <!-- Message qui s'affiche lorsque la page est appelé avec un paramètre http message -->  
            <c:if test="${!empty param['message']}">  
                <h2>Reçu message : ${param.message}</h2>  
            </c:if>  
      
            <!-- Zone qui affiche les utilisateurs si le paramètre action vaut listerComptes -->  
            <c:if test="${param['action'] == 'listerLesUtilisateurs'}" >  
               
      
                <table class="w3-table-all">  
                    <!-- La ligne de titre du tableau des comptes -->  
                    <tr class="w3-green">  
                        <td><b>Login</b></td>  
                        <td><b>Nom</b></td>  
                        <td><b>Prénom</b></td>  
                    </tr>  
      
                    <!-- Ici on affiche les lignes, une par utilisateur -->  
                    <!-- cette variable montre comment on peut utiliser JSTL et EL pour calculer -->  
                    <c:set var="total" value="0"/>  
      
                    <c:forEach var="u" items="${requestScope['listeDesUsers']}">  
                        <tr class="odd">
                            <td><a href="adresse.jsp">${u.login}</a></td>  
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
             <form action="ServletUser?prev" method="get" id="prev">  
                    <input type="hidden" name="action" value="prev"/>  
                                    </form> 
       <form action="ServletUser?next" method="get" id="next">  
                    <input type="hidden" name="action" value="next"/>   
       </form>  
            <button type="submit" form="prev" value="Submit">Precedent</button>
            <button type="submit" form="next" value="Submit">Suivant</button>
        </body>  
    </html>  
