<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Workout</title>
<jsp:include page="bootstrapHead.jsp"/>
 <link rel="stylesheet" href="../css/styles.css">

</head>
<body>
<main class="container-fluid">

<form action="home.do" method="GET" class="homebutton">
<input type="submit" value="Home">
</form>
<h2>Your added workout</h2>
<div class="workoutdata">

<table class="table table-striped table-hover">
		<thead class="table-dark">
			<tr>
				<th>ID</th>
				<th>Date</th>
				<th>Split Day</th>
				<th>Exercise</th>
				<th>Sets</th>
				<th>Reps</th>
				<th>Weight</th>
				<th>Notes</th>
			</tr>
		</thead>
		<tbody>
				<tr>
					<td>${workout.id}</td>
					<td>${workout.date}
					<td>${workout.split}
					<td>${workout.exersize}</td>
					<td>${workout.set}</td>
					<td>${workout.rep}</td>
					<td>${workout.weight}</td>
					<td>${workout.notes}</td>

</tr></tbody></table></div>
</main>
</body>
</html>