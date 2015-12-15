<?php
/**
 * @file
 * listing_view.entity.inc
 */

/**
 * Implements hook_entity_view_mode_info().
 */
function listing_view_entity_view_mode_info() {
  $info = array();

  $info['node']['grid'] = array(
    'label' => 'Grid',
    'custom settings' => 1,
  );

  $info['node']['listing'] = array(
    'label' => 'Listing',
    'custom settings' => 1,
  );

  return $info;
}
