<?php

require ('models/model_db.php');

$last_book=4;
if(isset($_GET['last_item']))
{
    $last_book=$_GET['last_item'];
}
$data=get_book_list('book',['id'=>$last_book],['id','name','autor','janr','image','file']);

require('views/view_books.php');

