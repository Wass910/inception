<?php

define( 'DB_NAME', 'wordpress' );
define( 'DB_USER', 'idhiba' );
define( 'DB_PASSWORD', 'password' );
define( 'DB_HOST', 'mariadb' );
define( 'DB_CHARSET', 'utf8mb4' );

define( 'DB_COLLATE', '' );


define('AUTH_KEY',         '/x mX+WW>Hi6O@zoN<b14_>Nt$vNZx:8gbz0z&~[||Ts +Im5s*15,8 DxFJ$|Q2');
define('SECURE_AUTH_KEY',  '&K9TcR_~(PJBm/bU~Q-eFZI+Yh_izy%?dj%jG-Th<p>oe8PnO&s}`.NKBl<_HUiV');
define('LOGGED_IN_KEY',    'kkv?@-(1U|%i-4Aan}K<ylYQIH~@BKRb(:Dwj}SSxorn^(@5O|)HS]RH{ANTkPem');
define('NONCE_KEY',        '7-.<O@~+43g@o!rV!t9|[j#|l%5)0:NQx  SCnVDnb$rdBVFKsZ>|uzpUS6o3@n(');
define('AUTH_SALT',        ')j_,4;!<AAsm!kAUrqC2b>X8;^?]bMP*&JVs4ZG(XnZ}VQ#Q*^c/qx#JIfhO=u(K');
define('SECURE_AUTH_SALT', '@n;h-|rZbjXqWYIFp507dmHBu[fV0BN#kZTcZqmf|xeJ.QCWg!7o*[<wF:Qbs5Jj');
define('LOGGED_IN_SALT',   '|/5:v[dy${OiupMeTN?mvg2I&~judu{t8=YOTT<[t j{`@yss@BEbNX=k9NouJ}Z');
define('NONCE_SALT',       '38`H3Iewus7JAqT%dS-Em+#@_v9{2>zYV,&VAiaHbl%nfUcIu>=gq|Z`Z}Yeo>Z|');

$table_prefix = 'wp_';

define( 'WP_DEBUG', true );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

require_once( ABSPATH . 'wp-settings.php' );