
// Fireup the plugins
$(document).ready(function(){
	
	// initialise  slideshow
	 $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });

});
/**
 * Handles toggling the navigation menu for small screens.
 */
( function() {
	var button = document.getElementById( 'topnav' ).getElementsByTagName( 'div' )[0],
	    menu   = document.getElementById( 'topnav' ).getElementsByTagName( 'ul' )[0];

	if ( undefined === button )
		return false;

	// Hide button if menu is missing or empty.
	if ( undefined === menu || ! menu.childNodes.length ) {
		button.style.display = 'none';
		return false;
	}

	button.onclick = function() {
		if ( -1 == menu.className.indexOf( 'srt-menu' ) )
			menu.className = 'srt-menu';

		if ( -1 != button.className.indexOf( 'toggled-on' ) ) {
			button.className = button.className.replace( ' toggled-on', '' );
			menu.className = menu.className.replace( ' toggled-on', '' );
		} else {
			button.className += ' toggled-on';
			menu.className += ' toggled-on';
		}
	};
} )();

//page load
$(document).ready(function()
{
	$("#alertSuccess").hide();
	$("#alertError").hide();
});

//Save button
$(document).on("click", "#btnSave", function(event){

	//clear status msges--------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("alertError").text("");
	$("#alertError").hide();

	//Form validation-------------------
	var status = validateItemForm();

	//If not valid
	if (status != true)
	{
		$("#alertError").text(status);
		$("alertError").show();
		return;
	}

	// IF valid
	var student = getStudentCard($("#txtName").val().trim(),
								$('input[name="rdoGender"]:checked').val(),
								$("#ddlYear").val());
								
	$("#colStudent").append(student);

	$("#alertSuccess").text("Saved successfully.");
	$("#alertSuccess").show();

	$("#formStudent")[0].rest();

});

function validateItemForm()
{
	//validations
	
	// NAME
	if ($("#txtName").val().trim() == "")
	{
		return "Insert Studnet name.";
	}
	
	//GENDER
	if ($('input[name="rdoGender"]:checked').length == 0)
	{
		return "Select gender.";
	}
	
	//YEAR
	if ($("#ddlYear").val() == "0")
	{
		return "Select year.";
	}
	
	return true;
}






