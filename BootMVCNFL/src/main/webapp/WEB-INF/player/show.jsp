<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Player</title>
</head>
<body>
    <c:if test="${not empty player}">
        <h3>${player.firstName} ${player.lastName} </h3>
<%--         <p>Release Year: ${film.releaseYear}</p>
        <p>Rating: ${film.rating}</p>
        <p>Description: ${film.description}</p>
        <p>Length: ${film.length}</p> --%>
    </c:if>
    <c:if test="${empty player}">
        <p><em>Player not found.</em></p>
    </c:if>
</body>
</html>