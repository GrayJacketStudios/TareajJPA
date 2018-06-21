
<!DOCTYPE html>
<html>
    <%@include file="layout/header.jsp" %>
    <body>
    <%@include file="layout/menu.jsp" %>
    
    <%@page import="javax.naming.InitialContext"%>
    <%@page import="cl.beans.ServicioLocalLocal"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    
    <%!private ServicioLocalLocal servicio; %>
<%
  InitialContext ctx=new InitialContext();
  servicio=(ServicioLocalLocal)ctx.lookup("java:global/TareaJPA/ServicioLocal!cl.beans.ServicioLocalLocal");
%>
<c:set var="productos" scope="page" value="<%=servicio.getProductos()%>"/>


    <div class="container">
        <div class="row">
            <div class="col m12">
              <div class="card green lighten-1">
                <div class="card-content white-text">
                  <span class="card-title">Pacani Pet Shop</span>
                  <p>A continuación se mostraran nuestros diferentes productos.</p>
                  <br>

                            <table class="bordered highlight">
                                <tr>
                                    <th>Nombre</th>
                                    <th>Descripción</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>Categoria</th>
                                </tr>
                                <c:forEach items="${pageScope.productos}" var="p" >
                                    <tr>
                                        <td>${p.nombreProducto}</td>
                                        <td>${p.descripcionProducto}</td>
                                        <td>${p.precioProducto}</td>
                                        <td>${p.unidadesProducto}</td>
                                        <td>${p.categoria.nombreCategoria}</td>
                                    </tr>
                                </c:forEach>
                            </table>


                </div>
                
              </div>
            </div>
          </div>
        </div>
    
    
    </body>
    <%@include file="layout/footer.jsp" %>
</html>
