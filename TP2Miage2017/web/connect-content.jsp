<%-- 
    Document   : connect-content
    Created on : 8 mai 2017, 21:34:51
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

input[type=password], select {
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

              <form method="POST" action="ServletUser?action=connexion">
                    Login : <input type="text" name="firstname"/><br>  
                    Password : <input type="password"  name="login"/><br>  
                    <input type="hidden" name="action" value="connexion"/>  
                    <input type="submit" value="Se Connecter" name="submit"/>  
                </form>  
</body>
</html>


      