function Destroy_Battle_Objects(){
	if(instance_exists(obj_Battle_Controller)){
		var i;
		for(i=0; i<obj_Battle_Controller.number_of_hidden_units; i+=1){//Loop through hidden units array
		    instance_activate_object(obj_Battle_Controller.hidden_units[i]);//activate it
		    instance_destroy(obj_Battle_Controller.hidden_units[i]);//destroy it
		}
		instance_destroy(obj_Battle_Controller);
	}

	instance_destroy(obj_Cursor);//destroy cursor
	instance_destroy(obj_Enemy_Spawner);
	instance_destroy(obj_Party_Spawn_Location);
	
	with(obj_Character){
		if(is_battle_object){
			instance_destroy();	
		}
	}
}