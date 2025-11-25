<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle receta</title>
</head>
<body>
    <h1>Detalle receta</h1>

    <c:if test="${not empty mensaje}">
        <p>
            <c:out value="${mensaje}"/>
        </p>
    </c:if>

    <c:if test="${empty mensaje}">
        <p>
            Nombre receta:
            <c:out value="${nombreReceta}"/>
        </p>

        <p>Ingredientes:</p>
        <ul>
            <c:forEach var="item" items="${ingredientes}">
                <li><c:out value="${item}"/></li>
            </c:forEach>
        </ul>
    </c:if>

    <a href="/recetas">Volver a la lista de recetas</a>

</body>
</html>
