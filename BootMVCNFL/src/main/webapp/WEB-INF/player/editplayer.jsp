<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Player</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../../styles.css">
</head>
<body>

	<h3>Edit Player</h3>
	<form action="editPlayer.do" method="POST">
    <input type="hidden" name="id" value="${player.id}">

    Display Name: <input type="text" name="displayName" value="${player.displayName}" /> <br>
    First Name: <input type="text" name="firstName" value="${player.firstName}" /> <br>
    Last Name: <input type="text" name="lastName" value="${player.lastName}" /> <br>
    Status: <input type="text" name="status" value="${player.status}" /> <br>
    Birth Date: <input type="date" name="birthDate" value="${player.birthDate}" /> <br>
    Position Group: <input type="text" name="positionGroup" value="${player.positionGroup}" /> <br>
    Position: <input type="text" name="position" value="${player.position}" /> <br>
    College Name: <input type="text" name="collegeName" value="${player.collegeName}" /> <br>
    Height: <input type="text" name="height" value="${player.height}" /> <br>
    Weight: <input type="text" name="weight" value="${player.weight}" /> <br>
    Rookie Year: <input type="text" name="rookieYear" value="${player.rookieYear}" /> <br>
    Headshot URL: <input type="text" name="headshot" value="${player.headshot}" /> <br>
    Draft Number: <input type="text" name="draftNumber" value="${player.draftNumber}" /> <br>

    <input type="submit" value="Update Player" />

	</form>

</body>
</html>