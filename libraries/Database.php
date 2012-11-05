<?php

abstract class Database 
{  

  public $dsn;
  public $pdo;

  // public  $db_host       = 'mysql-5.kandan.com.au';
  //  public  $db_port       = '3306';

  // public $db_host       = 'localhost';
  //   public $db_port       = '8888';
  
  //public $db_name       = 'gemtv_kandan_com_au';

}


class DatabaseUser extends Database
{
  
   private static $db_host       = 'mysql-5.kandan.com.au';
        private static $db_port  = '3306';
  
	// private static $db_host       = 'localhost';
	// private static $db_port       = '8888';
  
    private static $db_name       = 'gemtv_kandan_com_au';
    private static $instance;

   private function __construct() 
   {
      
      // local 
      // $dbMemberName = 'root';
      // $dbMemberPass = 'root';

	  // Hosted Solution
	  $dbMemberName = 'mygemt1000';
	  $dbMemberPass = 'npJ7B8Bt';
		

      $this->dsn = 'mysql:host=' . self::$db_host . ';port=' . 
                  self::$db_port .  ';dbname=' . self::$db_name;
      try 
      {
         $this->pdo = new PDO($this->dsn, $dbMemberName, $dbMemberPass);
         $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      } 
      catch (PDOException $e) 
      {
         echo $e->getMessage();
         exit;
      }
 
   }
   
   public static function getInstance() 
   {
      if (!self::$instance) 
      {
         self::$instance = new DatabaseUser();
      }
      return self::$instance;
   }

}

class DatabaseAdmin extends Database
{
	
   private static $db_host       = 'mysql-5.kandan.com.au';
         private static $db_port       = '3306';
   
   // private static $db_host       = 'localhost';
   //    private static $db_port       = '8888';
  
   private static $db_name       = 'gemtv_kandan_com_au';
   private static $instance;


   private function __construct() 
   {
	
	  
	  // $dbAdminName = 'root';
	  //       $dbAdminPass = 'root';
	
	
	
      //Admin
      $dbAdminName = "mygemt1000";
            $dbAdminPass = "npJ7B8Bt";

      $this->dsn = 'mysql:host=' . self::$db_host . ';port=' . 
                  self::$db_port .  ';dbname=' . self::$db_name;
      try 
      {
         $this->pdo = new PDO($this->dsn, $dbAdminName, $dbAdminPass);
         $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		
      } 
      catch (PDOException $e) 
      {
         echo $e->getMessage();
         exit;
      }
   }

   public static function getInstance() 
   {
      if (!self::$instance) 
      {
         self::$instance = new DatabaseAdmin();
      }
      return self::$instance;
   }
}

