function Stop_Screen_Flash() {
	with(obj_Screen_Flash_Controller){
	    if(flash_direction = "in"){
	        iterations = 2;
	        current_object = id;
	    }
	    else if(flash_direction = "out"){
	        iterations = 1;
	        current_object = id;
	    }
	    else{
	        current_object = id;
	        instance_destroy();
	    }
	}



}
