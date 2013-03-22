<?php get_header(); ?>

<section class="clearfix" id="slider">
	<div class="container">
		<div id="lexCarousel" class="carousel slide">
			<?php
			if(function_exists('lex_slideshow')):
				lex_slideshow();
			else:
				the_post_thumbnail('lex-frontpage');
			endif;
			?>
		</div>
	</div>
</section>

<section id="content">
	<div class="container">
		<?php
		if(have_posts()):
			while(have_posts()):
				the_post();
				?>
				<article id="post-<?php the_ID();?>" class="post">
					<div class="entry-content">
						<?php the_content();?>
					</div>
				</article>
				<?php
			endwhile;
		else:
			?>
			<p>Sorry, no posts.</p>
			<?php
		endif;
		?>
	</div>
</section>

<section id="afiliaciones">
	<!--Afiliaciones Here-->
</section>

<?php get_footer('frontpage');?>