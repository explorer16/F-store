<?php

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

$page=new \Model\Books($currentPage,$_SESSION['method']);
$data=$page->getBooks();
$countPages=$page->countPages;
$currentPage=$page->page;

require('views/view_books.php');
require('views/view_filtr.html');
