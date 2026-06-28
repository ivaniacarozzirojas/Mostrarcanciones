<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Detalle Canción</title>
    <link rel="stylesheet" href="/css/estilos.css">
</head>
<body>
    <header>
        <h1>🎵 Detalle de Canción</h1>
    </header>
    <main>
        <c:choose>
            <c:when test="${cancion == null}">
                <div class="error">
                    <p>La canción no se encuentra en nuestra lista.</p>
                </div>
            </c:when>
            <c:otherwise>
                <div class="info-box">
                    <p><strong>Título:</strong> ${cancion.titulo}</p>
                    <p><strong>Artista:</strong> ${cancion.artista}</p>
                    <p><strong>Álbum:</strong> ${cancion.album}</p>
                    <p><strong>Género:</strong> ${cancion.genero}</p>
                    <p><strong>Idioma:</strong> ${cancion.idioma}</p>
                    <p><strong>Fecha de creación:</strong> ${cancion.fechaCreacion}</p>
                    <p><strong>Fecha de actualización:</strong> ${cancion.fechaActualizacion}</p>
                </div>
            </c:otherwise>
        </c:choose>
        <a href="/canciones" class="btn btn-volver">← Volver a lista de canciones</a>
    </main>
</body>
</html>