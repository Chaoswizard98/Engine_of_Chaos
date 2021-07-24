if(global.Story_State > 5){
    instance_destroy();
}
else{
    spawner_ID = "Battle_01_Wolf_Cave";
    Execute_Monster_Spawner_Event(id,"Setup");
}