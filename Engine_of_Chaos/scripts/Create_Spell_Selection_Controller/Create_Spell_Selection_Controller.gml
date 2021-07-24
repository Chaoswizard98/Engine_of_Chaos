function Create_Spell_Selection_Controller() {
	var _character = argument[0];
	var _object = argument[1];

	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Spell_Selection_Controller);
	_this.current_object = _object;
	_this.current_character = _character;

	with(_this){
	    inventory_slot[0] = 0;
	    inventory_slot[1] = 1;
	    inventory_slot[2] = 2;
	    inventory_slot[3] = 3;

	    /*menu_sprite[0] = Get_Spell_Slot_Stats('Local',current_character,0,Get_Spell_Level('Local',current_character,0),'menu_icon');//spr_Status_Menu_Icon;//slot 0 sprite
	    menu_name[0] = Get_Spell_Slot_Stats('Local',current_character,0,Get_Spell_Level('Local',current_character,0),'menu_name');//slot 0 name
	    menu_animated[0] = Get_Spell_Slot_Stats('Local',current_character,0,Get_Spell_Level('Local',current_character,0),'frame_number');
    
	    menu_sprite[1] = Get_Spell_Slot_Stats('Local',current_character,1,Get_Spell_Level('Local',current_character,1),'menu_icon');//spr_Magic_Menu_Icon;//slot 1 sprite
	    menu_name[1] = Get_Spell_Slot_Stats('Local',current_character,1,Get_Spell_Level('Local',current_character,1),'menu_name');
	    menu_animated[1] = Get_Spell_Slot_Stats('Local',current_character,1,Get_Spell_Level('Local',current_character,1),'frame_number');
    
	    menu_sprite[2] = Get_Spell_Slot_Stats('Local',current_character,2,Get_Spell_Level('Local',current_character,2),'menu_icon');//spr_Item_Menu_Icon;//slot 2 sprite
	    menu_name[2] = Get_Spell_Slot_Stats('Local',current_character,2,Get_Spell_Level('Local',current_character,2),'menu_name');
	    menu_animated[2] = Get_Spell_Slot_Stats('Local',current_character,2,Get_Spell_Level('Local',current_character,2),'frame_number');
    
	    menu_sprite[3] = Get_Spell_Slot_Stats('Local',current_character,3,Get_Spell_Level('Local',current_character,3),'menu_icon');//spr_Search_Menu_Icon;//slot 3 sprite
	    menu_name[3] = Get_Spell_Slot_Stats('Local',current_character,3,Get_Spell_Level('Local',current_character,3),'menu_name');
	    menu_animated[3] = Get_Spell_Slot_Stats('Local',current_character,3,Get_Spell_Level('Local',current_character,3),'frame_number');*/
    
	    spell_level = Get_Spell_Level("Local",current_character,inventory_slot[current_index]);
	    event_perform(ev_other,ev_user0);
	}



}
