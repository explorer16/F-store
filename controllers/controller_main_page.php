<?php

if(!isset($_GET['id'])){
    \Model\Books::getBooks();
}