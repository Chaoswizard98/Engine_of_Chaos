function Equip_Item() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _equip_slot = argument[2];
	var _item_slot = argument[3];

	if(_item_slot != -1){
		if(_lookup_type = "Global"){
		    global.Equipment[_character,_equip_slot] = _item_slot;
		    Update_Character_Stats(_lookup_type,_character);
		}
		else if(_lookup_type = "Local"){
		    _character.equipment[_equip_slot] = _item_slot;
			Set_Appearance(_character);
		}
	}
}
