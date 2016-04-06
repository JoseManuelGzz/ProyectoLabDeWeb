<?php
  header('Content-type: application/json');
  require_once __DIR__ . '/dataLayer.php';

  $action = $_POST['action'];

  switch($action) {
    case 'LOGIN': loginAction();
          break;
    case 'REGISTER': registerAction();
          break;
  }

  # Action to login the current user credentials and redirect it to home.html
	function loginUser() {
		$email = $_POST['email'];
		$password = $_POST['password'];

		# Verify if the user currently exists in the Database
		$result = validateCredentials($email);

		if($result['status'] == 'COMPLETE') {
			$decryptedPassword = decryptPassword($result['password']);

			# Compare the decrypted password with the one provided by the user
			if($decryptedPassword === $password) {
				$response = array('status' => 'COMPLETE', 'username' => $result['username']);

				# Start the session
				startSession($email, $result['username']);

				echo json_encode($response);
			}
			else {
				die(json_encode(errors(206)));
			}
		}
		else {
			die(json_encode($result));
		}
	}

	# Action to register a user
	function registerUser() {
		$email = $_POST['email'];

		# Verify that the user doesn't exist in the database
		$result = userInDatabase($email);

		if ($result['status'] == 'COMPLETE') {
			$fName = $_POST['fName'];
            $lName = $_POST['lName'];

			$password = encryptPassword();

			# Make the insertion of the new user to the Database
			$result = registerNewUser($email, $fName, $lName, $password);

			# Verify that the insertion was successful
			if ($result['status'] == 'COMPLETE') {

				# Start the session
				startSession($email, $fName . $lName);

				echo json_encode($result);
			}
			else
			{
				# Something went wrong while inserting the new user
				die(json_encode($result));
			}
		}
		else
		{
			# Username already exists
			die(json_encode($result));
		}
	}
    
    # Action to encrypt the password of the user
	function encryptPassword() {
		$userPassword = $_POST['password'];

	    $key = "bcb04b7e103a0cd8b5476305";

	    $key_size =  strlen($key);
	    
	    $plaintext = $userPassword;

	    $iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
	    $iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);
	    
	    $ciphertext = mcrypt_encrypt(MCRYPT_RIJNDAEL_128, $key, $plaintext, MCRYPT_MODE_CBC, $iv);
	    $ciphertext = $iv . $ciphertext;
	    
	    $userPassword = base64_encode($ciphertext);

	    return $userPassword;
	}

	# Action to decrypt the password of the user
	function decryptPassword($password) {
		
		$key = "bcb04b7e103a0cd8b5476305";

	    $iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
	    $iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);
    	
	    $ciphertext_dec = base64_decode($password);
	    $iv_dec = substr($ciphertext_dec, 0, $iv_size);
	    $ciphertext_dec = substr($ciphertext_dec, $iv_size);

	    $password = mcrypt_decrypt(MCRYPT_RIJNDAEL_128, $key, $ciphertext_dec, MCRYPT_MODE_CBC, $iv_dec);

	   	$count = 0;
	   	$length = strlen($password);

	    for ($i = $length - 1; $i >= 0; $i --) {
	    	if (ord($password{$i}) === 0) {
	    		$count ++;
	    	}
	    }

	    $password = substr($password, 0,  $length - $count);
	    
	    return $password;
	}
    
    # Action to set the cookies
	function cookieSet() {
		$email = $_POST["email"];
		setcookie("email", $email, time() + 3600*24*60);
		echo json_encode(array("status" => "COMPLETE"));
	}

	# Action to get the current cookies if they exist
	function cookieGet()
	{
		if (isset($_COOKIE['email']))
		{
			echo json_encode(array('email' => $_COOKIE['email']));   	    
		}
		else
		{
			# Cookie not set yet
		    die(json_encode(errors(417)));
		}
	}

	# Action to set the initial values of the session
	function startSession($email, $username) {
		// Starting the session
	    session_start();
		$_SESSION['email'] = $email;
	    $_SESSION['username'] = $username;
    }

    # Action to get the current session data
    function getSession() {
    	session_start();
    	if (isset($_SESSION['email']) && $_SESSION['username']) {
    		echo json_encode(array("email" => $_SESSION['email'], "username" => $_SESSION['username']));
    	}
    	else {
    		echo json_encode(errors(417));
    	}
    }
?>
