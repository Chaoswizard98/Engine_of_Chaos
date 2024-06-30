//==================
//Room Creation Code
//==================
function Room_Creation_Battle_02(){
	var _color = make_color_rgb(157,191,245);
	Enable_Lighting_System(.4,_color);
	switch(global.Story_State){
		case 7://Not played intro cutscene yet
			Play_Music(bgm_Harvest_Season,"Fade_To_Next",250,0);
			Destroy_Battle_Objects();
			Start_Cutscene("Battle_02_Intro_Cutscene");
		break;
		case 8://played intro cutscene but retreated after
			Start_Battle("Battle_02",room_Hillford,true,"AU_Cave",1);
	        Play_Music(bgm_Random_Battle,"Fade_To_Next",250,0);
			Create_Cursor_Light(obj_Cursor,45);
		break;
		default://completed battle
			Destroy_Battle_Objects();
		    var _player = Spawn_Player("AU_Jason","Egress");//default character, default spawn location (Overwritten by room transition controller if it exists)
		    Spawn_Followers("Chapter_1");
			Start_Room(_player);
			Play_Music(bgm_Harvest_Season,"Fade_To_Next",250,0);
			Create_Character_Light(_player,45);
		break;
	}
}

//=============
//Room Transfer
//=============
function Room_Stats_Battle_02(_stat, _direction){
	var _cutscene = "none";
	var _room = noone;
	var _transition = "Screen_Fade";
	var _tile = "Egress";
	
	//switch(_direction){
	//	case "Left": 
	//		_room = room_Hillford_Mines;
	//		_tile = "Hillford_Caves";
	//		if((global.Story_State = 7)||(global.Story_State = 8)){
	//			_cutscene = "Retreat_From_Battle_Overworld";
	//		}
	//	break;
	//	case "Down": 
	//		//_room = room_Moorenfirch;
	//		_room = room_Ashenwood;
	//		_tile = "Moorenfirch_Caves";
	//		if((global.Story_State = 7)||(global.Story_State = 8)){
	//			_cutscene = "Retreat_From_Battle_Overworld";
	//		}
	//	break;
	//}
	
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