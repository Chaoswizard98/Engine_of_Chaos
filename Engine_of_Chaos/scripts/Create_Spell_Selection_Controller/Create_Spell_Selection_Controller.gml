function Create_Spell_Selection_Controller(_character,_object){
	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Spell_Selection_Controller);
	_this.current_object = _object;
	_this.current_character = _character;

	with(_this){
	    inventory_slot[0] = 0;
	    inventory_slot[1] = 1;
	    inventory_slot[2] = 2;
	    inventory_slot[3] = 3;
    
	    spell_level = Get_Spell_Level("Local",current_character,inventory_slot[current_index]);
	    event_perform(ev_other,ev_user0);
	}
}