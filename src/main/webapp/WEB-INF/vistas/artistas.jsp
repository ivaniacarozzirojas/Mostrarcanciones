<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Artistas</title>
    <link rel="stylesheet" href="/css/estilos.css">
</head>
<body>
    <header>
        <h1>🎤 Lista de Artistas</h1>
    </header>
    <main>
        <ul>
            <c:forEach var="artista" items="${listaArtistas}">
                <li>
                    <a href="/artistas/detalle/${artista.id}">${artista.nombre} ${artista.apellido}</a>
                </li>
            </c:forEach>
        </ul>
        <br>
        <a href="/artistas/formulario/agregar/0" class="btn btn-primary">+ Agregar artista</a>
        <br><br>
        <a href="/canciones" class="btn btn-volver">🎵 Ir a canciones</a>
    </main>
</body>
</html>