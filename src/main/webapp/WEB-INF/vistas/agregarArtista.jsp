<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar Artista</title>
    <link rel="stylesheet" href="/css/estilos.css">
</head>
<body>
    <header>
        <h1>🎤 Agregar Artista</h1>
    </header>
    <main>
        <form:form action="/artistas/procesa/agregar" method="post" modelAttribute="artista">

            <label>Nombre:</label>
            <form:input path="nombre" type="text" placeholder="Ej: Freddie"/>
            <form:errors path="nombre" cssClass="error-msg"/>

            <label>Apellido:</label>
            <form:input path="apellido" type="text" placeholder="Ej: Mercury"/>
            <form:errors path="apellido" cssClass="error-msg"/>

            <label>Biografía:</label>
            <form:textarea path="biografia" placeholder="Breve biografía del artista" rows="4"/>
            <form:errors path="biografia" cssClass="error-msg"/>

            <button type="submit" class="btn btn-primary">Guardar artista</button>
        </form:form>
        <br>
        <a href="/artistas" class="btn btn-volver">← Volver a lista de artistas</a>
    </main>
</body>
</html>