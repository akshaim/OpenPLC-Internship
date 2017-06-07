<?php
if ($_POST["wifi"] == "staticip") {
   include("static_ip.html");
} else if ($_POST["wifi"]=="ssidpw") {
   include("network.html");
}
?>

