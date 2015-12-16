<?php
/**
 * @file
 * Returns the HTML for the basic html structure of a single Drupal page.
 *
 * Complete documentation for this file is available online.
 * @see https://drupal.org/node/1728208
 */
?><!DOCTYPE html>
<!--[if lte IE 8]><html class="lt-ie9" <?php print $html_attributes; ?>><![endif]-->
<!--[if (gte IE 9)|(gt IEMobile 7)]><!--><html class="no-js" <?php print $html_attributes; ?> <?php print $rdf_attributes; ?>><!--<![endif]-->
  <head>
    <?php print $head; ?>
    <title><?php print $head_title; ?></title>
    <meta name="MobileOptimized" content="width">
    <meta name="HandheldFriendly" content="true">
    <!--[if lt IE 9]>
    <script src="<?php print $base_path . $path_to_accessible_theme; ?>/js/html5shiv.min.js"></script>
    <script src="<?php print $base_path . $path_to_accessible_theme; ?>/js/selectivizr.min.js"></script>
    <script src="<?php print $base_path . $path_to_accessible_theme; ?>/js/respond.min.js"></script>
    <script src="<?php print $base_path . $path_to_accessible_theme; ?>/js/calc.min.js"></script>
    <![endif]-->

    <?php print $styles; ?>
    <?php print $scripts; ?>
  </head>
  <body class="<?php print $classes; ?>" <?php print $body_attributes;?>>
    <div id="skip-link">
      <a href="#<?php print $skip_link_anchor; ?>" class="skip-link visually-hidden--focusable" role="link"><?php print $skip_link_text; ?></a>
    </div>
    <?php print $page_top; ?>
    <?php print $page; ?>
    <?php print $page_bottom; ?>
  </body>
</html>
