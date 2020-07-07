<%-- 
    Document   : datospais
    Created on : 6/07/2020, 07:53:18 PM
    Author     : USER
--%>

<%@page import="java.sql.*" %>
<%@page import="bd.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos estudiante</title>
        <%!
            String consulta;
            Connection cn;
            PreparedStatement pst;
            ResultSet rs;
        %>
    </head>
    <body>
        <table border="1" cellspacing="1" cellpadding="1" align = "center" >
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NOMBRE</th>
                    <th>ESTADO</th>
                </tr>
            </thead>
            <tbody>                
                <%
                    try {
                        ConectaBd bd = new ConectaBd();
                        cn = bd.getConnection();
                        consulta = " select idpais, nombre, estado "
                                + " from pais "
                                + " ORDER BY nombre ASC";
                        //out.print(consulta);
                        pst = cn.prepareStatement(consulta);
                        rs = pst.executeQuery();
                        while (rs.next()) {
                        %>
                        <tr>
                            <td><%out.print(rs.getString(1));%></td>
                            <td><%out.print(rs.getString(2));%></td>
                            <td><%out.print(rs.getString(3));%></td>
                        </tr>
                        <%
                        }
                        rs.close();
                        pst.close();
                        cn.close();
                    } catch (Exception e) {
                        out.print("Error SQL");
                    }
                %>                
            </tbody>
        </table>
    </body>
</html>
