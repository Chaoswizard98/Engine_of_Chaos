//==================
//Room Creation Code
//==================
function Room_Creation_Battle_01(){
	switch(global.Story_State){
		case 4://Not played intro cutscene yet
			Start_Battle("Battle_01",room_Ashenwood,false,"Default",.5);
			Start_Cutscene("Battle_01_Intro_Cutscene");
		break;
		case 5://played intro cutscene but retreated after
			Start_Battle("Battle_01",room_Ashenwood,true,"Default",.5);
	        Play_Music(bgm_Dont_Stop_Fighting,"Fade_To_Next",250,0);
		break;
		default://completed battle
			Destroy_Battle_Objects();
		    var _player = Spawn_Player("AU_Jason","Egress");//default character, default spawn location (Overwritten by room transition controller if it exists)
		    Start_Room(_player);
			Play_Music(bgm_Town,"Fade_To_Next",250,0);
		break;
	}
}

//=============
//Room Transfer
//=============
function Room_Stats_Battle_01(_stat, _direction){
	var _cutscene = "none";
	var _room = noone;
	var _transition = "Screen_Fade";
	var _tile = "Egress";
	
	switch(_direction){
		case "Right": 
			_room = room_Hillford;
			_tile = "Ashenwood_Forest";
			if((global.Story_State = 4)||(global.Story_State = 5)){
				_cutscene = "Retreat_From_Battle_Overworld";
			}
		break;
		case "Left": 
			_room = room_Ashenwood;
			_tile = "Ashenwood_Forest";
			if((global.Story_State = 4)||(global.Story_State = 5)){
				_cutscene = "Retreat_From_Battle_Overworld";
			}
		break;
	}
	
	//===========
	//Return Stat
	//===========
	switch(_stat){
		case "Cutscene": return _cutscene; break;
		case "Room": return _room; break;
		case "Transition": return _transition; break;
		case "Tile": return _tile; break;
	}
}