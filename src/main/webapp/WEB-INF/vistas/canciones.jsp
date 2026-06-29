<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Canciones</title>
    <link rel="stylesheet" href="/css/estilos.css">
</head>
<body>
    <header>
        <h1>🎵 Lista de Canciones</h1>
    </header>
    <main>
        <table>
            <thead>
                <tr>
                    <th>Título</th>
                    <th>Artista</th>
                    <th>Detalle</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="cancion" items="${listaCanciones}">
                    <tr>
                        <td>${cancion.titulo}</td>
                        <td>${cancion.artista.nombre} ${cancion.artista.apellido}</td>
                        <td><a href="/canciones/detalle/${cancion.id}">Detalle</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
		<a href="/canciones/formulario/agregar/0" class="btn btn-primary">+ Agregar canción</a>
		<a href="/artistas" class="btn btn-primary">🎤 Ir a artistas</a>
    </main>
</body>
</html>