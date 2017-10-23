<?php
$myObj = new stdClass();
$myObj->Service_Name = HTTPD2;
$myObj->Current_User = get_current_user();
$myObj->Current_path = getcwd();

$myJSON = json_encode($myObj);

echo $myJSON;
?>

