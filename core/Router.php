<?php

namespace Core;

class Router
{
    private $path, $controller;

    public function __construct()
    {
        $this->path=$_SERVER['REQUEST_URI'];
    }

    private function show()
    {
        $controller=$this->controller;
        require ('views/template_view.php');
    }

    public function route()
    {
        $path=explode('/',$this->path);
        $path=$path[count($path)-1];

        $path=explode('?', $path);

        if($path[0]=='index.php')
            $path[0]='books';
        $this->controller='controllers/controller_'.$path[0].'.php';
        if(!file_exists($this->controller))
            $this->controller='controllers/controller_404.php';
        //echo $this->controller;
        $this->show();
    }
}