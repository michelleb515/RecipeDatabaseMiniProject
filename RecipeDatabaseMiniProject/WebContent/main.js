/**
 * 
 */
	$(document).ready(function() {

	//Make the welcome text red
	var title = document.getElementsByTagName('h1');
	title[0].style.color="red";
	//alert("title = " + title); 
	
    //setInterval(function() {
    //    $('h1').toggleClass('blink'); 
    //  }, 350);

	//$('h1').toggleClass("blink"); 	
	
	//Make the descriptor text blue
	var par = document.getElementsByTagName('p');
	for (var i = 0; i < par.length; i++) {
		par[i].style.color="blue"; 
	}
	
	$('p').hide(); 
	$('p').fadeIn(2000); 
	
	});
