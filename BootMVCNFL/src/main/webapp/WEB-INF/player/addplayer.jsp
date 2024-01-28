<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Player</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../../styles.css">
</head>
<body>
<h1>Add Player</h1>
	<form action="addPlayer.do" method="POST">
		<div class="add-player">
			Display Name: <input type="text" name="displayName" required /> <br>
			First Name: <input type="text" name="firstName" required /> <br>
			Last Name: <input type="text" name="lastName" required /> <br>
			Status: <input type="text" name="status" /> <br>
			Birth Date: <input type="text" name="birthDate" /> <br>
			Position Group: <input type="text" name="positionGroup"  /> <br>
			Position: <input type="text" name="position"  /> <br>
			Height in Inches: <input type="text" name="height" /> <br>
			Weight: <input type="text" name="weight" /> <br>
			Rookie Year: <input type="text" name="rookieYear"/> <br>
			Headshot URL: <input type="text" name="headshot" /> <br>
			Draft Number: <input type="text" name="draftNumber" /> <br>

			<input type="submit" value="Add Player" />
		</div>

	</form>
</body>
</html>