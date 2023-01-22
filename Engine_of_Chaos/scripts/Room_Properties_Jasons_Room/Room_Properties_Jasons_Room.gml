//==================
//Room Creation Code
//==================
function Room_Creation_Jasons_House_Second_Floor(){
	var _player;
	switch(global.Story_State){
	    case 0://First Cutscene
	        Finish_Room_Transition(noone);//Cancel default room transition event
	        _player = Create_Player(192,216,"Down","AU_Jason",false,true);//x,y,direction,id,allow_interaction,cutsene_mode
			Start_Cutscene("Jasons_Room_Cutscene",_player);
	        Play_Music(noone,"Fade_To_Next",250,0);
	    break;
	    default:
	        _player = Spawn_Player("AU_Jason","Egress");
	        Spawn_Followers("Chapter_1");
	        Play_Music(bgm_Town,"Fade_To_Next",250,0);
	    break;
	}
	Start_Room(_player);
}