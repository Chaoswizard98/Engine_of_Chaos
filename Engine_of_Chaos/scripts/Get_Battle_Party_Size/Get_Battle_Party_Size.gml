function Get_Battle_Party_Size(_faction){
	var _count = 0;

	for(i = 0; i< global.Number_Of_Characters; i+=1){//loop through all characters
	    if((global.Faction[i] = _faction)&&(global.In_Battle_Party[i])){//if same faction and in the battle party
	        _count += 1;
	    }
	}

	return _count;
}