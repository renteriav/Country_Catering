$(document).ready(function(){
	$(".tooltip_right").tooltip({ 
	position: { my: "left+15 center", at: "right center" }
	});

	$( ".dropdown" ).hover(function() {
  		$(this).children().stop( true, false )
  		$(this).find('ul').show(200);
  	});	
  	$( ".dropdown" ).mouseleave(function(){
  		$( this ).children().stop( true, true );
  		$( this ).find('ul').hide(300);
  	});
  	
});