<?php

class Home_model extends Model{
    public function login($username, $password)
    {
        $q = "SELECT * FROM user WHERE username = :user AND password = :pass";
        $this->query($q);
        $this->bind("user",$username);
        $this->bind("pass",$password);
        $this->execute();
        return $this->single();
    }
}