<?php


require_once(LIBRARY_PATH . DS . 'Database.php');

class SearchResult
{
	
	
	
	public static function getSearchResult($code, $category, $version, $status)
	{
		
     $database = DatabaseUser::getInstance();

	$admin = false;

	if (isset($_SESSION['user']['user_id']) && $_SESSION['user']['user_id'] == 1) { $admin = true;  }

	  //start query
     $query = "SELECT adverts.id, adverts.code, category.category_id, category.category, adverts.notes, adverts.date, version.version, version.version_id, status.status_id, status.status
			   FROM adverts, category, status, version
	 		   WHERE  adverts.category  = category.category_id
	           AND adverts.version = version.version_id
	  		   AND adverts.status = status.status_id";
     
     if (isset($category) && !empty($category))
                $query .= " AND category.category_id = '$category'";
      
     if (isset($version) &&  !empty($version))
                $query .= " AND version.version_id = '$version'";
            
     if (isset($status) && !empty($status) && $status !=0 ) {
			
			$query .= " AND status.status_id = '$status'";
			
			} else  {
			
				if (!$admin)	
				{
					$query .= " AND status.status_id < 4";
			
				} else {
				
					//$query .= " AND status.status_id < 4";
				}
			
			
			}
                

     if (isset($code) && !empty($code))
          		$query .= " AND adverts.code LIKE '%$code%'";

	  //complete the query	
	  
      $query .= " Order BY adverts.id DESC";
		
		  $statement = $database->pdo->prepare($query);
		  $statement->execute();
		  $result = $statement->fetchAll(PDO::FETCH_ASSOC);
		  return $result;
	}
}