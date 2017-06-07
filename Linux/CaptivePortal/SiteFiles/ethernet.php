<?php
$ip = $_POST["ip"];
$netmask = $_POST["netmask"];
$temp = shell_exec("/var/www/html/ethernet.sh $ip $netmask");
?>

