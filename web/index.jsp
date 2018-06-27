<%-- 
    Document   : index
    Created on : 19-jun-2018, 18:05:37
    Author     : Informatica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="layout/header.jsp" %>
    <body>
    <%@include file="layout/menu.jsp" %>
    <div class="card">
    <div class="card-content">
        <div class="col s4 offset-s4 z-depth-3">
        <h4 class="center-align">Ingreso</h4>
        <form method="post" action="control.do">
            <div class="input-field col s12">
                <input id="rut" type="text" class="validate">
                <label for="rut">Rut</label>
            </div>
            <div class="input-field col s12">
                <input id="clave" type="password" class="validate">
                <label for="clave">Contraseña</label>
            </div>
            <button class="btn center" name="boton" value="login">Entrar</button>
            <p>
                <a href="registro.jsp">Crear una nueva cuenta / Registrarse</a>
            </p>
        </form>
        <p class="red text">${requestScope.msg}</p>
    </div>
   </div>
    </div>

    
    
    </body>
    <%@include file="layout/footer.jsp" %>
</html>
