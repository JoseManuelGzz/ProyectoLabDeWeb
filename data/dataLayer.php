<?php
  function connect() {
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "Casa_de_Piedra";

    $connection = new mysqli($servername, $username, $password, $dbname);

    if ($connection->connect_error) {
      return null;
    } else {
      return $connection;
    }
  }

  function errors($type) {
		$header = "HTTP/1.1 ";

		switch($type) {
			case 500:	$header .= "500 Bad connection to Database";
						break;
			case 206:	$header .= "206 Wrong Credentials";
						break;
			case 406:	$header .= "406 User Not Found";
						break;
			case 417:	$header .= "417 No content set in the cookie/session";
						break;
			default:	$header .= "404 Request Not Found";
		}

		header($header);
		return array('message' => 'ERROR', 'code' => $type);
	}

  function login($email) {
    $conn = connect();

    if ($conn != null) {
    	$sql = "SELECT email, fname, lname, password FROM Users WHERE email = '$email'";
			$result = $conn->query($sql);

			if ($result->num_rows > 0) {
				while($row = $result->fetch_assoc()) {
		    	$response = array('message' => 'OK', 'fName' => $row['fName'], 'lName' => $row['lName'], 'email' => $row['username'], 'password' => $row['passwrd']);
		    }
		    $conn->close();
		    return $response;
			} else {
				$conn->close();
				return errors(406);
			}
    } else {
    	$conn->close();
    	return errors(500);
    }
  }

  function startSession($fname, $lname, $email) {
    session_start();
    if (!isset($_SESSION['firstName'])) {
    	$_SESSION['fname'] = $fname;
    }
    if (!isset($_SESSION['lastName'])) {
    	$_SESSION['lname'] = $lname;
    }
    if (!isset($_SESSION['email'])) {
    	$_SESSION['email'] = $email;
    }
  }
?>
