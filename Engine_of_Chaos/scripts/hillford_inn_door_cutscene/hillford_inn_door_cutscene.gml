function Hillford_Inn_Door_Cutscene() {
	var _jason = player_trigger;
	//var _barrel = other_trigger;
	var _char1 = Get_Character("AU_Hillford_Door_Blocker_01");
	var _char2 = Get_Character("AU_Hillford_Door_Blocker_02");
	
	switch(state){
		case 0:
			state += 1;
			_char1.cutscene_mode = true;
			_char2.cutscene_mode = true;
			Move_Character(_char1,"Down",2,1,"Down",.0625,true);
			Move_Character(_char2,"Down",3,1,"Down",.0625,false);
			with(obj_Cutscene_Trigger){
				if(cutscene_ID = "Hillford_Inn_Door_Cutscene"){
					instance_destroy();
				}
			}
			with(instance_position(768,432,obj_Door_Parent)){
	            event_perform(ev_other,ev_user0);
	        }
		break;
		case 1:
			state += 1;
			Move_Character(_char1,"Left",1,1);
		break;
		case 2:
			state += 1;
			Face_Direction(_char1,"Right");
			Face_Direction(_char2,"Left");
			_char1.cutscene_mode = false;
			_char2.cutscene_mode = false;
		break;
	}
}