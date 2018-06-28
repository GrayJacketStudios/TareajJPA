

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav>
    <div class="nav-wrapper teal lighten-2">
        <c:if test="${not empty sessionScope.admin}">
            Bienvenido ${sessionScope.admin.nombreUser}
        </c:if>
        <c:if test="${not empty sessionScope.person}">
            Pacani Pet Shop - ${sessionScope.person.nombreUser}
        </c:if>
      
      <ul id="nav-mobile" class="right hide-on-med-and-down">
          <c:if test="${not empty sessionScope.admin}">
              <li><a href="misdatos.jsp">Mis datos</a> </li>
              <li><a href="categorias.jsp">Modulo categorias</a> </li>
              <li><a href="admin_productos.jsp">Modulo productos</a> </li>
              <li><a href="admin_ventas.jsp">Modulo ventas</a> </li>
              <li><a href="salir.jsp">Salir</a> </li>
          </c:if>       
      <c:if test="${not empty sessionScope.person}">
              <li><a href="misdatos.jsp">Mis datos</a> </li>
              <li><a href="productos.jsp">Productos</a> </li>
              <li><a href="admin_productos.jsp">mis compras</a> </li>
              <li><a href="admin_ventas.jsp">carrito de compras</a> </li>
              <li><a href="salir.jsp">Salir</a> </li>
          </c:if>     

      </ul>
    </div>
  </nav>