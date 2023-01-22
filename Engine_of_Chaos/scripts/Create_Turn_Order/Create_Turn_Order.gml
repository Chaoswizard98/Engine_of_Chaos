function Create_Turn_Order() {
	//reset turns to 0 (empty list)
	obj_Battle_Controller.round_start = true;//we're starting a new round;
	obj_Battle_Controller.round_number += 1;//increment round number
	obj_Battle_Controller.number_of_turns = 0;//number of turns gets reset

	with(obj_Character){//loop through all characters, add them to the list
		if(!hidden){
			Create_Character_Turn_Objects(id,"Default");
		}
	}

	//Reveal Hidden Units
	var i = 0;
	for(i = 0; i < obj_Battle_Controller.number_of_hidden_units; i+= 1){//loop through hidden units
	    if(Can_Reveal_Hidden_Character(obj_Battle_Controller.hidden_units[i])){//if we can reveal them,
	        Create_Character_Turn_Objects(obj_Battle_Controller.hidden_units[i],"Hidden_Reveal");//reveal them
	    }
	}

	//Trigger Spawn Tiles
	with(obj_Enemy_Spawner){//loop through all spawners
	    if(Can_Spawn_Character(id)){//if we can spawn a character
	        Create_Character_Turn_Objects(id,"Spawn_Reveal");
	    }
	}


	with(obj_Turn){//add all turn objects to the list
	    if(obj_Battle_Controller.number_of_turns = 0){//if the list is empty
	        Add_To_Turn_Order(id,0);//add to slot 0
	    }
	    else{//else, loop and add based on initiative
	        var i = 0;
	        var _added_to_list = false;
	        for(i = 0; i < obj_Battle_Controller.number_of_turns; i+= 1){//loop through turn order
	            if(initiative > obj_Battle_Controller.turn_order[i].initiative){//add turn object to the list
	                Add_To_Turn_Order(id,i);//add character to turn order
	                _added_to_list = true;
	                break;
	            }
	        }
	        if(!_added_to_list){
	            Add_To_Turn_Order(id,obj_Battle_Controller.number_of_turns);//add character to turn order
	        }
	    }
	}

	for(i = 0; i < obj_Battle_Controller.number_of_turns; i+= 1){//loop through turn order
	    if(obj_Battle_Controller.turn_order[i].object_index = obj_Turn){//convert turn object to character id
	        obj_Battle_Controller.turn_order[i] = obj_Battle_Controller.turn_order[i].character;//replace turn object with the character
	    }
	}

	//delete turn objects
	instance_destroy(obj_Turn);



}
