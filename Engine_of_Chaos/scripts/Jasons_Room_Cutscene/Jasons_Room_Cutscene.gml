function Jasons_Room_Cutscene() {
	var _player = player_trigger;

	switch(state){
	    case 0:
	        Create_Screen_Fade(c_black,1,2,0,"out",id);//Color, Alpha, Stop, Speed, Direction, Current Object
	        alarm[0] = 120;
	        state += 1;
	    break;
	    case 1:
	        Play_Sound(sfx_Door);
	        alarm[0] = 30;
	        state += 1;
	    break;
	    case 2:
	        Play_Sound(sfx_Door);
	        alarm[0] = 30;
	        state += 1;
	    break;
	    case 3:
	        Play_Sound(sfx_Door);
	        alarm[0] = 60;
	        state += 1;
	    break;
	    case 4:
	        state += 1;
	        Create_Dialogue(noone,Get_Character_Voice("Global",1,"Total"),Get_Character_Name("Global",0,"Total") + "!",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 5:
	        alarm[0] = 30;
	        state += 1;
	    break;
	    case 6:
	        Play_Sound(sfx_Door);
	        alarm[0] = 10;
	        state += 1;
	    break;
	    case 7:
	        Play_Sound(sfx_Door);
	        alarm[0] = 10;
	        state += 1;
	    break;
	    case 8:
	        Play_Sound(sfx_Door);
	        alarm[0] = 10;
	        state += 1;
	    break;
	    case 9:
	        state += 1;
	        Create_Dialogue(noone,Get_Character_Voice("Global",1,"Total"),"Hey "+Get_Character_Name("Global",0,"Total")+" wake up!",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 10:
	        state += 1;
	        Create_Dialogue(noone,Get_Appearance("Forced","Jasons_Mom","Voice"),Get_Character_Name("Global",0,"Total")+"! Your friend MAX is here! You might want to answer before he breaks down our door again!",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 11:
	        state += 1;
	        Create_Dialogue(Get_Character_Portrait("Global",0,"Total"),Get_Character_Voice("Global",0,"Total"),"Yeah, I'll be right down.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 12:
	        state += 1;
	        Continue_Screen_Fade(0,.04,"in",id);
	    break;
	    case 13:
	        state += 1;
	        Move_Character(_player,"Right",1,2);//character,direction,tiles,speed
	    break;
	    case 14:
	        _player.cutscene_mode = false;
	        _player.allow_interaction = true;
	        global.Story_State += 1;
	        Play_Music(bgm_Town,"Fade_To_Next",250,0);
	        instance_destroy(obj_Screen_Fade_Controller);
	        instance_destroy();
	    break;
	}



}
