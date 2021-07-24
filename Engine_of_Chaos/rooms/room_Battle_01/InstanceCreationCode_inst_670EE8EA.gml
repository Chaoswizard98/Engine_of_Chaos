if(global.Story_State > 5){
    instance_destroy();
}
else{
    ai_script_ID = "Battle_01_Wolf_Group_2";
    ai_walk_region = 0;//the region where the AI starts moving towards their target
    ai_sprint_region = 3;//The region where the AI sprints at their target
}
