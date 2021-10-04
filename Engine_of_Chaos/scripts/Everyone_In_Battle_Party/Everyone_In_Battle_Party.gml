function Everyone_In_Battle_Party(_faction) {
	//checks to see if every party member is also in the battle party
	for(i = 0; i< global.Number_Of_Characters; i+=1){//loop through all characters
	    if((global.Faction[i] = _faction)&&(!global.In_Battle_Party[i])){//if same faction and not in the battle party
	        return false;
	    }
	}
	return true;
}