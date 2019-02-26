<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INDEX AGENDA</title>
    </head>
    <body>
<br>    <br>   
<form action="ServletAgenda">
              <label>LISTAR CONTACTOS</label>
<button name="btn_listar" id="btn_listar">LISTAR</button>
<input type="hidden" name="accion" value="vercontactos"/>
</form>
<br> <br>

            <label>INSERTAR CONTACTOS</label>
<a href="insertar.jsp"><button name="btn_insertar" id="btn_insertar">INSERTAR</button></a>


<br>      <br>
            <label>BUSCAR CONTACTOS</label>
<a href="buscar.jsp"><button name="btn_buscar" id="btn_buscar">BUSCAR</button></a>
    
    </body>
</html>
