<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require_once ("System/NumericString.php");

$num = new NumericString("0101010101");
echo $num->getLength();

$num = new NumericString("0123456789");
echo "At pos 9 there is a " . $num->getAt(9);
