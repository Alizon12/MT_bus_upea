<%
    if (session.getAttribute("login") != "ok"){
    response.sendRedirect("login.jsp");
    }
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet"  >

        <title>BIENVENIDO A BUSESE UPEA</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>
    <body>
        <div class="container" >
            <h1>FORMULARIO DE ENCARGADO</h1>
            <jsp:include page="META-INF/menu.jsp" >
                <jsp:param name="opcion"  value="encargado"/>

            </jsp:include>
            <br>
            <a  href="EncargadoControlador" class="btn btn-info btn-info" ><i class="fa fa-undo" aria-hidden="true"></i>CANCELAR</a>
            <br><br>
            <form action="EncargadoControlador" method="POST">
                <input type="hidden" name="id_en" value="${encargado.id_en}">
                <div class="form-group">
                    <label for="" class="form-label">NOMBRE</label>
                    <input type="text" class="form-control"  name="nombre" value="${encargado.nombre}" placeholder="Escriba el nombre de encargado" >
                </div>
                <div class="form-group">
                    <label for="" class="form-label">AREA CARRERAS</label>
                    <select name="id_carrera" class="form-control">
                        <option value="">-- selecvione --</option>
                        <c:forEach var="item" items="${lista_carreras}">
                            <option value="${item.id_c}"
                                    <c:if test="${encargado.id_carrera == item.id_c}" >
                                        selected
                                    </c:if>>
                                > ${item.area} </option>
                            </c:forEach> 
                    </select>
                </div>
                <div class="form-group">
                    <label for="" class="form-label">CELULAR</label>
                    <input type="text" class="form-control"  name="celular" value="${encargado.celular}" placeholder="Escriba el numero de celular" >
                </div>
                <div class="form-group">
                    <label for="" class="form-label">FUNCION</label>
                    <input type="text" class="form-control"  name="funcion" value="${encargado.funcion}" placeholder="Escriba la funcion de desenpeño en upea" >
                </div>
                <br>
                <button type="submit" class="btn btn-primary">ENVIAR</button>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
