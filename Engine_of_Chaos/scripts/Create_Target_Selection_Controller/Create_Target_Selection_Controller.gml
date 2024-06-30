function Create_Target_Selection_Controller() {
	var _character = argument[0];
	var _action = argument[1];
	var _object = argument[2];

	var _inventory_slot = 0;
	var _inventory_level = 1;

	if(argument_count >3){
	    _inventory_slot = argument[3];
	}
	if(argument_count >4){
	    _inventory_level = argument[4];
	}

	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Target_Selection_Controller);
	_this.current_object = _object;
	_this.character = _character;
	_this.action = _action;
	_this.inventory_slot = _inventory_slot;
	_this.inventory_level = _inventory_level;


	var _target_type = "none";

	if((_action = "Attack")||(_action = "AI_Attack")){
	    Set_Cursor_Display(Get_Character_Attack_Size("Local",_character,"Total"),Get_Character_Attack_Pattern("Local",_character,"Total"));
	    _target_type = Get_Character_Attack_Target_Type("Local",_character,"Total");
	}
	else if((_action = "Magic")||(_action = "AI_Cast_Spell")){
	    Set_Cursor_Display(Get_Spell_Slot_Stats("Local",_character,_inventory_slot,_inventory_level,"Area"),Get_Spell_Slot_Stats("Local",_character,_inventory_slot,_inventory_level,"Cursor_Pattern"));
	    _target_type = Get_Spell_Slot_Stats("Local",_character,_inventory_slot,_inventory_level,"Target_Type");
	}
	else if((_action = "Use_Item")||(_action = "AI_Use_Item")){
	    Set_Cursor_Display(Get_Inventory_Item_Stats("Local",_character,_inventory_slot,"Use_Size"),Get_Inventory_Item_Stats("Local",_character,_inventory_slot,"Use_Cursor_Pattern"));
	    _target_type = Get_Inventory_Item_Stats("Local",_character,_inventory_slot,"Use_Target_Type");
	}
	else if(_action = "Give_Item"){
	    Set_Cursor_Display(1,"Default");
	    _target_type = "Ally";
	}


	var _target_character = noone;
	if(_action = "AI_Attack"){
	    _this.targets[_this.number_of_targets] = _character.ai_target;
	    _this.number_of_targets += 1;
	}
	else{
	    with(obj_Target_Tile){
	        _target_character = instance_position(x,y,obj_Character);
	        if(_target_character != noone){
	            if(Can_Target_Character(_target_type,_character,_target_character)){
	                if(!(_action = "Give_Item" && (_target_character.is_summon))){//Dont allow giving items to summoned units
	                    _this.targets[_this.number_of_targets] = _target_character;
	                    _this.number_of_targets += 1;
	                }
	            }
	        }
	        else{//terrain isnt empty,
	            if(_target_type = "Empty_Tile"){
	                _this.targets[_this.number_of_targets] = id;
	                _this.number_of_targets += 1;
	            }
	        }
	    }
	}

	with(_this){
	    event_perform(ev_other,ev_user0);
	}



}
