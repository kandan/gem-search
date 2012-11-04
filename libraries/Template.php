<?php
//session_start();
class Template {
  public $template_dir;
  public $title;
  public $error= array();

	// file is name of file
  // $titles is title of page
  public function display($file, $titles, $data = NULL) {

	$this->title = $titles;
	//$this->error = $error;

   // Allows you to pass information from your controller
   // To your view easily.
   if(!is_null($data) && is_array($data))
   {
      extract($data);
   }

    $template = $this;
  
    include($this->template_dir . $file);
  }
	
	
	public function showTitle(){
		
		return $title;
	}
	
	public function displayErrors(){
		
		return $this->error;
	}
	
	
	public function displayJustFile($file) {
	    $template = $this;
	    $path = $this->template_dir . $file;
	    // include("$this->template_dir$file");
	    include($this->template_dir . $file);
	  }

}
