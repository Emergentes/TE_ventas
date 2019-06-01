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
                <jsp:param name="opcion" value="productos" />
            </jsp:include>
            <br/>
            <br/>
            <form action="ProductoControlador" method="post">
                <input type="hidden" name="id" value="${producto.id}" />
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" name="nombre" value="${producto.nombre}" class="form-control" placeholder="Escriba nombre del producto">
                </div>
                <div class="form-group">
                    <label for="descripcion">Descripcion</label>
                    <input type="text" name="descripcion" value="${producto.descripcion}" class="form-control" placeholder="Descripción del producto">
                </div>
                <div class="form-group">
                    <label for="precio">Precio</label>
                    <input type="number" step="0.01" name="precio" value="${producto.precio}" class="form-control" placeholder="Escriba el precio">
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