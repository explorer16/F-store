<?php
	require_once('core/db_script.php');
	
	function get_data($table,$where=null,$what=null){
		$query=build_select_query($table,$where,$what);

		return execute_select_query($query);
		
	}
	
	function get_photo($type_id){
		$query=build_select_photo_query($table,$where,$what);
		return execute_select_query($query);
	}
	
	function get_book_list($table,$where=null,$what=null){
		if(isset($where['id'])){
			$where['id<']=$where['id'];
			$where['id>']=$where['id<']-3;
			unset($where['id']);
		}

		$query=build_select_query($table,$where,$what);

		return execute_select_query($query);
	}
	
	function insert_data($table,$what){
		$query=build_insert_query($table,$what);

		return execute_query($query);
		
	}
	
	function insert_data_return_id($table,$what=null){
		$query=build_insert_query($table,$what);

		return execute_query_and_return_id($query);
		
	}
	
	function delete_data($table,$where=null){
	
		$query=build_delete_query($table,$where);

		return execute_query($query);
		
	}

?>