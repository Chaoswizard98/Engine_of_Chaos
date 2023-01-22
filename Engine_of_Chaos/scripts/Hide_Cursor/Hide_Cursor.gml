function Hide_Cursor(){
	obj_Cursor.visible = false;
	with(obj_Cursor_Light){
		target = Get_Current_Turn();	
	}
}