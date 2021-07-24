if(global.Story_State > 5){
    instance_destroy();
}
else{
    ai_script_ID = "Default_Physical";
    ai_walk_region = 0;//the region where the AI starts moving towards their target
    ai_sprint_region = 0;//The region where the AI sprints at their target
    Set_Hidden_Character(id,"Turn_Start",2,true,true,false);//<character>,<criteria>,<state>,<requires exact state>,<can_attack>,<action>
}
