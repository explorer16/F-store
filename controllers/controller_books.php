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
$countPages=$page->countPages;


require('views/view_books.php');
require('views/view_filtr.html');
