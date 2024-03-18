
<?php
class loginContr extends Login{
    private $username;
    private $pwd;


    public function __construct($username,$pwd)
    {
        $this->username=$username;
        $this->pwd=$pwd;
        
    }
public function loginUser() {
    if($this->emptyInput()){
        header("location: ../home.html?error=emptyinput");
        exit();
    }
    $this->getUser($this->username, $this->pwd);
}






private function emptyInput() {
    $result = false; // Initialize $result
    if(empty($this->username) || empty($this->pwd)){
        $result = true;
    }
    return $result;
}

}


