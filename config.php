<?php
	// DATABASE SETTINGS
	define('DB_SERVER', 'localhost');
	define('DB_DATABASE', 'webscantest');
	define('DB_LOGINID', 'webscantest');
	define('DB_PASSWORD', 'webscantest');

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

	// THIS IS NOT IN appspider-vuln-site GITHUB!!!!  DO NOT COMMIT IT!
	// This verifies requests from AppSpider software to prevent scanning 3rd party sites
	// with demo AppSpider instances
	define ('ASDEMO_SALT', 'cE9~$1j+5AypbB,tnLajpI/{5,{l$rm6,@$q16*D!t');
	if(isset($_SERVER['HTTP_X_APPSPIDERDEMO']) && !empty($_SERVER['HTTP_X_APPSPIDERDEMO'])) {
	  header('X_APPSPIDERDEMO: '.md5(trim($_SERVER['HTTP_X_APPSPIDERDEMO']).ASDEMO_SALT));
	}
