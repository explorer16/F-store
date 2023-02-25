<?php

$bookId=$_GET['id'];

$book=\Model\Books::getInfoOfBook($bookId);


require('views/view_retell.php');