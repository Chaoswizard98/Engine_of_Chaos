function Heal_Spell_Hit_Event() {
	var _object = argument[0];

	var _target = Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.target);
	var _x_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"X_Pos",0);
	var _y_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"Y_Pos",0)-60;
	var _mirror = Get_Battle_Cutscene_Character_Draw_Location(_target,"Mirror",0);

	with(_object){
	    Create_Battle_Cutscene_Prop("Heal",_x_pos,_y_pos,0,mirror,false,true,noone);
	}



}
