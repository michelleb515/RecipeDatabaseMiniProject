<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page that allows the user to view all the database's ingredients and choose to do things with them.. -->
<!DOCTYPE html>
<html>
<head>
	<!-- Added CSS to make the web page look pretty. -->
	<style>
	body 
	{
  		background-color: lightgrey;
	}
	a 
	{
   		background-color: grey;
  		box-shadow: 0 5px 0 darkgrey;
  		color: white;
  		padding: .25em .5em;
  		position: relative;
  		text-decoration: none;
	}
	a:hover 
	{
  		background-color: grey;
	}
	a:active 
	{
  		box-shadow: none;
  		top: 5px;
	}
	</style>
	<meta charset="ISO-8859-1">
	<title>Recipe Ingredients</title>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
</head>
<body>
	<!-- Create a form and table to allow the user to edit the information in the database. -->
	<form method = "post" action = "navigationServlet">
	    Recipe Name:  <input id="in1" type = "text" value = "${recipeName }" readonly>
		<table>
			<!-- List out the ingredients for the user and allow them to select an item. -->
			<c:forEach items="${requestScope.allIngredients}" var="currentIngredient">
				<tr><td class="ingr"><input type="radio" id="ingr1" onclick="enableButtons()" name="ingredientID" value="${currentIngredient.ingredientID}">Ingredient ID: ${currentIngredient.ingredientID}</td></tr>
			 	<tr><td class="ingr">&nbsp;&nbsp;&nbsp;&nbsp; Ingredient Quantity: ${currentIngredient.ingredientQuantity}</td></tr>
			 	<tr><td class="ingr">&nbsp;&nbsp;&nbsp;&nbsp; Ingredient Name: ${currentIngredient.ingredientName}</td></tr>
			 	<tr><td class="ingr">&nbsp;&nbsp;&nbsp;&nbsp; Ingredient Sort Number: ${currentIngredient.ingredientSortNumber}</td></tr>
			</c:forEach>
		</table>
		<script>type="text/javascript"
			function enableButtons() {
			$('.ingrbtn').prop('disabled',false);
		}</script>

		<br />
		<!-- Create buttons to allow the user to edit, delete, or add. -->
		<input class="ingrbtn" type = "submit" value = "Edit Ingredient" name = "doThisToRecipe">
		<input class="ingrbtn" type = "submit" value = "Delete Ingredient" name = "doThisToRecipe">
		<input type = "submit" value = "Add Ingredient" name = "doThisToRecipe">
		<input type = "hidden" name="recipeIDToView" value="${recipeIDToView}"> 
		
	</form>
	<br />
	<!-- Links to go to the ingredients or back to the homepage -->
	<p><a href ="index.html">Go back to the Homepage</a></p>
</body>
<script type="text/javascript" src="ingredients.js"></script>
</html>