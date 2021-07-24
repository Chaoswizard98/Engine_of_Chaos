function Remove_From_Turn_Order() {
	//Adds a character to the turn order
	var _character = argument[0];

	var i = 0;
	var j = 0;
	var _turns_removed = 0;
	for(i = 0; i < obj_Battle_Controller.number_of_turns; i+= 1){//loop through turn order
	    if(obj_Battle_Controller.turn_order[i]!= _character){//if this isnt the character we're deleting,
	        obj_Battle_Controller.turn_order[j] = obj_Battle_Controller.turn_order[i];//add to the new list
	        j+=1;//increment new list counter
	    }
	    else{
	        if(i <= obj_Battle_Controller.current_turn){
	            _turns_removed += 1;
	        }
	    }
	}

	//Not really needed, it just makes debugging easier
	for(i = j; i < obj_Battle_Controller.number_of_turns; i+= 1){//loop through turn order
	    obj_Battle_Controller.turn_order[i] = noone;
	}

	//Update current turn and number of turns
	obj_Battle_Controller.current_turn -= _turns_removed;
	obj_Battle_Controller.number_of_turns = j;



}
