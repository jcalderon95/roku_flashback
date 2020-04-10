<?php 
function createUser($user){
    $pdo = Database::getInstance()->getConnection();
    
    $create_user_query = 'INSERT INTO tbl_user(user_fname, user_name, user_pass, user_email, user_avatar, user_permissions, user_admin)';
    $create_user_query .= ' VALUES( :fname, :username, :password, :email, :avatar, :permissions, :admin )';

    $create_user_set = $pdo->prepare($create_user_query);
    $create_user_result = $create_user_set->execute(
        array(
            ':fname'=>$user['fname'],
            ':username'=>$user['username'],
            ':password'=>$user['password'],
            ':email'=>$user['email'],
            ':avatar'=>$user['avatar'],
            ':permissions'=>$user['permissions'],
            ':admin'=>$user['admin']
        )
    );
    // echo $create_user_set->debugDumpParams();
    // exit;

    if($create_user_result){
        $message =  'User added';
        return json_encode($message);
    }else{
        $message =  'The user did not go through';
        return json_encode($message);
    }
}

// function getSingleUser($id){
//     $pdo = Database::getInstance()->getConnection();
//     //TODO: execute the proper SQL query to fetch the user data whose user_id = $id
//     $get_user_query = 'SELECT * FROM tbl_user WHERE user_id = :id';
//     $get_user_set = $pdo->prepare($get_user_query);
//     $get_user_result = $get_user_set->execute(
//         array(
//             ':id'=>$id
//         )
//     );

//     //TODO: if the execution is successful, return the user data
//     // Otherwise, return an error message
//     if($get_user_result){
//         return $get_user_set;
//     }else{
//         return 'There was a problem accessing the user';
//     }
// }

function getAllUsers(){
    $pdo = Database::getInstance()->getConnection();

    $get_user_query = 'SELECT * FROM tbl_user';
    $get_user_set = $pdo->prepare($get_user_query);
    $get_user_result = $get_user_set->execute();

    $users = array();

    if ($get_user_result) {
        while($user = $get_user_set->fetch(PDO::FETCH_ASSOC)) {
            // parse all the users' info like we did for a single and pass them 
            // into the users array

            $currentuser = array();

            $currentuser['id'] = $user['user_id'];
            $currentuser['admin'] = $user['user_admin'];
            $currentuser['avatar'] = $user['user_avatar'];
            $currentuser['permissions'] = $user['user_permissions'];
            $currentuser['username'] = $user['user_name'];
            $currentuser['userfname'] = $user['user_fname'];


            $users[] = $currentuser;
        }

        return json_encode($users);
    } else {
        return 'There was a problem getting the users';
    }
}

function editUser($id, $fname, $username, $password, $email){
    //TODO: set up database connection
    $pdo = Database::getInstance()->getConnection();

    //TODO: Run the proper SQL query to update tbl_user with proper values
    $update_user_query = 'UPDATE tbl_user SET user_fname = :fname, user_name = :username,';
    $update_user_query .= ' user_pass=:password, user_email =:email WHERE user_id = :id';
    $update_user_set = $pdo->prepare($update_user_query);
    $update_user_result = $update_user_set->execute(
        array(
            ':fname'=>$fname,
            ':username'=>$username,
            ':password'=>$password,
            ':email'=>$email,
            ':id'=>$id
        )
    );

    // echo $update_user_set->debugDumpParams();
    // exit;

    if($update_user_result){
        redirect_to('index.php');
    }else{
        return 'Guess you got canned...';
    }
}

function deleteUser($id){
    $pdo = Database::getInstance()->getConnection();
    $delete_user_query = 'DELETE FROM tbl_user WHERE user_id = :id';
    $delete_user_set = $pdo->prepare($delete_user_query);
    $delete_user_result = $delete_user_set->execute(
        array(
            ':id'=>$id
        )
    );

    if($delete_user_result && $delete_user_set->rowCount() > 0){
        $message = 'User Deleted';
        return json_encode($message);
        
    }else{
        $message = 'There Was an Error Deleting the user';
        return json_encode($message);
    }
}