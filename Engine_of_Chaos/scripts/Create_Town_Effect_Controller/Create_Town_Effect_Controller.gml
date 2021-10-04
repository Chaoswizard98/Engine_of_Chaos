function Create_Town_Effect_Controller(_lookup_type,_character,_target,_action,_object,_inventory_slot,_inventory_level){
	var _this;
	_this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Town_Effect_Controller);

	_this.lookup_type = _lookup_type;
	_this.character = _character;
	_this.target = _target;
	_this.action = _action;
	_this.current_object = _object;

	if(_this.action = "Cast_Spell"){
	    _this.spell_slot = _inventory_slot;
	    _this.spell_level = _inventory_level;
	    _this.spell = Get_Spell(_this.lookup_type,_this.character,_this.spell_slot)
	    _this.effect = Get_Effect_Stats(_this.spell,_this.spell_level,"Town_Effect",_this.lookup_type,_this.character);
	    _this.effect_level = _this.spell_level;
	}
	else if(_this.action = "Use_Item"){
	    _this.item_slot = _inventory_slot;
	    _this.item = Get_Item(_this.lookup_type,_this.character,_this.item_slot);
	    _this.effect = Get_Effect_Stats(Get_Item_Stats(_this.item,"Town_Effect",_this.lookup_type,_this.character),Get_Item_Stats(_this.item,"Town_Effect_Level",_this.lookup_type,_this.character),"Town_Effect",_this.lookup_type,_this.character);
	    _this.effect_level = Get_Item_Stats(_this.item,"Town_Effect_Level",_this.lookup_type,_this.character);
	}

	with(_this){//start item use sequence
	    event_perform(ev_other,ev_user0);
	}
}