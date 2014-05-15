<%-- 
    Document   : getFile
    Created on : 05-14-2014, 12:34:58 PM
    Author     : Oscar Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-2.0.3.js"></script>
        <script type="text/javascript" src="js/cambios.js"></script>
        <title>JSP Page</title>
    </head>
    <body> 
        <div id="header">
            <h3>Gestion de fichas de estudiante</h3>
        </div>
  
        <div id="contenedor">
        <%@include file ="menuPrincipal.jsp"%>
        <section id="formulario">
        <form method="post" action="adduser" id="frmuser" class="frm" name="frmuser">
            <div id="campos">
            <label for="code">Ingrese El codigo del usuario</label> 
            <input type="text" name ="code" placeholder="Codigo del usuario" />
            <label for="nombre">Nombre de la persona</label> 
            <input type="text" name="nombre" id="nombre" placeholder="Nombre completo" />
            <label for="usuario">Nombre de usuario</label>
            <input type="text" name="usuario" id="usuario" placeholder="usuario" />
            <label for="contrasenia">Contraseña</label>
            <input type="text" name="contrasenia" id="contrasenia" placeholder="contraseña" />
            <% if(request.getParameter("user").equals("docente")){ %>
            <section id="doconly" name="doconly">
                
            <label for="">facultad</label>
            
            <input type="text" name="facultad" id="facultad" placeholder="facultad" />
            
            <label for="">escuela</label>
            <input type="text" name="escuela" id="escuela" placeholder="escuela" />
            
            <%} %>
            </section>
            <input type="hidden" name="rol" value=<%= request.getParameter("user")%> />
            
            
            <section id="botones" name="botones">
                
                <input type="submit" name="submitAdd" value="agregar usuario" />
                <input type="reset" name="reset" value="reestablecer" />
                
            </section>
            </div>
        </form>
        </section>
        </div>
    </body>
</html>
