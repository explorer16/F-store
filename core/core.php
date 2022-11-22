<?php

session_start();

function load_page(){
	$page=get_page();
	
	routing($page);
}
function get_page(){
	$result='tovar_list';
	$array=explode('/',$_SERVER['REQUEST_URI']);
	
	$page=array_pop($array);
	
	if($page){
		$array=explode('?',$page);
		$result=array_shift($array);
	}
	return $result;
}

function routing($page){
	switch($page){
		case'index.php':case 'books':		
			$controller='controller_books.php';
		break;
		case 'book_retelling':		
			$controller='controller_retell.php';
		break;		
		case 'download_book':		
			$controller='controller_add_tovar.php';
		break;
		case 'registration':		
			$controller='controller_registration.php';
		break;
		case 'login':		
			$controller='controller_login.php';
		break;
		case 'basket':		
			$controller='controller_basket.php';
		break;
		case 'adress':		
			$controller='controller_adress.php';
		break;
		case 'credits':		
			$controller='controller_credits.php';
		break;
	}
	
	require('views/template_view.php');
}
 ?>