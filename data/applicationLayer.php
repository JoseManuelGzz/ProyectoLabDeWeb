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

  function loginAction() {
		$email = $_POST['email'];
		$pass = $_POST['password'];

		$result = login($email);

		if($result['message'] == 'OK') {
	    $key = pack('H*', "bcb04b7e103a05afe34763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3");

	    $iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
	    $iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);

    	# --- DECRYPTION ---
	    $ciphertext_dec = base64_decode($result['password']);
	    $iv_dec = substr($ciphertext_dec, 0, $iv_size);
	    $ciphertext_dec = substr($ciphertext_dec, $iv_size);
	    $plaintext_dec = mcrypt_decrypt(MCRYPT_RIJNDAEL_128, $key, $ciphertext_dec, MCRYPT_MODE_CBC, $iv_dec);

	   	$count = 0;
	   	$length = strlen($plaintext_dec);

	    for($i = $length - 1; $i >= 0; $i --) {
	    	if(ord($plaintext_dec{$i}) === 0) {
	    		$count ++;
	    	}
	    }

	    $plaintext_dec = substr($plaintext_dec, 0,  $length - $count);

		  if($plaintext_dec === $pass) {
		    	$response = array('fname' => $result['fname'], 'lname' => $result['lname']);
			    # Starting the sesion (At the server)
		    	startSession($result['fname'], $result['lname'], $result['email']);
			    # Setting the cookies
				  setcookie("cookieUsername", $result['email']);
			    echo json_encode($response);
			} else {
				die(json_encode(errors(206)));
			}
		} else {
			header($result['header']);
			die(json_encode($result));
		}
	}
?>
