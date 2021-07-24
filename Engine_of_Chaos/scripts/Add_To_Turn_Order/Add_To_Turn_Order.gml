function Add_To_Turn_Order() {
	//Adds a character to the turn order
	var _character = argument[0];
	var _slot = argument[1];

	var i = obj_Battle_Controller.number_of_turns;
	for(i = obj_Battle_Controller.number_of_turns; i > _slot; i-= 1){//loop through turn order
	    obj_Battle_Controller.turn_order[i] = obj_Battle_Controller.turn_order[i-1];//shift everything down 1 slot
	}
	obj_Battle_Controller.turn_order[_slot] = _character;//add the new character to the list
	obj_Battle_Controller.number_of_turns += 1;



}
