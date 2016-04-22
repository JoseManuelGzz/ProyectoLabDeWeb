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
			case 306:	$header .= "306 Wrong Credentials";
						break;
            case 315:   $header .= "315 Products not found for category";
                        break;
			case 406:	$header .= "406 User Not Found";
						break;
            case 409:	$header .= "409 Your action was not completed correctly, please try again later";
                        break;
            case 412:   $header .= "412 Email already in use";
                        break;
			case 417:	$header .= "417 No content set in the cookie/session";
						break;
			case 420: 	$header .= "420 Could not add the product as a favorite";
						break;
			case 423: 	$header .= "423 Could not remove the product from favorites";
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
        	$sql = "SELECT Username, Password FROM Users WHERE Email = '$email'";
			$result = $conn->query($sql);

			# If the current user exists
			if ($result->num_rows > 0) {
				$row = $result -> fetch_assoc();
				$conn -> close();

				return array("status" => "COMPLETE", "username" => $row['Username'], "password" => $row['Password']);
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
    function registerNewUser($email, $username, $password) {
    	# Open and validate the Database connection
    	$conn = connect();

        if ($conn != null)
        {
        	$sql = "INSERT INTO Users(Email, Username, Password) VALUES ('$email', '$username', '$password')";
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

    function getProducts($category) {
      $conn = connect();

  		if($conn != null) {
            if($category == 'Todas') {
  			    $sql = "SELECT * FROM Products";
            }
            else {
                $sql = "SELECT * FROM Products WHERE category = '$category'";
            }

  			$result = $conn->query($sql);

            $response = array("message" => "OK");

  			while($row = $result->fetch_assoc()) {
  				array_push($response, array('price' => $row['price'],
                   'image_url' => $row['image_url'], 'name' => $row['name']));
  			}

  			$conn->close();
  			return $response;
  		} else {
  			$conn->close();
  			return errors(315);
  		}
    }
	
	function getFavorites($email) {
		$conn = connect();

  		if($conn != null) {
            $sql = "SELECT P.name, P.price, P.category, P.image_url FROM Products P, Favorites F WHERE P.id = F.product_id AND'$email' = F.user_email";

  			$result = $conn->query($sql);

  			if ($result->num_rows > 0) {
				
				$response = array('status' => 'COMPLETE');
				
				while($row = $result->fetch_assoc()) {
					array_push($response, array('name' => $row['name'], 'price' => $row['price'], 'category' => $row['category'], 'url' => $row['image_url']));
				}
				
				$conn->close();
				return $response;
			}
			else {
				$conn->close();
				return errors(315);
			}
  		}
		else {
  			$conn->close();
  			return errors(500);
  		}
	}
	
	function addFavorite($email, $product) {
		$conn = connect();

        if ($conn != null)
        {
			$sql = "SELECT id FROM Products WHERE name = '$product'";

  			$result = $conn->query($sql);

  			if ($result->num_rows > 0) {
				$row = $result -> fetch_assoc();
				
				$id = $row['id'];
				
				$sql = "INSERT INTO Favorites(user_email, product_id) VALUES ('$email', '$id')";
				
				if (mysqli_query($conn, $sql))
				{
					$conn->close();
					return array("status" => "COMPLETE");
				}
				else
				{
					$conn->close();
					return errors(420);
				}
			}
			else
			{
				$conn->close();
				return errors(420);
			}
        }
        else
        {
        	# Connection to Database was not successful
        	$conn->close();
        	return errors(500);
        }
	}
	
	function removeFavorite($email, $product) {
		$conn = connect();

        if ($conn != null)
        {
			$sql = "SELECT id FROM Products WHERE name = '$product'";

  			$result = $conn->query($sql);

  			if ($result->num_rows > 0) {
				$row = $result -> fetch_assoc();
				
				$id = $row['id'];
				
				$sql = "DELETE FROM Favorites WHERE user_email = '$email' AND product_id = '$id'";
				
				if ($conn->query($sql) === TRUE)
				{
					$conn->close();
					return array("status" => "COMPLETE");
				}
				else
				{
					$conn->close();
					return errors(423);
				}
			}
			else
			{
				$conn->close();
				return errors(423);
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
