function Cutscene_Messages_English(_cutscene_object,_message_ID) {
	var _cutscene = _cutscene_object.script_ID;
	var _player_name = Get_Character_Name("Local",_cutscene_object.player_trigger,"Total");
	
	switch(_cutscene){
		case "Jess_Dialogue":
			switch(_message_ID){
				case "01": return ("Oh! Hey "+_player_name+"!^ I'm glad you stopped by!% I wanted to give you something before you left for your next adventure."); break;
				case "02": return ("-JESS gives "+_player_name+" a "+Get_Item_Stats("Healing_Seed","Item_Name")+"-"); break;
				case "03": return "Thanks JESS."; break;
				case "04": return "Stay safe out there okay?"; break;
			}
		break;
	}
}