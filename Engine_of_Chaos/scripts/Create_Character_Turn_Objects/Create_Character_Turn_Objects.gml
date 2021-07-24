function Create_Character_Turn_Objects() {
	var _character = argument[0];
	var _formula = argument[1];

	switch(_formula){
	    case "Spawn_Reveal":
	        var _turn_object = instance_create_layer(0,0,"UI_Instance_Layer",obj_Turn);//create object to remember turn priority
	        _turn_object.character = _character;//remember the object id
	        _turn_object.initiative = 999999;//max priority (after hidden units)
	    break;
	    case "Hidden_Reveal"://revealing a hidden unit
	        var _turn_object = instance_create_layer(0,0,"UI_Instance_Layer",obj_Turn);//create object to remember turn priority
	        _turn_object.character = _character;//remember the character id
	        _turn_object.initiative = 9999999;//max priority
	    break;
	    default:
	        var i = 0;
	        for(i = 0; i<Get_Character_Turns("Local",_character,"Total"); i+= 1){
	            var _turn_object = instance_create_layer(0,0,"UI_Instance_Layer",obj_Turn);//create object to remember turn priority
	            _turn_object.character = _character;//remember the character id
	            _turn_object.initiative = Calculate_Initiative(_character);//remember the turn priority
	        }
	    break;
	}



}
