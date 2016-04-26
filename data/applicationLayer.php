<?php
  header('Content-type: application/json');
  require_once __DIR__ . '/dataLayer.php';

  $action = $_POST['action'];

  switch($action) {
    case 'LOGIN': loginUser();
          break;
    case 'REGISTER': registerUser();
          break;
    case 'PRODUCTFILTER': productFilter();
          break;
  	case 'LOGOUT': logoutUser();
  		  break;
  	case 'GET_SESSION': getSession();
  		  break;
  	case 'SET_COOKIE': cookieSet();
  	      break;
  	case 'GET_COOKIE': cookieGet();
  		  break;
    case 'ADD_FAVORITE': addToFavorites();
        break;
    case 'REMOVE_FAVORITE': removeFromFavorites();
        break;
    case 'DISPLAY_FAVORITES': displayFavorites();
        break;
    case 'PREVIEW': placePreview();
    	break;
  }


	function placePreview(){
		#{'nameP': name, 'imageP':imgurl, 'priceP': price };
		$name = $_POST['nameP'];
		$image = $_POST['imageP'];
		$price = $_POST['priceP'];

		if($name !=null && $image != null && $price != null){
			$response = $arrayName = array('status' =>'COMPLETE' ,'name' => $name, 'image' => $image, 'price' => $price );
			echo json_encode($response);
		} else {
			die(json_encode(errors(306)));
		}
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
				die(json_encode(errors(306)));
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
			$username = $_POST['username'];

			$password = encryptPassword();

			# Make the insertion of the new user to the Database
			$result = registerNewUser($email, $username, $password);

			# Verify that the insertion was successful
			if ($result['status'] == 'COMPLETE') {

				# Start the session
				startSession($email, $username);

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

  function productFilter() {
    $category = $_POST['category'];

	$result = getProducts($category);

    if ($result['message'] == 'OK') {
		echo json_encode($result);
	} else {
		header($result['header']);
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
    	if (isset($_SESSION['email']) && isset($_SESSION['username'])) {
    		echo json_encode(array("email" => $_SESSION['email'], "username" => $_SESSION['username']));
    	}
    	else {
    		die(json_encode(errors(417)));
    	}
    }

	# Action to make logout
	function logoutUser() {
		session_start();
		if (isset($_SESSION['email']) && isset($_SESSION['username'])) {
			unset($_SESSION['email']);
			unset($_SESSION['username']);
			session_destroy();

			echo json_encode(array('success' => 'Session deleted'));
    	}
    	else {
    		die(json_encode(errors(417)));
    	}
	}
	
	# Action to get favorites
	function displayFavorites() {
		$email = $_POST['email'];
		
		# Get favorites from database
		$result = getFavorites($email);

		if ($result['status'] == 'COMPLETE') {
			echo json_encode($result);
		}
		else {
			# Couldn't get favorites
			die(json_encode($result));
		}
	}
	
	# Action to add a favorite
	function addToFavorites() {
		$email = $_POST['email'];
		$product = $_POST['product'];

		$result = addFavorite($email, $product);

		if ($result['status'] == 'COMPLETE') {
			echo(json_encode(array('success' => 'Favorite correctly added')));
		}
		else
		{
			# Username already exists
			die(json_encode($result));
		}
	}
	
	# Action to remove a favorite
	function removeFromFavorites() {
		$email = $_POST['email'];
		$product = $_POST['product'];

		$result = removeFavorite($email, $product);

		if ($result['status'] == 'COMPLETE') {
			echo(json_encode(array('success' => 'Product correctly removed from favorites.')));
		}
		else
		{
			# Username already exists
			die(json_encode($result));
		}
	}
?>
