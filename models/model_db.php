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
	
	function get_tovar_list($type_id=null){
		$query="SELECT id,name,comment,price,
		(SELECT image_path 
		FROM tovar_image 
		WHERE tovar_id=id   LIMIT 1) as photo
		FROM tovar ";
		
		if ($type_id!=null)
			$query.=" WHERE type_id=$type_id   ";	
		
		return execute_select_query($query);
	};
	
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