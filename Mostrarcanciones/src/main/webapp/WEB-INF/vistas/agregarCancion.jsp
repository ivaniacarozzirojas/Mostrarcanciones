<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar Canción</title>
    <link rel="stylesheet" href="/css/estilos.css">
</head>
<body>
    <header>
        <h1>🎵 Agregar Canción</h1>
    </header>
    <main>
        <form:form action="/canciones/procesa/agregar" method="post" modelAttribute="cancion">
            
            <label>Título:</label>
            <form:input path="titulo" type="text" placeholder="Ej: Bohemian Rhapsody"/>
            <form:errors path="titulo" cssClass="error-msg"/>

            <label>Artista:</label>
            <form:input path="artista" type="text" placeholder="Ej: Queen"/>
            <form:errors path="artista" cssClass="error-msg"/>

            <label>Álbum:</label>
            <form:input path="album" type="text" placeholder="Ej: A Night at the Opera"/>
            <form:errors path="album" cssClass="error-msg"/>

            <label>Género:</label>
            <form:input path="genero" type="text" placeholder="Ej: Rock"/>
            <form:errors path="genero" cssClass="error-msg"/>

            <label>Idioma:</label>
            <form:input path="idioma" type="text" placeholder="Ej: Inglés"/>
            <form:errors path="idioma" cssClass="error-msg"/>

            <button type="submit" class="btn btn-primary">Guardar canción</button>
        </form:form>
        <br>
        <a href="/canciones" class="btn btn-volver">← Volver a lista de canciones</a>
    </main>
</body>
</html>