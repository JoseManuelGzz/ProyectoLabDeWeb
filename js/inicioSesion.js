$(document).ready(function() {
    // Function when the login button is clicked.
	$("#signInButton").on("click", function() {

		var jsonObject = {
			"action": "LOGIN",
			"email": $("#email").val(),
			"password": $("#password").val()
		};

		$.ajax({
			type: "POST",
			url: "data/applicationLayer.php",
			dataType: "json",
			data: jsonObject,
			headers: {"Content-Type": "application/x-www-form-urlencoded"},
			success: function(jsonData) {
				alert("Welcome " + jsonData.username + "!");
			},
			error: function(errorMsg) {
				alert(errorMsg.statusText);
			}
		});
	});
});