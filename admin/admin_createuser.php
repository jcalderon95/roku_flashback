<?php 
require_once '../load.php';


if(isset($_POST['username'])){

    $user = array(
        'fname'=>trim($_POST['fname']),
        'username'=>trim($_POST['username']),
        'password'=>trim($_POST['password']),
        'email'=>trim($_POST['email']),
        'avatar'=>trim($_POST['avatar']),
        'permissions'=>trim($_POST['permissions']),
        'admin'=>trim($_POST['admin']),
    );

    $message = createUser($user);
    echo $message;

}

?>
