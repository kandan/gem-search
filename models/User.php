<?php

require_once(LIBRARY_PATH . DS . 'Database.php');

//added for testing
require_once(LIBRARY_PATH . DS . 'db.php');

/**
 * @author Samrah
 *
 * User class for login and register purposes
 * (based on Donal's User class for the Showvotes example)
 */
class User {

  /**
   * If validation fails, errors are written to this variable.
   */
  private static $errors;

  /**
   * A method for validating the data provided in the reigstration form
   *
   * @param $data An array of POSTed data.
   * @return bool Whether the data is valid or not.
   */
  public static function register_validation(array &$data) {
    $errors = array();

    // error checks from specific to general
    // if (!isset($data['firstname']) || empty($data['firstname'])) {
    //      $errors['firstname'] = 'You must provide your first name';
    //    }
    // if (!preg_match("/^[a-z ]+$/i", $data['firstname'])) {
    //       $errors['firstname'] = 'Your name must only be characters';
    //     }
    //     // only unset the name data after checking for all errors
    //     if (isset($errors['firstname'])) {
    //       unset($data['firstname']);
    //     }
    // 	if (!preg_match("/^[a-z ]+$/i", $data['surname'])) {
    //       $errors['surname'] = 'Your name must only be characters';
    //     }
    // 
    // 	if (!isset($data['address']) || empty($data['address'])) {
    //       $errors['address'] = 'You must provide your first name';
    //     }
    // 
    // 	if (!preg_match("/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i", $data['email']))  {
    //       $errors['email'] = 'Email not valid';
    //     }
    // 	if (!isset($data['email']) || empty($data['email'])) {
    //       $errors['email'] = 'You must provide an email address';
    //     }
  
    if (!isset($data['username']) || empty($data['username'])) {
      $errors['username'] = 'You must provide your username';
      unset($data['username']);
    }
    if (!isset($data['password']) || empty($data['password'])) {
      $errors['password'] = 'You must provide your password';
      unset($data['password']);
    }
    if (!isset($data['password2']) || empty($data['password2'])) {
      $errors['password2'] = 'You must enter your password twice.';
      //unset($data['password']);
    }
	if (isset($data['password']) && (isset($data['password2']))){
        //check if both password entries match
          if (($data['password2'])!=($data['password'])) {
             $errors['password2'] = 'Your password does not match the previous entry.';
            // unset($data['password'] && $data['password_repeat']); // check if this works!
           }
        }
   
   if ($data['user_type'] == "0") {
	      $errors['user_type'] = 'You must select a type of user.';
	      //unset($data['user_type']);
	    }
	
    self::$errors = $errors;
    if (count($errors)) {
      return false;
    }
    return true;
  }

  /**
   * A method for validating the data provided on login
   *
   * @param $data An array of POSTed data.
   * @return bool Whether the data is valid or not.
   */
  public static function login_validation(array &$data) {
    $errors = array();
	
    if (!isset($data['username']) || empty($data['username'])) {
      $errors['username'] = 'You must provide your username';
      unset($data['username']);
    }
    if (!isset($data['password']) || empty($data['password'])) {
      $errors['password'] = 'You must provide your password';
      unset($data['password']);
    }

    self::$errors = $errors;
    if (count($errors)) {
      return false;
    }
    return true;
  }


  /**
   * Returns any validation errors.
   *
   * @return array An array of errors, or an empty array.
   */
  public static function errors() {
    return self::$errors;
  }

  /**
   * A method for retrieving users from the users table.
   *
   * @param array $data An optional array of key:value pairs to be used as
   *                    parameters in the SQL query.
   * @return array An array of database Objects where each Object represents a
   *               user.
   */
  public static function retrieve(array $data = array()) {
 
    $sql = 'SELECT * FROM User';
    $values = array();
    if (count($data)) {
      $count = 0;
      foreach ($data as $key => $value) {
        if ((++$count) == 1) {
          $sql .= " WHERE {$key} = ?";
          $values[] = $value;
        } else {
          $sql .= " AND {$key} = ?";
          $values[] = $value;
        }
      }
    }

    try {
      $database = DatabaseUser::getInstance();
    
      $statement = $database->pdo->prepare($sql);

      $statement->execute($values);
      // result is FALSE if no rows found
      $result = $statement->fetch();
    
      $database->pdo = null;
    } catch (PDOException $e) {
      echo $e->getMessage();
      exit;
    }
    if (count($result) > 1) {
      return $result;
    } else if (count($result) == 1) {
      return $result[0];
    } else {
      return $result;
    }
  }	
	/**
	 * Retrieving password salt for user to check on login
	 *
	 * @param $username username provided by user in login form
	 * @return $salt Password salt created when user registered
	 */
  public static function retrieve_password_salt($username) {
    $sql = "SELECT salt FROM User
						WHERE username = ?";
						
		$values = array($username);		
	
		try {
        //$database = DatabaseMember::getInstance();
	
		$pdo = new PDO(dsn, DB_USER, DB_PASS);
		
		// all errors will throw exceptions
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    	$statement = $pdo->prepare($sql);
		$statement->execute($values);
		$result = $statement->fetch();

    } catch (PDOException $e) {
      echo $e->getMessage();
      exit;
    }
		
    if ($result) {
      $salt = $result[0];
			return $salt;
		} else {
      return false;
    }
  }

