<?php
class Profile extends Dbh {
    public function getUserInfo($username) {
        $pdo = $this->connect();
        $query = "SELECT * FROM users WHERE username = :username";
        $statement = $pdo->prepare($query);
        $statement->execute(array(':username' => $username));
        $user = $statement->fetch(PDO::FETCH_ASSOC);
        return $user;
    }
}