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
<div class="container mt-5">
    <h1>Add Player</h1>
    <form action="addPlayer.do" method="POST">
        <div class="row">
            <div class="col-md-6">
                <div class="mb-3">
                    <label for="displayName" class="form-label">Display Name</label>
                    <input type="text" class="form-control" id="displayName" name="displayName" required>
                </div>
                <div class="mb-3">
                    <label for="firstName" class="form-label">First Name</label>
                    <input type="text" class="form-control" id="firstName" name="firstName" required>
                </div>
                <div class="mb-3">
                    <label for="lastName" class="form-label">Last Name</label>
                    <input type="text" class="form-control" id="lastName" name="lastName" required>
                </div>
                <div class="mb-3">
                    <label for="status" class="form-label">Status</label>
                    <input type="text" class="form-control" id="status" name="status">
                </div>
                <div class="mb-3">
                    <label for="birthDate" class="form-label">Birth Date</label>
                    <input type="date" class="form-control" id="birthDate" name="birthDate">
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label for="positionGroup" class="form-label">Position Group</label>
                    <input type="text" class="form-control" id="positionGroup" name="positionGroup">
                </div>
                <div class="mb-3">
                    <label for="position" class="form-label">Position</label>
                    <input type="text" class="form-control" id="position" name="position">
                </div>
                <div class="mb-3">
                    <label for="height" class="form-label">Height in Inches</label>
                    <input type="text" class="form-control" id="height" name="height">
                </div>
                <div class="mb-3">
                    <label for="weight" class="form-label">Weight</label>
                    <input type="text" class="form-control" id="weight" name="weight">
                </div>
                <div class="mb-3">
                    <label for="rookieYear" class="form-label">Rookie Year</label>
                    <input type="text" class="form-control" id="rookieYear" name="rookieYear">
                </div>
            </div>
        </div>
        <div class="mb-3">
            <label for="headshot" class="form-label">Headshot URL</label>
            <input type="text" class="form-control" id="headshot" name="headshot">
        </div>
        <div class="mb-3">
            <label for="draftNumber" class="form-label">Draft Number</label>
            <input type="text" class="form-control" id="draftNumber" name="draftNumber">
        </div>
        <button type="submit" class="btn btn-primary">Add Player</button>
    </form>
</div>
</body>
</html>
