$(document).ready(function(){	
	$('.phone').mask('(999) 999-9999');
	$('.zip').mask('99999');
	$('.price').priceFormat({clearPrefix: true});
	$('.proportion').priceFormat({prefix: ''});
});