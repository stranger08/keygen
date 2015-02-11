/*
 * Temporary  comments header - validation error ( bad input ) should be reported to user in some way! 
 *		Solution - create text element after each select line where errors will be reported.
 *
 */
 
 /**
  * Internet explorer detect - this function returns true if browser is IE (any version, including 10 & 11), false - otherwise
  */
function msieversion() {

	var ua = window.navigator.userAgent;
	var msie = ua.indexOf("MSIE ");

	if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // If Internet Explorer, return version number
		return true;//alert(parseInt(ua.substring(msie + 5, ua.indexOf(".", msie))));
	else                 // If another browser, return 0
		return false;//alert('otherbrowser');
}

/**
  * IE does not allow  for form input fields to be outside of the form, so before the submission these fields are moves inside of the form (on IE only)
  */
function pass_IE_parameters(){
	
	var inputs = $("#form-wrapper").find("input[type='text']");
	$( "#form-wrapper form" ).append(inputs);
}
/**
  *
  *
  */
function hide_validation_errors(){
	
	$.each( $("#form-wrapper .form-line input") , function(index, value){
			$(value).css("background", "none");
		});
	
	$("#form-wrapper span#validation-errors").hide();
}
/**
  *
  *
  */
function display_validation_error(message){
	$("#form-wrapper span#validation-errors").html(message);
	$("#form-wrapper span#validation-errors").show();
}
/**
  * Kind of "main" method, binds, event listeners, etc are set here.
  */
$( document ).ready( function() {
	
	var l_types_count = $("#form-wrapper select option").size();// All different licence types ( select drop down content)  
	var pass_IE_params = msieversion();// true if IE( any version), false otherwise

	if ( true == pass_IE_params){

		$.getScript("html5shiv-printshiv.js", function(){
		});
		$.getScript("html5shiv.js", function(){
		})
	}
	
	$( document ).find(".rem-licence").toggle();// hide delete button for only licence selector
	
	$( "#form-wrapper span#validation-errors" ).hide();
	
	synch_options();// initial call
	
	
	/**
	  * Synchronize select drop downs with nearby text input fields
	  */
	function synch_options() {
		
		hide_validation_errors();
		/*
			update parameters
		*/
		$.each($(".form-line .inner-line"), function(i, line){
		
			var name = $( this ).find("select :selected").attr("value");
			$( this ).find("input").attr("name", name);
		});
	
		$('.form-line option').show();

		if (pass_IE_params) {
			$('.form-line span option').unwrap();
		}
		
		selected = $(".form-line select").find("option:selected");
		not_selected = $(".form-line select").find("option:not(:selected)");
		
		$.each(not_selected, function(i, not_s){
			$.each(selected, function(j, s){
				if ($(not_s).attr("value") == $(s).attr("value")){
					$( not_s ).hide();
					if (pass_IE_params){
						$( not_s).wrap("<span>").parent().hide();
					}
				}
			});
		});
	}
	/**
	  * Append new  licence select option
	  *
	  */
	$(".add-licence").bind("click", function() {
		
		var lines_container = $( $( this ).parent().parent() );
		var new_line = $( this ).parent().clone(true);
		
		$(new_line).find("input").val("");
		
		if ( lines_container.children().size() == 8 ){
			new_line.find(".add-licence").hide();
		}
		
		previous_selection = $(lines_container.children().last().find("select :not(:selected)")).filter(function() {
			return $(this).css('display') != 'none';
		}).attr("value");
		
		$(new_line).find("option[value='" + previous_selection + "']").prop("selected", true);
		
		$( lines_container ).append(new_line);
		
		$( this ).toggle();
		//$( ".form-line" ).find(".rem-licence").hide();
		
		if ( lines_container.children().size() == l_types_count ){
			new_line.find(".add-licence").hide();
		}
		new_line.find(".rem-licence").show();
			
		synch_options();
	});
	/**
	  * Remove one of licence types from a selection
	  *
	  */
	$(".rem-licence").bind("click", function() {
	
		var form_line = $( $( this ) ).parent().parent();
		
		refused_category = $( this ).parent().find("select :selected").attr("value");
		refused_category_obj = $( this ).parent().find("select :selected").attr("value");
		
		$( $( this ) ).parent().remove();
		
		form_line.children().last().find(".add-licence").show();
		/*form_line.children().last().find("select").append(refused_category_obj);*/
		
		/*if ( form_line.children().size() != 1)
			form_line.children().last().find(".rem-licence").toggle();*/
		
		synch_options();
	});
	/*
	 *	we can erase  first select drop down from the list, when it is not the only one 
	 *
	 */
	$(".add-rem-button").bind("click", function(){
		
		if ( $(".form-line").children().size() > 1 ){
			$(".form-line .rem-licence").show();
		}else{
			$(".form-line .rem-licence").hide();
		}
	});
	/**
	  * Selecting a particular item from a licence categories will change nearby input field name
	  *
	  */
	$("select").on("change", function(){
	
		//alert( $( document ).find("option:not(:selected)").text() ); 
		
		var category = $(this).find(":selected").attr("value");
		
		$( this ).parent().find("input").attr("name", category );
		
		synch_options();
	});
	/**
	  * Form validation - current requirement is that all input fields must be set
	  *
	  *
	  */
	$("#form-wrapper form").submit( function(){
		synch_options();
		var valid = true;
		
		$.each( $("#form-wrapper .form-line input") , function(index, value){
			
			if ( $(value).val()  == "" || $(value).val() <= 0){
				$(value).css("background", "red");
				valid = false;
			}
		});
		
		if (valid == true){
			if (pass_IE_params)
				pass_IE_parameters();
			return true;
		}
		else{
			display_validation_error("All fields should be with positive integer values.");
			return false;
		}
	});
	
	$(".inner-line input").on("click", function(){
		synch_options();
	});
	/**
	  * 
	  * Input fields refuses to store non-integer values
	  */
	$(".inner-line input").on("change", function(){
		if ( $.isNumeric($(this).val()) && Math.floor( $(this).val()) == $(this).val()  ){
			if ( $( this ).val() > 0 ){
			}
			else{
				$ ( this ).val("");
			}
		}
		else{
			//alert("Bad");
			$( this ).val("");
		}
	});
});