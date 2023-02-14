<?php

namespace Model;

use Interfaces\Authentication;

class Login extends Authentication
{
    public static function show():void
    {
        $token=bin2hex(random_bytes(32));
        require ('views/view_login.html');
    }
    public function login(){
        if($this->checking()){
            $_SESSION['token']=$_POST['token'];
            $_SESSION['token_created_at']=time()+3600;
            header('Location: ./main_page');
        } else {
            header('Location: ./login?method=show');
        }
    }
    public function createCookie()
    {
        // TODO: Implement createCookie() method.
    }
}