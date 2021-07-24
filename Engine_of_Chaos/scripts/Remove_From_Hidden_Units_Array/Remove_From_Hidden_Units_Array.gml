function Remove_From_Hidden_Units_Array() {
	//Removes a character from the hidden units array
	var _character = argument[0];

	var i = 0;
	var j = 0;
	for(i = 0; i < obj_Battle_Controller.number_of_hidden_units; i+= 1){//loop through hidden units array
	    if(obj_Battle_Controller.hidden_units[i]!= _character){//if this isnt the character we're deleting,
	        obj_Battle_Controller.hidden_units[j] = obj_Battle_Controller.hidden_units[i];//add to the new list
	        j+=1;//increment new list counter
	    }
	}

	//Not really needed, it just makes debugging easier
	obj_Battle_Controller.hidden_units[obj_Battle_Controller.number_of_hidden_units-1] = noone;//set remainder to noone

	//Update number of hidden units
	obj_Battle_Controller.number_of_hidden_units -= 1;



}
