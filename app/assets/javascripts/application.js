//= require jquery
//= require jquery_ujs
//= require 'js/bootstrap.js'
//= require_self

$(function(){
	// $("input[name='bought_item_id']").click(function(){
	// 	$("input[name='bought_item_id']").attr("checked", false); 
	// 	$(this).attr("checked", true);
	// });

	// $("input[name='sold_item_id']").click(function(){
	// 	$("input[name='sold_item_id']").attr("checked", false); 
	// 	$(this).attr("checked", true);
	// });

	// whebever a checkbox is checked
	// find all other checkboxes that have the same name
	// as the checkbox that was checked, and uncheck em
	// then check that one in

	$("input:checkbox").click(function(){
		name_of_checkboxes = $(this).attr("name");
		$("input[name='"+ name_of_checkboxes + "']").attr("checked", false); 
		$(this).attr("checked", true);
	});

});