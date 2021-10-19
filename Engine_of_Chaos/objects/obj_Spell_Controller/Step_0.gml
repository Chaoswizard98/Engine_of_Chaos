//============
//Event Timer=
//============
if(waiting_for_event){
    event_timer -= 1;
    if(event_timer <= 0){
        waiting_for_event = false;
        event_perform(ev_other,ev_user0);
    }
}

//=============
//Screen_Flash=
//=============
if(screen_flash){
    flash_timer -= 1;
    if(flash_timer <= 0){
        Flash_Battle_Cutscene(flash_color,flash_on);
        flash_timer = max_flash_timer;
        iterations -= 1;
        if(iterations <= 0){
            screen_flash = false;
            flash_timer = 0;
            event_perform(ev_other,ev_user0);
        }
    }
}

//===================
//Prop Creation Loop=
//===================
if(display_spell){
	if(effect != "none"){
		Run_Battle_Cutscene_Spell_Event(effect,"Loop",id);
	}
}