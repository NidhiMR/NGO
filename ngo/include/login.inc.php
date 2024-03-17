<?php
if($_SERVER["REQUEST_METHOD"]==="POST"){
    $username=$_POST["username"];

    $pwd=$_POST["pwd"];
    try{
        require_once 'dbh.inc.php';
        require_once 'login_model.inc.php';
        require_once 'login_contr.inc.php';

        //error handling
        $errors=[];


    if (is_input_empty($username , $pwd)){
        $errors["empty_input"]="Fill In All Fields";
    }

    $result=get_user( $pdo, $username);

    if(is_username_wrong($result)){
        $errors["login_incorrect"]="Incorrect Login Info";
    }
    /*REMOVE THIS
    if(!is_username_wrong($result) && is_password_wrong($pwd,$result["pwd"])){
        $errors["login_incorrect"]="Incorrect Login Password";
    }
*/



        require_once 'config_session.inc.php';
        
        
        if($errors){
            $_SESSION["errors_login"]=$errors;
            header("Location: ../trial.php");
            die();

            
        }

    
    $newSessionId = session_create_id();
    $sessionId=$newSessionId . "_" . $result["user_id"];
    session_id( $sessionId ); 


    $_SESSION["user_id"]=$result["user_id"];
    $_SESSION["user_username"]= htmlspecialchars($result["username"]);
    $_SESSION["last_regeneration"]=time();
    header("Location: ../logged.html?login=success");
    $pdo=null;
    $stmt=null;
    die();
    }
    
    catch(PDOException $e)
    {
    die("Query Failed : " .$e->getMessage());
    }

}

    else{
        header("Location: ../trial.php");
        die();
    }
