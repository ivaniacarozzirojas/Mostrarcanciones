<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Detalle Artista</title>
    <link rel="stylesheet" href="/css/estilos.css">
</head>
<body>
    <header>
        <h1>🎤 Detalle de Artista</h1>
    </header>
    <main>
        <div class="info-box">
            <p><strong>Nombre:</strong> ${artista.nombre}</p>
            <p><strong>Apellido:</strong> ${artista.apellido}</p>
            <p><strong>Biografía:</strong> ${artista.biografia}</p>
            <p><strong>Fecha de creación:</strong> ${artista.fechaCreacion}</p>
            <p><strong>Fecha de actualización:</strong> ${artista.fechaActualizacion}</p>
        </div>
        <h3>Canciones:</h3>
        <ul>
            <c:forEach var="cancion" items="${artista.canciones}">
                <li>${cancion.titulo}</li>
            </c:forEach>
        </ul>
        <br>
        <a href="/artistas" class="btn btn-volver">← Volver a lista de artistas</a>
    </main>
</body>
</html>