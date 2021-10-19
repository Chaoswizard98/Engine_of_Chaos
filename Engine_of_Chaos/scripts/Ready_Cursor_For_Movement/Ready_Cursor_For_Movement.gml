function Ready_Cursor_For_Movement(_x=obj_Cursor.x,_y=obj_Cursor.y){
	obj_Cursor.x = _x;
	obj_Cursor.y = _y;
	Show_Cursor();
	Set_Camera_Target(obj_Cursor);
}