<%-- 
    Document   : menu
    Created on : 6/07/2020, 07:46:30 PM
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
            <table border="1" cellspacing="0" celpagging="0" align="center">
            <thead>
                <tr>
                    <th colspan="2" > -- OPCIONES -- </th>
                  
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>-- 1) DATOS DE AUTOR --</td>
                    <td>
                        <form name="IR" action="datosautor.jsp" method="POST">
                            <input type="submit" value="IR" />
                        </form>                                                    
                    </td>                    
                </tr>
                <tr>
                    <td>-- 2) DATOS DE EDITORIAL --</td>
                    <td>
                        <form name="IR" action="datoseditorial.jsp" method="POST">
                            <input type="submit" value="IR" />
                        </form>                                                    
                    </td> 
                </tr>
                <tr>
                    <td>-- 3) DATOS PAIS --</td>
                    <td>
                        <form name="IR" action="datospais.jsp" method="POST">
                            <input type="submit" value="IR" />
                        </form>                                                    
                    </td> 
                </tr>
                <tr>
                    <td>-- 4) DATOS LIBRO --</td>
                    <td>
                        <form name="IR" action="datoslibro.jsp" method="POST">
                            <input type="submit" value="IR" />
                        </form>                                                    
                    </td> 
                </tr>
            </tbody>
        </table>
    </body>
</html>

