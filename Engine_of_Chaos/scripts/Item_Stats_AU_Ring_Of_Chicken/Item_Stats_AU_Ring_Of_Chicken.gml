function Item_Stats_AU_Ring_Of_Chicken(_lookup_type,_character){
	item_name = Get_Item_Display_Name("AU_Ring_Of_Chicken","Item_Name","Ring of Chicken");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("AU_Ring_Of_Chicken","Menu_Name","Ring of\n Chicken");//name as it appears in menus
	item_icon = spr_AU_Item_Icons;
	overworld_sprite_ID = spr_Generic_Chicken_Overworld;
	portrait_sprite_ID = spr_Generic_Chicken_Portrait;
	voice_ID = sfx_Dialogue01;
	battle_cutscene_sprite_ID = "Generic_Chicken";
	off_hand = true;
	shop_type = "Equipment";
	frame_number = 15;
	value = 10;
}