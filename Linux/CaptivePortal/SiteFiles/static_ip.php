<?php
$ip = $_POST["ip"];
$netmask = $_POST["netmask"];
$temp = shell_exec("/var/www/html/static_ip.sh $ip $netmask");
?>

