<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Add page to allow the user to add to the recipe database. -->
<!DOCTYPE html>
<html>
<head>
<!-- Added CSS to make the web page look pretty. -->
<style>
body {
	background-color: lightgrey;
}

a {
	background-color: grey;
	box-shadow: 0 5px 0 darkgrey;
	color: white;
	padding: .25em .5em;
	position: relative;
	text-decoration: none;
}

a:hover {
	background-color: grey;
}

a:active {
	box-shadow: none;
	top: 5px;
}
</style>
<meta charset="ISO-8859-1">
<title>Adding Recipe to Database</title>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
</head>
<body>
	<!-- Create a form with all the instance variables from RecipeInfo to allow the user to add to the database. -->
	<form action="addRecipeServlet" method="post">
		Recipe Name: <input type="text" name="recipeName"
			onkeyup="enableButtons()"> <br> Recipe Type: <input
			type="text" name="recipeType" onkeyup="enableButtons()"> <br>
		Date Added: <input type="text" name="month" placeholder="mm" size="4">
		<input type="text" name="day" placeholder="dd" size="4">, <input
			type="text" name="year" placeholder="yyyy" size="4"
			onkeyup="enableButtons()"> <br> Calories: <input
			type="text" name="calories" onkeyup="enableButtons()"> <br>
		Prep Time: <input type="text" name="prepTime"
			onkeyup="enableButtons()"> <br /> 
		<input class="rcpbtn" type="submit" value="Add Recipe">
	</form>
	<br />
	<script>
		type = "text/javascript"
		function enableButtons() {
			$('.rcpbtn').prop('disabled', false);
		}
	</script>

	<!-- Link to return to the recipe's database. -->
	<p>
		<a href="viewAllRecipesServlet">Return Back to the List of Recipes</a>
	</p>
</body>
<script type="text/javascript" src="recipes.js"></script>
</html>