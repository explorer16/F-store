<?php

static $method;

if(!isset($_GET['page'])){
    $currentPage=1;
    if(isset($_POST['method'])){
        $method=$_POST['method'];
    } else {
        $method='takeAll';
    }
} else {
    $currentPage=$_GET['page'];
}

$page=new \Model\Books($currentPage,$method);
$data=$page->allBooks();

$page->show($data);
