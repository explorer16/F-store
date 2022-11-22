<?php

class Router{
    private $pages = array();

    function addRoute($url, $path){
        $this->pages[$url]=$path;
    } 
    function route($url){
        $path=$this->pages[$url];
        $file_dir = "controllers/".$path;

        if($path==""){
            require "controller_404.php";
            die();
        }

        if(file_exists($file_dir)){
            require $file_dir;
        }else{
            require "controller_404.php";
            die();
        }
    }
}

?>