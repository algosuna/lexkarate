-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2013 at 08:19 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `andrea_lexkarate`
--
CREATE DATABASE `andrea_lexkarate` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `andrea_lexkarate`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2013-03-11 19:30:00', '2013-03-11 19:30:00', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0),
(2, 155, 'Anon', 'anon@example.com', '', '59.167.157.3', '2007-09-04 10:49:28', '2007-09-04 00:49:28', 'Anonymous comment.', 0, '1', '', '', 0, 0),
(3, 155, 'tellyworthtest2', 'tellyworth+test2@gmail.com', '', '59.167.157.3', '2007-09-04 10:49:03', '2007-09-04 00:49:03', 'Contributor comment.', 0, '1', '', '', 0, 0),
(4, 155, 'Alex Shiels', 'tellyworth@gmail.com', 'http://flightpath.wordpress.com/', '59.167.157.3', '2007-09-04 10:48:51', '2007-09-04 00:48:51', 'Author comment.', 0, '1', '', '', 0, 0),
(5, 151, 'Ping 1 &laquo; What&#8217;s a tellyworth?', '', 'http://tellyworth.wordpress.com/2007/11/21/ping-1/', '72.232.101.12', '2007-11-21 11:31:12', '2007-11-21 01:31:12', '[...] TrackbackÂ test. [...]', 0, '1', '', 'pingback', 0, 0),
(6, 151, 'Ping 2 with a much longer title than the previous ping, which was called Ping 1 &laquo; What&#8217;s a tellyworth?', '', 'http://tellyworth.wordpress.com/2007/11/21/ping-2-with-a-much-longer-title-than-the-previous-ping-which-was-called-ping-1/', '72.232.101.12', '2007-11-21 11:35:47', '2007-11-21 01:35:47', '[...] AnotherÂ trackback test.Â Â Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec hendrerit gravida nisi. Praesent libero odio, tincidunt nec, fringilla et, mollis ut, ipsum. Proin a lacus quis nisi pulvinar bibendum. Donec massa justo, dapibus at, imperdiet vestibulum, dapibus in, leo. Donec pretium tellus in dui. Phasellus tristique aliquet justo. Donec sodales. Nulla urna mi, molestie ac, malesuada sit amet, sagittis id, lacus. Mauris auctor leo ac justo. Proin convallis. Nulla eleifend dictum mi. Donec at lectus. Integer augue sapien, ornare vitae, rhoncus quis, rhoncus sed, sapien. Nunc mattis diam sodales diam.Etiam porttitor, ante sed varius semper, ante arcu rutrum tortor, at luctus nunc urna id nibh. Fusce sodales. Integer sed ligula. Donec posuere, nibh aliquet auctor congue, augue est porttitor odio, imperdiet facilisis tortor urna vel mauris. Pellentesque pretium, lorem non pellentesque varius, elit diam ultrices mi, sed posuere sapien lectus sed mi. Donec vestibulum urna. Donec gravida elit et enim. Ut dignissim neque ut erat. Morbi tincidunt nunc vitae lorem. Morbi rhoncus mi. Praesent facilisis tincidunt enim. Ut pulvinar. Suspendisse potenti. Vivamus turpis odio, porta at, malesuada in, iaculis eget, odio. Aenean faucibus, urna quis congue dignissim, orci tellus ornare leo, eget viverra ante ipsum sit amet magna. Suspendisse mattis nunc at justo. Nullam malesuada lobortis lorem. Morbi ultricies. Nam risus erat, sagittis ut, tristique rhoncus, luctus id, ante. Maecenas ac dui. [...]', 0, '1', '', 'pingback', 0, 0),
(7, 151, 'Ping 4 &laquo; What&#8217;s a tellyworth?', '', 'http://tellyworth.wordpress.com/2007/11/21/ping-4/', '72.232.101.12', '2007-11-21 11:39:25', '2007-11-21 01:39:25', '[...] AnotherÂ short one. [...]', 0, '1', '', 'pingback', 0, 0),
(8, 151, 'Ping 3 &laquo; What&#8217;s a tellyworth?', '', 'http://tellyworth.wordpress.com/2007/11/21/ping-3/', '72.232.101.12', '2007-11-21 11:38:22', '2007-11-21 01:38:22', '[...] Just aÂ short one. [...]', 0, '1', '', 'pingback', 0, 0),
(9, 151, 'admin', 'admin@anonymous.com', '', '146.214.103.251', '2010-06-11 15:27:04', '2010-06-11 15:27:04', 'Test comment', 0, '1', '', '', 0, 0),
(10, 149, 'Alex Shiels', 'tellyworth@gmail.com', 'http://flightpath.wordpress.com/', '59.167.157.3', '2007-09-04 10:12:13', '2007-09-04 10:12:13', 'Not an author comment.', 0, '1', '', '', 0, 0),
(11, 149, 'Anon', 'nobody@example.com', '', '59.167.157.3', '2007-09-04 10:14:19', '2007-09-04 17:14:19', 'I''m not logged in.\n\n\n\n<blockquote>\n\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered\n\n<blockquote>\n\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered\n\n<blockquote>\n\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered\n\n\n\n</blockquote>\n\n</blockquote>\n\n</blockquote>', 0, '1', '', '', 0, 0),
(12, 149, 'Matt', 'm@mullenweg.com', 'http://photomatt.net/', '59.167.157.3', '2007-09-04 10:15:32', '2007-09-04 00:15:32', 'Anonymous person pretending to be Matt.', 0, '1', '', '', 0, 0),
(13, 149, 'themedemos', 'nanobar+demos@gmail.com', '', '59.167.157.3', '2007-09-03 10:18:04', '2007-09-03 17:18:04', 'Author comment.\n\n\n\n<h1>Header one</h1>\n\n<h2>Header two</h2>\n\n<h3>Header three</h3>\n\n<h4>Header four</h4>\n\n<h5>Header five</h5>\n\n<h6>Header six</h6>\n\n\n\n<h2>Blockquote Tests</h2>\n\nBlockquote:\n\n<blockquote>Here''s a one line quote.</blockquote>\n\nThis part isn''t quoted.  Here''s a longer quote:\n\n<blockquote>Itâ€™s like a language. You learn the alphabet, which are the scales. You learn sentences, which are the chords. And then you talk extemporaneously with the horn. Itâ€™s a wonderful thing to speak extemporaneously, which is something Iâ€™ve never gotten the hang of. But musically I love to talk just off the top of my head. And thatâ€™s what jazz music is all about.\n\n\n\n<cite>Stan Getz</cite></blockquote>\n\nAnd some trailing text.\n\n\n\n<h2>Table Layout Test</h2>\n\n<table class="statsDay">\n\n<tbody>\n\n<tr>\n\n<th>Title</th>\n\n<th class="views">Views</th>\n\n<th></th>\n\n</tr>\n\n<tr class="alternate">\n\n<td class="label"><a href="http://wpthemetestdata.wordpress.com/about/" rel="nofollow">About Test User</a></td>\n\n<td class="views">1</td>\n\n<td class="more">More</td>\n\n</tr>\n\n<tr>\n\n<td class="label"><a href="http://wpthemetestdata.wordpress.com/" rel="nofollow">260</a></td>\n\n<td class="views">1</td>\n\n<td class="more">More</td>\n\n</tr>\n\n<tr class="alternate">\n\n<td class="label"><a href="http://wpthemetestdata.wordpress.com/archives/" rel="nofollow">Archives</a></td>\n\n<td class="views">1</td>\n\n<td class="more">More</td>\n\n</tr>\n\n<tr>\n\n<td class="label"><a href="http://wpthemetestdata.wordpress.com/" rel="nofollow">235</a></td>\n\n<td class="views">1</td>\n\n<td class="more">More</td>\n\n</tr>\n\n</tbody>\n\n</table>\n\n<h2>List Type Tests</h2>\n\n<h3>Definition List</h3>\n\n<dl> <dt>Definition List Title</dt> <dd>This is a definition list division.</dd> <dt>Definition</dt> <dd>An exact statement or description of the nature, scope, or meaning of something: <em>our definition of what constitutes poetry.</em></dd> <dt>Gallery</dt> <dd>A feature introduced with WordPress 2.5, that is specifically an exposition of images attached to a post. In that same vein, an upload is "attached to a post" when you upload it while editing a post.</dd> <dt>Gravatar</dt> <dd>A globally recognized avatar (a graphic image or picture that represents a user). A gravatar is associated with an email address, and is maintained by the Gravatar.com service. Using this service, a blog owner can configure their blog so that a user''s gravatar is displayed along with their comments.</dd> </dl>\n\n<h3>Unordered List (Nested)</h3>\n\n<ul>\n\n	<li>List item one\n\n<ul>\n\n	<li>List item one\n\n<ul>\n\n	<li>List item one</li>\n\n	<li>List item two</li>\n\n	<li>List item three</li>\n\n	<li>List item four</li>\n\n</ul>\n\n</li>\n\n	<li>List item two</li>\n\n	<li>List item three</li>\n\n	<li>List item four</li>\n\n</ul>\n\n</li>\n\n	<li>List item two</li>\n\n	<li>List item three</li>\n\n	<li>List item four</li>\n\n</ul>\n\n<h3>Ordered List</h3>\n\n<ol>\n\n	<li>List item one\n\n<ol>\n\n	<li>List item one\n\n<ol>\n\n	<li>List item one</li>\n\n	<li>List item two</li>\n\n	<li>List item three</li>\n\n	<li>List item four</li>\n\n</ol>\n\n</li>\n\n	<li>List item two</li>\n\n	<li>List item three</li>\n\n	<li>List item four</li>\n\n</ol>\n\n</li>\n\n	<li>List item two</li>\n\n	<li>List item three</li>\n\n	<li>List item four</li>\n\n</ol>\n\n<h2>HTML Element Tag Tests</h2>\n\nAll other HTML tags listed in the <a href="http://en.support.wordpress.com/code/" rel="nofollow">FAQ</a>:\n\n\n\nHere is the address for Automattic, using the <code>&lt;address&gt;</code> tag:\n\n\n\n<address>355 1st Street Suite 202\n\nSan Francisco, CA 94105\n\nUnited States</address>This is an example of <a href="http://example.com" rel="nofollow">an <code>&lt;anchor&gt;</code></a> (otherwise known as a link). This <abbr title="abbreviation">abbr.</abbr> is an example of an &lt;abbr&gt; tag in the middle of a sentence. Here is a <acronym title="three-letter acronym">TLA</acronym> showing off the <code>&lt;acronym&gt;</code> tag. What, you want to see <big>some over-sized text</big> using the <code>&lt;big&gt;</code> tag? Can you <cite>cite a reference</cite> for that, using the <code>&lt;cite&gt;</code> tag? Have you noticed that all of the tag names are displayed <code>in code-form</code>, using the <code>&lt;code&gt;</code> tag? Similarly, I could <kbd>emulate keyboard text</kbd>, using the <code>&lt;kbd&gt;</code> text tag, or <tt>emulate teletype text</tt> using the <code>&lt;tt&gt;</code> tag.\n\n\n\nOh no! I wrote something incorrectly. <del>I''d better delete it</del>, using the <code>&lt;del&gt;</code> tag. I could alternately <span style="text-decoration:line-through;">strike something out</span> using the <code>&lt;strike&gt;</code> tag, or strike something out using the <code>&lt;s&gt;</code> tag. <em>So many choices</em>, which I emphasize using the <code>&lt;em&gt;</code> tag. Just to clarify, <ins>this is some inserted text</ins>, that I''ll highlight using the <code>&lt;ins&gt;</code> tag.\n\n\n\nNeed to display completely unformatted text, such as a large block of code? Use the <code>&lt;pre&gt;</code> tag, which lets you display:\n\n<pre>#container {\n\n	float: left;\n\n	margin: 0 -240px 0 0;\n\n	width: 100%;\n\n}</pre>\n\nWant to quote the WordPress tagline <q>Code is Poetry</q>? Use the <code>&lt;q&gt;</code> tag to add quotes around it. <strong>This is strong text</strong> (otherwise known as bold), using the <code>&lt;strong&gt;</code> tag.\n\n\n\nNeed to write H<sub>2</sub>O or E = MC<sup>2</sup>? You may find great use for <sub>subscripting</sub> text using the <code>&lt;sub&gt;</code> tag, or for <sup>superscripting</sup> text using the <code>&lt;sup&gt;</code> tag. Need to call out a <var>variable</var>? Use the <code>&lt;var&gt;</code> tag.\n\n<h2>Div and Span Tests</h2>\n\n<div>\n\n\n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\n<div class="myclass"><strong>This is a div with "myclass" class, inside of another div, using the <code>&lt;div&gt;</code> tag.</strong></div>\n\nSed odio nibh, tincidunt adipiscing, pretium nec, tincidunt id, enim. Fusce scelerisque nunc vitae nisl.\n\n\n\n</div>\n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. <span><strong>This is a span inside of a paragraph, using the <code>&lt;span&gt;</code> tag.</strong></span> Sed odio nibh, tincidunt adipiscing, pretium nec, tincidunt id, enim. Fusce scelerisque nunc vitae nisl.', 0, '1', '', '', 0, 0),
(14, 149, 'Lloyd Budd', 'foolswisdom@gmail.com', 'http://foolswisdom.com', '24.68.153.74', '2007-09-04 10:23:10', '2007-09-04 00:23:10', 'Another test', 0, '1', '', '', 0, 0),
(15, 149, 'tellyworthtest1', 'tellyworth+test1@gmail.com', '', '59.167.157.3', '2007-09-04 10:35:33', '2007-09-04 00:35:33', 'I''m logged in but I don''t have a blog.', 0, '1', '', '', 0, 0),
(16, 149, 'tellyworthtest2', 'tellyworth+test2@gmail.com', '', '59.167.157.3', '2007-09-04 10:45:21', '2007-09-04 00:45:21', 'I''m a contributor to this blog.', 0, '1', '', '', 0, 0),
(17, 149, 'test test', '', 'http://tellyworthtest.wordpress.com/2007/10/15/ping-test-2/', '72.232.101.12', '2007-09-04 11:04:01', '2007-09-04 01:04:01', '<strong>Ping test&nbsp;2</strong>\n\nLet&#8217;s try that again. Â I guess I have to do this the hard way.\n...', 0, '1', '', 'trackback', 0, 0),
(18, 149, 'Alex Shiels', 'tellyworth@gmail.com', 'http://flightpath.wordpress.com/', '59.167.157.3', '2007-09-04 13:26:26', '2007-09-04 03:26:26', 'Here''s a comment with a <a href="http://example.com/" rel="nofollow">link</a>.', 0, '1', '', '', 0, 0),
(19, 149, 'mdawaffe', 'wpcom@blogwaffe.com', 'http://blogwaffe.com', '71.80.169.225', '2007-09-04 16:51:33', '2007-09-04 06:51:33', 'what am I testing', 0, '1', '', '', 0, 0),
(20, 149, 'pinging like a microwave &laquo; no kubrick allowed', '', 'http://ntutest.wordpress.com/2007/11/19/pinging-like-a-microwave/', '72.232.131.29', '2007-11-20 03:44:15', '2007-11-19 17:44:15', '[...] http://asdftestblog1.wordpress.com/2007/09/04/comment-test/ [...]', 0, '1', '', 'pingback', 0, 0),
(21, 149, 'Joseph Scott', 'joseph@randomnetworks.com', 'http://joseph.randomnetworks.com/', '63.226.101.77', '2007-12-08 07:24:25', '2007-12-07 21:24:25', 'Hi There!', 0, '1', '', '', 0, 0),
(22, 149, 'tellyworthtest', 'tellyworth+test@gmail.com', '', '146.214.103.154', '2010-07-01 17:24:23', '2010-07-01 17:24:23', 'Test Threaded Comment - nested one deep.', 0, '1', '', '', 10, 0),
(23, 149, 'tellyworthtest', 'tellyworth+test@gmail.com', '', '146.214.103.154', '2010-07-01 17:26:11', '2010-07-01 17:26:11', 'Test threaded comment - one level deep (take two).', 0, '1', '', '', 11, 0),
(24, 149, 'tellyworthtest1', 'tellyworth+test1@gmail.com', '', '146.214.103.154', '2010-07-01 17:31:56', '2010-07-01 17:31:56', 'Testing threaded comments - two levels deep.', 0, '1', '', '', 23, 0),
(25, 149, 'Test Author', 'testauthor@anonymous.com', '', '146.214.103.154', '2010-07-01 17:51:11', '2010-07-01 17:51:11', 'Another author comment', 0, '1', '', '', 0, 0),
(26, 149, 'themedemos', 'nanobar+demos@gmail.com', '', '146.214.103.154', '2010-07-01 17:56:59', '2010-07-02 00:56:59', 'Testing an author reply comment.', 0, '1', '', '', 11, 0),
(27, 149, 'tellyworthtest2', 'tellyworth+test2@gmail.com', '', '146.214.103.154', '2010-07-01 17:57:36', '2010-07-01 17:57:36', 'Replying to an author reply comment.', 0, '1', '', '', 26, 0),
(28, 149, 'Test Contributor', 'testcontributor@anonymous.com', '', '146.214.103.154', '2010-07-01 18:02:10', '2010-07-01 18:02:10', 'Contributor comment', 0, '1', '', '', 0, 0),
(29, 149, 'admin', 'admin@anonymous.com', '', '146.214.103.251', '2010-07-01 18:05:32', '2010-07-01 18:05:32', 'Administrator comment reply.', 0, '1', '', '', 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=177 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/sites/lexkarate.com', 'yes'),
(2, 'blogname', 'Lex Karate', 'yes'),
(3, 'blogdescription', 'Shotokan', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'andyosuna@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '1', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%postname%/', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:1:{i:0;s:41:"wordpress-importer/wordpress-importer.php";}', 'yes'),
(36, 'home', 'http://localhost/sites/lexkarate.com', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '0', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', '', 'no'),
(44, 'template', 'lexkarate', 'yes'),
(45, 'stylesheet', 'lexkarate', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22441', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'posts', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:1:{i:0;i:188;}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:0:{}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '0', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:6:{i:1363375805;a:2:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1363375806;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1363375814;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1363461389;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1911399198;a:1:{s:19:"publish_future_post";a:1:{s:32:"b11dc093a3c58c689dd3398e27c5b27e";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:418;}}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:1:{i:0;O:8:"stdClass":9:{s:8:"response";s:6:"latest";s:8:"download";s:40:"http://wordpress.org/wordpress-3.5.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:40:"http://wordpress.org/wordpress-3.5.1.zip";s:10:"no_content";s:51:"http://wordpress.org/wordpress-3.5.1-no-content.zip";s:11:"new_bundled";s:52:"http://wordpress.org/wordpress-3.5.1-new-bundled.zip";s:7:"partial";b:0;}s:7:"current";s:5:"3.5.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.5";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1363362070;s:15:"version_checked";s:5:"3.5.1";}', 'yes'),
(105, '_site_transient_update_themes', 'O:8:"stdClass":3:{s:12:"last_checked";i:1363372981;s:7:"checked";a:3:{s:9:"lexkarate";s:3:"1.0";s:12:"twentyeleven";s:3:"1.5";s:12:"twentytwelve";s:3:"1.1";}s:8:"response";a:0:{}}', 'yes'),
(106, '_transient_random_seed', 'd1b5dab03306dc37bbe10dd06dcf8f41', 'yes'),
(107, 'auth_key', 'm1D@Os<]~jw._h`kv!`p{@WMiS)uA!JoD6$?zeP!.[pOBBGPPlTr)g({/GRWI6QA', 'yes'),
(108, 'auth_salt', 'M/64tLggsOE[0}5@`2<>Qt&I*hu2+r6,V[Q1[yg^-{|S+Vt@j6!POa*Lblopus=>', 'yes'),
(109, 'logged_in_key', 'ma(4Cc>)^~ kz:|rqS}(]:Gd@S|qB,{5:nH!|rf^K?+AehkWt.-C=8_wuqQv%s/*', 'yes'),
(110, 'logged_in_salt', 'l3JsG/AhTMPSGPZ,:+Ux7M[5QO^^cW4&N=$uzi4j$q#?`=NFug}1[bET&RDU]1=~', 'yes'),
(111, '_site_transient_timeout_browser_06df7252d912cc9f4a8f895809c372b8', '1363635014', 'yes'),
(112, '_site_transient_browser_06df7252d912cc9f4a8f895809c372b8', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"25.0.1364.152";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(113, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:36:"http://localhost/sites/lexkarate.com";s:4:"link";s:112:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/sites/lexkarate.com/";s:3:"url";s:145:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/sites/lexkarate.com/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:26:"http://wordpress.org/news/";s:3:"url";s:31:"http://wordpress.org/news/feed/";s:5:"title";s:14:"WordPress Blog";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:28:"http://planet.wordpress.org/";s:3:"url";s:33:"http://planet.wordpress.org/feed/";s:5:"title";s:20:"Other WordPress News";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(114, 'nonce_key', '/7FqcaLJa$,low:txm9`pgOQbASHx;4;1*gX/R|H@50^}5f`d%K~f@,93Q|+~fI.', 'yes'),
(115, 'nonce_salt', '80w/4egZ H$:6MeN!K#/!pYcO}wK+)E5l}Ze@0Es7HMH]nt0Nt_4FIbdh!}?9,%9', 'yes'),
(127, 'current_theme', 'Lex Karate', 'yes'),
(128, 'theme_mods_lexkarate', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:8:"main_nav";i:95;}}', 'yes'),
(129, 'theme_switched', '', 'yes'),
(138, '_site_transient_timeout_popular_importers_en_US', '1363370551', 'yes'),
(139, '_site_transient_popular_importers_en_US', 'a:2:{s:9:"importers";a:8:{s:7:"blogger";a:4:{s:4:"name";s:7:"Blogger";s:11:"description";s:86:"Install the Blogger importer to import posts, comments, and users from a Blogger blog.";s:11:"plugin-slug";s:16:"blogger-importer";s:11:"importer-id";s:7:"blogger";}s:9:"wpcat2tag";a:4:{s:4:"name";s:29:"Categories and Tags Converter";s:11:"description";s:109:"Install the category/tag converter to convert existing categories to tags or tags to categories, selectively.";s:11:"plugin-slug";s:18:"wpcat2tag-importer";s:11:"importer-id";s:9:"wpcat2tag";}s:11:"livejournal";a:4:{s:4:"name";s:11:"LiveJournal";s:11:"description";s:82:"Install the LiveJournal importer to import posts from LiveJournal using their API.";s:11:"plugin-slug";s:20:"livejournal-importer";s:11:"importer-id";s:11:"livejournal";}s:11:"movabletype";a:4:{s:4:"name";s:24:"Movable Type and TypePad";s:11:"description";s:99:"Install the Movable Type importer to import posts and comments from a Movable Type or TypePad blog.";s:11:"plugin-slug";s:20:"movabletype-importer";s:11:"importer-id";s:2:"mt";}s:4:"opml";a:4:{s:4:"name";s:8:"Blogroll";s:11:"description";s:61:"Install the blogroll importer to import links in OPML format.";s:11:"plugin-slug";s:13:"opml-importer";s:11:"importer-id";s:4:"opml";}s:3:"rss";a:4:{s:4:"name";s:3:"RSS";s:11:"description";s:58:"Install the RSS importer to import posts from an RSS feed.";s:11:"plugin-slug";s:12:"rss-importer";s:11:"importer-id";s:3:"rss";}s:6:"tumblr";a:4:{s:4:"name";s:6:"Tumblr";s:11:"description";s:84:"Install the Tumblr importer to import posts &amp; media from Tumblr using their API.";s:11:"plugin-slug";s:15:"tumblr-importer";s:11:"importer-id";s:6:"tumblr";}s:9:"wordpress";a:4:{s:4:"name";s:9:"WordPress";s:11:"description";s:130:"Install the WordPress importer to import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.";s:11:"plugin-slug";s:18:"wordpress-importer";s:11:"importer-id";s:9:"wordpress";}}s:10:"translated";b:0;}', 'yes'),
(140, '_site_transient_update_plugins', 'O:8:"stdClass":2:{s:12:"last_checked";i:1363362070;s:8:"response";a:0:{}}', 'yes'),
(141, 'recently_activated', 'a:1:{i:0;b:0;}', 'yes'),
(143, 'category_children', 'a:0:{}', 'yes'),
(152, 'theme_mods_twentytwelve', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1363200533;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(166, '_site_transient_timeout_browser_b4c18ecb06b751fa1bf7aec676f1e2e0', '1363975639', 'yes'),
(167, '_site_transient_browser_b4c18ecb06b751fa1bf7aec676f1e2e0', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"25.0.1364.172";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(168, '_site_transient_timeout_theme_roots', '1363374781', 'yes'),
(169, '_site_transient_theme_roots', 'a:3:{s:9:"lexkarate";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(170, '_site_transient_timeout_wporg_theme_feature_list', '1363383783', 'yes'),
(171, '_site_transient_wporg_theme_feature_list', 'a:5:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:7:"Columns";a:6:{i:0;s:10:"one-column";i:1;s:11:"two-columns";i:2;s:13:"three-columns";i:3;s:12:"four-columns";i:4;s:12:"left-sidebar";i:5;s:13:"right-sidebar";}s:5:"Width";a:2:{i:0;s:11:"fixed-width";i:1;s:14:"flexible-width";}s:8:"Features";a:19:{i:0;s:8:"blavatar";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:20:"front-page-post-form";i:11;s:19:"full-width-template";i:12;s:12:"microformats";i:13;s:12:"post-formats";i:14;s:20:"rtl-language-support";i:15;s:11:"sticky-post";i:16;s:13:"theme-options";i:17;s:17:"threaded-comments";i:18;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(172, 'rewrite_rules', 'a:68:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:29:"comments/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(176, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=126 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 733, '_wp_page_template', 'default'),
(5, 568, '_wp_old_slug', 'post-format-test-image'),
(6, 616, '_wp_attached_file', '2011/01/dsc20050727_091048_222.jpg'),
(7, 616, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:34:"2011/01/dsc20050727_091048_222.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"dsc20050727_091048_222-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"dsc20050727_091048_222-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1122455448;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"9.7";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(8, 616, '_wp_attachment_image_alt', 'dsc20050727_091048_222'),
(9, 617, '_wp_attached_file', '2011/01/dsc20050813_115856_52.jpg'),
(10, 617, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:33:"2011/01/dsc20050813_115856_52.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"dsc20050813_115856_52-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"dsc20050813_115856_52-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:3.20000000000000017763568394002504646778106689453125;s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1123934337;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"9.7";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";}}'),
(11, 617, '_wp_attachment_image_alt', 'dsc20050813_115856_52'),
(12, 618, '_wp_attached_file', '2011/01/dsc20050831_165238_332.jpg'),
(13, 618, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:34:"2011/01/dsc20050831_165238_332.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"dsc20050831_165238_332-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"dsc20050831_165238_332-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2;s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1125507159;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"9.7";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";}}'),
(14, 618, '_wp_attachment_image_alt', 'dsc20050831_165238_332'),
(15, 619, '_wp_attached_file', '2011/01/dsc20050901_105100_212.jpg'),
(16, 619, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:34:"2011/01/dsc20050901_105100_212.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"dsc20050901_105100_212-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"dsc20050901_105100_212-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1125571860;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"10";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:6:"0.0025";s:5:"title";s:0:"";}}'),
(17, 619, '_wp_attachment_image_alt', 'Seed pods on stem, Woodvale'),
(18, 611, '_wp_attached_file', '2011/01/canola2.jpg'),
(19, 611, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:19:"2011/01/canola2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"canola2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"canola2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:5.5999999999999996447286321199499070644378662109375;s:6:"credit";s:0:"";s:6:"camera";s:18:"Canon PowerShot G2";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1094915268;s:9:"copyright";s:0:"";s:12:"focal_length";s:7:"16.8125";s:3:"iso";i:0;s:13:"shutter_speed";s:9:"0.0015625";s:5:"title";s:0:"";}}'),
(20, 611, '_wp_attachment_image_alt', 'canola'),
(21, 613, '_wp_attached_file', '2011/01/dsc20050315_145007_132.jpg'),
(22, 613, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:34:"2011/01/dsc20050315_145007_132.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"dsc20050315_145007_132-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"dsc20050315_145007_132-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.20000000000000017763568394002504646778106689453125;s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1110898207;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"9.7";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";}}'),
(23, 613, '_wp_attachment_image_alt', 'dsc20050315_145007_132'),
(24, 582, '_oembed_2dfe3242a21455e264f8b16c31aede1c', '<div class="embed-"><embed src="http://v.wordpress.com/hrPKeL5t" type="application/x-shockwave-flash" width="510" height="286" allowscriptaccess="always" allowfullscreen="true" wmode="transparent"></embed></div>'),
(25, 582, '_oembed_48d51c5809e93c7ed55369378a68ee27', '<div class="embed-"><embed src="http://v.wordpress.com/hrPKeL5t" type="application/x-shockwave-flash" width="620" height="348" allowscriptaccess="always" allowfullscreen="true" wmode="transparent"></embed></div>'),
(26, 582, '_oembed_9fcc86d7d9398ff736577f922307f64d', '<div class="embed-"><embed src="http://v.wordpress.com/hrPKeL5t" type="application/x-shockwave-flash" width="808" height="454" allowscriptaccess="always" allowfullscreen="true" wmode="transparent"></embed></div>'),
(27, 582, '_oembed_1fb51f9385f9057290da950dbea69e1d', '<div class="embed-"><embed src="http://v.wordpress.com/hrPKeL5t" type="application/x-shockwave-flash" width="625" height="351" allowscriptaccess="always" allowfullscreen="true" wmode="transparent"></embed></div>'),
(28, 582, '_oembed_37fdfe862c13c46a93be2921279bf675', '<div class="embed-"><embed src="http://v.wordpress.com/hrPKeL5t" type="application/x-shockwave-flash" width="599" height="336" allowscriptaccess="always" allowfullscreen="true" wmode="transparent"></embed></div>'),
(29, 587, 'enclosure', 'http://localhost/sites/lexkarate.com/wp-content/uploads/2012/07/originaldixielandjazzbandwithalbernard-stlouisblues.mp3\n3043247\naudio/mpeg\n'),
(30, 543, '_wp_attached_file', '2010/08/spectacles.gif'),
(31, 543, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:165;s:6:"height";i:210;s:4:"file";s:22:"2010/08/spectacles.gif";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"spectacles-150x150.gif";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/gif";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(32, 534, '_wp_attached_file', '2010/08/test-image-landscape-900.jpg'),
(33, 534, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:598;s:4:"file";s:36:"2010/08/test-image-landscape-900.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"test-image-landscape-900-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"test-image-landscape-900-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:9:"NIKON D70";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1183237219;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";s:3:"200";s:13:"shutter_speed";s:18:"0.0013333333333333";s:5:"title";s:0:"";}}'),
(34, 535, '_wp_attached_file', '2010/08/test-image-landscape.jpg'),
(35, 535, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:199;s:4:"file";s:32:"2010/08/test-image-landscape.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"test-image-landscape-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:9:"NIKON D70";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1183237219;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";s:3:"200";s:13:"shutter_speed";s:18:"0.0013333333333333";s:5:"title";s:0:"";}}'),
(36, 536, '_wp_attached_file', '2010/08/test-image-portrait.jpg'),
(37, 536, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:199;s:6:"height";i:300;s:4:"file";s:31:"2010/08/test-image-portrait.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"test-image-portrait-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:9:"NIKON D70";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1183237109;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";s:3:"200";s:13:"shutter_speed";s:18:"0.0013333333333333";s:5:"title";s:0:"";}}'),
(38, 734, '_wp_page_template', 'default'),
(39, 501, '_wp_page_template', 'default'),
(40, 555, '_thumbnail_id', '611'),
(41, 146, '_wp_page_template', 'default'),
(42, 155, '_wp_page_template', 'default'),
(43, 156, '_wp_page_template', 'default'),
(44, 172, '_wp_page_template', 'default'),
(45, 173, '_wp_page_template', 'default'),
(46, 174, '_wp_page_template', 'default'),
(47, 152, '_wp_old_slug', 'no-comments'),
(48, 133, '_wp_old_slug', '14'),
(49, 494, '_wp_old_slug', ''),
(50, 494, '_wp_old_slug', 'if-you-say-it-loud-enough-you%e2%80%99ll-always-sound-precocious-supercalifragilisticexpialidocious'),
(51, 128, '_wp_old_slug', 'test-with-wide-image-resized'),
(52, 128, '_thumbnail_id', '543'),
(53, 674, '_thumbnail_id', '675'),
(54, 675, '_wp_attached_file', '2011/01/boat.jpg'),
(55, 675, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:435;s:6:"height";i:288;s:4:"file";s:16:"2011/01/boat.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"boat-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"boat-300x198.jpg";s:5:"width";i:300;s:6:"height";i:198;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(56, 675, '_wp_attachment_image_alt', 'boat'),
(57, 701, '_wp_page_template', 'default'),
(58, 703, '_wp_page_template', 'default'),
(59, 735, '_wp_page_template', 'default'),
(60, 737, '_wp_page_template', 'default'),
(61, 739, '_wp_page_template', 'default'),
(62, 742, '_wp_page_template', 'default'),
(63, 744, '_wp_page_template', 'default'),
(64, 746, '_wp_page_template', 'default'),
(65, 748, '_wp_page_template', 'default'),
(66, 754, '_wp_attached_file', '2011/07/100_5478.jpg'),
(67, 754, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:20:"2011/07/100_5478.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"100_5478-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"100_5478-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"100_5478-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:6.29999999999999982236431605997495353221893310546875;s:6:"credit";s:0:"";s:6:"camera";s:32:"KODAK DX7590 ZOOM DIGITAL CAMERA";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1145694068;s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"17.5";s:3:"iso";s:2:"80";s:13:"shutter_speed";s:5:"0.002";s:5:"title";s:0:"";}}'),
(68, 754, '_wp_attachment_image_alt', 'Bell on Wharf'),
(69, 755, '_wp_attached_file', '2011/07/100_5540.jpg'),
(70, 755, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:20:"2011/07/100_5540.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"100_5540-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"100_5540-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"100_5540-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:32:"KODAK DX7590 ZOOM DIGITAL CAMERA";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1145697622;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"6.3";s:3:"iso";s:2:"80";s:13:"shutter_speed";s:7:"0.00125";s:5:"title";s:0:"";}}'),
(71, 755, '_wp_attachment_image_alt', 'Golden Gate Bridge'),
(72, 756, '_wp_attached_file', '2011/07/cep00032.jpg'),
(73, 756, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:1200;s:4:"file";s:20:"2011/07/cep00032.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"cep00032-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"cep00032-300x240.jpg";s:5:"width";i:300;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"cep00032-1024x819.jpg";s:5:"width";i:1024;s:6:"height";i:819;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon ELURA90";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1130775264;s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"4.15";s:3:"iso";i:0;s:13:"shutter_speed";s:8:"0.002091";s:5:"title";s:0:"";}}'),
(74, 756, '_wp_attachment_image_alt', 'Sunburst Over River'),
(75, 757, '_wp_attached_file', '2011/07/dcp_2082.jpg'),
(76, 757, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1066;s:4:"file";s:20:"2011/07/dcp_2082.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"dcp_2082-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"dcp_2082-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"dcp_2082-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:5.5999999999999996447286321199499070644378662109375;s:6:"credit";s:0:"";s:6:"camera";s:32:"KODAK DX4900 ZOOM DIGITAL CAMERA";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1054666444;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"7.3";s:3:"iso";i:0;s:13:"shutter_speed";s:5:"0.002";s:5:"title";s:0:"";}}'),
(77, 757, '_wp_attachment_image_alt', 'Boardwalk'),
(78, 758, '_wp_attached_file', '2011/07/dsc03149.jpg'),
(79, 758, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:960;s:4:"file";s:20:"2011/07/dsc03149.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"dsc03149-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"dsc03149-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"dsc03149-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1034618291;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"9.7";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(80, 758, '_wp_attachment_image_alt', 'Yachtsody in Blue'),
(81, 759, '_wp_attached_file', '2011/07/dsc04563.jpg'),
(82, 759, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:20:"2011/07/dsc04563.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"dsc04563-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"dsc04563-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"dsc04563-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1040567677;s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"48.5";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.002";s:5:"title";s:0:"";}}'),
(83, 759, '_wp_attachment_image_alt', 'Rain Ripples'),
(84, 760, '_wp_attached_file', '2011/07/dsc09114.jpg'),
(85, 760, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:20:"2011/07/dsc09114.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"dsc09114-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"dsc09114-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"dsc09114-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:5.5999999999999996447286321199499070644378662109375;s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1067174771;s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"11.8";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.002";s:5:"title";s:0:"";}}'),
(86, 760, '_wp_attachment_image_alt', 'Sydney Harbor Bridge'),
(87, 761, '_wp_attached_file', '2011/07/dsc20050102_192118_51.jpg'),
(88, 761, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:33:"2011/07/dsc20050102_192118_51.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"dsc20050102_192118_51-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"dsc20050102_192118_51-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"dsc20050102_192118_51-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:9:"CYBERSHOT";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1104693678;s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"33.3";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:0:"";}}'),
(89, 761, '_wp_attachment_image_alt', 'Wind Farm'),
(90, 762, '_wp_attached_file', '2011/07/dsc20051220_160808_102.jpg'),
(91, 762, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1066;s:4:"file";s:34:"2011/07/dsc20051220_160808_102.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"dsc20051220_160808_102-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"dsc20051220_160808_102-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"dsc20051220_160808_102-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.5;s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 10D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1135094888;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";}}'),
(92, 762, '_wp_attachment_image_alt', 'Antique Farm Machinery'),
(93, 763, '_wp_attached_file', '2011/07/dsc02085.jpg'),
(94, 763, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:20:"2011/07/dsc02085.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"dsc02085-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"dsc02085-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"dsc02085-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.899999999999999911182158029987476766109466552734375;s:6:"credit";s:0:"";s:6:"camera";s:8:"DSC-S930";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1288861799;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"6.4";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";}}'),
(95, 763, '_wp_attachment_image_alt', 'Orange Iris'),
(96, 764, '_wp_attached_file', '2011/07/dsc20051220_173257_119.jpg'),
(97, 764, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1066;s:4:"file";s:34:"2011/07/dsc20051220_173257_119.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"dsc20051220_173257_119-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"dsc20051220_173257_119-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"dsc20051220_173257_119-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:6.70000000000000017763568394002504646778106689453125;s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 10D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1135099977;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:18:"0.0013333333333333";s:5:"title";s:0:"";}}'),
(98, 764, '_wp_attachment_image_alt', 'Rusty Rail'),
(99, 765, '_wp_attached_file', '2011/07/dscn3316.jpg'),
(100, 765, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:20:"2011/07/dscn3316.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"dscn3316-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"dscn3316-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"dscn3316-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:7.5999999999999996447286321199499070644378662109375;s:6:"credit";s:0:"";s:6:"camera";s:5:"E4300";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1170775967;s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"8";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:18:"0.0045454545454545";s:5:"title";s:0:"";}}'),
(101, 765, '_wp_attachment_image_alt', 'Sea and Rocks'),
(102, 766, '_wp_attached_file', '2011/07/michelle_049.jpg'),
(103, 766, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:24:"2011/07/michelle_049.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"michelle_049-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"michelle_049-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"michelle_049-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:7.0999999999999996447286321199499070644378662109375;s:6:"credit";s:0:"";s:6:"camera";s:18:"Canon PowerShot G3";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1096133874;s:9:"copyright";s:0:"";s:12:"focal_length";s:7:"15.8125";s:3:"iso";i:0;s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:0:"";}}'),
(104, 766, '_wp_attachment_image_alt', 'Big Sur'),
(105, 767, '_wp_attached_file', '2011/07/windmill.jpg'),
(106, 767, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:20:"2011/07/windmill.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"windmill-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"windmill-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"windmill-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:5.5999999999999996447286321199499070644378662109375;s:6:"credit";s:0:"";s:6:"camera";s:8:"DiMAGE 7";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1125077631;s:9:"copyright";s:0:"";s:12:"focal_length";s:11:"50.69140625";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:18:"0.0055555555555556";s:5:"title";s:7:"DCF 1.0";}}'),
(107, 767, '_wp_attachment_image_alt', 'Windmill'),
(108, 768, '_wp_attached_file', '2011/07/img_0513-1.jpg'),
(109, 768, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:533;s:4:"file";s:22:"2011/07/img_0513-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"img_0513-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"img_0513-1-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:5.5999999999999996447286321199499070644378662109375;s:6:"credit";s:10:"Picasa 2.0";s:6:"camera";s:12:"Canon EOS 5D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1158217614;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"105";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.005";s:5:"title";s:32:"Alas! I have found my Shangri-La";}}'),
(110, 768, '_wp_attachment_image_alt', 'Huatulco Coastline'),
(111, 769, '_wp_attached_file', '2011/07/img_0747.jpg'),
(112, 769, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1066;s:4:"file";s:20:"2011/07/img_0747.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"img_0747-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"img_0747-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"img_0747-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:11;s:6:"credit";s:0:"";s:6:"camera";s:19:"Canon EOS REBEL T2i";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1271654325;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:7:"0.00125";s:5:"title";s:0:"";}}'),
(113, 769, '_wp_attachment_image_alt', 'Brazil Beach'),
(114, 770, '_wp_attached_file', '2011/07/img_0767.jpg'),
(115, 770, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:533;s:4:"file";s:20:"2011/07/img_0767.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"img_0767-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"img_0767-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:10;s:6:"credit";s:10:"Picasa 2.6";s:6:"camera";s:12:"Canon EOS 5D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1158320386;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"105";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.002";s:5:"title";s:0:"";}}'),
(116, 770, '_wp_attachment_image_alt', 'Huatulco Coastline'),
(117, 771, '_wp_attached_file', '2011/07/img_8399.jpg'),
(118, 771, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1066;s:4:"file";s:20:"2011/07/img_8399.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"img_8399-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"img_8399-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"img_8399-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4.5;s:6:"credit";s:0:"";s:6:"camera";s:26:"Canon EOS DIGITAL REBEL XT";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1192368714;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"75";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(119, 771, '_wp_attachment_image_alt', 'Boat Barco Texture'),
(120, 821, '_wp_attached_file', '2012/07/originaldixielandjazzbandwithalbernard-stlouisblues.mp3'),
(121, 827, '_wp_attached_file', '2012/07/manhattansummer.jpg'),
(122, 827, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:27:"2012/07/manhattansummer.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"manhattansummer-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"manhattansummer-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.79999999999999982236431605997495353221893310546875;s:6:"credit";s:0:"";s:6:"camera";s:11:"C990Z,D490Z";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1089358496;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"5.6";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:17:"0.076923076923077";s:5:"title";s:22:"OLYMPUS DIGITAL CAMERA";}}'),
(123, 358, '_wp_old_slug', ''),
(124, 746, '_edit_lock', '1363197919:1'),
(125, 2, '_edit_lock', '1363197929:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=830 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2013-03-11 19:30:00', '2013-03-11 19:30:00', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2013-03-11 19:30:00', '2013-03-11 19:30:00', '', 0, 'http://localhost/sites/lexkarate.com/?p=1', 0, 'post', '', 1),
(2, 1, '2013-03-11 19:30:00', '2013-03-11 19:30:00', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/sites/lexkarate.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2013-03-11 19:30:00', '2013-03-11 19:30:00', '', 0, 'http://localhost/sites/lexkarate.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2013-03-11 19:30:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-03-11 19:30:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/sites/lexkarate.com/?p=3', 0, 'post', '', 0),
(128, 2, '2008-09-03 09:35:23', '2008-09-03 16:35:23', '<h2>Image Alignment Tests: Un-Captioned Images</h2>\n\n<h3 id="center-align-no-caption">Center-align, no caption</h3>\n\nCenter-aligned image with no caption, and text before and after. <img class="aligncenter size-thumbnail wp-image-536" alt="test-image-portrait" src="http://localhost/sites/lexkarate.com/wp-content/uploads/2010/08/test-image-portrait.jpg?w=99" width="99" height="150" /> ALorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed odio nibh, tincidunt adipiscing, pretium nec, tincidunt id, enim. Fusce scelerisque nunc vitae nisl. Quisque quis urna in velit dictum pellentesque. Vivamus a quam. Curabitur eu tortor id turpis tristique adipiscing. Morbi blandit. Maecenas vel est. Nunc aliquam, orci at accumsan commodo, libero nibh euismod augue, a ullamcorper velit dui et purus. Aenean volutpat, ipsum ac imperdiet fermentum, dui dui suscipit arcu, vitae dictum purus diam ac ligula.\n\n<h3 id="left-align-no-caption">Left-align, no caption</h3>\n\nLeft-aligned image with no caption, and text before and after. <img class="alignleft size-thumbnail wp-image-536" alt="test-image-portrait" src="http://localhost/sites/lexkarate.com/wp-content/uploads/2010/08/test-image-portrait.jpg?w=99" width="99" height="150" /> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed odio nibh, tincidunt adipiscing, pretium nec, tincidunt id, enim. Fusce scelerisque nunc vitae nisl. Quisque quis urna in velit dictum pellentesque. Vivamus a quam. Curabitur eu tortor id turpis tristique adipiscing. Morbi blandit. Maecenas vel est. Nunc aliquam, orci at accumsan commodo, libero nibh euismod augue, a ullamcorper velit dui et purus. Aenean volutpat, ipsum ac imperdiet fermentum, dui dui suscipit arcu, vitae dictum purus diam ac ligula.\n\n<h3 id="right-align-no-caption">Right-align, no caption</h3>\n\nRight-aligned image with no caption, and text before and after. <img class="alignright size-thumbnail wp-image-536" alt="test-image-portrait" src="http://localhost/sites/lexkarate.com/wp-content/uploads/2010/08/test-image-portrait.jpg?w=99" width="99" height="150" /> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed odio nibh, tincidunt adipiscing, pretium nec, tincidunt id, enim. Fusce scelerisque nunc vitae nisl. Quisque quis urna in velit dictum pellentesque. Vivamus a quam. Curabitur eu tortor id turpis tristique adipiscing. Morbi blandit. Maecenas vel est. Nunc aliquam, orci at accumsan commodo, libero nibh euismod augue, a ullamcorper velit dui et purus. Aenean volutpat, ipsum ac imperdiet fermentum, dui dui suscipit arcu, vitae dictum purus diam ac ligula.\n\n<h3 id="no-alignment-no-caption">No alignment, no caption</h3>\n\nNone-aligned image with no caption, and text before and after. <img class="alignnone size-thumbnail wp-image-536" alt="test-image-portrait" src="http://localhost/sites/lexkarate.com/wp-content/uploads/2010/08/test-image-portrait.jpg?w=99" width="99" height="150" /> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed odio nibh, tincidunt adipiscing, pretium nec, tincidunt id, enim. Fusce scelerisque nunc vitae nisl. Quisque quis urna in velit dictum pellentesque. Vivamus a quam. Curabitur eu tortor id turpis tristique adipiscing. Morbi blandit. Maecenas vel est. Nunc aliquam, orci at accumsan commodo, libero nibh euismod augue, a ullamcorper velit dui et purus. Aenean volutpat, ipsum ac imperdiet fermentum, dui dui suscipit arcu, vitae dictum purus diam ac ligula.\n\n\n\n<!--nextpage-->\n\n<h2>Image Alignment Tests: Captioned Images</h2>\n\n<h3 id="centered-image-with-caption">Center-align with Caption</h3>\n\nCenter-aligned image with caption, and text before and after.\n\n\n\n[caption id="attachment_544" align="aligncenter" width="300"]<a href="http://localhost/sites/lexkarate.com/wp-content/uploads/2011/01/boat.jpg"><img class="size-medium wp-image-544" title="boat" alt="" src="http://localhost/sites/lexkarate.com/wp-content/uploads/2011/01/boat.jpg?w=300" width="300" height="198" /></a> A picture is worth a thousand words[/caption]\n\n\n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed odio nibh, tincidunt adipiscing, pretium nec, tincidunt id, enim. Fusce scelerisque nunc vitae nisl. Quisque quis urna in velit dictum pellentesque. Vivamus a quam. Curabitur eu tortor id turpis tristique adipiscing. Morbi blandit. Maecenas vel est. Nunc aliquam, orci at accumsan commodo, libero nibh euismod augue, a ullamcorper velit dui et purus. Aenean volutpat, ipsum ac imperdiet fermentum, dui dui suscipit arcu, vitae dictum purus diam ac ligula.\n\n<h3 id="left-align-no-caption">Left-align with caption</h3>\n\nLeft-aligned image with caption, and text before and after.\n\n\n\n[caption id="attachment_544" align="alignleft" width="300"]<a href="http://localhost/sites/lexkarate.com/wp-content/uploads/2011/01/boat.jpg"><img class="size-medium wp-image-544" title="boat" alt="" src="http://localhost/sites/lexkarate.com/wp-content/uploads/2011/01/boat.jpg?w=300" width="300" height="198" /></a> A picture is worth a thousand words[/caption]\n\n\n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed odio nibh, tincidunt adipiscing, pretium nec, tincidunt id, enim. Fusce scelerisque nunc vitae nisl. Quisque quis urna in velit dictum pellentesque. Vivamus a quam. Curabitur eu tortor id turpis tristique adipiscing. Morbi blandit. Maecenas vel est. Nunc aliquam, orci at accumsan commodo, libero nibh euismod augue, a ullamcorper velit dui et purus. Aenean volutpat, ipsum ac imperdiet fermentum, dui dui suscipit arcu, vitae dictum purus diam ac ligula.\n\n<h3 id="right-align-no-caption">Right-align with caption</h3>\n\nRight-aligned image with caption, and text before and after.\n\n\n\n[caption id="attachment_544" align="alignright" width="300"]<a href="http://localhost/sites/lexkarate.com/wp-content/uploads/2011/01/boat.jpg"><img class="size-medium wp-image-544" title="boat" alt="" src="http://localhost/sites/lexkarate.com/wp-content/uploads/2011/01/boat.jpg?w=300" width="300" height="198" /></a> A picture is worth a thousand words[/caption]\n\n\n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed odio nibh, tincidunt adipiscing, pretium nec, tincidunt id, enim. Fusce scelerisque nunc vitae nisl. Quisque quis urna in velit dictum pellentesque. Vivamus a quam. Curabitur eu tortor id turpis tristique adipiscing. Morbi blandit. Maecenas vel est. Nunc aliquam, orci at accumsan commodo, libero nibh euismod augue, a ullamcorper velit dui et purus. Aenean volutpat, ipsum ac imperdiet fermentum, dui dui suscipit arcu, vitae dictum purus diam ac ligula.\n\n<h3 id="no-alignment-no-caption">No alignment, with caption</h3>\n\nNone-aligned image with caption, and text before and after.\n\n\n\n[caption id="attachment_544" align="alignnone" width="300"]<a href="http://localhost/sites/lexkarate.com/wp-content/uploads/2011/01/boat.jpg"><img class="size-medium wp-image-544" title="boat" alt="" src="http://localhost/sites/lexkarate.com/wp-content/uploads/2011/01/boat.jpg?w=300" width="300" height="198" /></a> A picture is worth a thousand words[/caption]\n\n\n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed odio nibh, tincidunt adipiscing, pretium nec, tincidunt id, enim. Fusce scelerisque nunc vitae nisl. Quisque quis urna in velit dictum pellentesque. Vivamus a quam. Curabitur eu tortor id turpis tristique adipiscing. Morbi blandit. Maecenas vel est. Nunc aliquam, orci at accumsan commodo, libero nibh euismod augue, a ullamcorper velit dui et purus. Aenean volutpat, ipsum ac imperdiet fermentum, dui dui suscipit arcu, vitae dictum purus diam ac ligula.\n\n\n\n<!--nextpage-->\n\n<h2>Other Image Tests</h2>\n\n<h3 id="wide-image-resized-in-editor">Wide Image, Resized In Editor</h3>\n\nImage is 900x598px, resized in editor to 329x222.\n\n\n\n<img class="alignnone size-full" alt="test-image-landscape-900" src="http://localhost/sites/lexkarate.com/wp-content/uploads/2010/08/test-image-landscape-900.jpg" width="329" height="222" />\n\n<h3 id="wide-image-not-resized">Wide Image, Not Resized</h3>\n\nImage is 900x598px, not resized in editor, and does not overflow outside of the content area.\n\n\n\n<img class="alignnone size-full" alt="test-image-landscape-900" src="http://localhost/sites/lexkarate.com/wp-content/uploads/2010/08/test-image-landscape-900.jpg?w=900" width="900" height="598" />\n\n<h3 id="image-thumbnails">Image Thumbnails</h3>\n\n<img class="alignnone size-thumbnail wp-image-536" title="test-image-portrait" alt="" src="http://localhost/sites/lexkarate.com/wp-content/uploads/2010/08/test-image-portrait.jpg?w=99" width="99" height="150" /><img class="alignnone size-thumbnail wp-image-535" title="test-image-landscape" alt="" src="http://localhost/sites/lexkarate.com/wp-content/uploads/2010/08/test-image-landscape.jpg?w=150" width="150" height="99" />\n\n\n\n<!--nextpage-->\n\n<h2 id="clearing-floats">Clearing Floats</h2>\n\nThe last item in this post is a floated image. Make sure any elements after it are clearing properly.\n\n\n\n<a href="http://localhost/sites/lexkarate.com/wp-content/uploads/2010/08/spectacles.gif"><img class="alignleft size-full wp-image-543" title="spectacles" alt="" src="http://localhost/sites/lexkarate.com/wp-content/uploads/2010/08/spectacles.gif" width="165" height="210" /></a>', 'Images Test', '', 'publish', 'closed', 'closed', '', 'images-test', '', '', '2008-09-03 09:35:23', '2008-09-03 16:35:23', '', 0, 'http://wpthemetestdata.wordpress.com/2007/09/04/test-with-wide-image-resized/', 0, 'post', '', 0),
(131, 2, '2008-04-04 09:38:05', '2008-04-04 16:38:05', 'The password is secret.', 'Test with secret password', '', 'publish', 'closed', 'closed', 'secret', 'test-with-secret-password', '', '', '2008-04-04 09:38:05', '2008-04-04 16:38:05', '', 0, 'http://wpthemetestdata.wordpress.com/2007/09/04/test-with-secret-password/', 0, 'post', '', 0),
(133, 2, '2008-05-04 09:39:23', '2008-05-04 16:39:23', 'This Post has no Post Title, but must still display a link to the single-page Post view.', '', '', 'publish', 'closed', 'closed', '', 'no-title', '', '', '2008-05-04 09:39:23', '2008-05-04 16:39:23', '', 0, 'http://wpthemetestdata.wordpress.com/2007/09/04/14/', 0, 'post', '', 0),
(134, 2, '2008-05-05 09:39:56', '2008-05-05 16:39:56', '', 'This post has no body', '', 'publish', 'closed', 'closed', '', 'this-post-has-no-body', '', '', '2008-05-05 09:39:56', '2008-05-05 16:39:56', '', 0, 'http://wpthemetestdata.wordpress.com/2007/09/04/this-post-has-no-body/', 0, 'post', '', 0),
(146, 2, '2007-09-04 09:52:50', '2007-09-04 16:52:50', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec mollis. Quisque convallis libero in sapien pharetra tincidunt. Aliquam elit ante, malesuada id, tempor eu, gravida id, odio. Maecenas suscipit, risus et eleifend imperdiet, nisi orci ullamcorper massa, et adipiscing orci velit quis magna. Praesent sit amet ligula id orci venenatis auctor. Phasellus porttitor, metus non tincidunt dapibus, orci pede pretium neque, sit amet adipiscing ipsum lectus et libero. Aenean bibendum. Curabitur mattis quam id urna. Vivamus dui. Donec nonummy lacinia lorem. Cras risus arcu, sodales ac, ultrices ac, mollis quis, justo. Sed a libero. Quisque risus erat, posuere at, tristique non, lacinia quis, eros.\n\n\n\nCras volutpat, lacus quis semper pharetra, nisi enim dignissim est, et sollicitudin quam ipsum vel mi. Sed commodo urna ac urna. Nullam eu tortor. Curabitur sodales scelerisque magna. Donec ultricies tristique pede. Nullam libero. Nam sollicitudin felis vel metus. Nullam posuere molestie metus. Nullam molestie, nunc id suscipit rhoncus, felis mi vulputate lacus, a ultrices tortor dolor eget augue. Aenean ultricies felis ut turpis. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Suspendisse placerat tellus ac nulla. Proin adipiscing sem ac risus. Maecenas nisi. Cras semper.\n\n\n\nPraesent interdum mollis neque. In egestas nulla eget pede. Integer eu purus sed diam dictum scelerisque. Morbi cursus velit et felis. Maecenas faucibus aliquet erat. In aliquet rhoncus tellus. Integer auctor nibh a nunc fringilla tempus. Cras turpis urna, dignissim vel, suscipit pulvinar, rutrum quis, sem. Ut lobortis convallis dui. Sed nonummy orci a justo. Morbi nec diam eget eros eleifend tincidunt.\n\n\n\nCurabitur non elit. Pellentesque iaculis, nisl non aliquet adipiscing, purus urna aliquet orci, sed sodales pede neque at massa. Pellentesque laoreet, enim eget varius mollis, sapien erat suscipit metus, sit amet iaculis nulla sapien id felis. Aliquam erat volutpat. Nam congue nulla a ligula. Morbi tempor hendrerit erat. Curabitur augue. Vestibulum nulla est, commodo et, fringilla quis, bibendum eget, ipsum. Suspendisse pulvinar iaculis ante. Mauris dignissim ante quis nisi. Aliquam ante mi, aliquam et, pellentesque ac, dapibus et, enim. In vulputate justo vel magna. Phasellus imperdiet justo. Proin odio orci, dapibus id, porta a, pellentesque id, erat. Aliquam erat volutpat. Mauris nonummy varius libero. Sed dolor ipsum, tempor non, aliquet et, pulvinar quis, dui. Pellentesque mauris diam, lobortis id, varius varius, facilisis at, nulla.\n\n\n\nCras pede. Nullam id velit sit amet turpis tincidunt sagittis. Nunc malesuada. Nunc consequat scelerisque odio. Donec eu leo. Nunc pellentesque felis sed odio. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus lobortis metus in lectus. Cras mollis quam eget sapien. Pellentesque non lorem sit amet sem lacinia euismod.\n\n\n\nNulla eget diam eget leo imperdiet consequat. Morbi nunc magna, pellentesque eu, porta at, ultricies ut, neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In tincidunt. Praesent ut orci id eros congue ultrices. Mauris non neque. Donec nulla ante, molestie sit amet, fermentum nec, blandit sit amet, purus. Fusce eget diam eu odio iaculis mollis. Phasellus consectetuer pede quis nisi. Proin non sem ut elit pulvinar faucibus. In a turpis nec augue fringilla elementum.\n\n\n\nNullam felis. Donec in nulla. Suspendisse sodales, turpis in suscipit ullamcorper, enim nunc sagittis risus, eu auctor velit tortor ut turpis. Mauris id augue at neque aliquam eleifend. Sed eget augue. Nunc faucibus ligula sed massa. Etiam non nulla. Etiam accumsan ullamcorper nisl. In pharetra massa at nunc. Nunc elementum. Duis sodales enim nec libero. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Praesent dapibus eros sodales urna. Duis magna nisi, lobortis quis, tincidunt rutrum, posuere non, ipsum.\n\n\n\nAliquam convallis neque vitae diam. In diam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis fermentum arcu in tortor. Sed nibh leo, rhoncus eu, fermentum et, scelerisque ac, massa. Cras id turpis. Etiam commodo sem luctus lorem. Morbi at mi. In rutrum. Aenean luctus pede euismod tortor. Phasellus dictum. Cras neque justo, venenatis sit amet, tristique et, vulputate in, dui. Etiam sed mi gravida sapien imperdiet dictum. Aliquam gravida orci a tortor. Donec tempor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus risus ante, pellentesque vitae, luctus eget, scelerisque sed, libero. Donec massa.\n\n\n\nDonec libero mauris, volutpat at, convallis vel, laoreet euismod, augue. In accumsan malesuada risus. Mauris metus magna, condimentum in, nonummy non, ornare eu, velit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin posuere. Proin rhoncus rutrum lorem. Phasellus dignissim massa non libero volutpat tincidunt. In hac habitasse platea dictumst. Phasellus eget eros. Nulla in nulla. Vivamus quis mauris. Maecenas pharetra rhoncus tellus. Sed sit amet lacus.\n\n\n\nQuisque interdum felis a tellus. Aliquam sed diam ac velit aliquam rutrum. Morbi commodo, risus a pulvinar adipiscing, tortor pede posuere risus, ac ornare tellus massa nec lectus. Vivamus mollis metus ac sapien. Nam sed est a libero ullamcorper dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean a erat ac nibh accumsan volutpat. Phasellus pulvinar consequat turpis. Curabitur ante metus, tempus ut, consequat eu, sollicitudin sit amet, justo. Duis ut libero.\n\n\n\nÕ€Õ¡ÕµÕ¥Ö€Õ¥Õ¶\n\n\n\nLorem Ipsum-Õ¨ Õ¿ÕºÕ¡Õ£Ö€Õ¸Ö‚Õ©ÕµÕ¡Õ¶ Ö‡ Õ¿ÕºÕ¡Õ£Ö€Õ¡Õ¯Õ¡Õ¶ Õ¡Ö€Õ¤ÕµÕ¸Ö‚Õ¶Õ¡Õ¢Õ¥Ö€Õ¸Ö‚Õ©ÕµÕ¡Õ¶ Õ°Õ¡Õ´Õ¡Ö€ Õ¶Õ¡Õ­Õ¡Õ¿Õ¥Õ½Õ¾Õ¡Õ® Õ´Õ¸Õ¤Õ¥Õ¬Õ¡ÕµÕ«Õ¶ Õ¿Õ¥Ö„Õ½Õ¿ Õ§: ÕÕ¯Õ½Õ¡Õ® 1500-Õ¡Õ¯Õ¡Õ¶Õ¶Õ¥Ö€Õ«Ö` Lorem Ipsum-Õ¨ Õ°Õ¡Õ¶Õ¤Õ«Õ½Õ¡ÖÕ¥Õ¬ Õ§ Õ¿ÕºÕ¡Õ£Ö€Õ¡Õ¯Õ¡Õ¶ Õ¡Ö€Õ¤ÕµÕ¸Ö‚Õ¶Õ¡Õ¢Õ¥Ö€Õ¸Ö‚Õ©ÕµÕ¡Õ¶ Õ½Õ¿Õ¡Õ¶Õ¤Õ¡Ö€Õ¿ Õ´Õ¸Õ¤Õ¥Õ¬Õ¡ÕµÕ«Õ¶ Õ¿Õ¥Ö„Õ½Õ¿, Õ«Õ¶Õ¹Õ¨ Õ´Õ« Õ¡Õ¶Õ°Õ¡ÕµÕ¿ Õ¿ÕºÕ¡Õ£Ö€Õ«Õ¹Õ« Õ¯Õ¸Õ²Õ´Õ«Ö Õ¿Õ¡Ö€Õ¢Õ¥Ö€ Õ¿Õ¡Õ¼Õ¡Õ¿Õ¥Õ½Õ¡Õ¯Õ¶Õ¥Ö€Õ« Ö…Ö€Õ«Õ¶Õ¡Õ¯Õ¶Õ¥Ö€Õ« Õ£Õ«Ö€Ö„ Õ½Õ¿Õ¥Õ²Õ®Õ¥Õ¬Õ¸Ö‚ Õ»Õ¡Õ¶Ö„Õ¥Ö€Õ« Õ¡Ö€Õ¤ÕµÕ¸Ö‚Õ¶Ö„ Õ§: Ô±ÕµÕ½ Õ¿Õ¥Ö„Õ½Õ¿Õ¨ Õ¸Õ¹ Õ´Õ«Õ¡ÕµÕ¶ Õ¯Õ¡Ö€Õ¸Õ²Õ¡ÖÕ¥Õ¬ Õ§ Õ£Õ¸ÕµÕ¡Õ¿Ö‡Õ¥Õ¬ Õ°Õ«Õ¶Õ£ Õ¤Õ¡Ö€Õ¡Õ·Ö€Õ»Õ¡Õ¶, Õ¡ÕµÕ¬Ö‡ Õ¶Õ¥Ö€Õ¡Õ¼Õ¾Õ¥Õ¬ Õ§ Õ§Õ¬Õ¥Õ¯Õ¿Ö€Õ¸Õ¶Õ¡ÕµÕ«Õ¶ Õ¿ÕºÕ¡Õ£Ö€Õ¸Ö‚Õ©ÕµÕ¡Õ¶ Õ´Õ¥Õ»` Õ´Õ¶Õ¡Õ¬Õ¸Õ¾ Õ§Õ¡ÕºÕ¥Õ½ Õ¡Õ¶ÖƒÕ¸ÖƒÕ¸Õ­: Ô±ÕµÕ¶ Õ°Õ¡ÕµÕ¿Õ¶Õ« Õ§ Õ¤Õ¡Ö€Õ±Õ¥Õ¬ 1960-Õ¡Õ¯Õ¡Õ¶Õ¶Õ¥Ö€Õ«Õ¶ Lorem Ipsum Õ¢Õ¸Õ¾Õ¡Õ¶Õ¤Õ¡Õ¯Õ¸Õ² Letraset Õ§Õ»Õ¥Ö€Õ« Õ©Õ¸Õ²Õ¡Ö€Õ¯Õ´Õ¡Õ¶ Õ¡Ö€Õ¤ÕµÕ¸Ö‚Õ¶Ö„Õ¸Ö‚Õ´, Õ«Õ½Õ¯ Õ¡Õ¾Õ¥Õ¬Õ« Õ¸Ö‚Õ· Õ°Õ¡Õ´Õ¡Õ¯Õ¡Ö€Õ£Õ¹Õ¡ÕµÕ«Õ¶ Õ¿ÕºÕ¡Õ£Ö€Õ¸Ö‚Õ©ÕµÕ¡Õ¶ Õ¡ÕµÕ¶ÕºÕ«Õ½Õ« Õ®Ö€Õ¡Õ£Ö€Õ¥Ö€Õ« Õ©Õ¸Õ²Õ¡Ö€Õ¯Õ´Õ¡Õ¶ Õ°Õ¥Õ¿Ö‡Õ¡Õ¶Ö„Õ¸Õ¾, Õ«Õ¶Õ¹ÕºÕ«Õ½Õ«Õ¶ Õ§ Aldus PageMaker-Õ¨, Õ¸Ö€Õ¨ Õ¶Õ¥Ö€Õ¡Õ¼Õ¸Ö‚Õ´ Õ§ Lorem Ipsum-Õ« Õ¿Õ¡Ö€Õ¡Õ¿Õ¥Õ½Õ¡Õ¯Õ¶Õ¥Ö€:\n\n\n\nÐ‘ÑŠÐ»Ð³Ð°Ñ€ÑÐºÐ¸\n\n\n\nLorem Ipsum Ðµ ÐµÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð°Ñ€ÐµÐ½ Ð¿Ñ€Ð¸Ð¼ÐµÑ€ÐµÐ½ Ñ‚ÐµÐºÑÑ‚, Ð¸Ð·Ð¿Ð¾Ð»Ð·Ð²Ð°Ð½ Ð² Ð¿ÐµÑ‡Ð°Ñ‚Ð°Ñ€ÑÐºÐ°Ñ‚Ð° Ð¸ Ñ‚Ð¸Ð¿Ð¾Ð³Ñ€Ð°Ñ„ÑÐºÐ°Ñ‚Ð° Ð¸Ð½Ð´ÑƒÑÑ‚Ñ€Ð¸Ñ. Lorem Ipsum Ðµ Ð¸Ð½Ð´ÑƒÑÑ‚Ñ€Ð¸Ð°Ð»ÐµÐ½ ÑÑ‚Ð°Ð½Ð´Ð°Ñ€Ñ‚ Ð¾Ñ‚ Ð¾ÐºÐ¾Ð»Ð¾ 1500 Ð³Ð¾Ð´Ð¸Ð½Ð°, ÐºÐ¾Ð³Ð°Ñ‚Ð¾ Ð½ÐµÐ¸Ð·Ð²ÐµÑÑ‚ÐµÐ½ Ð¿ÐµÑ‡Ð°Ñ‚Ð°Ñ€ Ð²Ð·ÐµÐ¼Ð° Ð½ÑÐºÐ¾Ð»ÐºÐ¾ Ð¿ÐµÑ‡Ð°Ñ‚Ð°Ñ€ÑÐºÐ¸ Ð±ÑƒÐºÐ²Ð¸ Ð¸ Ð³Ð¸ Ñ€Ð°Ð·Ð±ÑŠÑ€ÐºÐ²Ð°, Ð·Ð° Ð´Ð° Ð½Ð°Ð¿ÐµÑ‡Ð°Ñ‚Ð° Ñ Ñ‚ÑÑ… ÐºÐ½Ð¸Ð³Ð° Ñ Ð¿Ñ€Ð¸Ð¼ÐµÑ€Ð½Ð¸ ÑˆÑ€Ð¸Ñ„Ñ‚Ð¾Ð²Ðµ. Ð¢Ð¾Ð·Ð¸ Ð½Ð°Ñ‡Ð¸Ð½ Ð½Ðµ ÑÐ°Ð¼Ð¾ Ðµ Ð¾Ñ†ÐµÐ»ÑÐ» Ð¿Ð¾Ð²ÐµÑ‡Ðµ Ð¾Ñ‚ 5 Ð²ÐµÐºÐ°, Ð½Ð¾ Ðµ Ð½Ð°Ð²Ð»ÑÐ·ÑŠÐ» Ð¸ Ð² Ð¿ÑƒÐ±Ð»Ð¸ÐºÑƒÐ²Ð°Ð½ÐµÑ‚Ð¾ Ð½Ð° ÐµÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¸ Ð¸Ð·Ð´Ð°Ð½Ð¸Ñ ÐºÐ°Ñ‚Ð¾ Ðµ Ð·Ð°Ð¿Ð°Ð·ÐµÐ½ Ð¿Ð¾Ñ‡Ñ‚Ð¸ Ð±ÐµÐ· Ð¿Ñ€Ð¾Ð¼ÑÐ½Ð°. ÐŸÐ¾Ð¿ÑƒÐ»ÑÑ€Ð¸Ð·Ð¸Ñ€Ð°Ð½ Ðµ Ð¿Ñ€ÐµÐ· 60Ñ‚Ðµ Ð³Ð¾Ð´Ð¸Ð½Ð¸ Ð½Ð° 20Ñ‚Ð¸ Ð²ÐµÐº ÑÑŠÑ Ð¸Ð·Ð´Ð°Ð²Ð°Ð½ÐµÑ‚Ð¾ Ð½Ð° Letraset Ð»Ð¸ÑÑ‚Ð¸, ÑÑŠÐ´ÑŠÑ€Ð¶Ð°Ñ‰Ð¸ Lorem Ipsum Ð¿Ð°ÑÐ°Ð¶Ð¸, Ð¿Ð¾Ð¿ÑƒÐ»ÑÑ€ÐµÐ½ Ðµ Ð¸ Ð² Ð½Ð°ÑˆÐ¸ Ð´Ð½Ð¸ Ð²ÑŠÐ² ÑÐ¾Ñ„Ñ‚ÑƒÐµÑ€ Ð·Ð° Ð¿ÐµÑ‡Ð°Ñ‚Ð½Ð¸ Ð¸Ð·Ð´Ð°Ð½Ð¸Ñ ÐºÐ°Ñ‚Ð¾ Aldus PageMaker, ÐºÐ¾Ð¹Ñ‚Ð¾ Ð²ÐºÐ»ÑŽÑ‡Ð²Ð° Ñ€Ð°Ð·Ð»Ð¸Ñ‡Ð½Ð¸ Ð²ÐµÑ€ÑÐ¸Ð¸ Ð½Ð° Lorem Ipsum.\n\n\n\nCatalÃ\n\n\n\nLorem Ipsum Ã©s un text de farciment usat per la indÃºstria de la tipografia i la impremta. Lorem Ipsum ha estat el text estÃ ndard de la indÃºstria des de l''any 1500, quan un impressor desconegut va fer servir una galerada de text i la va mesclar per crear un llibre de mostres tipogrÃ fiques. No nomÃ©s ha sobreviscut cinc segles, sinÃ³ que ha fet el salt cap a la creaciÃ³ de tipus de lletra electrÃ²nics, romanent essencialment sense canvis. Es va popularitzar l''any 1960 amb el llanÃ§ament de fulls Letraset que contenien passatges de Lorem Ipsum, i mÃ©s recentment amb programari d''autoediciÃ³ com Aldus Pagemaker que inclou versions de Lorem Ipsum.\n\n\n\nHrvatski\n\n\n\nLorem Ipsum je jednostavno probni tekst koji se koristi u tiskarskoj i slovoslagarskoj industriji. Lorem Ipsum postoji kao industrijski standard joÅ¡ od 16-og stoljeÄ‡a, kada je nepoznati tiskar uzeo tiskarsku galiju slova i posloÅ¾io ih da bi napravio knjigu s uzorkom tiska. Taj je tekst ne samo preÅ¾ivio pet stoljeÄ‡a, veÄ‡ se i vinuo u svijet elektronskog slovoslagarstva, ostajuÄ‡i u suÅ¡tini nepromijenjen. Postao je popularan tijekom 1960-ih s pojavom Letraset listova s odlomcima Lorem Ipsum-a, a u skorije vrijeme sa software-om za stolno izdavaÅ¡tvo kao Å¡to je Aldus PageMaker koji takoÄ‘er sadrÅ¾i varijante Lorem Ipsum-a.\n\n\n\nÄŒesky\n\n\n\nLorem Ipsum je demonstrativnÃ­ vÃ½plÅˆovÃ½ text pouÅ¾Ã­vanÃ½ v tiskaÅ™skÃ©m a knihaÅ™skÃ©m prÅ¯myslu. Lorem Ipsum je povaÅ¾ovÃ¡no za standard v tÃ©to oblasti uÅ¾ od zaÄÃ¡tku 16. stoletÃ­, kdy dnes neznÃ¡mÃ½ tiskaÅ™ vzal kusy textu a na jejich zÃ¡kladÄ› vytvoÅ™il speciÃ¡lnÃ­ vzorovou knihu. Jeho odkaz nevydrÅ¾el pouze pÄ›t stoletÃ­, on pÅ™eÅ¾il i nÃ¡stup elektronickÃ© sazby v podstatÄ› beze zmÄ›ny. NejvÃ­ce popularizovÃ¡no bylo Lorem Ipsum v Å¡edesÃ¡tÃ½ch letech 20. stoletÃ­, kdy byly vydÃ¡vÃ¡ny speciÃ¡lnÃ­ vzornÃ­ky s jeho pasÃ¡Å¾emi a pozdÄ›ji pak dÃ­ky poÄÃ­taÄovÃ½m DTP programÅ¯m jako Aldus PageMaker.\n\n\n\nRomÃ¢na\n\n\n\nLorem Ipsum este pur ÅŸi simplu o machetÄƒ pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei Ã®ncÄƒ din secolul al XVI-lea, cÃ¢nd un tipograf anonim a luat o planÅŸetÄƒ de litere ÅŸi le-a amestecat pentru a crea o carte demonstrativÄƒ pentru literele respective. Nu doar cÄƒ a supravieÅ£uit timp de cinci secole, dar ÅŸi a facut saltul Ã®n tipografia electronicÄƒ practic neschimbatÄƒ. A fost popularizatÄƒ Ã®n anii ''60 odatÄƒ cu ieÅŸirea colilor Letraset care conÅ£ineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.\n\n\n\nÐ¡Ñ€Ð¿ÑÐºÐ¸\n\n\n\nLorem Ipsum Ñ˜Ðµ Ñ˜ÐµÐ´Ð½Ð¾ÑÑ‚Ð°Ð²Ð½Ð¾ Ð¼Ð¾Ð´ÐµÐ» Ñ‚ÐµÐºÑÑ‚Ð° ÐºÐ¾Ñ˜Ð¸ ÑÐµ ÐºÐ¾Ñ€Ð¸ÑÑ‚Ð¸ Ñƒ ÑˆÑ‚Ð°Ð¼Ð¿Ð°Ñ€ÑÐºÐ¾Ñ˜ Ð¸ ÑÐ»Ð¾Ð²Ð¾ÑÐ»Ð°Ð³Ð°Ñ‡ÐºÐ¾Ñ˜ Ð¸Ð½Ð´ÑƒÑÑ‚Ñ€Ð¸Ñ˜Ð¸. Lorem ipsum Ñ˜Ðµ Ð±Ð¸Ð¾ ÑÑ‚Ð°Ð½Ð´Ð°Ñ€Ð´ Ð·Ð° Ð¼Ð¾Ð´ÐµÐ» Ñ‚ÐµÐºÑÑ‚Ð° Ñ˜Ð¾Ñˆ Ð¾Ð´ 1500. Ð³Ð¾Ð´Ð¸Ð½Ðµ, ÐºÐ°Ð´Ð° Ñ˜Ðµ Ð½ÐµÐ¿Ð¾Ð·Ð½Ð°Ñ‚Ð¸ ÑˆÑ‚Ð°Ð¼Ð¿Ð°Ñ€ ÑƒÐ·ÐµÐ¾ ÐºÑƒÑ‚Ð¸Ñ˜Ñƒ ÑÐ° ÑÐ»Ð¾Ð²Ð¸Ð¼Ð° Ð¸ ÑÐ»Ð¾Ð¶Ð¸Ð¾ Ð¸Ñ… ÐºÐ°ÐºÐ¾ Ð±Ð¸ Ð½Ð°Ð¿Ñ€Ð°Ð²Ð¸Ð¾ ÑƒÐ·Ð¾Ñ€Ð°Ðº ÐºÑšÐ¸Ð³Ðµ. ÐÐµ ÑÐ°Ð¼Ð¾ ÑˆÑ‚Ð¾ Ñ˜Ðµ Ð¾Ð²Ð°Ñ˜ Ð¼Ð¾Ð´ÐµÐ» Ð¾Ð¿ÑÑ‚Ð°Ð¾ Ð¿ÐµÑ‚ Ð²ÐµÐºÐ¾Ð²Ð°, Ð½ÐµÐ³Ð¾ Ñ˜Ðµ Ñ‡Ð°Ðº Ð¿Ð¾Ñ‡ÐµÐ¾ Ð´Ð° ÑÐµ ÐºÐ¾Ñ€Ð¸ÑÑ‚Ð¸ Ð¸ Ñƒ ÐµÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½ÑÐºÐ¸Ð¼ Ð¼ÐµÐ´Ð¸Ñ˜Ð¸Ð¼Ð°, Ð½ÐµÐ¿Ñ€Ð¾Ð¼ÐµÐ½Ð¸Ð²ÑˆÐ¸ ÑÐµ. ÐŸÐ¾Ð¿ÑƒÐ»Ð°Ñ€Ð¸Ð·Ð¾Ð²Ð°Ð½ Ñ˜Ðµ ÑˆÐµÐ·Ð´ÐµÑÐµÑ‚Ð¸Ñ… Ð³Ð¾Ð´Ð¸Ð½Ð° Ð´Ð²Ð°Ð´ÐµÑÐµÑ‚Ð¾Ð³ Ð²ÐµÐºÐ° Ð·Ð°Ñ˜ÐµÐ´Ð½Ð¾ ÑÐ° Ð»Ð¸ÑÑ‚Ð¾Ð²Ð¸Ð¼Ð° Ð»ÐµÑ‚ÐµÑ€ÑÐµÑ‚Ð° ÐºÐ¾Ñ˜Ð¸ ÑÑƒ ÑÐ°Ð´Ñ€Ð¶Ð°Ð»Ð¸ Lorem Ipsum Ð¿Ð°ÑÑƒÑÐµ, Ð° Ð´Ð°Ð½Ð°Ñ ÑÐ° ÑÐ¾Ñ„Ñ‚Ð²ÐµÑ€ÑÐºÐ¸Ð¼ Ð¿Ð°ÐºÐµÑ‚Ð¾Ð¼ Ð·Ð° Ð¿Ñ€ÐµÐ»Ð¾Ð¼ ÐºÐ°Ð¾ ÑˆÑ‚Ð¾ Ñ˜Ðµ Aldus PageMaker ÐºÐ¾Ñ˜Ð¸ Ñ˜Ðµ ÑÐ°Ð´Ñ€Ð¶Ð°Ð¾ Lorem Ipsum Ð²ÐµÑ€Ð·Ð¸Ñ˜Ðµ.', 'Lorem Ipsum', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum', '', '', '2007-09-04 09:52:50', '2007-09-04 16:52:50', '', 0, 'http://wpthemetestdata.wordpress.com/lorem-ipsum/', 7, 'page', '', 0),
(149, 2, '2008-03-03 10:11:37', '2008-03-03 17:11:37', 'Here''s a post with some comments.', 'Comment Test', '', 'publish', 'open', 'closed', '', 'comment-test', '', '', '2008-03-03 10:11:37', '2008-03-03 17:11:37', '', 0, 'http://wpthemetestdata.wordpress.com/2007/09/04/comment-test/', 0, 'post', '', 20),
(151, 2, '2008-03-01 10:17:18', '2008-03-01 17:17:18', 'This post has many trackbacks.<span style="font-family:Arial;font-size:11px;line-height:normal;" class="Apple-style-span">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Cras ligula. Vivamus urna diam, mollis nec, pellentesque et, semper nec, lorem. Nam lobortis, eros a feugiat porttitor, nibh mi imperdiet nulla, eu venenatis diam enim non eros. Duis consectetuer augue a ante. Vivamus adipiscing orci et ipsum. Ut consectetuer lacinia magna. Etiam id orci. Vestibulum pede magna, feugiat et, adipiscing vitae, tincidunt non, mauris. Curabitur auctor diam non nibh. Fusce nec diam. Praesent laoreet blandit turpis. Phasellus et eros. Nulla venenatis nulla ut magna. Nunc porttitor eros sed quam. Morbi id nisi ut sem faucibus tempus.</span>Â ', 'Many Trackbacks', '', 'publish', 'closed', 'closed', '', 'many-trackbacks', '', '', '2008-03-01 10:17:18', '2008-03-01 17:17:18', '', 0, 'http://wpthemetestdata.wordpress.com/2007/09/04/many-trackbacks/', 0, 'post', '', 5),
(152, 2, '2008-03-02 10:21:15', '2008-03-02 10:21:15', 'Comments are disabled. This post should display no comment-reply form.', 'Comments Disabled', '', 'publish', 'closed', 'closed', '', 'comments-disabled', '', '', '2008-03-02 10:21:15', '2008-03-02 10:21:15', '', 0, 'http://wpthemetestdata.wordpress.com/2007/09/04/no-comments/', 0, 'post', '', 0),
(155, 2, '2007-09-04 10:47:47', '2007-09-04 17:47:47', 'Repository-hosted Themes are required to support display of comments on static Pages as well as on single blog Posts. Â This static Page has comments, and these comments should be displayed.\n\n\n\nIf the Theme includes a custom option to prevent static Pages from displaying comments, such option must be disabled (i.e. so that static Pages display comments) by default.\n\n\n\nAlso, verify that this Page does not display taxonomy information (e.g. categories or tags) orÂ time-stampÂ information (Page publish date/time).', 'Page with comments', '', 'publish', 'open', 'closed', '', 'page-with-comments', '', '', '2007-09-04 10:47:47', '2007-09-04 17:47:47', '', 734, 'http://wpthemetestdata.wordpress.com/page-with-comments/', 3, 'page', '', 3),
(156, 2, '2007-09-04 10:48:10', '2007-09-04 17:48:10', 'This static Page is set not to allow comments. Verify that the Page does not display a comment list, comment reply links, or comment reply form.\n\n\n\nAlso, verify that the Page does not display a "comments are closed" type message. Such messages are not suitable for static Pages, and should only be used on blog Posts.', 'Page with comments disabled', '', 'publish', 'closed', 'closed', '', 'page-with-comments-disabled', '', '', '2007-09-04 10:48:10', '2007-09-04 17:48:10', '', 734, 'http://wpthemetestdata.wordpress.com/page-with-comments-disabled/', 4, 'page', '', 0),
(167, 2, '2008-05-02 06:09:34', '2008-05-02 13:09:34', 'This post has far too many tags.', 'Many Tags', '', 'publish', 'closed', 'closed', '', 'many-tags', '', '', '2008-05-02 06:09:34', '2008-05-02 13:09:34', '', 0, 'http://wpthemetestdata.wordpress.com/2007/11/24/many-tags/', 0, 'post', '', 0),
(168, 2, '2008-05-03 06:19:03', '2008-05-03 13:19:03', 'This post has far too many categories.', 'Many Categories', '', 'publish', 'closed', 'closed', '', 'many-categories', '', '', '2008-05-03 06:19:03', '2008-05-03 13:19:03', '', 0, 'http://wpthemetestdata.wordpress.com/2007/11/24/many-categories/', 0, 'post', '', 0),
(172, 2, '2007-12-11 16:23:16', '2007-12-11 06:23:16', 'Level 3 of the reverse hierarchy test.', 'Level 3', '', 'publish', 'closed', 'closed', '', 'level-3', '', '', '2007-12-11 16:23:16', '2007-12-11 06:23:16', '', 173, 'http://wpthemetestdata.wordpress.com/level-3/', 0, 'page', '', 0),
(173, 2, '2007-12-11 16:23:33', '2007-12-11 06:23:33', 'Level 2 of the reverse hierarchy test.', 'Level 2', '', 'publish', 'closed', 'closed', '', 'level-2', '', '', '2007-12-11 16:23:33', '2007-12-11 06:23:33', '', 174, 'http://wpthemetestdata.wordpress.com/level-2/', 0, 'page', '', 0),
(174, 2, '2007-12-11 16:25:40', '2007-12-11 23:25:40', 'Level 1 of the reverse hierarchy test.  This is to make sure the importer correctly assigns parents and children even when the children come first in the export file.', 'Level 1', '', 'publish', 'closed', 'closed', '', 'level-1', '', '', '2007-12-11 16:25:40', '2007-12-11 23:25:40', '', 0, 'http://wpthemetestdata.wordpress.com/level-1/', 5, 'page', '', 0),
(188, 2, '2008-09-04 23:02:20', '2008-09-05 06:02:20', 'This is a sticky post!!! Make sure it sticks!\n\n\n\nThis should then split into other pages with layout, images, HTML tags, and other things.\n\n\n\n<!--nextpage-->\n\n<h2>Paragraph Alignment Tests</h2>\n\n<h3>Default Paragraph</h3>\n\nLorem Ipsum is <a href="http://wordpress.org">simply dummy</a> text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type speci<a href="http://wordpress.org">men book. It has survived not only fi</a>ve centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n<h3>Left align</h3>\n\n<p style="text-align:left;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed odio nibh, tincidunt adipiscing, pretium nec, tincidunt id, enim. Fusce scelerisque nunc vitae nisl. Quisque quis urna in velit dictum pellentesque. Vivamus a quam. Curabitur eu tortor id turpis tristique adipiscing. Morbi blandit. Maecenas vel est. Nunc aliquam, orci at accumsan commodo, libero nibh euismod augue, a ullamcorper velit dui et purus. Aenean volutpat, ipsum ac imperdiet fermentum, dui dui suscipit arcu, vitae dictum purus diam ac ligula. Praesent enim nunc, pretium eget, tincidunt in, semper at, mauris. Etiam nec ligula. Aenean purus pede, sagittis at, blandit a, dignissim nec, elit. Etiam nunc. Praesent molestie consectetuer leo. Etiam blandit leo mollis velit. Aenean varius. Maecenas in magna nec justo ornare feugiat. Mauris elit. Nunc volutpat lectus fermentum nibh.</p>\n\n\n\n<h3>Center Align</h3>\n\n<p style="text-align:center;">Aenean a turpis eu augue luctus vulputate. Ut nonummy arcu in est. Nulla facilisi. Fusce at est sollicitudin pede gravida luctus. Sed ut dolor non nulla luctus aliquam. Phasellus sodales dapibus turpis. Nulla malesuada. In sed quam. Donec sollicitudin convallis nisl. Donec nunc. Suspendisse malesuada libero in nisi. Etiam vitae metus non arcu gravida tincidunt. Duis accumsan purus et orci. Curabitur volutpat. Nulla quis purus id enim dapibus malesuada. Nam egestas luctus arcu. Praesent iaculis massa.</p>\n\n\n\n<h3>Right Align</h3>\n\n<p style="text-align:right;">Aenean tempor, risus nec eleifend tristique, sem orci aliquam urna, eget iaculis tortor mauris ut lorem. Aenean eu tellus. Sed at mauris at nisl ultricies lobortis. Vivamus lacinia, lorem vel congue facilisis, leo leo sodales leo, vitae euismod velit ante a ligula. Vivamus sit amet turpis ut eros molestie porttitor. Nam erat lacus, auctor vel, dictum a, suscipit sed, orci. Quisque est lorem, facilisis consequat, sagittis a, ullamcorper at, ante. Nullam ultricies gravida dui. Nunc mauris. Quisque neque. Quisque eu sem.</p>\n\n\n\n<h3>Justified</h3>\n\n<p style="text-align:justify;">Vivamus volutpat, arcu sed venenatis consequat, nulla pede blandit neque, quis ultrices ligula mauris ut leo. Proin iaculis. Pellentesque vulputate magna at lectus. Etiam semper aliquet lectus. Nullam turpis. Vivamus sed lacus. Integer metus arcu, adipiscing sed, vehicula et, vulputate sit amet, massa. Sed lobortis tempus lectus. In lacus. Duis nibh. Donec molestie libero ut neque. In sollicitudin aliquam felis. Sed molestie libero ac mi. Curabitur magna nunc, feugiat sed, sodales vitae, pretium a, leo. Sed ut ante. Integer turpis ante, facilisis sed, dignissim vitae, consectetuer sed, dui. Sed ultricies.</p>\n\n\n\n<!--nextpage-->\n\n<h2>Latin Character Tests</h2>\n\n\n\n! " # $ % &amp; '' ( ) * + - . / 0 1 2 3 4 5 6 7 8 9 : ; &gt; = &lt;Â ? @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [  ] ^ _ ` a b c d e f g h i j k l m n o p q r s t u v w x y z { | } ~\n\n\n\nThis is a test to see if the fonts used in this theme support basic latin characters.\n\n<table>\n\n<tbody>\n\n<tr>\n\n<td>!</td>\n\n<td>"</td>\n\n<td>#</td>\n\n<td>$</td>\n\n<td>%</td>\n\n<td>&amp;</td>\n\n<td>''</td>\n\n<td>(</td>\n\n<td>)</td>\n\n<td>*</td>\n\n</tr>\n\n<tr>\n\n<td>+</td>\n\n<td>,</td>\n\n<td>-</td>\n\n<td>.</td>\n\n<td>/</td>\n\n<td>0</td>\n\n<td>1</td>\n\n<td>2</td>\n\n<td>3</td>\n\n<td>4</td>\n\n</tr>\n\n<tr>\n\n<td>5</td>\n\n<td>6</td>\n\n<td>7</td>\n\n<td>8</td>\n\n<td>9</td>\n\n<td>:</td>\n\n<td>;</td>\n\n<td>&gt;</td>\n\n<td>=</td>\n\n<td>&lt;</td>\n\n</tr>\n\n<tr>\n\n<td>?</td>\n\n<td>@</td>\n\n<td>A</td>\n\n<td>B</td>\n\n<td>C</td>\n\n<td>D</td>\n\n<td>E</td>\n\n<td>F</td>\n\n<td>G</td>\n\n<td>H</td>\n\n</tr>\n\n<tr>\n\n<td>I</td>\n\n<td>J</td>\n\n<td>K</td>\n\n<td>L</td>\n\n<td>M</td>\n\n<td>N</td>\n\n<td>O</td>\n\n<td>P</td>\n\n<td>Q</td>\n\n<td>R</td>\n\n</tr>\n\n<tr>\n\n<td>S</td>\n\n<td>T</td>\n\n<td>U</td>\n\n<td>V</td>\n\n<td>W</td>\n\n<td>X</td>\n\n<td>Y</td>\n\n<td>Z</td>\n\n<td>[</td>\n\n<td></td>\n\n</tr>\n\n<tr>\n\n<td>]</td>\n\n<td>^</td>\n\n<td>_</td>\n\n<td>`</td>\n\n<td>a</td>\n\n<td>b</td>\n\n<td>c</td>\n\n<td>d</td>\n\n<td>e</td>\n\n<td>f</td>\n\n</tr>\n\n<tr>\n\n<td>g</td>\n\n<td>h</td>\n\n<td>i</td>\n\n<td>j</td>\n\n<td>k</td>\n\n<td>l</td>\n\n<td>m</td>\n\n<td>n</td>\n\n<td>o</td>\n\n<td>p</td>\n\n</tr>\n\n<tr>\n\n<td>q</td>\n\n<td>r</td>\n\n<td>s</td>\n\n<td>t</td>\n\n<td>u</td>\n\n<td>v</td>\n\n<td>w</td>\n\n<td>x</td>\n\n<td>y</td>\n\n<td>z</td>\n\n</tr>\n\n<tr>\n\n<td>{</td>\n\n<td>|</td>\n\n<td>}</td>\n\n<td>~</td>\n\n</tr>\n\n</tbody>\n\n</table>\n\n\n\n<!--nextpage-->\n\n<h1>Header one</h1>\n\n<h2>Header two</h2>\n\n<h3>Header three</h3>\n\n<h4>Header four</h4>\n\n<h5>Header five</h5>\n\n<h6>Header six</h6>\n\n<h2>Blockquote Tests</h2>\n\nBlockquote:\n\n<blockquote>Here''s a one line quote.</blockquote>\n\nThis part isn''t quoted.  Here''s a longer quote:\n\n<blockquote>Itâ€™s like a language. You learn the alphabet, which are the scales. You learn sentences, which are the chords. And then you talk extemporaneously with the horn. Itâ€™s a wonderful thing to speak extemporaneously, which is something Iâ€™ve never gotten the hang of. But musically I love to talk just off the top of my head. And thatâ€™s what jazz music is all about.\n\n\n\n<cite>Stan Getz</cite></blockquote>\n\nAnd some trailing text.\n\n<h2>Table Layout Test</h2>\n\n<table class="statsDay">\n\n<tbody>\n\n<tr>\n\n<th>Title</th>\n\n<th class="views">Views</th>\n\n<th></th>\n\n</tr>\n\n<tr class="alternate">\n\n<td class="label"><a href="http://wpthemetestdata.wordpress.com/about/">About Test User</a></td>\n\n<td class="views">1</td>\n\n<td class="more">More</td>\n\n</tr>\n\n<tr>\n\n<td class="label"><a href="http://wpthemetestdata.wordpress.com/">260</a></td>\n\n<td class="views">1</td>\n\n<td class="more">More</td>\n\n</tr>\n\n<tr class="alternate">\n\n<td class="label"><a href="http://wpthemetestdata.wordpress.com/archives/">Archives</a></td>\n\n<td class="views">1</td>\n\n<td class="more">More</td>\n\n</tr>\n\n<tr>\n\n<td class="label"><a href="http://wpthemetestdata.wordpress.com/">235</a></td>\n\n<td class="views">1</td>\n\n<td class="more">More</td>\n\n</tr>\n\n</tbody>\n\n</table>\n\n<h2>List Type Tests</h2>\n\n<h3>Definition List</h3>\n\n<dl> <dt>Definition List Title</dt> <dd>This is a definition list division.</dd> <dt>Definition</dt> <dd>An exact statement or description of the nature, scope, or meaning of something: <em>our definition of what constitutes poetry.</em></dd> <dt>Gallery</dt> <dd>A feature introduced with WordPress 2.5, that is specifically an exposition of images attached to a post. In that same vein, an upload is "attached to a post" when you upload it while editing a post.</dd> <dt>Gravatar</dt> <dd>A globally recognized avatar (a graphic image or picture that represents a user). A gravatar is associated with an email address, and is maintained by the Gravatar.com service. Using this service, a blog owner can configure their blog so that a user''s gravatar is displayed along with their comments.</dd> </dl>\n\n<h3>Unordered List (Nested)</h3>\n\n<ul>\n\n	<li>List item one\n\n<ul>\n\n	<li>List item one\n\n<ul>\n\n	<li>List item one</li>\n\n	<li>List item two</li>\n\n	<li>List item three</li>\n\n	<li>List item four</li>\n\n</ul>\n\n</li>\n\n	<li>List item two</li>\n\n	<li>List item three</li>\n\n	<li>List item four</li>\n\n</ul>\n\n</li>\n\n	<li>List item two</li>\n\n	<li>List item three</li>\n\n	<li>List item four</li>\n\n</ul>\n\n<h3>Ordered List</h3>\n\n<ol>\n\n	<li>List item one\n\n<ol>\n\n	<li>List item one\n\n<ol>\n\n	<li>List item one</li>\n\n	<li>List item two</li>\n\n	<li>List item three</li>\n\n	<li>List item four</li>\n\n</ol>\n\n</li>\n\n	<li>List item two</li>\n\n	<li>List item three</li>\n\n	<li>List item four</li>\n\n</ol>\n\n</li>\n\n	<li>List item two</li>\n\n	<li>List item three</li>\n\n	<li>List item four</li>\n\n</ol>\n\n<h2>HTML Element Tag Tests</h2>\n\nAll other HTML tags listed in the <a href="http://en.support.wordpress.com/code/">FAQ</a>:\n\n\n\nHere is the address for Automattic, using the <code>&lt;address&gt;</code> tag:\n\n\n\n<address>355 1st Street Suite 202\n\nSan Francisco, CA 94105\n\nUnited States</address>This is an example of <a href="http://example.com">an <code>&lt;anchor&gt;</code></a> (otherwise known as a link). This <abbr title="abbreviation">abbr.</abbr> is an example of an &lt;abbr&gt; tag in the middle of a sentence. Can you <cite>cite a reference</cite> for that, using the <code>&lt;cite&gt;</code> tag? Have you noticed that all of the tag names are displayed <code>in code-form</code>, using the <code>&lt;code&gt;</code> tag? Similarly, I could <kbd>emulate keyboard text</kbd>, using the <code>&lt;kbd&gt;</code> text tag.\n\n\n\nOh no! I wrote something incorrectly. <del>I''d better delete it</del>, using the <code>&lt;del&gt;</code> tag. I could alternately <strike>strike something out</strike> using the <code>&lt;s&gt;</code> tag. <em>So many choices</em>, which I emphasize using the <code>&lt;em&gt;</code> tag. Just to clarify, <ins>this is some inserted text</ins>, that I''ll highlight using the <code>&lt;ins&gt;</code> tag.\n\n\n\nNeed to display completely unformatted text, such as a large block of code? Use the <code>&lt;pre&gt;</code> tag, which lets you display:\n\n<pre>#container {\n\n	float: left;\n\n	margin: 0 -240px 0 0;\n\n	width: 100%;\n\n        and here''s a line of some really, really, really, really long text, just to see how the PRE tag handles it and to find out how it overflows;\n\n}</pre>\n\nWant to quote the WordPress tagline <q>Code is Poetry</q>? Use the <code>&lt;q&gt;</code> tag to add quotes around it. <strong>This is strong text</strong> (otherwise known as bold), using the <code>&lt;strong&gt;</code> tag.\n\n\n\nNeed to write H<sub>2</sub>O or E = MC<sup>2</sup>? You may find great use for <sub>subscripting</sub> text using the <code>&lt;sub&gt;</code> tag, or for <sup>superscripting</sup> text using the <code>&lt;sup&gt;</code> tag. Need to call out a <var>variable</var>? Use the <code>&lt;var&gt;</code> tag.\n\n\n\n<h3>HTML5-Deprecated Tags</h3>\n\n\n\nIf your Theme uses the HTML doctype (HTML5), then you don''t need to worry about writing a <acronym title="three-letter acronym">TLA</acronym> using the <code>&lt;acronym&gt;</code> tag, writing <big>some over-sized text</big> using the <code>&lt;big&gt;</code> tag, <span style="text-decoration:line-through;">striking something out</span> using the <code>&lt;strike&gt;</code> tag, or <tt>emulating teletype text</tt> using the <code>&lt;tt&gt;</code> tag, because HTML5 doesn''t support them!\n\n\n\n<h2>Div and Span Tests</h2>\n\n<div>\n\n\n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\n<div class="myclass"><strong>This is a div with "myclass" class, inside of another div, using the <code>&lt;div&gt;</code> tag.</strong></div>\n\nSed odio nibh, tincidunt adipiscing, pretium nec, tincidunt id, enim. Fusce scelerisque nunc vitae nisl.\n\n\n\n</div>\n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. <span><strong>This is a span inside of a paragraph, using the <code>&lt;span&gt;</code> tag.</strong></span> Sed odio nibh, tincidunt adipiscing, pretium nec, tincidunt id, enim. Fusce scelerisque nunc vitae nisl.', 'Layout Test', '', 'publish', 'closed', 'closed', '', 'layout-test', '', '', '2008-09-04 23:02:20', '2008-09-05 06:02:20', '', 0, 'http://noeltest.wordpress.com/?p=188', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(358, 2, '2008-09-05 00:27:25', '2008-09-05 07:27:25', 'All children, except one, grow up. They soon know that they will grow up, and the way Wendy knew was this. One day when she was two years old she was playing in a garden, and she plucked another flower and ran with it to her mother. I suppose she must have looked rather delightful, for Mrs. Darling put her hand to her heart and cried, "Oh, why can''t you remain like this for ever!" This was all that passed between them on the subject, but henceforth Wendy knew that she must grow up. You always know after you are two. Two is the beginning of the end.\n\n<!--more-->\n\nMrs. Darling first heard of Peter when she was tidying up her children''s minds. It is the nightly custom of every good mother after her children are asleep to rummage in their minds and put things straight for next morning, repacking into their proper places the many articles that have wandered during the day.\n\nIf you could keep awake (but of course you can''t) you would see your own mother doing this, and you would find it very interesting to watch her. It is quite like tidying up drawers. You would see her on her knees, I expect, lingering humorously over some of your contents, wondering where on earth you had picked this thing up, making discoveries sweet and not so sweet, pressing this to her cheek as if it were as nice as a kitten, and hurriedly stowing that out of sight. When you wake in the morning, the naughtiness and evil passions with which you went to bed have been folded up small and placed at the bottom of your mind and on the top, beautifully aired, are spread out your prettier thoughts, ready for you to put on.\n\nI don''t know whether you have ever seen a map of a person''s mind. Doctors sometimes draw maps of other parts of you, and your own map can become intensely interesting, but catch them trying to draw a map of a child''s mind, which is not only confused, but keeps going round all the time. There are zigzag lines on it, just like your temperature on a card, and these are probably roads in the island, for the Neverland is always more or less an island, with astonishing splashes of colour here and there, and coral reefs and rakish-looking craft in the offing, and savages and lonely lairs, and gnomes who are mostly tailors, and caves through which a river runs, and princes with six elder brothers, and a hut fast going to decay, and one very small old lady with a hooked nose. It would be an easy map if that were all, but there is also first day at school, religion, fathers, the round pond, needle-work, murders, hangings, verbs that take the dative, chocolate pudding day, getting into braces, say ninety-nine, three-pence for pulling out your tooth yourself, and so on, and either these are part of the island or they are another map showing through, and it is all rather confusing, especially as nothing will stand still.\n\nOf course the Neverlands vary a good deal. John''s, for instance, had a lagoon with flamingoes flying over it at which John was shooting, while Michael, who was very small, had a flamingo with lagoons flying over it. John lived in a boat turned upside down on the sands, Michael in a wigwam, Wendy in a house of leaves deftly sewn together. John had no friends, Michael had friends at night, Wendy had a pet wolf forsaken by its parents, but on the whole the Neverlands have a family resemblance, and if they stood still in a row you could say of them that they have each other''s nose, and so forth. On these magic shores children at play are for ever beaching their coracles [simple boat]. We too have been there; we can still hear the sound of the surf, though we shall land no more.\n\nOf all delectable islands the Neverland is the snuggest and most compact, not large and sprawly, you know, with tedious distances between one adventure and another, but nicely crammed. When you play at it by day with the chairs and table-cloth, it is not in the least alarming, but in the two minutes before you go to sleep it becomes very real. That is why there are night-lights.\n\nOccasionally in her travels through her children''s minds Mrs. Darling found things she could not understand, and of these quite the most perplexing was the word Peter. She knew of no Peter, and yet he was here and there in John and Michael''s minds, while Wendy''s began to be scrawled all over with him. The name stood out in bolder letters than any of the other words, and as Mrs. Darling gazed she felt that it had an oddly cocky appearance.', 'Readability Test', '', 'publish', 'closed', 'closed', '', 'readability-test', '', '', '2008-09-05 00:27:25', '2008-09-05 07:27:25', '', 0, 'http://wpthemetestdata.wordpress.com/?p=358', 0, 'post', '', 0),
(418, 2, '2030-07-27 16:13:18', '2030-07-27 23:13:18', 'This post is scheduled to be published in the future. It should not be displayed by the Theme.', 'Scheduled Post', '', 'future', 'open', 'closed', '', 'scheduled-post', '', '', '2030-07-27 16:13:18', '2030-07-27 23:13:18', '', 0, 'http://wpthemetestdata.wordpress.com/?p=418', 0, 'post', '', 0),
(420, 2, '2010-07-27 16:14:31', '2010-07-27 23:14:31', 'This is a draft post. It should not be displayed by the Theme.', 'Draft Post', '', 'draft', 'open', 'closed', '', '', '', '', '2010-07-27 16:14:31', '2010-07-27 23:14:31', '', 0, 'http://wpthemetestdata.wordpress.com/?p=420', 0, 'post', '', 0),
(494, 2, '2008-05-06 12:23:00', '2008-05-06 19:23:00', 'A post with an exceptionally long title and single word (supercalifragilisticexpialidociousâ€”it''s the biggest word you ever heard) useful for testing title line heights and potential overflow issues on posts with small title areas. :)', 'If you say it loud enough, youâ€™ll always sound precocious; Supercalifragilisticexpialidocious!', '', 'publish', 'closed', 'closed', '', 'if-you-say-it-loud-enough-youll-always-sound-precocious-supercalifragilisticexpialidocious', '', '', '2008-05-06 12:23:00', '2008-05-06 19:23:00', '', 0, 'http://wpthemetestdata.wordpress.com/?p=494', 0, 'post', '', 0),
(501, 2, '2010-08-01 09:42:26', '2010-08-01 16:42:26', 'The last item in this page''s content is a floated image. Make sure any elements after it are clearing properly.\n\n\n\n<img class="alignleft size-thumbnail wp-image-827" title="OLYMPUS DIGITAL CAMERA" src="http://localhost/sites/lexkarate.com/wp-content/uploads/2012/07/manhattansummer.jpg?w=150" alt="" width="150" height="112" />', 'Clearing Floats', '', 'publish', 'closed', 'closed', '', 'clearing-floats', '', '', '2010-08-01 09:42:26', '2010-08-01 16:42:26', '', 734, 'http://wpthemetestdata.wordpress.com/', 2, 'page', '', 0),
(534, 2, '2010-08-03 09:44:14', '2010-08-03 16:44:14', '', 'test-image-landscape-900', '', 'inherit', 'open', 'closed', '', 'test-image-landscape-900', '', '', '2010-08-03 09:44:14', '2010-08-03 16:44:14', '', 128, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2010/08/test-image-landscape-900.jpg', 0, 'attachment', 'image/jpeg', 0),
(535, 2, '2010-08-03 09:44:17', '2010-08-03 16:44:17', '', 'test-image-landscape', '', 'inherit', 'open', 'closed', '', 'test-image-landscape', '', '', '2010-08-03 09:44:17', '2010-08-03 16:44:17', '', 128, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2010/08/test-image-landscape.jpg', 0, 'attachment', 'image/jpeg', 0),
(536, 2, '2010-08-03 09:44:19', '2010-08-03 16:44:19', '', 'test-image-portrait', '', 'inherit', 'open', 'closed', '', 'test-image-portrait', '', '', '2010-08-03 09:44:19', '2010-08-03 16:44:19', '', 128, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2010/08/test-image-portrait.jpg', 0, 'attachment', 'image/jpeg', 0),
(543, 2, '2010-08-03 13:50:47', '2010-08-03 20:50:47', '', 'spectacles', '', 'inherit', 'open', 'closed', '', 'spectacles', '', '', '2010-08-03 13:50:47', '2010-08-03 20:50:47', '', 128, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2010/08/spectacles.gif', 0, 'attachment', 'image/gif', 0),
(555, 2, '2008-06-10 07:24:14', '2008-06-10 14:24:14', '[gallery]\n\n\n\n<!--nextpage-->\n\n\n\nYou can use this page to test the Theme''s handling of the [gallery] shortcode, including the <code>columns</code> parameter, from 1 to 10 columns. Themes are only required to support the default setting (3 columns), so this page is entirely optional.\n\n<h2>One Column</h2>\n\n[gallery columns="1"]\n\n<h2>Two Columns</h2>\n\n[gallery columns="2"]\n\n<h2>Three Columns</h2>\n\n[gallery columns="3"]\n\n<h2>Four Columns</h2>\n\n[gallery columns="4"]\n\n<h2>Five Columns</h2>\n\n[gallery columns="5"]\n\n<h2>Six Columns</h2>\n\n[gallery columns="6"]\n\n<h2>Seven Columns</h2>\n\n[gallery columns="7"]\n\n<h2>Eight Columns</h2>\n\n[gallery columns="8"]\n\n<h2>Nine Columns</h2>\n\n[gallery columns="9"]\n\n<h2>Ten Columns</h2>\n\n[gallery columns="10"]', 'Post Format Test: Gallery', '', 'publish', 'closed', 'closed', '', 'post-format-test-gallery', '', '', '2008-06-10 07:24:14', '2008-06-10 14:24:14', '', 0, 'http://wpthemetestdata.wordpress.com/?p=555', 0, 'post', '', 0),
(559, 2, '2008-06-09 07:51:54', '2008-06-09 14:51:54', 'â€œI never tried to prove nothing, just wanted to give a good show. My life has always been my music, it''s always come first, but the music ain''t worth nothing if you can''t lay it on the public. The main thing is to live for that audience, ''cause what you''re there for is to please the people.â€', 'Post Format Test: Aside', '', 'publish', 'closed', 'closed', '', 'post-format-test-aside', '', '', '2008-06-09 07:51:54', '2008-06-09 14:51:54', '', 0, 'http://wpthemetestdata.wordpress.com/?p=559', 0, 'post', '', 0),
(562, 2, '2008-06-08 07:59:31', '2008-06-08 14:59:31', 'John: foo\n\nMary: bar\n\nJohn: foo 2', 'Post Format Test: Chat', '', 'publish', 'closed', 'closed', '', 'post-format-test-chat', '', '', '2008-06-08 07:59:31', '2008-06-08 14:59:31', '', 0, 'http://wpthemetestdata.wordpress.com/?p=562', 0, 'post', '', 0),
(565, 2, '2008-06-07 08:06:53', '2008-06-07 15:06:53', '<a href="http://make.wordpress.org/themes" title="The WordPress Theme Review Team Website">The WordPress Theme Review Team Website</a>', 'Post Format Test: Link', '', 'publish', 'closed', 'closed', '', 'post-format-test-link', '', '', '2008-06-07 08:06:53', '2008-06-07 15:06:53', '', 0, 'http://wpthemetestdata.wordpress.com/?p=565', 0, 'post', '', 0),
(568, 2, '2008-06-06 08:09:39', '2008-06-06 15:09:39', '[caption id="attachment_612" align="aligncenter" width="640" caption="Chunk of resinous blackboy husk, Clarkson, Western Australia. This burns like a spinifex log."]<a href="http://wpthemetestdata.files.wordpress.com/2012/06/dsc20040724_152504_532.jpg"><img src="http://wpthemetestdata.files.wordpress.com/2012/06/dsc20040724_152504_532.jpg" alt="chunk of resinous blackboy husk" title="dsc20040724_152504_532" width="640" height="480" class="size-full wp-image-612" /></a>[/caption]\n\n', 'Post Format Test: Image (Linked)', '', 'publish', 'closed', 'closed', '', 'post-format-test-image-linked', '', '', '2008-06-06 08:09:39', '2008-06-06 15:09:39', '', 0, 'http://wpthemetestdata.wordpress.com/?p=568', 0, 'post', '', 0),
(575, 2, '2008-06-05 08:13:15', '2008-06-05 15:13:15', '<blockquote>Only one thing is impossible for God: To find any sense in any copyright law on the planet.\n\n<cite><a href="http://www.brainyquote.com/quotes/quotes/m/marktwain163473.html">Mark Twain</a></cite></blockquote>', 'Post Format Test: Quote', '', 'publish', 'closed', 'closed', '', 'post-format-test-quote', '', '', '2008-06-05 08:13:15', '2008-06-05 15:13:15', '', 0, 'http://wpthemetestdata.wordpress.com/?p=575', 0, 'post', '', 0),
(579, 2, '2008-06-04 08:21:24', '2008-06-04 15:21:24', 'WordPress, how do I love thee? Let me count the ways (in 140 characters or less).', 'Post Format Test: Status', '', 'publish', 'closed', 'closed', '', 'post-format-test-status', '', '', '2008-06-04 08:21:24', '2008-06-04 15:21:24', '', 0, 'http://wpthemetestdata.wordpress.com/?p=579', 0, 'post', '', 0),
(582, 2, '2008-06-03 08:25:58', '2008-06-03 15:25:58', 'http://wordpress.tv/2009/03/16/anatomy-of-a-wordpress-theme-exploring-the-files-behind-your-theme/\n\n\n\nPosted as per the <a href="http://codex.wordpress.org/Embeds" target="_blank">instructions in the Codex</a>.', 'Post Format Test: Video', '', 'publish', 'closed', 'closed', '', 'post-format-test-video', '', '', '2008-06-03 08:25:58', '2008-06-03 15:25:58', '', 0, 'http://wpthemetestdata.wordpress.com/?p=582', 0, 'post', '', 0),
(587, 2, '2008-06-02 08:36:44', '2008-06-02 15:36:44', 'Link:\n\n\n\n<a href="http://localhost/sites/lexkarate.com/wp-content/uploads/2012/07/originaldixielandjazzbandwithalbernard-stlouisblues.mp3">St. Louis Blues</a>\n\n\n\nAudio shortcode:\n\n\n\n[audio http://localhost/sites/lexkarate.com/wp-content/uploads/2012/07/originaldixielandjazzbandwithalbernard-stlouisblues.mp3]', 'Post Format Test: Audio', '', 'publish', 'closed', 'closed', '', 'post-format-test-audio', '', '', '2008-06-02 08:36:44', '2008-06-02 15:36:44', '', 0, 'http://wpthemetestdata.wordpress.com/?p=587', 0, 'post', '', 0),
(611, 2, '2011-01-10 06:17:54', '2011-01-10 13:17:54', '', 'canola2', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec mollis. Quisque convallis libero in sapien pharetra tincidunt. Aliquam elit ante, malesuada id, tempor eu, gravida id, odio. Maecenas suscipit, risus et eleifend imperdiet, nisi orci ullamcorper massa, et adipiscing orci velit quis magna.', 'inherit', 'open', 'closed', '', 'canola2', '', '', '2011-01-10 06:17:54', '2011-01-10 13:17:54', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/01/canola2.jpg', 0, 'attachment', 'image/jpeg', 0),
(613, 2, '2011-01-10 06:19:10', '2011-01-10 13:19:10', '', 'dsc20050315_145007_132', '', 'inherit', 'open', 'closed', '', 'dsc20050315_145007_132', '', '', '2011-01-10 06:19:10', '2011-01-10 13:19:10', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/01/dsc20050315_145007_132.jpg', 0, 'attachment', 'image/jpeg', 0),
(616, 2, '2011-01-10 06:20:37', '2011-01-10 13:20:37', '', 'dsc20050727_091048_222', '', 'inherit', 'open', 'closed', '', 'dsc20050727_091048_222', '', '', '2011-01-10 06:20:37', '2011-01-10 13:20:37', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/01/dsc20050727_091048_222.jpg', 0, 'attachment', 'image/jpeg', 0),
(617, 2, '2011-01-10 06:20:57', '2011-01-10 13:20:57', '', 'dsc20050813_115856_52', '', 'inherit', 'open', 'closed', '', 'dsc20050813_115856_52', '', '', '2011-01-10 06:20:57', '2011-01-10 13:20:57', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/01/dsc20050813_115856_52.jpg', 0, 'attachment', 'image/jpeg', 0),
(618, 2, '2011-01-10 06:21:14', '2011-01-10 13:21:14', '', 'dsc20050831_165238_332', '', 'inherit', 'open', 'closed', '', 'dsc20050831_165238_332', '', '', '2011-01-10 06:21:14', '2011-01-10 13:21:14', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/01/dsc20050831_165238_332.jpg', 0, 'attachment', 'image/jpeg', 0),
(619, 2, '2011-01-10 06:21:50', '2011-01-10 13:21:50', '', 'dsc20050901_105100_212', 'Seed pods on stem, Woodvale', 'inherit', 'open', 'closed', '', 'dsc20050901_105100_212', '', '', '2011-01-10 06:21:50', '2011-01-10 13:21:50', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/01/dsc20050901_105100_212.jpg', 0, 'attachment', 'image/jpeg', 0),
(674, 2, '2008-06-06 09:42:19', '2008-06-06 16:42:19', '[caption id="" align="aligncenter" width="435"]<a href="http://wpthemetestdata.wordpress.com/2008/06/06/post-format-test-image-attached/boat-2/" rel="attachment wp-att-675"><img class="size-full wp-image-675" title="boat" alt="boat" src="http://localhost/sites/lexkarate.com/wp-content/uploads/2011/01/boat.jpg" width="435" height="288" /></a> A picture is worth a thousand words[/caption]', 'Post Format Test: Image (Attached)', '', 'publish', 'closed', 'closed', '', 'post-format-test-image-attached', '', '', '2008-06-06 09:42:19', '2008-06-06 16:42:19', '', 0, 'http://wpthemetestdata.wordpress.com/?p=674', 0, 'post', '', 0),
(675, 2, '2011-01-11 09:43:06', '2011-01-11 16:43:06', '', 'boat', 'A picture is worth a thousand words', 'inherit', 'open', 'closed', '', 'boat-2', '', '', '2011-01-11 09:43:06', '2011-01-11 16:43:06', '', 674, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/01/boat.jpg', 0, 'attachment', 'image/jpeg', 0),
(701, 2, '2011-05-20 18:49:43', '2011-05-21 01:49:43', 'Use this static Page to test the Theme''s handling of the Front Page template file.\n\n\n\nThis is the Front Page content. Use this static Page to test the Front Page output of the Theme. The Theme should properly handle both Blog Posts Index as Front Page and static Page as Front Page.\n\n\n\nIf the site is set to display the Blog Posts Index as the Front Page, then this text should not be visible. If the site is set to display a static Page as the Front Page, then this text may or may not be visible. If the Theme does not include a front-page.php template file, then this text should appear on the Front Page when set to display a static Page. If the Theme does include a front-page.php template file, then this text may or may not appear.', 'Front Page', '', 'publish', 'open', 'closed', '', 'front-page', '', '', '2011-05-20 18:49:43', '2011-05-21 01:49:43', '', 0, 'http://wpthemetestdata.wordpress.com/?page_id=701', 0, 'page', '', 0),
(703, 2, '2011-05-20 18:51:43', '2011-05-21 01:51:43', 'Use this static Page to test the Theme''s handling of the Blog Posts Index page. If the site is set to display a static Page on the Front Page, and this Page is set to display the Blog Posts Index, then this text should not appear.', 'Blog', '', 'publish', 'open', 'closed', '', 'blog', '', '', '2011-05-20 18:51:43', '2011-05-21 01:51:43', '', 0, 'http://wpthemetestdata.wordpress.com/?page_id=703', 0, 'page', '', 0),
(733, 2, '2011-06-23 18:38:52', '2011-06-24 01:38:52', '(lorem ipsum)', 'Page A', '', 'publish', 'open', 'closed', '', 'page-a', '', '', '2011-06-23 18:38:52', '2011-06-24 01:38:52', '', 0, 'http://wpthemetestdata.wordpress.com/?page_id=733', 10, 'page', '', 0),
(734, 2, '2010-07-25 19:40:01', '2010-07-26 02:40:01', 'This site is using the standard WordPress Theme Unit Test Data for content. The Theme Unit Test is a series of posts and pages that match up with a checklist on the WordPress codex. You can use the data and checklist together to test your theme.\n\n\n\n<h2>WordPress Theme Development Resources</h2>\n\n\n\n<ol>\n\n	<li>See <a href="http://codex.wordpress.org/Theme_Development">Theme Development</a> for <a href="http://codex.wordpress.org/Theme_Development#Code_Standards">code standards</a>, examples of best practices, and <a href="http://codex.wordpress.org/Theme_Development#Resources_and_References">resources for Theme development</a>.</li>\n\n	<li>See <a href="http://codex.wordpress.org/Theme_Unit_Test">Theme Unit Test</a> for a robust test suite for your Theme and get the latest version of the test data you see here.</li>\n\n	<li>See <a href="http://codex.wordpress.org/Theme_Review">Theme Review</a> for a guide to submitting your Theme to the <a href="http://wordpress.org/extend/themes/">Themes Directory</a>.</li>\n\n</ol>', 'About The Tests', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2010-07-25 19:40:01', '2010-07-26 02:40:01', '', 0, 'http://wpthemetestdata.wordpress.com/about/', 1, 'page', '', 0),
(735, 2, '2011-06-23 18:39:14', '2011-06-24 01:39:14', '(lorem ipsum)', 'Page B', '', 'publish', 'open', 'closed', '', 'page-b', '', '', '2011-06-23 18:39:14', '2011-06-24 01:39:14', '', 0, 'http://wpthemetestdata.wordpress.com/?page_id=735', 11, 'page', '', 0),
(737, 2, '2011-06-23 18:39:56', '2011-06-24 01:39:56', '(lorem ipsum)', 'Page C', '', 'publish', 'open', 'closed', '', 'page-c', '', '', '2011-06-23 18:39:56', '2011-06-24 01:39:56', '', 0, 'http://wpthemetestdata.wordpress.com/?page_id=737', 12, 'page', '', 0),
(739, 2, '2011-06-23 18:40:17', '2011-06-24 01:40:17', '(lorem ipsum)', 'Page D', '', 'publish', 'open', 'closed', '', 'page-d', '', '', '2011-06-23 18:40:17', '2011-06-24 01:40:17', '', 0, 'http://wpthemetestdata.wordpress.com/?page_id=739', 13, 'page', '', 0),
(742, 2, '2011-06-23 19:03:33', '2011-06-24 02:03:33', '(lorem ipsum)', 'Level 2a', '', 'publish', 'open', 'closed', '', 'level-2a', '', '', '2011-06-23 19:03:33', '2011-06-24 02:03:33', '', 174, 'http://wpthemetestdata.wordpress.com/?page_id=742', 0, 'page', '', 0),
(744, 2, '2011-06-23 19:04:03', '2011-06-24 02:04:03', '(lorem ipsum)', 'Level 2b', '', 'publish', 'open', 'closed', '', 'level-2b', '', '', '2011-06-23 19:04:03', '2011-06-24 02:04:03', '', 174, 'http://wpthemetestdata.wordpress.com/?page_id=744', 0, 'page', '', 0),
(746, 2, '2011-06-23 19:04:24', '2011-06-24 02:04:24', '(lorem ipsum)', 'Level 3a', '', 'publish', 'open', 'closed', '', 'level-3a', '', '', '2011-06-23 19:04:24', '2011-06-24 02:04:24', '', 173, 'http://wpthemetestdata.wordpress.com/?page_id=746', 0, 'page', '', 0),
(748, 2, '2011-06-23 19:04:46', '2011-06-24 02:04:46', '(lorem ipsum)', 'Level 3b', '', 'publish', 'open', 'closed', '', 'level-3b', '', '', '2011-06-23 19:04:46', '2011-06-24 02:04:46', '', 173, 'http://wpthemetestdata.wordpress.com/?page_id=748', 0, 'page', '', 0),
(754, 2, '2011-07-15 14:34:50', '2011-07-15 21:34:50', 'Public domain via http://www.burningwell.org/gallery2/v/Objects/100_5540.JPG.html', 'Bell on Wharf', 'Bell on wharf in San Francisco', 'inherit', 'open', 'closed', '', '100_5478', '', '', '2011-07-15 14:34:50', '2011-07-15 21:34:50', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/07/100_5478.jpg', 0, 'attachment', 'image/jpeg', 0),
(755, 2, '2011-07-15 14:35:55', '2011-07-15 21:35:55', 'Public domain via http://www.burningwell.org/gallery2/v/Objects/100_5478.JPG.html', 'Golden Gate Bridge', 'Golden Gate Bridge', 'inherit', 'open', 'closed', '', '100_5540', '', '', '2011-07-15 14:35:55', '2011-07-15 21:35:55', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/07/100_5540.jpg', 0, 'attachment', 'image/jpeg', 0),
(756, 2, '2011-07-15 14:41:24', '2011-07-15 21:41:24', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/CEP00032.jpg.html', 'Sunburst Over River', 'Sunburst over the Clinch River, Southwest Virginia.', 'inherit', 'open', 'closed', '', 'cep00032', '', '', '2011-07-15 14:41:24', '2011-07-15 21:41:24', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/07/cep00032.jpg', 0, 'attachment', 'image/jpeg', 0),
(757, 2, '2011-07-15 14:41:27', '2011-07-15 21:41:27', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/DCP_2082.jpg.html', 'Boardwalk', 'Boardwalk at Westport, WA', 'inherit', 'open', 'closed', '', 'dcp_2082', '', '', '2011-07-15 14:41:27', '2011-07-15 21:41:27', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/07/dcp_2082.jpg', 0, 'attachment', 'image/jpeg', 0),
(758, 2, '2011-07-15 14:41:33', '2011-07-15 21:41:33', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/dsc03149.jpg.html', 'Yachtsody in Blue', 'Boats and reflections, Royal Perth Yacht Club', 'inherit', 'open', 'closed', '', 'dsc03149', '', '', '2011-07-15 14:41:33', '2011-07-15 21:41:33', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/07/dsc03149.jpg', 0, 'attachment', 'image/jpeg', 0),
(759, 2, '2011-07-15 14:41:37', '2011-07-15 21:41:37', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/dsc04563.jpg.html', 'Rain Ripples', 'Raindrop ripples on a pond', 'inherit', 'open', 'closed', '', 'dsc04563', '', '', '2011-07-15 14:41:37', '2011-07-15 21:41:37', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/07/dsc04563.jpg', 0, 'attachment', 'image/jpeg', 0),
(760, 2, '2011-07-15 14:41:41', '2011-07-15 21:41:41', 'Public domain via http://www.burningwell.org/gallery2/v/Objects/dsc09114.jpg.html', 'Sydney Harbor Bridge', 'Sydney Harbor Bridge', 'inherit', 'open', 'closed', '', 'dsc09114', '', '', '2011-07-15 14:41:41', '2011-07-15 21:41:41', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/07/dsc09114.jpg', 0, 'attachment', 'image/jpeg', 0),
(761, 2, '2011-07-15 14:41:42', '2011-07-15 21:41:42', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/dsc20050102_192118_51.jpg.html', 'Wind Farm', 'Albany wind-farm against the sunset, Western Australia', 'inherit', 'open', 'closed', '', 'dsc20050102_192118_51', '', '', '2011-07-15 14:41:42', '2011-07-15 21:41:42', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/07/dsc20050102_192118_51.jpg', 0, 'attachment', 'image/jpeg', 0),
(762, 2, '2011-07-15 14:41:45', '2011-07-15 21:41:45', 'Public domain via http://www.burningwell.org/gallery2/v/Objects/dsc20051220_160808_102.jpg.html', 'Antique Farm Machinery', 'Antique farm machinery, Mount Barker Museum, Western Australia', 'inherit', 'open', 'closed', '', 'dsc20051220_160808_102', '', '', '2011-07-15 14:41:45', '2011-07-15 21:41:45', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/07/dsc20051220_160808_102.jpg', 0, 'attachment', 'image/jpeg', 0),
(763, 2, '2011-07-15 14:46:27', '2011-07-15 21:46:27', 'Public domain via http://www.burningwell.org/gallery2/main.php?g2_view=dynamicalbum.UpdatesAlbum&amp;g2_itemId=25895', 'Orange Iris', 'Orange Iris', 'inherit', 'open', 'closed', '', 'dsc02085', '', '', '2011-07-15 14:46:27', '2011-07-15 21:46:27', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/07/dsc02085.jpg', 0, 'attachment', 'image/jpeg', 0),
(764, 2, '2011-07-15 14:47:17', '2011-07-15 21:47:17', 'Public domain via http://www.burningwell.org/gallery2/v/Objects/dsc20051220_173257_119.jpg.html', 'Rusty Rail', 'Rusty rails with fishplate, Kojonup', 'inherit', 'open', 'closed', '', 'dsc20051220_173257_119', '', '', '2011-07-15 14:47:17', '2011-07-15 21:47:17', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/07/dsc20051220_173257_119.jpg', 0, 'attachment', 'image/jpeg', 0),
(765, 2, '2011-07-15 14:47:20', '2011-07-15 21:47:20', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/dscn3316.jpg.html', 'Sea and Rocks', 'Sea and rocks, Plimmerton, New Zealand', 'inherit', 'open', 'closed', '', 'dscn3316', '', '', '2011-07-15 14:47:20', '2011-07-15 21:47:20', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/07/dscn3316.jpg', 0, 'attachment', 'image/jpeg', 0),
(766, 2, '2011-07-15 14:47:23', '2011-07-15 21:47:23', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/michelle_049.jpg.html', 'Big Sur', 'Beach at Big Sur, CA', 'inherit', 'open', 'closed', '', 'michelle_049', '', '', '2011-07-15 14:47:23', '2011-07-15 21:47:23', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/07/michelle_049.jpg', 0, 'attachment', 'image/jpeg', 0),
(767, 2, '2011-07-15 14:47:26', '2011-07-15 21:47:26', 'Public domain via http://www.burningwell.org/gallery2/v/Objects/Windmill.jpg.html', 'Windmill', 'Windmill shrouded in fog at a farm outside of Walker, Iowa', 'inherit', 'open', 'closed', '', 'dcf-1-0', '', '', '2011-07-15 14:47:26', '2011-07-15 21:47:26', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/07/windmill.jpg', 0, 'attachment', 'image/jpeg', 0),
(768, 2, '2011-07-15 14:49:48', '2011-07-15 21:49:48', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/IMG_0513-1.JPG.html', 'Huatulco Coastline', 'Sunrise over the coast in Huatulco, Oaxaca, Mexico', 'inherit', 'open', 'closed', '', 'alas-i-have-found-my-shangri-la', '', '', '2011-07-15 14:49:48', '2011-07-15 21:49:48', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/07/img_0513-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(769, 2, '2011-07-15 14:50:37', '2011-07-15 21:50:37', 'Public domain via http://www.burningwell.org/gallery2/main.php?g2_view=dynamicalbum.UpdatesAlbum&amp;g2_itemId=25770', 'Brazil Beach', 'Jericoacoara Ceara Brasil', 'inherit', 'open', 'closed', '', 'img_0747', '', '', '2011-07-15 14:50:37', '2011-07-15 21:50:37', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/07/img_0747.jpg', 0, 'attachment', 'image/jpeg', 0),
(770, 2, '2011-07-15 14:51:19', '2011-07-15 21:51:19', 'Public domain via http://www.burningwell.org/gallery2/v/Landscapes/ocean/IMG_0767.JPG.html', 'Huatulco Coastline', 'Coastline in Huatulco, Oaxaca, Mexico', 'inherit', 'open', 'closed', '', 'img_0767', '', '', '2011-07-15 14:51:19', '2011-07-15 21:51:19', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/07/img_0767.jpg', 0, 'attachment', 'image/jpeg', 0),
(771, 2, '2011-07-15 14:51:57', '2011-07-15 21:51:57', 'Public domain via http://www.burningwell.org/gallery2/main.php?g2_view=dynamicalbum.UpdatesAlbum&amp;g2_itemId=25774', 'Boat Barco Texture', 'Boat BW PB Barco Texture Beautiful Fishing', 'inherit', 'open', 'closed', '', 'img_8399', '', '', '2011-07-15 14:51:57', '2011-07-15 21:51:57', '', 555, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2011/07/img_8399.jpg', 0, 'attachment', 'image/jpeg', 0),
(821, 2, '2012-07-05 09:49:29', '2012-07-05 16:49:29', 'St. Louis Blues, by Original Dixieland Jazz Band with Al Bernard (public domain)', 'St. Louis Blues', 'St. Louis Blues, by Original Dixieland Jazz Band with Al Bernard (public domain)', 'inherit', 'open', 'closed', '', 'originaldixielandjazzbandwithalbernard-stlouisblues', '', '', '2012-07-05 09:49:29', '2012-07-05 16:49:29', '', 587, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2012/07/originaldixielandjazzbandwithalbernard-stlouisblues.mp3', 0, 'attachment', 'audio/mpeg', 0),
(827, 2, '2012-07-05 11:07:34', '2012-07-05 18:07:34', '', 'OLYMPUS DIGITAL CAMERA', '', 'inherit', 'open', 'closed', '', 'olympus-digital-camera', '', '', '2012-07-05 11:07:34', '2012-07-05 18:07:34', '', 501, 'http://localhost/sites/lexkarate.com/wp-content/uploads/2012/07/manhattansummer.jpg', 0, 'attachment', 'image/jpeg', 0),
(828, 1, '2013-03-13 18:05:32', '2013-03-13 18:05:32', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/sites/lexkarate.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-autosave', '', '', '2013-03-13 18:05:32', '2013-03-13 18:05:32', '', 2, 'http://localhost/sites/lexkarate.com/?p=828', 0, 'revision', '', 0),
(829, 1, '2013-03-15 19:16:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-03-15 19:16:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/sites/lexkarate.com/?page_id=829', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(128, 1, 0),
(131, 1, 0),
(133, 1, 0),
(134, 1, 0),
(149, 1, 0),
(151, 1, 0),
(152, 1, 0),
(167, 1, 0),
(167, 20, 0),
(167, 21, 0),
(167, 22, 0),
(167, 23, 0),
(167, 24, 0),
(167, 25, 0),
(167, 26, 0),
(167, 27, 0),
(167, 28, 0),
(167, 29, 0),
(167, 30, 0),
(167, 31, 0),
(167, 32, 0),
(167, 33, 0),
(167, 34, 0),
(167, 35, 0),
(167, 36, 0),
(167, 37, 0),
(167, 38, 0),
(167, 39, 0),
(167, 40, 0),
(167, 41, 0),
(167, 42, 0),
(167, 43, 0),
(167, 44, 0),
(167, 45, 0),
(167, 46, 0),
(167, 47, 0),
(167, 48, 0),
(167, 49, 0),
(167, 50, 0),
(167, 51, 0),
(167, 52, 0),
(167, 53, 0),
(167, 54, 0),
(167, 55, 0),
(168, 11, 0),
(168, 56, 0),
(168, 57, 0),
(168, 58, 0),
(168, 59, 0),
(168, 60, 0),
(168, 61, 0),
(168, 62, 0),
(168, 63, 0),
(168, 64, 0),
(168, 65, 0),
(168, 66, 0),
(168, 67, 0),
(168, 68, 0),
(168, 69, 0),
(168, 70, 0),
(168, 71, 0),
(168, 72, 0),
(168, 73, 0),
(168, 74, 0),
(168, 75, 0),
(168, 76, 0),
(168, 77, 0),
(168, 78, 0),
(168, 79, 0),
(168, 80, 0),
(168, 81, 0),
(168, 82, 0),
(168, 83, 0),
(168, 84, 0),
(168, 85, 0),
(168, 86, 0),
(168, 87, 0),
(168, 88, 0),
(168, 89, 0),
(168, 90, 0),
(168, 91, 0),
(168, 92, 0),
(168, 93, 0),
(168, 94, 0),
(188, 11, 0),
(188, 12, 0),
(188, 13, 0),
(188, 14, 0),
(188, 15, 0),
(188, 16, 0),
(188, 17, 0),
(188, 18, 0),
(358, 12, 0),
(358, 20, 0),
(358, 44, 0),
(418, 1, 0),
(420, 1, 0),
(494, 1, 0),
(555, 1, 0),
(555, 2, 0),
(555, 19, 0),
(559, 1, 0),
(559, 2, 0),
(559, 3, 0),
(562, 1, 0),
(562, 2, 0),
(562, 4, 0),
(565, 1, 0),
(565, 2, 0),
(565, 5, 0),
(568, 1, 0),
(568, 2, 0),
(568, 6, 0),
(575, 1, 0),
(575, 2, 0),
(575, 7, 0),
(579, 1, 0),
(579, 2, 0),
(579, 8, 0),
(582, 1, 0),
(582, 2, 0),
(582, 9, 0),
(587, 1, 0),
(587, 2, 0),
(587, 10, 0),
(674, 1, 0),
(674, 2, 0),
(674, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=96 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 20),
(2, 2, 'post_tag', '', 0, 10),
(3, 3, 'post_format', '', 0, 1),
(4, 4, 'post_format', '', 0, 1),
(5, 5, 'post_format', '', 0, 1),
(6, 6, 'post_format', '', 0, 2),
(7, 7, 'post_format', '', 0, 1),
(8, 8, 'post_format', '', 0, 1),
(9, 9, 'post_format', '', 0, 1),
(10, 10, 'post_format', '', 0, 1),
(11, 11, 'category', '', 0, 2),
(12, 12, 'category', '', 0, 2),
(13, 13, 'category', '', 0, 1),
(14, 14, 'category', '', 0, 1),
(15, 15, 'category', '', 0, 1),
(16, 16, 'post_tag', '', 0, 1),
(17, 17, 'post_tag', '', 0, 1),
(18, 18, 'post_tag', '', 0, 1),
(19, 19, 'post_format', '', 0, 1),
(20, 20, 'post_tag', '', 0, 2),
(21, 21, 'post_tag', '', 0, 1),
(22, 22, 'post_tag', '', 0, 1),
(23, 23, 'post_tag', '', 0, 1),
(24, 24, 'post_tag', '', 0, 1),
(25, 25, 'post_tag', '', 0, 1),
(26, 26, 'post_tag', '', 0, 1),
(27, 27, 'post_tag', '', 0, 1),
(28, 28, 'post_tag', '', 0, 1),
(29, 29, 'post_tag', '', 0, 1),
(30, 30, 'post_tag', '', 0, 1),
(31, 31, 'post_tag', '', 0, 1),
(32, 32, 'post_tag', '', 0, 1),
(33, 33, 'post_tag', '', 0, 1),
(34, 34, 'post_tag', '', 0, 1),
(35, 35, 'post_tag', '', 0, 1),
(36, 36, 'post_tag', '', 0, 1),
(37, 37, 'post_tag', '', 0, 1),
(38, 38, 'post_tag', '', 0, 1),
(39, 39, 'post_tag', '', 0, 1),
(40, 40, 'post_tag', '', 0, 1),
(41, 41, 'post_tag', '', 0, 1),
(42, 42, 'post_tag', '', 0, 1),
(43, 43, 'post_tag', '', 0, 1),
(44, 44, 'post_tag', '', 0, 2),
(45, 45, 'post_tag', '', 0, 1),
(46, 46, 'post_tag', '', 0, 1),
(47, 47, 'post_tag', '', 0, 1),
(48, 48, 'post_tag', '', 0, 1),
(49, 49, 'post_tag', '', 0, 1),
(50, 50, 'post_tag', '', 0, 1),
(51, 51, 'post_tag', '', 0, 1),
(52, 52, 'post_tag', '', 0, 1),
(53, 53, 'post_tag', '', 0, 1),
(54, 54, 'post_tag', '', 0, 1),
(55, 55, 'post_tag', '', 0, 1),
(56, 56, 'category', '', 0, 1),
(57, 57, 'category', '', 0, 1),
(58, 58, 'category', '', 0, 1),
(59, 59, 'category', '', 0, 1),
(60, 60, 'category', '', 0, 1),
(61, 61, 'category', '', 0, 1),
(62, 62, 'category', '', 0, 1),
(63, 63, 'category', '', 0, 1),
(64, 64, 'category', '', 0, 1),
(65, 65, 'category', '', 0, 1),
(66, 66, 'category', '', 0, 1),
(67, 67, 'category', '', 0, 1),
(68, 68, 'category', '', 0, 1),
(69, 69, 'category', '', 0, 1),
(70, 70, 'category', '', 0, 1),
(71, 71, 'category', '', 0, 1),
(72, 72, 'category', '', 0, 1),
(73, 73, 'category', '', 0, 1),
(74, 74, 'category', '', 0, 1),
(75, 75, 'category', '', 0, 1),
(76, 76, 'category', '', 0, 1),
(77, 77, 'category', '', 0, 1),
(78, 78, 'category', '', 0, 1),
(79, 79, 'category', '', 0, 1),
(80, 80, 'category', '', 0, 1),
(81, 81, 'category', '', 0, 1),
(82, 82, 'category', '', 0, 1),
(83, 83, 'category', '', 0, 1),
(84, 84, 'category', '', 0, 1),
(85, 85, 'category', '', 0, 1),
(86, 86, 'category', '', 0, 1),
(87, 87, 'category', '', 0, 1),
(88, 88, 'category', '', 0, 1),
(89, 89, 'category', '', 0, 1),
(90, 90, 'category', '', 0, 1),
(91, 91, 'category', '', 0, 1),
(92, 92, 'category', '', 0, 1),
(93, 93, 'category', '', 0, 1),
(94, 94, 'category', '', 0, 1),
(95, 95, 'nav_menu', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=96 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Post Formats', 'post-formats', 0),
(3, 'Aside', 'post-format-aside', 0),
(4, 'Chat', 'post-format-chat', 0),
(5, 'Link', 'post-format-link', 0),
(6, 'Image', 'post-format-image', 0),
(7, 'Quote', 'post-format-quote', 0),
(8, 'Status', 'post-format-status', 0),
(9, 'Video', 'post-format-video', 0),
(10, 'Audio', 'post-format-audio', 0),
(11, 'aciform', 'aciform', 0),
(12, 'Cat A', 'cat-a', 0),
(13, 'Cat B', 'cat-b', 0),
(14, 'Cat C', 'cat-c', 0),
(15, 'sub', 'sub', 0),
(16, 'tag1', 'tag1', 0),
(17, 'tag2', 'tag2', 0),
(18, 'tag3', 'tag3', 0),
(19, 'Gallery', 'post-format-gallery', 0),
(20, 'chattels', 'chattels', 0),
(21, 'cienaga', 'cienaga', 0),
(22, 'claycold', 'claycold', 0),
(23, 'crushing', 'crushing', 0),
(24, 'dinarchy', 'dinarchy', 0),
(25, 'doolie', 'doolie', 0),
(26, 'energumen', 'energumen', 0),
(27, 'ephialtes', 'ephialtes', 0),
(28, 'eudiometer', 'eudiometer', 0),
(29, 'figuriste', 'figuriste', 0),
(30, 'habergeon', 'habergeon', 0),
(31, 'hapless', 'hapless', 0),
(32, 'hartshorn', 'hartshorn', 0),
(33, 'hostility impregnability', 'hostility-impregnability', 0),
(34, 'impropriation', 'impropriation', 0),
(35, 'knave', 'knave', 0),
(36, 'misinformed', 'misinformed', 0),
(37, 'moil', 'moil', 0),
(38, 'mornful', 'mornful', 0),
(39, 'outlaw', 'outlaw', 0),
(40, 'pamphjlet', 'pamphjlet', 0),
(41, 'pneumatics', 'pneumatics', 0),
(42, 'portly portreeve', 'portly-portreeve', 0),
(43, 'precipitancy', 'precipitancy', 0),
(44, 'privation', 'privation', 0),
(45, 'programme', 'programme', 0),
(46, 'psychological', 'psychological', 0),
(47, 'puncher', 'puncher', 0),
(48, 'ramose', 'ramose', 0),
(49, 'renegade', 'renegade', 0),
(50, 'retrocede', 'retrocede', 0),
(51, 'stagnation unhorsed', 'stagnation-unhorsed', 0),
(52, 'thunderheaded', 'thunderheaded', 0),
(53, 'unculpable', 'unculpable', 0),
(54, 'withered brandnew', 'withered-brandnew', 0),
(55, 'xanthopsia', 'xanthopsia', 0),
(56, 'antiquarianism', 'antiquarianism', 0),
(57, 'arrangement', 'arrangement', 0),
(58, 'asmodeus', 'asmodeus', 0),
(59, 'broder', 'broder', 0),
(60, 'buying', 'buying', 0),
(61, 'championship', 'championship', 0),
(62, 'chastening', 'chastening', 0),
(63, 'clerkship', 'clerkship', 0),
(64, 'disinclination', 'disinclination', 0),
(65, 'disinfection', 'disinfection', 0),
(66, 'dispatch', 'dispatch', 0),
(67, 'echappee', 'echappee', 0),
(68, 'enphagy', 'enphagy', 0),
(69, 'equipollent', 'equipollent', 0),
(70, 'fatuity', 'fatuity', 0),
(71, 'gaberlunzie', 'gaberlunzie', 0),
(72, 'illtempered', 'illtempered', 0),
(73, 'insubordination', 'insubordination', 0),
(74, 'lender', 'lender', 0),
(75, 'monosyllable', 'monosyllable', 0),
(76, 'packthread', 'packthread', 0),
(77, 'palter', 'palter', 0),
(78, 'papilionaceous', 'papilionaceous', 0),
(79, 'personable', 'personable', 0),
(80, 'propylaeum', 'propylaeum', 0),
(81, 'pustule', 'pustule', 0),
(82, 'quartern', 'quartern', 0),
(83, 'scholarship', 'scholarship', 0),
(84, 'selfconvicted', 'selfconvicted', 0),
(85, 'showshoe', 'showshoe', 0),
(86, 'sloyd', 'sloyd', 0),
(87, 'sublunary', 'sublunary', 0),
(88, 'tamtam', 'tamtam', 0),
(89, 'weakhearted', 'weakhearted', 0),
(90, 'ween', 'ween', 0),
(91, 'wellhead', 'wellhead', 0),
(92, 'wellintentioned', 'wellintentioned', 0),
(93, 'whetstone', 'whetstone', 0),
(94, 'years', 'years', 0),
(95, 'Nav', 'nav', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', 'Andrea'),
(2, 1, 'last_name', 'Gonzalez'),
(3, 1, 'nickname', 'Andy Osuna'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(15, 1, 'aim', ''),
(16, 1, 'yim', ''),
(17, 1, 'jabber', ''),
(18, 2, 'first_name', ''),
(19, 2, 'last_name', ''),
(20, 2, 'nickname', 'themedemos'),
(21, 2, 'description', ''),
(22, 2, 'rich_editing', 'true'),
(23, 2, 'comment_shortcuts', 'false'),
(24, 2, 'admin_color', 'fresh'),
(25, 2, 'use_ssl', '0'),
(26, 2, 'show_admin_bar_front', 'true'),
(27, 2, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(28, 2, 'wp_user_level', '0'),
(29, 2, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(30, 3, 'first_name', ''),
(31, 3, 'last_name', ''),
(32, 3, 'nickname', 'chipbennett'),
(33, 3, 'description', ''),
(34, 3, 'rich_editing', 'true'),
(35, 3, 'comment_shortcuts', 'false'),
(36, 3, 'admin_color', 'fresh'),
(37, 3, 'use_ssl', '0'),
(38, 3, 'show_admin_bar_front', 'true'),
(39, 3, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(40, 3, 'wp_user_level', '0'),
(41, 3, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(42, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(43, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(44, 1, 'nav_menu_recently_edited', '95');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'andy', '$P$Bm/3TTxDi1hXTg9DA0L/bTquSqGRgh/', 'andy', 'andyosuna@gmail.com', 'http://andyosuna.com', '2013-03-11 19:30:00', '', 0, 'Andy Osuna'),
(2, 'themedemos', '$P$B1C0D.2skd2ONANlXT139AoylKyNWk0', 'themedemos', '', '', '2013-03-13 18:03:18', '', 0, 'themedemos'),
(3, 'chipbennett', '$P$BV.Wl6F1vNlRDnem4YmBsjYwL/dH8k0', 'chipbennett', '', '', '2013-03-13 18:03:18', '', 0, 'chipbennett');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
