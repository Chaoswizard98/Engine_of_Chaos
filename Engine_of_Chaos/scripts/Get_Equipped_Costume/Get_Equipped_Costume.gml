function Get_Equipped_Costume(_lookup_type,_character,_stat,_default){
	var _mainhand = "none";
	var _offhand = "none";
	
	switch(_stat){
		case "Overworld": 
			_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Overworld_Sprite_ID");
			_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Overworld_Sprite_ID");
		break;
		case "Portrait": 
			_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Portrait_ID");
			_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Portrait_ID");
		break;
		case "Voice": 
			_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Voice_ID");
			_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Voice_ID");
		break;
		case "Battle_Cutscene": 
			_mainhand = Get_Equipped_Item_Stats(_lookup_type,_character,0,"Battle_Cutscene_Sprite_ID");
			_offhand = Get_Equipped_Item_Stats(_lookup_type,_character,1,"Battle_Cutscene_Sprite_ID");
			return Check_Stat_Override(_default,_offhand,_mainhand);
		break;
	}
	
	return Check_Asset_Override(_default,_offhand,_mainhand);
}