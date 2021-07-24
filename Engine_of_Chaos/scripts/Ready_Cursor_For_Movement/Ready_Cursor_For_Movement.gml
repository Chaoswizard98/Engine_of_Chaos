function Ready_Cursor_For_Movement() {
	//var _xPos = argument[0];
	//var _yPos = argument[1];

	if(argument_count > 1){
	    obj_Cursor.x = argument[0];
	    obj_Cursor.y = argument[1];
	}
	Show_Cursor();
	Set_Camera_Target(obj_Cursor);



}
