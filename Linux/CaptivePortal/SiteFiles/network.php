<?php
$ssid = $_POST["ssid"];
$passwd = $_POST["passwd"];
$temp = shell_exec("/var/www/html/network.sh $ssid $passwd");
?>

