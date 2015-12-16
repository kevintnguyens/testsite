<?php
/**
 * @file
 * Returns the HTML for a single Drupal page while offline.
 *
 * Complete documentation for this file is available online.
 * @see https://drupal.org/node/1728174
 */
?><!DOCTYPE html>
<!--[if IEMobile 7]><html class="iem7" <?php print $html_attributes; ?>><![endif]-->
<!--[if lte IE 6]><html class="lt-ie9 lt-ie8 lt-ie7" <?php print $html_attributes; ?>><![endif]-->
<!--[if (IE 7)&(!IEMobile)]><html class="lt-ie9 lt-ie8" <?php print $html_attributes; ?>><![endif]-->
<!--[if IE 8]><html class="lt-ie9" <?php print $html_attributes; ?>><![endif]-->
<!--[if (gte IE 9)|(gt IEMobile 7)]><!--><html class="no-js" <?php print $html_attributes; ?> <?php print $rdf_attributes; ?>><!--<![endif]-->
  <head>
    <?php print $head; ?>
    <title><?php print $head_title; ?></title>
    <?php print $styles; ?>
    <?php print $scripts; ?>
    <meta name="MobileOptimized" content="width">
    <meta name="HandheldFriendly" content="true">
    <!--[if lt IE 9]>
    <script src="<?php print $base_path . $path_to_accessible_theme; ?>/js/html5shiv.min.js"></script>
    <![endif]-->
  </head>
  <body class="<?php print $classes; ?>" <?php print $body_attributes;?>>
    <div id="skip-link">
      <a href="#<?php print $skip_link_anchor; ?>" class="skip-link visually-hidden--focusable" role="link"><?php print $skip_link_text; ?></a>
    </div>

    <div id="page" role="document">
      <header id="header" role="banner" class="clearfix">

        <?php if ($logo): ?>
          <a href="<?php print $front_page; ?>" title="<?php print t('Home'); ?>" rel="home" id="logo">
            <img src="<?php print $logo; ?>" alt="<?php print t('Home'); ?>" />
          </a>
        <?php endif; ?>

        <?php if ($site_name || $site_slogan): ?>
          <div id="name-and-slogan">
            <?php if ($site_name): ?>
              <h1 id="site-name">
                <a href="<?php print $front_page; ?>" title="<?php print t('Home'); ?>" rel="home"><?php print $site_name; ?></a>
              </h1>
            <?php endif; ?>

            <?php if ($site_slogan): ?>
              <h3 id="site-slogan"><?php print $site_slogan; ?></h3>
            <?php endif; ?>
          </div><!-- #name-and-slogan -->
        <?php endif; ?>
      </header>

      <?php if ($messages): ?>
        <div id="messages" role="alertdialog"><?php print $messages; ?></div>
      <?php endif; ?>

      <main id="main" role="main" class="clearfix">
        <div id="content" role="article" class="column">
          <a id="main-content"></a>
          <?php print render($title_prefix); ?>
          <?php if ($title): ?><h1 class="title" id="page-title"><?php print $title; ?></h1><?php endif; ?>
          <?php print render($title_suffix); ?>
          <?php if ($content): ?>
            <main id="main" role="main">
              <?php print render($content); ?>
            </main>
          <?php endif; ?>

          <?php if ($sidebar_first || $sidebar_second): ?>
            <aside class="sidebars">
              <?php print $sidebar_first; ?>
              <?php print $sidebar_second; ?>
            </aside>
          <?php endif; ?>
        </div>
      </main>
      <?php print $footer; ?>
    </div>

<?php print $bottom; ?>

  </body>
</html>
