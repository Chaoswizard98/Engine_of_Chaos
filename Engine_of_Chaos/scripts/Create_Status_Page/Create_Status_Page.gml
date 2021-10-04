function Create_Status_Page(_lookup_type,_characterID,_object){
	var _portrait_ID, _status_controller;

	_status_controller = instance_create_layer(0,0,"UI_Instance_Layer",obj_Status_Page_Controller);//create the controller
	_status_controller.lookup_type = _lookup_type;//are we looking at global or local variables?

	_portrait_ID = Get_Character_Portrait(_lookup_type,_characterID,"Total");
	_status_controller.portrait_controller = Create_Portrait_Controller(_portrait_ID,"Status_Page",_status_controller,Character_Is_Dead(_lookup_type,_characterID));//then draw it

	//==stats page setup==
	with(_status_controller){
	    current_object = _object;//remember which object created this one
	    page_window_pan = max_page_window_pan;//start pan off screen
	    sidebar_window_pan = max_sidebar_window_pan;//start pan off screen
	    gold_window_pan_x = max_gold_window_pan_x;
	    gold_window_pan_y = max_gold_window_pan_y;
	    pan_direction = "in";//start panning in
	    characterID = _characterID;//set character ID
	    play_pan_sound = true;
	}
}