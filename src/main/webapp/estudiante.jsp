<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Estudiantes</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Lista de Estudiantes</h1>
    <a href="MainController?action=new">Agregar Nuevo Estudiante</a>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Email</th>
                <th>Fecha de Nacimiento</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="estudiante" items="${lista}">
                <tr>
                    <td>${estudiante.id}</td>
                    <td>${estudiante.nombre}</td>
                    <td>${estudiante.apellidos}</td>
                    <td>${estudiante.email}</td>
                    <td>${estudiante.fechaNacimiento}</td>
                    <td>
                        <a href="MainController?action=edit&id=${estudiante.id}">Editar</a>
                        <a href="MainController?action=delete&id=${estudiante.id}" onclick="return confirm('¿Está seguro de que desea eliminar este estudiante?');">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
