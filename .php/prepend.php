<?php
/**
 * ~/.php/prepend.php - Functions for php.ini's "auto_prepend_file" setting.
 *
 * @author Arto Bendiken <http://bendiken.net/>
 * @copyright Copyright (c) 2005-2007 Arto Bendiken. All rights reserved.
 * @license http://www.opensource.org/licenses/mit-license.php MIT
 * @license http://www.opensource.org/licenses/gpl-license.php GPL
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
