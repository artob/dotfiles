<?php
/**
 * ~/.php/prepend.php - Functions for php.ini's "auto_prepend_file" setting.
 *
 * @version 2008/12/07
 */

/**
 * Debugging function to dump a value and die.
 */
function d($arg) {
  foreach (func_get_args() as $arg) {
    var_dump($arg);
  }
  die();
}
