<?php
session_start();

require_once(LIBRARY_PATH . DS . 'Template.php');
require_once(APP_PATH . DS . 'models' . DS . 'User.php');
//require_once(APP_PATH . DS . 'models' . DS . 'Member.php');

class RegisterController {

	public function __construct() {
		$this->template = new Template;
		$this->template->template_dir = APP_PATH . DS . 'views' . DS . 'home' . DS;
	}

	public function register() {
		$this->template->user = User::retrieve();
		$this->template->display('register.html.php' , 'Register');
		
		
	}

	
	
	public function checkUser() {

	// must have some POSTed data
	// could check for referer here
	
	if (!isset($_POST) || empty($_POST)) {
		//$this->template->error = 'error';
		header("Location: ".DOMAIN. "register/"); //path back to register form
		//TODO update bootstrap.php
		exit;
	}
	// TODO need to validate data
	$data = array(
		'username' => $_POST['username'],
		'password' => $_POST['password'],
		'password2' => $_POST['password2'],
		'user_type' => $_POST['user_type'],
		
		);
	
	if (!User::register_validation($data)) {
		// store errors in session and redirect
		// TODO Sessions
		//$_SESSION['user'] = $data;
		$_SESSION['user']['error'] = User::errors();
		$_SESSION['member'] = $data;
		header("Location: ".DOMAIN. "registerFail/"); //path back to login form
		unset($_SESSION['user']['errors']);
		exit;
	}
	
	if (User::retrieve(array('username' => $data['username']))){
		
		$_SESSION['user']['error'] = array('username'=> 'Sorry username already in use');
			$_SESSION['member'] = $data;
		header("Location: ".DOMAIN. "registerFail/");
		exit;
	}
	
	// if (Member::retrieve(array('email' => $data['email']))){
	// 		
	// 		$_SESSION['user']['error'] = array('email'=> 'Sorry email already in use');
	// 			$_SESSION['member'] = $data;
	// 		header("Location: ".DOMAIN. "registerFail/");
	// 		exit;
	// 	}
	
	//$memberId = User::create_member($data);
//	if($memberId){
		
		if(!User::create_user($data)){
			//display error: incorrect password

			$_SESSION['user']['error'] = array('username'=> 'Sorry user not added to database');
			//$this->template->errors = $_SESSION['user']['errors'];
			header("Location: ".DOMAIN. "registerFail/");

		} else{
			//proceed 
			//$_SESSION['member']['id'] = $memberId;
			header("Location: ".DOMAIN. "registerSuccess/");
			exit;
		}
	// } else {
	// 	$_SESSION['user']['error'] = array('mainError'=> 'Failed to insert member.');
	// 
	// 	header("Location: ".DOMAIN. "registerFail/");
	// 
	// }

}
	
	public function registerFail(){


      if (isset($_SESSION['user']['error'])) {
		$this->template->error = $_SESSION['user']['error'];
		unset($_SESSION['user']['error']);
		
		$this->template->user = $_SESSION['member'];
		unset($_SESSION['member']);

      }

		$this->template->display('register.html.php', 'Register Fail');
   }
	
	public function addUser(){
		
		



	}

	public function success(){
		
	
		$user = '';//User::retrieve(array('user_id' => $_SESSION['user']['id']));
		$this->template->useradded = $user;
		unset($_SESSION['member']['id']);
		
			$this->template->display('useradded.html.php', 'Register Success');


	}
	
}