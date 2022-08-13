<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="home.do" method="GET">
		<input type="submit" value="Home">
	</form>
	<h3>Your Selected Workout</h3>
	<br>
	<br> ID: ${workout.id } ${workout}

	<form action="delete.do" method="POST">
		<input type="hidden" value="${workout.id}" name="DeleteThisWorkout" />
		<input type="submit" value="Delete" class="delete" />
	</form>
	<form action="updatePage.do" method="GET">
		<input type="hidden" value="${w.id}" name="UpdateThisWorkout" /> <input
			type="submit" value="Update" class="update" />
	</form>

</body>
</html>