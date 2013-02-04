<?php

abstract class Database 
{  

  public $dsn;
  public $pdo;
  public $working_locally = true;

}


class DatabaseUser extends Database
{
    private static $instance;

  
    //remotely
     // private static $db_host  = 'localhost';
     // private static $db_port  = '3306';
     // private static $dbMemberName  = 'kandan_admin';
     // private static $dbMemberPass  = 'fishskills31';
     // private static $db_name = 'kandan_gem_tv';
   
    //locally
     private static $db_host  = 'localhost';
     private static $db_port  = '3306';
     private static $dbMemberName  = 'root';
     private static $dbMemberPass  = 'coop';
     private static $db_name = 'gem_tv_kandan_com_au';
  


   private function __construct() 
   {

      $this->dsn = 'mysql:host=' . self::$db_host . ';port=' . 
      self::$db_port .  ';dbname=' . self::$db_name;
      try 
      {
         $this->pdo = new PDO($this->dsn, self::$dbMemberName, self::$dbMemberPass);
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
    //remotely
     // private static $instance;
     // private static $db_host  = 'localhost';
     // private static $db_port  = '3306';
     // private static $dbAdminName  = 'kandan_admin';
     // private static $dbAdminPass  = 'fishskills31';
     // private static $db_name = 'kandan_gem_tv';
  
    //locally
     private static $instance;
     private static $db_host  = 'localhost';
     private static $db_port  = '3306';
     private static $dbAdminName  = 'root';
     private static $dbAdminPass  = 'coop';
     private static $db_name = 'gem_tv_kandan_com_au';
   


   private function __construct() 
   {
	
      // remote 
      // $dbAdminName = 'kandan_admin';
      // $dbAdminPass = 'fishskills31';

      // remote 
      $dbAdminName = 'root';
      $dbAdminPass = 'coop';


      $this->dsn = 'mysql:host=' . self::$db_host . ';port=' . 
                  self::$db_port .  ';dbname=' . self::$db_name;
      try 
      {
         $this->pdo = new PDO($this->dsn, self::$dbAdminName, self::$dbAdminPass);
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

