<?php
session_start();

require_once(LIBRARY_PATH . DS . 'Template.php');
require_once(APP_PATH . DS . 'models' . DS . 'Search.php');

class HomeController {

  public function __construct() {
    $this->template = new Template;
    $this->template->template_dir = APP_PATH . DS . 'views' . DS . 'home' . DS;
  }

  public function index() {
    $this->template->display('index.html.php', 'home');

  }

 public function login() {

	//session_start();
	if(isset($_SESSION['member'])){
		header("Location: " . DOMAIN . "loginSuccess/");
	} else {
		$this->template->display('login.html.php', 'Login');
		}
  }

 public function register() {
    $this->template->display('register.html.php' , 'Register');
  }

public function about() {
    $this->template->display('about.html.php' , 'About us');
  }

public function contact() {
    $this->template->display('contact.html.php' , 'Contact us');
  }

public function play() {
	
	$this->template->display('playvideo.html.php' , $_GET['code']);
	
}

public function playflash() {
	
	$this->template->display('playflash.html.php' , $_GET['code']);
	
}

}
