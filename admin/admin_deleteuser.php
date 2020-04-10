<?php 
    require_once '../load.php';


    if(isset($_GET['id'])){
        $user_id = $_GET['id'];
        $delete_result = deleteUser($user_id);

        echo $delete_result;
    }
?>
