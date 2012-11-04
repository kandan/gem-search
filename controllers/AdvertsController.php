<?php
session_start();
/* search function controller */
require_once (LIBRARY_PATH . DS . 'Template.php');
require_once (APP_PATH . DS . 'models' . DS . 'Advert.php');
require_once (APP_PATH . DS . 'models' . DS . 'Search.php');

class AdvertsController {

	public function __construct() {
		$this->template = new Template;
		$this->template->template_dir = APP_PATH . DS . 'views' . DS . 'adverts' . DS;
	}

	public function advert() {
		if (!isset ($_SESSION['user'])) {
			header("Location: " . DOMAIN . "login/");
			exit;
		}

		$adverts = Search :: getAdverts();
		//var_dump($manu);
		$data['adverts'] = $adverts;

		// get id of last row
		$lastId = $data;
		if (isset ($_SESSION['advert']['error'])) {
			$this->template->error = $_SESSION['advert']['error'];
			unset ($_SESSION['advert']['error']);
		}
		if (isset ($_SESSION['advert'])) {
			$this->template->advert = $_SESSION['advert'];
			unset ($_SESSION['advert']);
		}
		$this->template->display('advert.html.php', 'Add advert', $lastId);
	}

	public function edit($id) {
		// must be logged in to access this page
		if (!isset ($_SESSION['user'])) {
			header("Location: " . DOMAIN . "login/");
			exit;
		}
		if ($_SESSION['user']['user_id'] > 1 && $_SESSION['user']['id'] != $id) {
			// this user is trying to access a different user
			header("Location: " . DOMAIN . "login/");
			exit;
		}

	//	$this->template->id = $id;

		// get the thing with id = $id
		$adverts = Advert::retrieve(array (
			'id' => $id
		));
		if (count($adverts) >= 1) {
			$this->template->advert = $adverts;
		}
		// $this->template->id = $id;
		// 	$this->template->advert = $adverts;

		$this->template->display('edit.html.php', 'Edit Advert', $adverts);
	}

	public function update($id) {

		// must have some POSTed data
		// could check for referer here
		if (!isset ($_POST) || empty ($_POST)) {
			header("Location: " . DOMAIN . "advert/");
			exit;
		}

		// TODO need to validate data
		if (!Advert :: validates($_POST)) {
			// store errors in session and redirect
			//$_SESSION['advert'] = $data;
			$_SESSION['advert']['error'] = Advert :: errors();
			header("Location: " . DOMAIN . "advert/");
			exit;
		}

		// update advert
		// 

		$adUpdated = Advert :: update_advert($id, $_POST);

		if ($adUpdated) {

			header("Location: " . DOMAIN . "updateComplete?id={$id}");
			exit;
		} else {

		}

	}

	public function displayUpdated() {
		$id = $_GET['id'];
		// get the thing with id = $id
		$adverts = Advert :: retrieve(array (
			'id' => $id
		));
		if (count($adverts) > 0) {
			$this->template->advert = $adverts;
		}

		$this->template->display('updated.html.php', 'Update Advert', $id);

	}

	public function show($id) {
		$id = Advert :: retrieve($data);

		$this->template->display('show.html.php', 'Show Advert', $id);
	}

	public function create() {

		if (!isset ($_SESSION['user'])) {
			header("Location: /login/");
			exit;
		}
		if ($_SESSION['user']['user_id'] > 1) {
			header("Location: " . DOMAIN . "advert/");
			exit;
		}

		// must have some POSTed data
		// could check for referer here
		if (!isset ($_POST) || empty ($_POST)) {
			header("Location: " . DOMAIN . "advert/");
			exit;
		}

		$code = $_POST['code'];
		// TODO need to validate data
		$data = array (
			'code' => $_POST['code'],
			'category' => $_POST['category'],
			'version' => $_POST['version'],
			'status' => $_POST['status'],
			'notes' => $_POST['info']
		);
		if (!Advert :: validates($data)) {
			// store errors in session and redirect
			$_SESSION['advert'] = $data;
			$_SESSION['advert']['error'] = Advert :: errors();
			header("Location: " . DOMAIN . "advert/");
			exit;
		}

		// create a new user
		// log the user in
		// redirect to user's home page
		$id = Advert :: create_advert($data);

		$_SESSION['advert']['id'] = $id;

		$this->template->id = $id;

		$adverts = Advert :: retrieve(array (
			'id' => $id
		));
		if (count($adverts) > 0) {
			$this->template->advert = $adverts;
		}

		$this->template->id = $id;

		$this->template->display('new.html.php', 'New Advert', $id);

	}

}