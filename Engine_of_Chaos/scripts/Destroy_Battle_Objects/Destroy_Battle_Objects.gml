function Destroy_Battle_Objects() {
	var i;

	//Destroy hidden units
	for(i=0; i<obj_Battle_Controller.number_of_hidden_units; i+=1){//Loop through hidden units array
	    instance_activate_object(obj_Battle_Controller.hidden_units[i]);//activate it
	    instance_destroy(obj_Battle_Controller.hidden_units[i]);//destroy it
	}

	instance_destroy(obj_Cursor);//destroy cursor
	instance_destroy(obj_Battle_Controller);



}
