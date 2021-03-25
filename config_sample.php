<?php
	// DATABASE SETTINGS
	define('DB_SERVER', 'localhost');
	define('DB_DATABASE', 'blah');
	define('DB_LOGINID','blah');
	define('DB_PASSWORD','blah');

	// ALLOWED CONNECTIVITY
	define('PROTOCOL','BOTH');	// HTTP HTTPS BOTH

	// SESSION MANAGEMENT SETTINGS
	define('AUTH_REQUIRED', false);
	define('AUTH_SSO', false);
	define('SESS_REGEN_TIME',0);
	define('SESSION_NAME','TEST_SESSIONID');

	// OPTIONAL FEATURES
	define('JSMENUS', true);
	define('ENABLECALENDAR', false);
	define('ENABLELARGEPAGES', false);
	define('ENABLELOTSAPAGES', true);
	define('ENABLEVIEWSTATE', false);
	//  - UPLOAD PAGES - Requires use of perl, only use if you know what your doing
	define('ENABLEUPLOADPAGES', false);
	define('UPLOAD_DIR','/tmp');

	// A little needed code to help hide the config file names from simple discovery
	if(substr($_SERVER['REQUEST_URI'], 0, 9) == '/config.p') {
		include_once('404.php');
	}
