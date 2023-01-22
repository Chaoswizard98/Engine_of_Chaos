function Pan_Out_Dialogue() {
	//Basic dialogue controler destroy script
	//It performs the following actions in order.
	//1. Pan out Portrait and dialogue window
	//2. Destroy the controller. 
	with(obj_Dialogue_Controller){
	    allow_interaction = false;
	    pan_direction = "out";
	    if(portrait_controller != noone){
	        portrait_controller.pan_direction = "out";
	        portrait_controller.play_pan_sound = true;
	    }
	}
}