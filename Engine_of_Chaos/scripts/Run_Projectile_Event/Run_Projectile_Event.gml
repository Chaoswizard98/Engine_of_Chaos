function Run_Projectile_Event() {
	with(obj_Battle_Cutscene_Controller){
	    waiting_for_projectile = false;
	    with(obj_Projectile){
	        event_perform(ev_other,ev_user0);
	    }
	}



}
