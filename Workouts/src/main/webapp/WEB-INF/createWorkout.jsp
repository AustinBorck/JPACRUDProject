<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create</title>
<jsp:include page="bootstrapHead.jsp"/>
 <link rel="stylesheet" href="../css/styles.css">

</head>
<body>
<main class="container-fluid">

<form action="home.do" method="GET" class="homebutton">
<input type="submit" value="Home">
</form>
<h1>Add a workout</h1>

<form action="createWorkout.do" method="POST">
Date: <input type="date" name="date"/> <br>
<h5>Split day</h5>
Push: <input type="radio" name="split" value="Push"/><br>
Pull: <input type="radio" name="split" value="Pull"/><br>
Legs: <input type="radio" name="split" value="Legs"/><br> 
<input type="text" name="exersize" required placeholder="Exercise"/><br> <br>
<input type="number" name="set" placeholder="Sets"/><br> <br>
<input type="number" name="rep" placeholder="Repetitions"/><br> <br>
<input type="number" name="weight" placeholder="Weight"/><br> <br>

<textarea name="notes" cols="25" rows="5" placeholder="Notes..."> 
</textarea>

<!-- <input type="text" name="notes"/>-->

<br>
<input type="submit" value="Add Workout"/>

</form>
</main>
</body>
</html>