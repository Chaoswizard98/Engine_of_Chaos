function Get_Max_Battle_Party_Size() {
	//Set the maximum party size for each faction here.

	_faction = argument[0];

	switch(_faction){
	    case "Player": return 3; break;
	    default: return 12; break;
	}



}
