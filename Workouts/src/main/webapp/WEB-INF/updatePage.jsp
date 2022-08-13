<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Workout</title>
</head>
<body>
<form action="home.do" method="GET">
<input type="submit" value="Home">
</form>

<h2>Workout to Update</h2>
<form action="update.do" method="POST">
Date: <input type="text" name="date" value="${workout.date}"/><br> 
<h5>Split day</h5>
Push: <input type="radio" name="split" value="Push"/><br>
Pull: <input type="radio" name="split" value="Pull"/><br>
Legs: <input type="radio" name="split" value="Legs"/><br>

Exercise: <input type="text" name="exersize" value="${workout.exersize}"/><br> 
Sets: <input type="number" name="set" value="${workout.set}"/><br> 
Reps: <input type="number" name="rep" value="${workout.rep}"/><br> 
Weight: <input type="number" name="weight" value="${workout.weight}"/><br> 
Notes: <input type="text" name="notes" value="${workout.notes}"/><br> 
<input type="submit" value="Update Workout"/>
</form>
</body>
</html>