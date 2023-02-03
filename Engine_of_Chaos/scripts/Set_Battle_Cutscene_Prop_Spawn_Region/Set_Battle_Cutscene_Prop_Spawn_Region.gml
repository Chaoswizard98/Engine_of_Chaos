function Set_Battle_Cutscene_Prop_Spawn_Region(_object,_x,_y,_w,_h,_mirror){
	with(_object){
		
		min_x = obj_Battle_Cutscene_Controller.scene_x + _x;
		min_y = obj_Battle_Cutscene_Controller.scene_y + _y;
		max_x = min_x + _w;
		max_y = min_y + _h;
		
		if(_mirror){
			mirror = -1;	
		}
		
		//if(!_mirror){
		//	min_x = obj_Battle_Cutscene_Controller.scene_x + _x;
		//	min_y = obj_Battle_Cutscene_Controller.scene_y + _y;
		//	max_x = min_x + _w;
		//	max_y = min_y + _h;
			
		//}
		//else{
		//	min_x = obj_Battle_Cutscene_Controller.scene_x + obj_Battle_Cutscene_Controller.scene_width - (_x + _w);
		//	min_y = obj_Battle_Cutscene_Controller.scene_y + _y;
		//	max_x = min_x + _w;
		//	max_y = min_y + _h;
		//	mirror = -1;
		//}
	}
}