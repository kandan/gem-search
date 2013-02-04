<?php

require_once(LIBRARY_PATH . DS . 'Database.php');

//added for testing
//equire_once(LIBRARY_PATH . DS . 'db.php');

/**
 * @author Samrah
 *
 * Advert class for creating new adverts
 */
class Advert {

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
  public static function validates(array &$data) {
    $errors = array();
	
  
    if (!isset($data['code']) || empty($data['code'])) {
      $errors['code'] = 'You must provide a code';
      unset($data['code']);
    }
    if (!isset($data['category']) || empty($data['category'])) {
      $errors['category'] = 'You must provide a category';
      unset($data['category']);
    }
	if (!isset($data['version']) || empty($data['version'])) {
      $errors['version'] = 'You must provide a version';
      unset($data['version']);
    }	
	if (!isset($data['status']) || empty($data['status'])) {
      $errors['status'] = 'You must provide a status';
      unset($data['status']);
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
  public static function addAdvert_validation(array &$data) {
    $errors = array();
	
    if (!isset($data['code']) || empty($data['code'])) {
      $errors['code'] = 'You must provide your code';
      unset($data['code']);
    }
    if (!isset($data['category']) || empty($data['category'])) {
      $errors['category'] = 'You must provide your category';
      unset($data['category']);
    }
	if (!isset($data['status']) || empty($data['category'])) {
      $errors['category'] = 'You must provide your category';
      unset($data['category']);
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
 
    $sql = 'SELECT * FROM adverts';
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

    	// echo '<pre>';
    	// 		echo var_dump($result);
    	// 	    echo '</pre>';

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
   * Writes a new row to the Member table based on given data.
   *
   * @param array $data The POSTed data.
   * @return int Returns id of the inserted row (or throws an Exception)
   */

	
  public static function create_advert(array $data = array()) {
	// get next id from table to add a unique id to new advert
	
	
    $sql  = 'INSERT INTO adverts (code, category, version, status, notes) VALUES (?, ?, ?, ?, ?)';
      $values = array(
	// id last row of table
		
		$data['code'],
		$data['category'],
      	$data['version'],
		$data['status'],
		$data['notes']
    );

    try {
      		$pdo = new PDO(dsn, DB_USER, DB_PASS);

			// all errors will throw exceptions
			$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	    	$statement = $pdo->prepare($sql);
			$result = 	$statement->execute($values);
			$id = $pdo->lastInsertId();
            $database->pdo = null;

    } catch (PDOException $e) {
      echo $e->getMessage();
      exit;
    }
    if ($result) {
      return $id;
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
   
  public static function update_advert($id, array $data) {

    $sql  = 'UPDATE adverts SET code = ?, category = ?, version = ?, status = ?, notes = ?  WHERE id = ?';
    $values = array(
      $data['code'],
      $data['category'],
      $data['version'],
      $data['status'],
	  $data['notes'],
      $id
    );

    try {
      $database = DatabaseUser::getInstance();
      $statement = $database->pdo->prepare($sql);
      $result = $statement->execute($values);
      $database->pdo = null;
    } catch (PDOException $e) {
      echo $e->getMessage();
      exit;
    }
    return $result;
  }

  
}
