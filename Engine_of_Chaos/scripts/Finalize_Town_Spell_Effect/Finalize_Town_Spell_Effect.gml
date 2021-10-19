function Finalize_Town_Spell_Effect(_object,_message,_valid_effect){
	with(_object){
		switch(action){
			case "Use_Item":
				if(_valid_effect && Item_Degrades(lookup_type,character,item_slot,"Use_Degrade_Chance")){
			        Damage_Item(lookup_type,character,item_slot);
			    }
				Create_Dialogue(noone,Get_Generic_Voice("Use_Item"),_message,id,true,true);
			break;
			case "Cast_Spell": Create_Dialogue(noone,Get_Generic_Voice("Cast_Spell"),_message,id,true,true); break;
		}
		Update_Character_Stats(lookup_type,character);
		Update_Character_Stats(lookup_type,target);
	}
}