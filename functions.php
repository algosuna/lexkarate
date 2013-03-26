<?php
add_theme_support('post-formats',array('image','video','audio','quote','gallery'));
add_theme_support('post-thumbnails'); //Featured Image
add_theme_support('automatic-feed-links');

add_image_size('lex-frontpage',1170,350,true);

// Menu System Support
// Adds menu areas to the theme
// Since Ver. 1.0
// Note: Menus are displayed on header.php
function lex_menus(){
	register_nav_menus(array(
		'main_nav'=>'Global Navigation'
	));
}
add_action('init','lex_menus');

//Dimox Breadcrumbs
//http://dimox.net/wordpress-breadcrumbs-without-a-plugin/
//Since Ver. 1.0
//Note: Call with dimox_breadcrumbs();
function dimox_breadcrumbs(){
	//OPTIONS
	$text['home']		='Inicio';
	$text['category']	='Archive by Category "%s"';
	$text['search']		='Search Results for "%s" Query';
	$text['tag']		='Posts Tagged "%s"';
	$text['author']		='Articles Posted by %s';
	$text['404']		='Error 404';
	$showCurrent		=1;
	$showOnHome			=0;
	$delimiter			=' &raquo; ';
	$before				='<span class="current">';
	$after				= '</span>';
	//END OPTIONS
	global $post;
	$homeLink			=get_bloginfo('url').'/';
	$linkBefore			='<span typeof="v:Breadcrumb">';
	$linkAfter			='</span>';
	$linkAttr			=' rel="v:url" property="v:title"';
	$link				=$linkBefore.'<a'.$linkAttr.' href="%1$s">%2$s</a>'.$linkAfter;
	if(is_home()||is_front_page()){
		if($showOnHome==1)echo '<div id="crumbs"><a href="'.$homeLink.'">'.$text['home'].'</a></div>';
	}else{
		echo '<div id="crumbs" xmlns:v="http://rdf.data-vocabulary.org/#">'.sprintf($link,$homeLink,$text['home']).$delimiter;
		if(is_category()){
			$thisCat			=get_category(get_query_var('cat'),false);
			if($thisCat->parent!=0){
				$cats				=get_category_parents($thisCat->parent,TRUE,$delimiter);
				$cats				=str_replace('<a',$linkBefore.'<a'.$linkAttr,$cats);
				$cats				=str_replace('</a>','</a>'.$linkAfter,$cats);
				echo $cats;
			}
			echo $before.sprintf($text['category'],single_cat_title('',false)).$after;
		}elseif(is_search()){
			echo $before.sprintf($text['search'],get_search_query()).$after;
		}elseif(is_day()){
			echo sprintf($link,get_year_link(get_the_time('Y')),get_the_time('Y')).$delimiter;
			echo sprintf($link,get_month_link(get_the_time('Y'),get_the_time('m')),get_the_time('F')).$delimiter;
			echo $before.get_the_time('d').$after;
		}elseif(is_month()){
			echo sprintf($link,get_year_link(get_the_time('Y')),get_the_time('Y')).$delimiter;
			echo $before.get_the_time('F').$after;
		}elseif(is_year()){
			echo $before.get_the_time('Y').$after;
		}elseif(is_single()&& !is_attachment()){
			if(get_post_type()!='post'){
				$post_type			=get_post_type_object(get_post_type());
				$slug				=$post_type->rewrite;
				printf($link,$homeLink.'/'.$slug['slug'].'/',$post_type->labels->singular_name);
				if($showCurrent==1)echo $delimiter.$before.get_the_title().$after;
			}else{
				$cat				=get_the_category();$cat=$cat[0];
				$cats 				=get_category_parents($cat,TRUE,$delimiter);
				if($showCurrent==0)$cats=preg_replace("#^(.+)$delimiter$#","$1",$cats);
				$cats 				=str_replace('<a',$linkBefore.'<a'.$linkAttr,$cats);
				$cats 				=str_replace('</a>','</a>'.$linkAfter,$cats);
				echo $cats;
				if($showCurrent==1)echo $before.get_the_title().$after;
			}
		}elseif(!is_single()&& !is_page()&&get_post_type()!='post'&& !is_404()){
			$post_type 			=get_post_type_object(get_post_type());
			echo $before.$post_type->labels->singular_name.$after;
		}elseif(is_attachment()){
			$parent 			=get_post($post->post_parent);
			$cat				=get_the_category($parent->ID);$cat=$cat[0];
			$cats				=get_category_parents($cat,TRUE,$delimiter);
			$cats				=str_replace('<a',$linkBefore.'<a'.$linkAttr,$cats);
			$cats				=str_replace('</a>','</a>'.$linkAfter,$cats);
			echo $cats;
			printf($link,get_permalink($parent),$parent->post_title);
			if($showCurrent==1)echo $delimiter.$before.get_the_title().$after;
		}elseif(is_page()&& !$post->post_parent){
			if($showCurrent==1)echo $before.get_the_title().$after;
		}elseif(is_page()&&$post->post_parent){
			$parent_id			=$post->post_parent;
			$breadcrumbs 		=array();
			while($parent_id){
				$page 				=get_page($parent_id);
				$breadcrumbs[] 		=sprintf($link,get_permalink($page->ID),get_the_title($page->ID));
				$parent_id 			=$page->post_parent;
			}
			$breadcrumbs 		=array_reverse($breadcrumbs);
			for($i=0;$i<count($breadcrumbs);$i++){
				echo $breadcrumbs[$i];
				if($i!=count($breadcrumbs)-1)echo $delimiter;
			}
			if($showCurrent==1)echo $delimiter.$before.get_the_title().$after;
		}elseif(is_tag()){
			echo $before.sprintf($text['tag'],single_tag_title('',false)).$after;
		}elseif(is_author()){
			global $author;
			$userdata 			=get_userdata($author);
			echo $before.sprintf($text['author'],$userdata->display_name).$after;
		}elseif(is_404()){
			echo $before.$text['404'].$after;
		}
		if(get_query_var('paged')){
			if(is_category()||is_day()||is_month()||is_year()||is_search()||is_tag()||is_author())echo ' (';
			echo __('Page').' '.get_query_var('paged');
			if(is_category()||is_day()||is_month()||is_year()||is_search()||is_tag()||is_author())echo')';
		}
		echo '</div>';
	}
}//end dimox_breadcrumbs();