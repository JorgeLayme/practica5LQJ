<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Formulario de Estudiante</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Formulario de Estudiante</h1>
    <form action="MainController" method="post">
        <input type="hidden" name="id" value="${estudiante.id}" />
        <div>
            <label for="nombre">Nombre:</label>
            <input type="text" name="nombre" id="nombre" value="${estudiante.nombre}" required />
        </div>
        <div>
            <label for="apellidos">Apellidos:</label>
            <input type="text" name="apellidos" id="apellidos" value="${estudiante.apellidos}" required />
        </div>
        <div>
            <label for="email">Email:</label>
            <input type="email" name="email" id="email" value="${estudiante.email}" required />
        </div>
        <div>
            <label for="fechaNacimiento">Fecha de Nacimiento:</label>
            <input type="date" name="fechaNacimiento" id="fechaNacimiento" value="${estudiante.fechaNacimiento}" required />
        </div>
        <div>
            <button type="submit">Guardar</button>
            <a href="MainController?action=list">Cancelar</a>
        </div>
    </form>
</body>
</html>

