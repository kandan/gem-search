<?php
session_start();

require_once(LIBRARY_PATH . DS . 'Template.php');
require_once(APP_PATH . DS . 'models' . DS . 'SearchResult.php');


class SearchResultController 
{
  
  public function __construct() 
  {
    $this->template = new Template;
    $this->template->template_dir = APP_PATH . DS . 'views' . DS . 'search' . DS;
  }

  public function searchResult() 
  {
    $code = $_GET['code'];
    $category = $_GET['category'];
    $version = $_GET['version'];
 	$status = $_GET['status'];
	
	//$sr = new SearchResult();
	$result = SearchResult::getSearchResult($code, $category, $version, $status);
	
	if($result == 0)
  	{
	   print "Sorry no results";
	}
	else
	{
	   $data['result'] = $result;	
	//var_dump($data);
       $this->template->display('searchResult.html.php' , 'Search Result', $data);
	}
  }
  
}