function Burst_Rock_Explosion_Loop_Create_Event() {
	var _object = argument[0];

	with(_object){
	    min_x = obj_Battle_Cutscene_Controller.scene_x;
	    min_y = obj_Battle_Cutscene_Controller.scene_y;
	    max_x = obj_Battle_Cutscene_Controller.scene_x + obj_Battle_Cutscene_Controller.scene_width;
	    max_y = obj_Battle_Cutscene_Controller.scene_y + obj_Battle_Cutscene_Controller.scene_height;

	    looping_effect = "Explosion_Loop";
	    with(_object){
	        waiting_for_event = true;
	        event_timer = 60;
	    }
	}



}
