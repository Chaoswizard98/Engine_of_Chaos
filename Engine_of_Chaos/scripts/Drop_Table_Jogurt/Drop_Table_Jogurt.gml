function Drop_Table_Jogurt(_attacker,_target){
	var _message = "";

	if(_attacker.can_recieve_drops){//if they can recieve drops (NPCs cannot)
	    if(_attacker.name = "JOGURT"){
	        _message += Give_Item_Drop(_attacker,_target,"Jogurt_Ring",1);//attacker, target, item, drop_chance (1 = 100%, .5 = 50%)
	    }
	}

	return _message;
}