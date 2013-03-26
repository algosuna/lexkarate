<!DOCTYPE html>
<html <?php language_attributes();?>>
<head>
	<script type="text/javascript" src="//use.typekit.net/wxm5gvs.js"></script>
	<script type="text/javascript">try{Typekit.load();}catch(e){}</script>

	<meta charset="<?php bloginfo('charset');?>" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Karate Japon&eacute;s del estilo Shotokan. Tijuana, B.C. Afiliados a Funakoshi Shotokan Karate Association (FSKA)" />

	<title><?php bloginfo('name');?> <?php bloginfo('description');?> | Karate Tijuana M&eacute;xico</title>

	<link rel="stylesheet" type="text/css" href="<?php bloginfo( 'stylesheet_url' ); ?>" media="all" />
	<link rel="stylesheet" type="text/css" href="http://andyosuna.com/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="http://andyosuna.com/css/bootsrap-responsive.min.css" />

	<!--[if IE]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>
 
<body <?php body_class();?>>
	<header>
		<div class="container clearfix">
			<h1><a href="/">Lex Karate</a></h1>

			<nav class="pull-right">
				<ul class="nav nav-pills">
					<?php
					if(has_nav_menu('main_nav')):
						wp_nav_menu(array(
							'theme_location'=>'main_nav',
							'container'=>false,
							'items_wrap'=>'%3$s'
						));
					endif;
					?>
				</ul>
			</nav>
		</div>
	</header>