/*function Delete_Battle_Objects(){
	instance_destroy(obj_Cursor);
	instance_destroy(obj_Enemy_Spawner);
	instance_destroy(obj_Party_Spawn_Location);
	with(obj_Character){
		if(is_battle_object){
			instance_destroy();	
		}
	}
}