<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create</title>
</head>
<body>
<form action="home.do" method="GET">
<input type="submit" value="Home">
</form>
<h1>Add a workout</h1>

<form action="createWorkout.do" method="POST">
Date: <input type="text" name="date"/>
<h5>Split day</h5>
Push: <input type="radio" name="split" value="Push"/><br>
Pull: <input type="radio" name="split" value="Pull"/><br>
Legs: <input type="radio" name="split" value="Legs"/><br>
Exercise: <input type="text" name="exersize" required/><br>
Sets: <input type="number" name="set"/><br>
Reps: <input type="number" name="rep"/><br>
Weight: <input type="number" name="weight"/><br>
Notes: <input type="text" name="notes"/><br>
<input type="submit" value="Add Workout"/>

</form>
</body>
</html>