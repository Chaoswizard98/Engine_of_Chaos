function Pan_Out_Portrait_Controller() {
	//pans out the portrait controller, possibly persisting
	var _controller = argument[0];
	var _persist = argument[1];

	with(_controller){
	    if(_persist){
	        event = "Persist";
	    }
	    pan_direction = "out";
	}



}
