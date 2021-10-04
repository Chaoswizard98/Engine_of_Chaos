function Input_Repeater() {
	//If holding a button, how long until we fire off the key press event again?
	if(allow_interaction){//if we are allowed to press buttons
	    if(Pressed_Key("Up_Button",false)||Pressed_Key("Down_Button",false)||Pressed_Key("Left_Button",false)||Pressed_Key("Right_Button",false)){//check if we pressed a directional key
	        input_delay = max_input_delay;//if so, start timer
	    }
	    auto_move = false;//block auto move until timer hits 0
	    input_delay -= 1;//reduce timer
	    if(input_delay <= 0){//if we've hit 0,
	        auto_move = true;//enable auto move
	        input_delay = min_input_delay;//set delay to minimum delay
	    }
	}
}