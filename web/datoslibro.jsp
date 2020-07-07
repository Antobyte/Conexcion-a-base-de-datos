<%-- 
    Document   : datoslibro
    Created on : 6/07/2020, 08:45:04 PM
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
                    
                    <th>AUTOR</th>
                    <th>TITULO</th>
                    <th>CANTIDAD</th>
                    <th>AÑO</th>
                    <th>EDITORIAL</th>
                    <th>PAIS</th>
                    <th>PRECIO</th>
                    <th>ESTADO</th>
                </tr>
            </thead>
            <tbody>                
                <%
                    try {
                        ConectaBd bd = new ConectaBd();
                        cn = bd.getConnection();
                        consulta = "SELECT l.idlibro, a.nombre, l.titulo, l.cantidad, l.anio, e.nombre, p.nombre, l.precio, l.estado "
                                 + "FROM autor a, libro l, editorial e, pais p "
                                 + "WHERE a.idautor = l.idautor "
                                 + "AND e.ideditorial = l.ideditorial "
                                 + "AND p.idpais = l.idpais "
                                 + "order by a.nombre asc ";
                                 
                        //out.print(consulta);
                        pst = cn.prepareStatement(consulta);
                        rs = pst.executeQuery();
                        while (rs.next()) {
                        %>
                        <tr align="center" >
                            <td text="center"><%out.print(rs.getString(1));%></td>
                            <td text="center"><%out.print(rs.getString(2));%></td>
                            <td text="center"><%out.print(rs.getString(3));%></td>
                            <td text="center"><%out.print(rs.getString(4));%></td>
                            <td text="center"><%out.print(rs.getString(5));%></td>
                            <td text="center"><%out.print(rs.getString(6));%></td>
                            <td text="center"><%out.print(rs.getString(7));%></td>
                            <td text="center"><%out.print(rs.getString(8));%></td>

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
