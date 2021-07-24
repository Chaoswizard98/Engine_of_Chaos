function Set_Cursor_Display() {
	var _size = argument[0];
	var _type = argument[1];

	obj_Cursor.cursor_size = max(_size,1);
	obj_Cursor.cursor_type = _type;



}
