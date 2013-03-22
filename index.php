<?php get_header(); ?>

	<section class="clearfix">
	</section>

	<section id="content">
		<div class="container">
			<div class="row">
				<div class="span8">
					<section id="content">

						<?php
						if(have_posts()):
							while(have_posts()):
								the_post();
						?>

						<article id="post-<?php the_ID();?>" class="post">
							<h2 class="entry-title">
								<a href="<?php the_permalink();?>"><?php the_title();?></a>
							</h2>
							<div class="postmeta">
								<span class="author"> Posted by: <?php the_author();?> </span>
								<span class="date"><?php the_date();?></span>
								<span class="num-comments"><?php comments_number();?></span>
								<span class="categories"><?php the_category();?></span>
								<span class="tags"><?php the_tags();?></span>
							</div><!-- end postmeta -->
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

					</section>
				</div>

				<div class="span4">
					<?php get_sidebar();?>
				</div>
			</div>
		</div>
	</section>

	<?php get_footer();?>