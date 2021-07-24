function Create_Audio_Controller() {
	if(!instance_exists(obj_Audio_Controller)){//if the controller doesnt exist
	    instance_create_layer(0,0,"UI_Instance_Layer",obj_Audio_Controller);//create it
	}



}
