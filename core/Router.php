<?php

namespace Core;

class Router
{
    private $path, $controller;

    public function __construct()
    {
        $this->path=$_SERVER['REQUEST_URI'];
        if(isset($_SESSION['token'])){
            if(time()>$_SESSION['token_created_at']){
                unset($_SESSION['token']);
                unset($_SESSION['token_created_at']);
            }
        }
    }

    public function show()
    {
        $this->route();
        $controller=$this->controller;

        if($controller!='controller_registration.php'&&$controller!='controller_login.php'){
            if(!isset($_SESSION['token'])&&!isset($_POST['token'])){
                
                $controller='controller_login.php';
                $_GET['method']='show';
            }
        }
        require ('views/template_view.php');
    }

    private function route()
    {
        $path=explode('?',$this->path);
        $path=explode('/',$path[0]);

        array_shift($path);
        if($path[0]=='F-store'){
            array_shift($path);
        }

        if($path[0]=='index.php')
            header('Location: ./main_page');
        if($path[0]=='books')
            $path[0]='main_page';
        $this->controller='controller_'.$path[0].'.php';
        if(!file_exists('controllers/'.$this->controller))
            $this->controller='controller_404.php';

    }
}