function Spawn_Character() {
	var _object = Get_Current_Turn();

	switch(state){
	    case 0:
	        npc_trigger = Execute_Monster_Spawner_Event(_object,"Spawn_Character");//spawn the character
	        npc_trigger.spawner_ID = _object;//remember the object that spawned it
	        _object.remaining_units -= 1;//subtract remaining units
	        _object.timer = _object.cooldown;//set cooldown
	        Spin(npc_trigger,3,2,270,"Clockwise");//character, iterations, speed, end direction, spin direction
	        state += 1;
	    break;
	    case 1:
	        Create_Dialogue("none",Get_Voice("none"),Get_General_Messages("Generic_Battle","Spawn_Unit",string(Get_Character_Name("Local",npc_trigger,"Total"))),id,true,true);
	        state += 1;
	    break;
	    case 2:
	        state += 1;
	        if(_object.attack_on_spawn){//if they take immediate action after reveal,
	            Add_To_Turn_Order(npc_trigger,obj_Battle_Controller.current_turn+1);//set them next in the list
	            if(_object.spawn_action = "Immediate_Action"){
	                obj_Battle_Controller.skip_spawn_reveal = true;//temporarily bypass next reveal so we can attack
	            }
	        }
	        npc_trigger.cutscene_mode = false;
	        Execute_Battle_Event("End_Turn");//run end turn event
	        instance_destroy();
	    break;
	}



}
