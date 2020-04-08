<?php 
    require_once '../load.php';
    confirm_logged_in();

    $users = getAllUsers();
    if(!$users){
        $message = 'Failed to get user list';
    }

    if(isset($_GET['id'])){
        $user_id = $_GET['id'];
        $delete_result = deleteUser($user_id);

        if(!$delete_result){
            $message = 'Failed to delete user';
        }
    }
?>
