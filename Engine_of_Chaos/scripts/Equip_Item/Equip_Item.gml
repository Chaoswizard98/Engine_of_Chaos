function Equip_Item() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _equip_slot = argument[2];
	var _item_slot = argument[3];

	if(_lookup_type = "Global"){
	    global.Equipment[_character,_equip_slot] = _item_slot;
	    Update_Character_Stats(_lookup_type,_character);
	}
	else if(_lookup_type = "Local"){
	    _character.equipment[_equip_slot] = _item_slot;
	    _character.sprite_index = Get_Overworld_Sprite(Get_Character_Overworld_Sprite("Local",_character,"Total"));//set their sprite
	    _character.portrait_ID = Get_Character_Portrait("Local",_character,"Total");//Set Portrait
	    _character.voice_ID = Get_Character_Voice("Local",_character,"Total");//Set Voice
	}



}
