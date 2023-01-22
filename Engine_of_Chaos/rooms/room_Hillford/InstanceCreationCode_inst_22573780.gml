cutscene_ID = "Return_Fluffy_Cutscene";
if(Check_Story_Flag(0,1,"Returned_Fluffy")||(!Faction_Has_Item_In_Inventory("Global","Player","AU_Fluffy"))){
    instance_destroy();
}
