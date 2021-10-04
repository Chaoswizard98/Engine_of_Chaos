function Pan_Out_Portrait_Controller(_controller,_persist){
	//pans out the portrait controller, possibly persisting
	with(_controller){
	    if(_persist){
	        event = "Persist";
	    }
	    pan_direction = "out";
	}
}