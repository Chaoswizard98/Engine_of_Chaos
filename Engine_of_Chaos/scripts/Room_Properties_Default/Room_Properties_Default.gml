function Room_Stats_Default(_stat,_direction){
	switch(_stat){
		case "Cutscene": return "none"; break;
		case "Room": return noone; break;
		case "Transition": return "Screen_Fade"; break;
		case "Tile": return "Egress"; break;
	}
}