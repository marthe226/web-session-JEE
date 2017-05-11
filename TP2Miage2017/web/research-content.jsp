<%-- 
    Document   : research-content
    Created on : 8 mai 2017, 15:51:25
    Author     : deptinfo
--%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>

<p>Login:</p>

<form action="ServletUser?action=rechercherUtilisateur" method="POST">  
                    <input type="text" name="login"/><br>  
                    <input type="hidden" name="action" value="chercherParLogin"/>  
                    <input type="submit" value="Chercher" name="submit"/>  
                </form>  
</body>
</html>

                