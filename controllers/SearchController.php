<?php
session_start();
/* search function controller */
require_once(LIBRARY_PATH . DS . 'Template.php');
require_once(APP_PATH . DS . 'models' . DS . 'Search.php');


class SearchController 
{

  public function __construct() 
  {
    $this->template = new Template;
    $this->template->template_dir = APP_PATH . DS . 'views' . DS . 'search' . DS;
  }

  public function search() 
  {
	  
	$adverts = Search::getAdverts();
	//var_dump($manu);
	$data['adverts'] = $adverts;
		
	//$data['manu'] = $manu;
	
	//var_dump($data);
    $this->template->display('search.html.php' , 'Search Gem TV adverts', $data);
  }
  
}