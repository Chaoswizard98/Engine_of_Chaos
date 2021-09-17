function Run_Spell_Event() {
	with(obj_Battle_Cutscene_Controller){
	    waiting_for_spell = false;
	    with(obj_Spell_Controller){
	        event_perform(ev_other,ev_user0);
	    }
	}
}