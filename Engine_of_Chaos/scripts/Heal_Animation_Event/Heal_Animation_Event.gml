function Heal_Animation_Event() {
	var _object = argument[0];

	with(_object){
	    if(current_frame = 3){
	        Play_Sound(sfx_Heal_2);
	        /*if(call_event){
	            call_event = false;
	            with(obj_Spell_Controller){
	                event_perform(ev_other,ev_user0);
	            }
	        }*/
	    }
	}



}
