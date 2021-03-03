<?php
define( 'DB_NAME', 'wordpress' );
define( 'DB_USER', 'root' );
define( 'DB_PASSWORD', '' );
define( 'DB_HOST', 'localhost' );
define( 'DB_CHARSET', 'utf8mb4' );
define( 'DB_COLLATE', '' );

define( 'AUTH_KEY',         '5Wd&}aX]<5tn;O.BZ&]itNuJ.rk7hB]@5s:4[x8vPCK)K2h@Ub:AiB$adD8$]QBL' );
define( 'SECURE_AUTH_KEY',  '(wl8PBUs@I_s!G`!n94O>f*;wpm,R>K65^Sd2&Z><%u>%h2}F#mkD.]?nukptgsg' );
define( 'LOGGED_IN_KEY',    'b+9N>$YjONw<{R)brQpsV{t9S:5zV8.[J&qfC?i_:&JcW2)<_lUMMqS X#`|)ULE' );
define( 'NONCE_KEY',        'ly&Z}KTh)_4>?s:|=+6}k)F }*)h7{JF96[%NAK5=uwpPE z2O(u%h828i;Z@>xy' );
define( 'AUTH_SALT',        'x)k&*9>+F`6jf`+]ZzZ jp`KIVT= *%u-o-<kTndH#:nKoW~dBe4sV*u5AY)3rWQ' );
define( 'SECURE_AUTH_SALT', '?_ TYN]*Xp34L1aX;zTk/ejZBE[14v>lj ^SlX:O.qaKKO[|elu)gx17GV<$ &nD' );
define( 'LOGGED_IN_SALT',   't&(hE>Bs#fB|;>SCU4tGeA7)L><mrK9vn1r8RXX[7$Z][t=Oq%?;)07qS:+zKP@&' );
define( 'NONCE_SALT',       'qG:&wlk=!Jmx5T.#i7Q5S$;D4Ye;C} J$p]I:9K,S{OAzO-c#}YRa}g:9x3as2`}' );
$table_prefix = 'wp_';
define( 'WP_DEBUG', true );
define( 'WP_DEBUG_LOG', true );

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

//
// Additional settings for the use of reverse proxy
// https://gist.github.com/webaware/4688802
//

define( 'WP_HOME', 'https://localhost/wp' );
define( 'WP_SITEURL', 'https://localhost/wp' );

$_SERVER['SERVER_PORT'] = 443;
$_SERVER['HTTPS'] = 'on';
$_SERVER['SCRIPT_NAME'] = '/wp' . $_SERVER['SCRIPT_NAME'];
$_SERVER['REQUEST_URI'] = '/wp' . $_SERVER['REQUEST_URI'];
$_SERVER['HTTP_HOST'] = 'localhost';
$_SERVER['SERVER_NAME'] = 'localhost';

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
