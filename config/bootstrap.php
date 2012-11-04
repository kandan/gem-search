<?php

define('LIBRARY_PATH', APP_PATH . DS . 'libraries');
define('WEBROOT_PATH', APP_PATH . DS . 'webroot');
define('INCLUDES_PATH', WEBROOT_PATH . DS . 'includes');
define('CSS_PATH', WEBROOT_PATH . DS . 'css');


// 1. sanitise (remove magic quotes, slashes, global vars)
// 2. do the routing - convert path into controller and action
// 3. autoload objects
// 4. error level/reporting

// Home and Login routes
$routes = array();
$routes['#^/$#i'] = array('controller' => 'home', 'action' => 'login');
$routes['#^/home$#i'] = array('controller' => 'home', 'action' => 'index');
$routes['#^/home/index$#i'] = array('controller' => 'home', 'action' => 'index');

// play video

$routes['#^/playvideo$#i'] = array('controller' => 'home', 'action' => 'play');
$routes['#^/playflash$#i'] = array('controller' => 'home', 'action' => 'playflash');
$routes['#^/register/$#i'] = array('controller' => 'home', 'action' => 'register');
$routes['#^/login/$#i'] = array('controller' => 'home', 'action' => 'login');
$routes['#^/loginFail/$#i'] = array('controller' => 'login', 'action' => 'login');
$routes['#^/login/checkUser/$#i'] = array('controller' => 'login', 'action' => 'checkUser');
$routes['#^/loginSuccess/$#i'] = array('controller' => 'login', 'action' => 'success');

//Register
$routes['#^/registerFail/$#i'] = array('controller' => 'register', 'action' => 'registerFail');
$routes['#^/register/checkUser/$#i'] = array('controller' => 'register', 'action' => 'checkUser');
$routes['#^/registerSuccess/$#i'] = array('controller' => 'register', 'action' => 'success');

// Adverts
$routes['#^/advert/$#i'] = array('controller' => 'adverts', 'action' => 'advert');
$routes['#^/advert/create/$#i'] = array('controller' => 'adverts', 'action' => 'create');
$routes['#^/advert/add/$#i'] = array('controller' => 'adverts', 'action' => 'add');
$routes['#^/advert/([0-9]{1,5})/edit/$#i'] = array('controller' => 'adverts', 'action' => 'edit');
$routes['#^/advert/([0-9]{1,5})/update/$#i'] = array('controller' => 'adverts', 'action' => 'update');
$routes['#^/updateComplete$#i'] = array('controller' => 'adverts', 'action' => 'displayUpdated');

// Search
$routes['#^/search/$#i'] = array('controller' => 'search', 'action' => 'search');
$routes['#^/searchResult/$#i'] = array('controller' => 'searchResult', 'action' => 'searchResult');

$routes['#^/logout/$#i'] = array('controller' => 'login', 'action' => 'logout');

