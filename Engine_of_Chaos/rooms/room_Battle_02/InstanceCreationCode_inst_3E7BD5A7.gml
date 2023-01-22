cutscene_ID = "Old_Rope_Cutscene";
if(Check_Story_Flag(0,2,"Played_Old_Rope_Cutscene")||(global.Story_State = 7)||(global.Story_State = 8)){
    instance_destroy();
}