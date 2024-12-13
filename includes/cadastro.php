<?php 
$cd = new mysqli('localhost', 'root', '', 'cadastro');
if ($cd->connect_error){
    echo 'erro';
    die();
}
$cd->query('set character_set_connection = utf8mb4');
$cd->query('set character_set_client = utf8mb4');
$cd->query('set character_set_results = utf8mb4');
?>
