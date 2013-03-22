<?php
add_theme_support('post-formats',array('image','video','audio','quote','gallery'));
add_theme_support('post-thumbnails'); //Featured Image
add_theme_support('automatic-feed-links');

add_image_size('lex-frontpage',1170,350,true);

/** 
  * Menu System Support
  * Adds menu areas to the theme
  * Since Ver. 1.0
  * Note: Menus are displayed on header.php
  **/
function lex_menus(){
	register_nav_menus(array(
		'main_nav'=>'Global Navigation'
	));
}
add_action('init','lex_menus');
