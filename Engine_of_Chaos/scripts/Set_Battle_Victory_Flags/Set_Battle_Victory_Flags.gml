function Set_Battle_Victory_Flags() {
	var _trigger = argument[0];//retreat, killed all units, etc
	var _data1 = argument[1];//Extra information

	switch(obj_Battle_Controller.battle_ID){
	    case "Battle_01":
	        switch(_trigger){
	            case "Retreat":
	                if(_data1 = room_Hillford){
	                    global.Story_State += 1;//set victory flags
	                }
	            break;
	            default:
	                global.Story_State += 1;
	            break;
	        }
	    break;
	}



}
