<?php

namespace Model;

use Interfaces\Authentication;

class Registration extends Authentication
{
    private string $keyWord;
    public function __construct()
    {
        $this->name=$_POST['name'];
        $this->name=htmlentities($this->name);

        $this->password=$_POST['password'];
        $this->password=htmlentities($this->password);

        $this->keyWord=$_POST['key_word'];
        $this->keyWord=htmlentities($this->keyWord);
    }
    public static function show():void
    {
        $token=bin2hex(random_bytes(32));
        require ('views/view_registration.html');
    }

    public function registrate():void
    {
        if(!$this->checking()){
            $dbh=new \PDO('mysql:dbname=bookshop;host=127.0.0.1','root', '');
            $statement=$dbh->prepare("INSERT INTO user (name,password,secret_word) VALUES (:nickname,:password,:keyWord)");
            $pass=password_hash($this->password,PASSWORD_DEFAULT);
            $statement->execute([':nickname'=>$this->name,':password'=>$pass,':keyWord'=>$this->keyWord]);

            $_SESSION['token']=$_POST['token'];
            $_SESSION['token_created_at']=time()+3600;
            header('Location: ./main_page');
        }
        else{
            header('Location: ./registration?method=show');
        }

    }

    public function createCookie():bool
    {
        return true;
    }
}