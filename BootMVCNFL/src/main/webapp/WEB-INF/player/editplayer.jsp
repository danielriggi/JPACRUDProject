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

<div class="container mt-5">
    <h3>Edit Player</h3>
    <form action="editPlayer.do" method="POST">
        <input type="hidden" name="id" value="${player.id}">

        <div class="mb-3">
            <label for="displayName" class="form-label">Display Name</label>
            <input type="text" class="form-control" id="displayName" name="displayName" value="${player.displayName}">
        </div>
        <div class="mb-3">
            <label for="firstName" class="form-label">First Name</label>
            <input type="text" class="form-control" id="firstName" name="firstName" value="${player.firstName}">
        </div>
        <div class="mb-3">
            <label for="lastName" class="form-label">Last Name</label>
            <input type="text" class="form-control" id="lastName" name="lastName" value="${player.lastName}">
        </div>
        <div class="mb-3">
            <label for="status" class="form-label">Status</label>
            <input type="text" class="form-control" id="status" name="status" value="${player.status}">
        </div>
        <div class="mb-3">
            <label for="birthDate" class="form-label">Birth Date</label>
            <input type="date" class="form-control" id="birthDate" name="birthDate" value="${player.birthDate}">
        </div>
        <div class="mb-3">
            <label for="positionGroup" class="form-label">Position Group</label>
            <input type="text" class="form-control" id="positionGroup" name="positionGroup" value="${player.positionGroup}">
        </div>
        <div class="mb-3">
            <label for="position" class="form-label">Position</label>
            <input type="text" class="form-control" id="position" name="position" value="${player.position}">
        </div>
        <div class="mb-3">
            <label for="collegeName" class="form-label">College Name</label>
            <input type="text" class="form-control" id="collegeName" name="collegeName" value="${player.collegeName}">
        </div>
        <div class="mb-3">
            <label for="height" class="form-label">Height</label>
            <input type="text" class="form-control" id="height" name="height" value="${player.height}">
        </div>
        <div class="mb-3">
            <label for="weight" class="form-label">Weight</label>
            <input type="text" class="form-control" id="weight" name="weight" value="${player.weight}">
        </div>
        <div class="mb-3">
            <label for="rookieYear" class="form-label">Rookie Year</label>
            <input type="text" class="form-control" id="rookieYear" name="rookieYear" value="${player.rookieYear}">
        </div>
        <div class="mb-3">
            <label for="headshot" class="form-label">Headshot URL</label>
            <input type="text" class="form-control" id="headshot" name="headshot" value="${player.headshot}">
        </div>
        <div class="mb-3">
            <label for="draftNumber" class="form-label">Draft Number</label>
            <input type="text" class="form-control" id="draftNumber" name="draftNumber" value="${player.draftNumber}">
        </div>

        <button type="submit" class="btn btn-primary">Update Player</button>
    </form>
</div>

</body>
</html>
