<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NFL Player Database</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body class="text-center">
    <h1 class="mt-5">NFL Player Database</h1>

    <br>
    <br>

    <div class="home">

        <div class="row justify-content-center">
            <div class="col-md-6">
                <form action="getPlayer.do" method="GET">
                    <div class="input-group mb-3">
                        <input type="text" name="playerId" class="form-control" placeholder="Search by Player ID" />
                        <button type="submit" class="btn btn-primary">Show Player</button>
                    </div>
                </form>
            </div>
        </div>

        <br>

        <div class="row justify-content-center">
            <div class="col-md-6">
                <form action="getPlayers.do" method="GET">
                    <div class="input-group mb-3">
                        <input type="text" name="playerName" class="form-control" placeholder="Search by Player Name" />
                        <button type="submit" class="btn btn-primary">Show Players</button>
                    </div>
                </form>
            </div>
        </div>

        <br>

        <form action="addPlayer.do" method="get">
            <button type="submit" class="btn btn-primary">Add New Player</button>
        </form>

        <br>

        <form action="updateplayer.jsp" method="get">
            <button type="submit" class="btn btn-primary">Update Player</button>
        </form>

        <ul class="list-group mt-4">
            <div class="row">
                <c:forEach items="${playerList}" var="player">
                    <div class="col-md-4">
                        <li class="list-group-item"><a
                                href="<c:url value='/getPlayer.do?playerId=${player.id}'/>">${player.firstName}
                                ${player.lastName}</a></li>
                    </div>
                </c:forEach>
            </div>
        </ul>
    </div>
</body>
</html>