var _player = Spawn_Player("Jason","Egress");//default character, default spawn location (Overwritten by room transition controller if it exists)
Start_Room(_player);
Spawn_Followers();
Set_Adjacent_Room("Right",room_Battle_01,"Screen_Fade","Ashenwood");
Play_Music(bgm_Town,"Fade_To_Next",250,0);