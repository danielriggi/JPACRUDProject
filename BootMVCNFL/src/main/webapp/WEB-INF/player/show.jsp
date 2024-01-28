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
<link rel="stylesheet" type="text/css" href="../styles.css">
</head>
<body>
    <c:if test="${not empty playerList}">
        <div class="container">
            <div class="row">
                <c:forEach items="${playerList}" var="player">
                    <div class="col-md-6 mb-4">
                        <div class="player-container border p-3 position-relative">
                            <div class="player-headshot position-absolute top-0 end-0">
                                <c:if test="${not empty player.headshot}">
                                    <img src="${player.headshot}"
                                        alt="${player.firstName} ${player.lastName} headshot" class="img-fluid player-image">
                                </c:if>
                            </div>
                            <div class="player-info">
                                <h3>${player.displayName}</h3>
                                <p>Status: ${player.status}</p>
                                <p>Height: ${player.height} inches</p>
                                <p>Weight: ${player.weight} lbs</p>
                                <p>Birth Date: ${player.birthDate}</p>
                                <p>Position: ${player.position}</p>
                                <p>College Name: ${player.collegeName}</p>
                                <p>Draft Number: ${player.draftNumber}</p>
                                <p>Rookie Year: ${player.rookieYear}</p>
                            </div>
                            <div class="player-buttons mt-2">
                                <form action="editPlayer.do" method="get" class="d-inline">
                                    <input type="hidden" name="editPlayerId" value="${player.id}">
                                    <button type="submit" class="btn btn-primary mr-2">Update Player</button>
                                </form>
                                <form action="deletePlayer.do" method="POST" class="d-inline">
                                    <input type="hidden" name="deletePlayerId" value="${player.id}">
                                    <button type="submit" class="btn btn-danger">Delete Player</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </c:if>
  <c:if test="${empty playerList}">
    <div class="row">
      <div class="col-md-12 text-center">
        <p class="display-2"><em>Player not found.</em></p>
      </div>
    </div>
  </c:if>
</body>

</html>