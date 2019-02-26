<%@page import="java.util.List"%>
<%@page import="ExamenHibernateAna.AccesoBD"%>
<%@page import="ExamenHibernateAna.Contacto"%>
<%@page import="java.util.ArrayList"%>
<%
    List<Contacto> lista_contactos=(List<Contacto>)request.getAttribute("lista_contactos");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LISTAR CONTACTOS</title>
    </head>
    <body>
        <h1>LISTAR CONTACTOS</h1>
    <div class="container">
            <table class="table">
            <tr><th>Nombre</th><th>Apellido</th></tr>
            <%
                for(int i=0;i<lista_contactos.size();i++)
                {
                Contacto c=lista_contactos.get(i);
            %>
            <tr><td><%=c.getNombre()%></td><td><%=c.getApellido()%></td></tr>
           <%} %> 
         </table>
         </div>
                        
                        
    </body>
</html>
