/*
 *
 *
 */
$( document ).ready( function() {
	
	$( document ).find(".rem-licence").toggle();
	
	function synch_options() {
		/*
			update parameters
		*/
		$.each($(".form-line .inner-line"), function(i, line){
		
			var name = $( this ).find("select :selected").attr("value");
			$( this ).find("input").attr("name", name);
		});
	
		$('.form-line option').show();
		
		selected = $(".form-line select").find("option:selected");
		not_selected = $(".form-line select").find("option:not(:selected)");
		
		$.each(not_selected, function(i, not_s){
			$.each(selected, function(j, s){
				if ($(not_s).attr("value") == $(s).attr("value")){
					$( not_s ).hide();
				}
			});
		});
	}

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
		
		if ( lines_container.children().size() == 9 ){
			new_line.find(".add-licence").hide();
		}
		new_line.find(".rem-licence").show();
			
		synch_options();
	});
	
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
	
	$(".add-rem-button").bind("click", function(){
		
		if ( $(".form-line").children().size() > 1 ){
			$(".form-line .rem-licence").show();
		}else{
			$(".form-line .rem-licence").hide();
		}
	});
	
	$("select").on("change", function(){
	
		//alert( $( document ).find("option:not(:selected)").text() ); 
		
		var category = $(this).find(":selected").attr("value");
		
		$( this ).parent().find("input").attr("name", category );
		
		synch_options();
	});
	
	$(".inner-line input").on("change", function(){
		if ( $.isNumeric($(this).val()) && Math.floor( $(this).val()) == $(this).val()  ){
			//alert("Good");
		}
		else{
			//alert("Bad");
			$( this ).val("");
		}
	});
});