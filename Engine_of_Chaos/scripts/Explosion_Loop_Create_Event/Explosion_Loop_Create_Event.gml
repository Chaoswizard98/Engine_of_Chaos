function Explosion_Loop_Create_Event() {
	var _object = argument[0];

	var _target = Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.target);
	var _x_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"X_Pos",0);
	var _y_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,"Y_Pos",0);
	var _mirror = Get_Battle_Cutscene_Character_Draw_Location(_target,"Mirror",0);

	with(_object){
	    switch(position){
	        case "Left":
	            min_x = obj_Battle_Cutscene_Controller.scene_x;
	            max_x = obj_Battle_Cutscene_Controller.scene_x + floor(obj_Battle_Cutscene_Controller.scene_width/2);
	            min_y = obj_Battle_Cutscene_Controller.scene_y;
	            max_y = obj_Battle_Cutscene_Controller.scene_y + obj_Battle_Cutscene_Controller.scene_height;
	        break;
	        case "Right":
	            min_x = obj_Battle_Cutscene_Controller.scene_x + floor(obj_Battle_Cutscene_Controller.scene_width/2);
	            max_x = obj_Battle_Cutscene_Controller.scene_x + obj_Battle_Cutscene_Controller.scene_width;
	            min_y = obj_Battle_Cutscene_Controller.scene_y;
	            max_y = obj_Battle_Cutscene_Controller.scene_y + obj_Battle_Cutscene_Controller.scene_height;
	        break;
	    }
	    looping_effect = "Explosion_Loop";
	}



}
