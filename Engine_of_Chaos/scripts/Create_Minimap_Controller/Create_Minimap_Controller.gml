function Create_Minimap_Controller(_object){
	var _this = instance_create_layer(0,0,"Minimap_Instance_Layer",obj_Minimap_Controller);
	_this.current_object = _object;
	 _this.state = "Start_Screen_Fade";
 
	with(_this){
	    event_perform(ev_other,ev_user0);
	}
}