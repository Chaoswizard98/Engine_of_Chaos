function Prism_Flower_Create_Event() {
	var _object = argument[0];//spell controller OR battle cutscene prop

	var _attacker = Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.attacker);
	var _x_pos = Get_Weapon_Cutscene_Draw_Position(_attacker,"X_Pos");
	var _y_pos = Get_Weapon_Cutscene_Draw_Position(_attacker,"Y_Pos");


	with(_object){
	    var _this = Create_Battle_Cutscene_Prop("Prism_Flower_Start",_x_pos + 20,_y_pos + 20,0,mirror,true,false,noone);
	    _this.action = "Move_To_Location";
	    _this.end_x = _x_pos;
	    _this.end_y = _y_pos;
	    _this.x_speed = 1;
	    _this.y_speed = 1;
    
	}



}
