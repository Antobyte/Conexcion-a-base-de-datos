<%-- 
    Document   : login
    Created on : 6/07/2020, 07:46:09 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="f_datos" action="validalogin.jsp" method="POST">
            <table align="center" border="1" cellspacing="0" celpagging="0" >
                <thead>
                    <tr>
                        <th colspan="2">INGRESE SUS DATOS</th>
                    <tr>
                </thead>
                <tbody>
                    <tr>
                        <td>USUARIO</td>
                        <td><input type="text" name="f_usuario" value="" /></td>
                    </tr>
                    <tr>
                        <td>CLAVE</td>
                        <td><input type="password" name="f_clave" value="" /></td>
                    </tr>
                    <tr align ="center">
                        <td colspan="2"><input type="submit" value="Ingresar" name="f_ingresar" /></td>
                        
                    </tr>
                </tbody>
            </table>

        </form> 
    </body>
</html>

