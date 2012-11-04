<?php

require_once(LIBRARY_PATH . DS . 'Database.php');

class Search
{
   public static function getCategoryName()
   {

      $database = DatabaseUser::getInstance();
      //echo "ddd: $cate_id";
      $sql = "SELECT * FROM Category";

      $statement = $database->pdo->prepare($sql);
      $statement->execute();

      $catagories = $statement->fetchAll(PDO::FETCH_ASSOC);
	  
	  //var_dump($catagories);

      return $catagories;

   }

	public static function getAdverts()
	   {

	      $database = DatabaseUser::getInstance();
	      $sql = "SELECT * FROM adverts";

	      $statement = $database->pdo->prepare($sql);
	      $statement->execute();

	      $adverts = $statement->fetchAll(PDO::FETCH_ASSOC);

	      return $adverts;

	   }
	
	
}
?>
