<%@page import="ExamenHibernateAna.AccesoBD"%>
<%@page import="ExamenHibernateAna.Contacto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INSERTAR CONTACTOS</title>
    </head>
    <body>
        <h1>INSERTAR CONTACTOS</h1>
        <form action="ServletAgenda">
        <input type="text" id="nombre" name="nombre" placeholder="nombre"/>
        <input type="text" id="apellido" name="apellido" placeholder="apellido"/>
        <input type="submit" value="Insertar"/>
        <input type="hidden" name="accion" value="insertar">
        </form>
     
    </body>
</html>
