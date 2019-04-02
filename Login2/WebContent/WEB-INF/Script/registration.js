$(document).ready(function()
		{$("span").click(function() {
  $(this).toggleClass("fa-eye fa-eye-slash");
  var input = $($(this).attr("toggle"));
  if (input.attr("type") == "text") {
    input.attr("type", "password");
  } else {
    input.attr("type", "text");
  }
})});

var check = function() {
	  if (document.getElementById('password').value ==
	    document.getElementById('confirm_password').value && document.getElementById('confirm_password').value!='' ) {
	    document.getElementById('message').style.color = 'green';
	    document.getElementById('message').innerHTML = 'matching';
	  } else {
	    document.getElementById('message').style.color = 'red';
	    if(document.getElementById('confirm_password').value!='' )
	    document.getElementById('message').innerHTML = 'not matching';
	  }
	}