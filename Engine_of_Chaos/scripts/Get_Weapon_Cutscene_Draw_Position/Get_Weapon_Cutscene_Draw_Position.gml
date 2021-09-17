function Get_Weapon_Cutscene_Draw_Position() {
	var _character = argument[0];
	var _return_stat = argument[1];

	var _x_pos = Get_Battle_Cutscene_Character_Draw_Location(_character,"X_Pos",_character.x_pan) + Get_Weapon_Cutscene_Position(_character,"X_Pos");
	var _y_pos = Get_Battle_Cutscene_Character_Draw_Location(_character,"Y_Pos",0) + Get_Weapon_Cutscene_Position(_character,"Y_Pos");

	switch(_return_stat){
	    case "X_Pos": return _x_pos; break;
	    case "Y_Pos": return _y_pos; break;
	}
}