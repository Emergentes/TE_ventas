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
            <br/>
            <form action="VentaControlador" method="post">
                <input type="hidden" name="id" value="${venta.id}" />
                <div class="form-group">
                    <label for="producto">Producto</label>
                    <select name="producto_id" class="form-control">
                        <c:forEach var="item" items="${lista_productos}">
                            <option value="${item.id}" <c:if test="${venta.producto_id == item.id}">selected
                                    </c:if>>${item.nombre}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label for="cliente">Cliente</label>
                    <select name="cliente_id" class="form-control">
                        <c:forEach var="item" items="${lista_clientes}">
                            <option value="${item.id}" <c:if test="${venta.cliente_id == item.id}">selected
                                    </c:if>>${item.nombre}</option>
                        </c:forEach>
                    </select>
                </div>

                <div class="form-group">
                    <label for="correo">Fecha</label>
                    <input type="text" name="fecha" value="${venta.fecha}" class="form-control" placeholder="Fecha">
                </div>                
                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>
        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="js/jquery-3.3.1.slim.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>