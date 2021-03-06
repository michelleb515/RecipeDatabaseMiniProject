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
<title>Add an Ingredient to a Recipe</title>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
</head>
<body>
	<!-- Create a form with all the instance variables from RecipeInfo to allow the user to add to the database. -->
	Recipe Name:	<input id="in1" type="text" value="${recipeName }" readonly>
	<form action="addIngredientServlet" method="post">
		<input type=hidden name="recipeIDToAdd" value="${recipeToEdit}">
		Ingredient Quantity: <input type="text" name="ingredientQuantity" onkeyup="enableButtons()">
		<br> Ingredient Name: <input type="text" name="ingredientName" onkeyup="enableButtons()">
		<br> Ingredient Sort Order: <input type="text"
			name="ingredientSortOrder" onkeyup="enableButtons()"> 
			<br> 
			<input class="ingrbtn" type="submit" value="Add Ingredient">
	</form>
	<script>type="text/javascript"
		function enableButtons() {
		$('.ingrbtn').prop('disabled',false);
	}</script>
	
	<br />
	<!-- Link to return to the recipe's database. -->
	<p>
		<a href="viewAllRecipesServlet">Return Back to the List of Recipes</a>
	</p>
</body>
<script type="text/javascript" src="ingredients.js"></script>
</html>