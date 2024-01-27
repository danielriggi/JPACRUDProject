<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Player Finder</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
	<form action="getPlayer.do" method="GET">
		Player ID: <input type="text" name="playerId" /> <input type="submit"
			value="Show Player" />
	</form>
	<h1>PlayerList</h1>
	<ul>
		<c:forEach items="${playerList}" var="player">
			<li><a
				href="<c:url value='/getPlayer.do?playerId=${player.id}'/>">${player.firstName}
					${player.lastName}</a></li>
		</c:forEach>
	</ul>
</body>
</html>