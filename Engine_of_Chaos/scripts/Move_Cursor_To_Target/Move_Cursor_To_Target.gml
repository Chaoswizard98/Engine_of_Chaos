function Move_Cursor_To_Target() {
	var _target = argument[0];
	var _action = argument[1];

	obj_Cursor.pathfinding_end_action = _action;
	Pathfind_To_Location(obj_Cursor,obj_Cursor.movement_type,round(_target.x),round(_target.y),true,obj_Cursor.pathfinding_speed,"Cursor");//object,move_type,targetX,targetY,allow_diagonals,path speed



}
