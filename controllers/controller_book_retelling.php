<?php

$bookId=$_GET['id'];

$book=\Model\Books::getBook($bookId);


require('views/view_retell.php');