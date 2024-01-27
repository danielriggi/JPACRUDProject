<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Player</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../../styles.css">
</head>
<body>
	<c:if test="${not empty player}">
		<div class="player-container">
			<div class="player-info">
				<h3>${player.firstName} ${player.lastName}</h3>
				<p>Height: ${player.height}</p>
				<p>Weight: ${player.weight}</p>
				<p>Birth Date: ${player.birthDate}</p>
				<p>Position: ${player.position}</p>
				<p>College Name: ${player.collegeName}</p>
				<p>Draft Number: ${player.draftNumber}</p>
				<p>Rookie Year: ${player.rookieYear}</p>
			</div>
			<div class="player-headshot">
				<c:if test="${not empty player.headshot}">
					<img src="${player.headshot}"
						alt="${player.firstName} ${player.lastName} headshot">
				</c:if>
			</div>
		</div>
	</c:if>
	<c:if test="${empty player}">
		<p>
			<em>Player not found.</em>
		</p>
	</c:if>
</body>
</html>