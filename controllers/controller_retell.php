<?php
require ('models/model_db.php');

$id=$_GET['id'];
$product=get_data('book',['id'=>$id],['name','autor','janr','brief_retelling','image']);
$product=$product[0];
require('views/view_retell.php');

?>