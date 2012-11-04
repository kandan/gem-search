<?php
session_start();

require_once(LIBRARY_PATH . DS . 'Template.php');
require_once(APP_PATH . DS . 'models' . DS . 'User.php');
//require_once(APP_PATH . DS . 'models' . DS . 'Cart.php');

/**
* Contoller for Login.
*
* @author Samrah
*/
class LoginController {

	public function __construct() {
		$this->template = new Template;
		$this->template->template_dir = APP_PATH . DS . 'views' . DS . 'home' . DS;
	}	

    public function index() {
		$this->template->display('index.html.php', 'home');
	}

	/**
	* Checks that the username and password provided in login form match to a record in database and password is correct.
	*
	*/
    public function checkUser() {

	// must have some POSTed data
	// could check for referer here
	
	if (!isset($_POST) || empty($_POST))  {
	//	$_SESSION['user']['error']['username'] = 'Please enter your Username and Password';
		header("Location:" .DOMAIN. "login/"); //path back to login form
	
		exit;
	}
	// TODO need to validate data
	$data = array(
		'username' => $_POST['username'],
		'password' => $_POST['password']);

	if (!User::login_validation($data)) {
		// store errors in session and redirect
		// TODO Sessions
		//$_SESSION['user'] = $data;
		$_SESSION['user']['error'] = User::errors();
		header("Location: ".DOMAIN. "loginFail/"); //path back to login form
		exit;
	}
	// TODO new to do
	// see if user exits in database
	$user = User::retrieve(array('username' => $_POST['username']));
	
	if($user){
		//get salt from database from table user with the username posted.
		$salt = User::retrieve_password_salt($_POST['username']);
		// add password posted to variable $pw
        $pw = $_POST['password'];
		// hash it
		$hashed_pwd = sha1($salt . $pw);
		// get users password from the database
		$db_pwd = User::retrieve_hashed_password($_POST['username']);
		//compare the two
		if(!($hashed_pwd == $db_pwd)){
			//display error: incorrect password
		// add error to session to send back to login page
		$_SESSION['user']['error'] = array('username' => 'Incorrect password');
			header("Location: ".DOMAIN. "loginFail/");
			exit;
			
			
		} else{
		// passwords match redirect to search page;
		//add session to
		$_SESSION['user_type'] = $user['user_id'];
		// admin user_type
		if ($user['user_id'] == '1'){
			$_SESSION['user'] = $user;
			header("Location: ".DOMAIN. "search/");
				exit;
		//anything else 
		} else {
			$_SESSION['user'] = $user;
			$_SESSION['user']['cart'] = array();
			header("Location: ".DOMAIN. "search/");
				exit;
		}	
		}
	} else {
		
		$_SESSION['user']['error'] = array('username'=> 'Sorry, no user with that username');
		
		header("Location: ".DOMAIN. "loginFail/");

	}

}

   public function login(){


      if (isset($_SESSION['user']['error'])) {
		$this->template->error = $_SESSION['user']['error'];
		unset($_SESSION['user']['error']);

	

		//$_SESSION = array();

      }

			$this->template->display('login.html.php', 'sorry');
   }

   public function addUser(){





   }

/**
* 
* Function for send to successful login page to start searching, editing, buying items.
* @author Michael
*
*/


public function success(){
	
	$_SESSION['member']['cart'] = array();
	$this->template->display('success.html.php', 'Success');



}

public function logout(){
	$_SESSION = array();
    if (ini_get('session.use_cookies')) {
      $params = session_get_cookie_params();
      setcookie(session_name(), '', time() - 42000,
        $params['path'], $params['domain'],
        $params['secure'], $params['httponly']
      );
    }
    session_destroy();

    header("Location: ". DOMAIN . "login/");
    exit;
}






}

