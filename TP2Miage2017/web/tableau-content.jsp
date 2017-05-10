<%-- 
    Document   : newjsptableau-content
    Created on : 8 mai 2017, 15:11:52
    Author     : deptinfo
--%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        
           <!-- Zone qui affiche les utilisateurs si le paramètre action vaut listerComptes -->  
           <form action="ServletUser?action=pagination10" method="POST">  
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
      <form action="ServletUser?prev" method="get" id="prev">  
                    <input type="hidden" name="action" value="prev"/>  
                                    </form> 
       <form action="ServletUser?next" method="get" id="next">  
                    <input type="hidden" name="action" value="next"/>   
       </form>  
            <button type="submit" form="prev" value="Submit">Precedent</button>
            <button type="submit" form="next" value="Submit">Suivant</button>
