function Blaze_Level_2_Projectile_Hit_Event() {
	var _object = argument[0];//spell controller OR battle cutscene prop

	Create_Spell_Controller("End_Spell_Flash","Blaze",2,_object.projectile_direction,false);



	/*
	var _target = Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.target);
	var _x_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,'X_Pos',0);
	var _y_pos = Get_Battle_Cutscene_Character_Draw_Location(_target,'Y_Pos',0);

	with(_object){
	    switch(position){
	        case 'Left':
	            min_x = obj_Battle_Cutscene_Controller.scene_x - 10;
	            max_x = obj_Battle_Cutscene_Controller.scene_x + (floor(obj_Battle_Cutscene_Controller.scene_width/2)-10);
	            min_y = obj_Battle_Cutscene_Controller.scene_y - 20;
	            max_y = obj_Battle_Cutscene_Controller.scene_y;
	        break;
	        case 'Right':
	            min_x = obj_Battle_Cutscene_Controller.scene_x + obj_Battle_Cutscene_Controller.scene_width + 10;
	            max_x = obj_Battle_Cutscene_Controller.scene_x + (floor(obj_Battle_Cutscene_Controller.scene_width/2)+10);
	            min_y = obj_Battle_Cutscene_Controller.scene_y - 20;
	            max_y = obj_Battle_Cutscene_Controller.scene_y;
	            mirror = -1;
	        break;
	    }
	    looping_effect = 'Blaze_Level_2';
	}*/



}
