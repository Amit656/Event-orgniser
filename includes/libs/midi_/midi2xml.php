<?php
$show_help = false;
$p['tt'] = isset($_GET["tt"])?htmlspecialchars($_GET["tt"]):1;	# default to delta time

$file = htmlspecialchars($_GET["file"]); # filename is always last argument

if (!file_exists($file)) {
    echo "File not found.\n";
    exit();
}

$tt = isset($p['tt']) ? $p['tt'] : 0;

if ($show_help) {
    echo "Help...\n";
    exit();
}

$tt = isset($p['tt']) ? $p['tt'] : 0;

if ($file != '') {
    require('midi.class.php');

    $midi = new Midi();
    $midi->importMid($file);
    $xml = $midi->getXml($tt);
    echo $xml;
}

?>

