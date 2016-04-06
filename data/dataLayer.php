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
            case 409:	$header .= "409 Your action was not completed correctly, please try again later";
						break;
            case 412:   $header .= "412 Email already in use";
                        break;
			case 417:	$header .= "417 No content set in the cookie/session";
						break;
			default:	$header .= "404 Request Not Found";
		}

		header($header);
		return array('message' => 'ERROR', 'code' => $type);
	}

    function validateCredentials($email) {
		# Open and validate the Database connection
    	$conn = connect();

        if ($conn != null) {
        	$sql = "SELECT Fname, Lname, Password FROM Users WHERE Email = '$email'";
			$result = $conn->query($sql);
			
			# If the current user exists
			if ($result->num_rows > 0) {
				$row = $result -> fetch_assoc();
				$conn -> close();

				return array("status" => "COMPLETE", "username" => $row['Fname'] . $row['Lname'], "password" => $row['Password']);
			}
			else {
				# The user doesn't exists in the Database
				$conn->close();
				return errors(406);
			}
        }
        else {
        	# Connection to Database was not successful
        	$conn->close();
        	return errors(500);
        }
	}

	# Query to find out if the user already exist in the Database
    function userInDatabase($email) {
    	# Open and validate the Database connection
    	$conn = connect();

        if ($conn != null) {
        	$sql = "SELECT * FROM Users WHERE Email = '$email'";
			$result = $conn->query($sql);

			if ($result->num_rows > 0) {
				# The current user already exists
				$conn->close();
				return errors(412);
			}
			else {
				$conn->close();
				return array("status" => "COMPLETE");
			}
        }
        else {
        	# Connection to Database was not successful
        	$conn->close();
        	return errors(500);
        }
    }

    # Query to insert a new user to the Database
    function registerNewUser($email, $fName, $lName, $password) {
    	# Open and validate the Database connection
    	$conn = connect();

        if ($conn != null)
        {
        	$sql = "INSERT INTO User(Email, Fname, Lname, Password) VALUES ('$email', '$fName', '$lName', '$password')";		
			if (mysqli_query($conn, $sql)) 
	    	{
	    		$conn->close();
			    return array("status" => "COMPLETE");
			} 
			else 
			{
				$conn->close();
				return errors(409);
			}
        }
        else
        {
        	# Connection to Database was not successful
        	$conn->close();
        	return errors(500);
        }
    }
?>
