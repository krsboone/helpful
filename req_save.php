<?php

date_default_timezone_set('US/Eastern');

function udate($format, $utimestamp = null)
{
    if (is_null($utimestamp))
        $utimestamp = microtime(true);

    $timestamp = floor($utimestamp);
    $milliseconds = round(($utimestamp - $timestamp) * 1000000);

    return date(preg_replace('`(?<!\\\\)u`', $milliseconds, $format), $timestamp);
}


$cTime = udate('h:i:s:u_A');

$session = file_get_contents('php://input');
var_dump($data);
var_dump(json_decode($data));


$file = fopen($cTime . ".txt", "w");


fwrite($file, $session);
fclose($file);

//$coolit = rand(5, 16);

//sleep($coolit);

echo "undefined";
?>
