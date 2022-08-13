<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Workout App</title>
</head>
<body>
<h1>Welcome to the best workout logging app!</h1><br><br>

<h3>Please select what you would like to do.</h3><br>
<form action="createPage.do" method="GET">
<input type="submit" value="Create Workout">
</form><br>
<form action="showWorkouts.do" method="GET">
<input type="submit" value="Show all Workouts"/>
</form>
<br>
<h4>Select workouts by date YYYY-MM-DD</h4>
<form action="workoutByDate.do" method="GET">
<input type="text" name="date"/>
<input type="submit" value="search"/>
</form>
<h4>Select Workout by ID</h4>
<form action="workoutById.do" method="GET">
<input type="number" name="id">
<input type="submit" value="search"/>
</form>

</body>
</html>