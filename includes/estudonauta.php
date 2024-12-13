<?php 
$en = new mysqli('localhost', 'root', '', 'estudonauta');
if ($en->connect_error){
    echo 'erro';
    die();
}
$en->query('set character_set_connection = utf8mb4');
$en->query('set character_set_client = utf8mb4');
$en->query('set character_set_results = utf8mb4');
?>