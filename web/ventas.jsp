<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h1>Punto de venta</h1>
            <br/>
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="ventas" />
            </jsp:include>
            <br/>
            <a href="VentaControlador?action=add" class="btn btn-primary btn-sm mt-10">+ Realizar venta</a>
            <br/>
            <br/>
            <table class="table table-hover">
                <tr>
                    <th>Id</th>
                    <th>Producto</th>
                    <th>Cliente</th>
                    <th>Fecha</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${ventas}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.producto}</td>
                        <td>${item.cliente}</td>
                        <td>${item.fecha}</td>
                        <td><a href="VentaControlador?action=edit&id=${item.id}">Editar</a></td>
                        <td><a href="VentaControlador?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro'))">Eliminar</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="js/jquery-3.3.1.slim.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>