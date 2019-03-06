/**
 * 
 */
$(document).ready(function() {

	//Disable ingredient buttons.  They will be re-enabled when a radio button is selected. 
	$('.ingrbtn').prop('disabled',true);

	
	var in1 = document.getElementById('in1'); 
	in1.style.color="blue";
	in1.style.backgroundColor="lightgray"; 
	
	//var sort = document.getElementById('sort');
	//alert(sort); 
	//sort.style.color="gray"; 
	
	//When a ingredient ID is selected, change the color of all the ingreadients	
	
	//function changeSibs() {
//		alert("in ChangeSibs"); 
		//var rb = document.getElementById('ingr1');
		//rb.siblings.css('color','#ABABAB#'); 
	//}
	
	//var rb = document.getElementById('ingr1'); 
	//alert("rb = " + rb); 
//	$('.radio').click,function() {
	//	alert("you clicked the button!"); 
		//$(this).siblings.css('color','#ABABAB'); 
	//}
	//$('.ingr').css('color','#EFEFEF');
	
});
