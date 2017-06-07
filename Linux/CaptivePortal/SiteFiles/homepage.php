<?php
if ($_POST["interface"] == "wifi") {
   include("wifi.html");
} else if ($_POST["interface"]=="ethernet") {
   include("ethernet.html");
}
?>

