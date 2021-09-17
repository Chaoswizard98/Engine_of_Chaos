function Set_Battle_Cutscene_Prop_Spawn_Region(){
	var _object = argument[0];
	var _x = argument[1];
	var _y = argument[2];
	var _w = argument[3];
	var _h = argument[4];
	var _mirror = argument[5];
	
	with(_object){
		if(!_mirror){
			min_x = obj_Battle_Cutscene_Controller.scene_x + _x;
			min_y = obj_Battle_Cutscene_Controller.scene_y + _y;
			max_x = min_x + _w;
			max_y = min_y + _h;
			
		}
		else{
			min_x = obj_Battle_Cutscene_Controller.scene_x + obj_Battle_Cutscene_Controller.scene_width - (_x + _w);
			min_y = obj_Battle_Cutscene_Controller.scene_y + _y;
			max_x = min_x + _w;
			max_y = min_y + _h;
			mirror = -1;
		}
	}
}