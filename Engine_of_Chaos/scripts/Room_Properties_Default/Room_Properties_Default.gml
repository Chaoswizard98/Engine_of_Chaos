function Room_Stats_Default(_stat,_direction){
	switch(_stat){
		case "Cutscene": return "none"; break;
		case "Room": return noone; break;
		case "Transition": return "Screen_Fade"; break;
		case "Tile": return "Egress"; break;
	}
}

function Room_Creation_Default(){
	var _player = Spawn_Player("AU_Jason","Egress");//default character, default spawn location (Overwritten by room transition controller if it exists)
	Start_Room(_player);
	Spawn_Followers("Default");
}
