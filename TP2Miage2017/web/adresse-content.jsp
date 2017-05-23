<%-- 
    Document   : adresse-content
    Created on : 23 mai 2017, 12:05:46
    Author     : deptinfo
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
      
            <!-- Zone qui affiche les contacts si le paramètre action vaut afficheadresse -->  
            <c:if test="${param['action'] == 'afficheadresse'}" >  
      
                <table class="w3-table-all">  
                    <!-- La ligne de titre du tableau des  -->  
                    <tr class="w3-green">  
                        <td><b>Numero</b></td>  
                        <td><b>Nom</b></td>  
                        <td><b>Code Postal</b></td>  
                        <td><b>Ville</b></td>
                        <td><b>Pays</b></td>  
                    </tr>  
       <c:set var="total" value="0"/>  
      
                    <c:forEach var="u" items="${requestScope['listeDesAdresses']}">  
                        <tr class="odd">
                            <td>${u.adresses.getNuméro}</td>  
                            <td>${u.adresses.getNom}</td>  
                            <td>${u.adresses.getCdpostal}</td>  
                            <td>${u.adresses.getville}</td>
                            <td>${u.adresses.getPays}</td>
                            <!-- On compte le nombre de users -->  
                            <c:set var="total" value="${total+1}"/>  
                        </tr>  
                    </c:forEach>  
      
                    <!-- Affichage du solde total dans la dernière ligne du tableau -->  
                    <tr><td><b>TOTAL</b></td><td></td><td><b>${total}</b></td><td></td></tr>  
                </table>  
      
            </c:if> 
            <form action="ServletUser?action=pagination10" method="get" id="pagination10">  
                    <input type="hidden" name="action" value="pagination10"/>   
       </form>  
            <button type="submit" form="pagination10" value="Submit">retour</button>
