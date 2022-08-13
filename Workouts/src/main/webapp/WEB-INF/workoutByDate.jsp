<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Workouts by date</title>
<jsp:include page="bootstrapHead.jsp"/>
 <link rel="stylesheet" href="../css/styles.css">

</head>
<body>
<main class="container-fluid">

<form action="home.do" method="GET">
<input type="submit" value="Home">
</form>
<h3>All the workouts on that day</h3><br>
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
			<c:forEach var="w" items="${workouts}">
				<tr>
					<td>${w.id}</td>
					<td>${w.date}
					<td>${w.split}
					<td>${w.exersize}</td>
					<td>${w.set}</td>
					<td>${w.rep}</td>
					<td>${w.weight}</td>
					<td>${w.notes}</td>
						<td><form action="delete.do" method="POST">
							<input type="hidden" value="${w.id}" name="DeleteThisWorkout" />
							<input type="submit" value="Delete" class="delete" />
						</form></td>
						<td><form action="updatePage.do" method="GET">
							<input type="hidden" value="${w.id}" name="UpdateThisWorkout" />
							<input type="submit" value="Update" class="update" />
						</form></td>
				</tr>

			</c:forEach>
		</tbody>
	</table>
	</main>
</body>
</html>