Set_Lootable_Chest(id,-1,"AU_Fluffy",0,"Found_Fluffy_Cutscene");
sprite_index = spr_Barrel_Fluffy;

if(Check_Story_Flag(0,1,"Returned_Fluffy")||Faction_Has_Item_In_Inventory("Global","Player","AU_Fluffy")){
	Set_Chest_Looted(id);
}
