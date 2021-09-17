if(global.Story_State > 5){//Not In Battle
    with(obj_Party_Spawn_Location){
        instance_destroy();
    }
    var _player = Spawn_Player("Jason","Egress");//default character, default spawn location (Overwritten by room transition controller if it exists)
    Start_Room(_player);
    Spawn_Followers();
}
else{//In Battle
    Start_Room(obj_Cursor);
    Start_Battle("Battle_01"); global.Xp_Modifier = .5;//xp gains modifier for a specific battle. (Move inside start battle script)
    global.Egress_Room = room_Ashenwood;
    if(global.Story_State = 4){//play cutscene
        var _wolf;
        with(obj_Wolf){
            if(ai_script_ID = "Battle_01_Wolf_01"){
                _wolf = id;
            }
        }
        Play_Music(noone,"Fade_Out",250,0);
		Start_Cutscene("Battle_01_Intro_Cutscene",noone,_wolf);
    }
    else if(global.Story_State = 5){
        Play_Music(bgm_Dont_Stop_Fighting,"Fade_To_Next",250,0);
        Finish_Room_Transition(obj_Battle_Controller);
    }
}

Set_Adjacent_Room("Left",room_Ashenwood,"Screen_Fade","Ashenwood_Forest");
Set_Adjacent_Room("Right",room_Hillford,"Screen_Fade","Ashenwood_Forest");