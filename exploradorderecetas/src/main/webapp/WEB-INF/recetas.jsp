<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de recetas</title>
</head>
<body>
	<h1>Lista de recetas</h1>
	<ul>
		<c:forEach var="nombre" items="${listaRecetas}">
		
			<li>
				<a href="/recetas/${nombre}">
					<c:out value="${nombre}"/>				
				</a>
			</li>		
		</c:forEach>
	</ul>
	<a href="/recetas">Volver a la lista de recetas</a>
</body>
</html>