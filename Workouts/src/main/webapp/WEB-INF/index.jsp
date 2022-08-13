<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Workout App</title>
<jsp:include page="bootstrapHead.jsp"/>
 <link rel="stylesheet" href="../css/styles.css">
</head>
<body>
<main class="container-fluid">

<h1>Workout Log</h1>

<h3>Select What you'd like to do</h3><br>
<form action="showWorkouts.do" method="GET">
<input type="submit" value="Show all Workouts" class="button"/>
</form><br><br>
<form action="createPage.do" method="GET">
<input type="submit" value="Create Workout" class="button">
</form><br><br>
<h4>Look up Workouts by Date YYYY-MM-DD</h4>
<form action="workoutByDate.do" method="GET">
<input type="text" name="date"/>
<input type="submit" value="search" class="button"/>
</form>
<h4>Select Workout by ID</h4>
<form action="workoutById.do" method="GET" >
<input type="number" name="id" required>
<input type="submit" value="search" class="button"/>
</form>
</main>
<jsp:include page="bootstrapFoot.jsp"/>

</body>
</html>