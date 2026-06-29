<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Canción</title>
    <link rel="stylesheet" href="/css/estilos.css">
</head>
<body>
    <header>
        <h1>🎵 Editar Canción</h1>
    </header>
    <main>
        <form:form action="/canciones/procesa/editar/${cancion.id}" method="post" modelAttribute="cancion">
            
            <label>Título:</label>
            <form:input path="titulo" type="text"/>
            <form:errors path="titulo" cssClass="error-msg"/>

			<label>Artista:</label>
			<form:select path="artista">
			    <option value="">-- Selecciona un Artista --</option>
			    <c:forEach var="art" items="${listaArtistas}">
			        <option value="${art.id}" ${art.id == cancion.artista.id ? 'selected' : ''}>
			            ${art.nombre}
			        </option>
			    </c:forEach>
			</form:select>
			<form:errors path="artista" cssClass="error-msg"/>

            <label>Álbum:</label>
            <form:input path="album" type="text"/>
            <form:errors path="album" cssClass="error-msg"/>

            <label>Género:</label>
            <form:input path="genero" type="text"/>
            <form:errors path="genero" cssClass="error-msg"/>

            <label>Idioma:</label>
            <form:input path="idioma" type="text"/>
            <form:errors path="idioma" cssClass="error-msg"/>

            <button type="submit" class="btn btn-primary">Guardar cambios</button>
        </form:form>
        <br>
        <a href="/canciones" class="btn btn-volver">← Volver a lista de canciones</a>
    </main>
</body>
</html>