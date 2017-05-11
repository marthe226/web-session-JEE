<%-- 
    Document   : connect-content
    Created on : 8 mai 2017, 21:34:51
    Author     : deptinfo
--%>

 <!DOCTYPE html>
<html>
<body>

              <form method="POST" action="ServletUser?action=connexion">
                    Login : <input type="text" name="firstname"/><br>  
                    Password : <input type="password"  name="login"/><br>  
                    <input type="hidden" name="action" value="connexion"/>  
                    <input type="submit" value="Se Connecter" name="submit"/>  
                </form>  
</body>
</html>


      