<%-- 
    Document   : newUser
    Created on : 05-14-2014, 05:14:11 PM
    Author     : Oscar Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <div id="header">
            <h3>Gestion de fichas de estudiante</h3>
        </div>
        
        <div id="contenedor">
            <%@include file ="menuPrincipal.jsp"%>
            <form action ="frmuser.jsp" method="post" >
                <label for="user">Ingrese el usario a crear</label>
                <select id="user" name="user">
                    <option value="docente">Docente</option>
                    <option value="administrador">Administrador</option>
                    
                        
                </select>
                <input type="submit" name="submit" value="Aceptar" />
                    
            </form>
            
        </div>
    </body>
</html>
