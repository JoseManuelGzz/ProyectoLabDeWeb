$(document).ready(function() {
    // Function when the login button is clicked.
	$("#signInButton").on("click", function() {

		var jsonObject = {
			"action": "LOGIN",
			"email": $("#emailLogin").val(),
			"password": $("#passLogin").val()
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
        
        // Function when the register button is clicked.
	$("#registerButton").on("click", function() {
		// Definition of variables.
		var isEmail = true;
		var usernameExists = true;
		var goodPassword = true;
        
		// Validation for email.
		var email = $("#emailRegister").val();
		var emailLength = email.length;
		var pointer = 0;
		while(pointer < emailLength && email.charAt(pointer) !== '@') {
			pointer++;
		}
		if(pointer < emailLength && email.charAt(pointer) === '@' && pointer !== 0) {
			pointer += 2;
			while(pointer < emailLength && email.charAt(pointer) !== '.') {
				pointer++;
			}
			if(pointer < emailLength - 1 && email.charAt(pointer) === '.') {
				isEmail = true;
			}
			else{
				isEmail = false;
			}
		}
		else {
			isEmail = false;
		}

		// Validation for username.
		var username = $("#fullnameRegister").val();
		if(username === ""){
			usernameExists = false;
		}

		// Validation for password.
		var password = $("#passRegister").val();
		if(password.length < 6) {
			goodPassword = false;
		}

		// If everything was right.
		if(isEmail && usernameExists && goodPassword) {

			var jsonObject = {
				"action": "REGISTER",
				"username": username,
				"email": email,
				"password": password
			};

			$.ajax({
				type: "POST",
				url: "data/applicationLayer.php",
				dataType: "json",
				data: jsonObject,
				headers: {"Content-Type": "application/x-www-form-urlencoded"},
				success: function() {
					alert("Welcome " + username + "!");
				},
				error: function(errorMsg) {
					alert(errorMsg.statusText);
				}
			});
		}
	});
    
});