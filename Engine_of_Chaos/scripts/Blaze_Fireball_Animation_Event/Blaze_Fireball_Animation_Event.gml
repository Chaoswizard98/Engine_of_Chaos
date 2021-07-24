function Blaze_Fireball_Animation_Event() {
	var _object = argument[0];

	with(_object){
	    if(current_frame = 9){
	        if(call_event){
	            call_event = false;
	            with(obj_Spell_Controller){
	                event_perform(ev_other,ev_user0);
	            }
	        }
	        audio_stop_sound(sfx_Boom);
	        Play_Sound(sfx_Boom);
	        Shake_Battle_Cutscene(0,4,4);
	        Flash_Battle_Cutscene(flash_color,2);
	    }
	}



}
