function Get_Basic_NPC_Appearance(_lookup_type,_character,_stat,_overworld_sprite,_portrait,_voice,_battle_sprite){
	if((_lookup_type = "Local")||(_lookup_type = "Global")){
		switch(_stat){
			case "Overworld": return Fix_Overworld_Sprite_Origin(Check_Asset_Override(Get_Equipped_Costume(_lookup_type,_character,_stat,_overworld_sprite))); break;
			case "Portrait": return Check_Asset_Override(Get_Equipped_Costume(_lookup_type,_character,_stat,_portrait)); break;
			case "Voice": return Check_Asset_Override(Get_Equipped_Costume(_lookup_type,_character,_stat,_voice)); break;
			case "Battle_Cutscene": return Check_Stat_Override(Get_Equipped_Costume(_lookup_type,_character,_stat,_battle_sprite)); break;
		}
	}
	else{//Character doesnt exist (Reading NPC data from a room where they dont exist)
		switch(_stat){
			case "Overworld": return Fix_Overworld_Sprite_Origin(_overworld_sprite); break;
			case "Portrait": return _portrait; break;
			case "Voice": return _voice; break;
			case "Battle_Cutscene": return _battle_sprite; break;
		}
	}
}