	/**
	 * Retrieving hashed password for user to check on login
	 *
	 * @param $username username provided by user in login form
	 * @return $salt Password salt created when user registered
	 */
  public function retrieve_hashed_password($username) {
     $sql = "SELECT password FROM User
							WHERE username = ?";

	try {
		
		$values = array($username);
		$database = DatabaseAdmin::getInstance();

	      $statement = $database->pdo->prepare($sql);
	      $result = $statement->execute($values);
	  	  $result = $statement->fetch();
	  	        $database->pdo = null;
    } catch (PDOException $e) {
      echo $e->getMessage();
      exit;
    }
		
    if ($result) {
      $password = $result[0];
	  return $password;
		} else {
      return false;
    }

  }

  /**
   * Writes a new row to the Member table based on given data.
   *
   * @param array $data The POSTed data.
   * @return int Returns id of the inserted row (or throws an Exception)
   */

	
  public static function create_user(array $data = array()) {
	
	
	
	$sql2  = 'SELECT User (user_id, user_type, salt, username, password) VALUES (?, ?, ?, ?, ?)';
	
	
		$now = time();
		$salt = sha1($data['password'].$now);
		//$salt = sha1('salt');

		$pw = sha1($salt . $data['password']);
		
    $sql  = 'INSERT INTO User (username, salt, password, user_id) VALUES (?, ?, ?, ?)';
      $values = array(
		$data['username'],
		$salt,
		$pw,
      	$data['user_type']  
    );

    try {
      		$pdo = new PDO(dsn, DB_USER, DB_PASS);

			// all errors will throw exceptions
			$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	    	$statement = $pdo->prepare($sql);
		$return = 	$statement->execute($values);
      // $return = $statement->execute($values);
/*   
      if ($return) {
        $id = $database->pdo->lastInsertId();
      }
*/
      $database->pdo = null;
    } catch (PDOException $e) {
      echo $e->getMessage();
      exit;
    }
    if ($return) {
      return true;
    } else {
	return false;
	
}
    
  }

  /**
   * Updates an existing row in the Member table based on given data.
   *
   * @param int $id The row id of the user to update.
   * @param array $data The POSTed data.
   * @return int bool Whether update was successful or not.
   */
   
  public static function update_member($id, array $data) {
    // TODO could do a check here to ensure data exists

    $sql  = 'UPDATE members SET firstname = ?, surname = ?, email = ?, type = ?, address = ?  WHERE id = ?';
    $values = array(
      $data['firstname'],
      $data['surname'],
      $data['email'],
      $data['type'],
      $data['address'],
      $id
    );

    try {
      $database = Database::getInstance();
    
      $statement = $database->pdo->prepare($sql);
      $return = $statement->execute($values);
   
      $database->pdo = null;
    } catch (PDOException $e) {
      echo $e->getMessage();
      exit;
    }
    return $return;
  }

  /**
   * An example private method to show the @access tag for PhpDocumentor.
   *
   * @access private 
   */
  private static function sanitise() {

  }

  /**
   * Function to salt and hash password on registration
   *
   * @param $username The username of the user.
   * @param array $data The POSTed data.
   * @return Returns hashed password
   */
  function password_hash($username, $password){

    $now = time();
    $salt = hash("sha256", "{$username}{$now}");
    $pw_hash = hash("sha256", "{$salt}{$password}");

    return $pw_hash;
    
    /*	echo '<pre>';
    print_r($salt);
    echo '</pre>';

    echo '<pre>';
    print_r($pw_hash);
    echo '</pre>';
    */
  }
}
