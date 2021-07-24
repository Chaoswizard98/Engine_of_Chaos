function Drop_Table_Jogurt() {
	var _attacker = argument[0];
	var _target = argument[1];
	var _message = "";

	if(_attacker.can_recieve_drops){//if they can recieve drops (NPCs cannot)
	    if(_attacker.name = "JOGURT"){
	        //Can further test drop chance
	        _message += Give_Item_Drop(_attacker,_target,"Jogurt_Ring",100);//attacker, target, item, drop_chance, [shop ID]
	    }
	}

	return _message;



}
