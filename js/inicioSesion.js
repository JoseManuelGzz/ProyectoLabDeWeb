$(document).ready(function() {
	$.ajax({
        type: "POST",
        url: "data/applicationLayer.php",
        dataType: "json",
        data: {'action': 'GET_SESSION'},
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
        success: function(jsonData) {
			window.location.href = "tienda.html";
        },
        error: function(errorMsg) {
            console.log(errorMsg.statusText);
        }
    });

	$.ajax({
        type: "POST",
        url: "data/applicationLayer.php",
        dataType: "json",
        data: {'action': 'GET_COOKIE'},
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
        success: function(jsonData) {
			$("#emailLogin").val(jsonData.email);
        },
        error: function(errorMsg) {
            console.log(errorMsg.statusText);
        }
    });

    // Function when the login button is clicked.
	$("#signInButton").on("click", function() {

		var rememberMe = $("#recuerdameCheckbox").is(":checked");

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
				if(rememberMe) {
					$.ajax({
						type: "POST",
						url: "data/applicationLayer.php",
						dataType: "json",
						data: { 'action': 'SET_COOKIE', 'email': $("#emailLogin").val() },
						headers: {"Content-Type": "application/x-www-form-urlencoded"},
						success: function(jsonData2) {
							console.log(jsonData2.status);
						},
						error: function(errorMsg) {
							console.log(errorMsg.statusText);
						}
					});
				}

				swal({
					title: "Login successful!",
					text: "Welcome " + jsonData.username + "!",
					type: "success"
					},
					function(){window.location.replace('tienda.html');
				});
			},
			error: function(errorMsg) {
				swal("Oops...", errorMsg.statusText, "error");
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
				success: function(jsonData) {
					swal({
						title: "Login successful!",
						text: "Welcome " + jsonData.username + "!",
						type: "success"
						},
						function(){window.location.replace('tienda.html');
					});
				},
				error: function(errorMsg) {
					swal("Oops...", errorMsg.statusText, "error");
				}
			});
		}
	});

});
