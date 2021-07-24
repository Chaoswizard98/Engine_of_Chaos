//==================
//Start Spell Flash=
//==================
if(state = "Start_Spell_Flash"){
    flash_color = Get_Effect_Stats(effect,effect_level,"Flash_Color");
    tint_color = Get_Effect_Stats(effect,effect_level,"Tint_Color");
    state = "End_Spell_Flash";
    screen_flash = true;
    iterations = 0;
    
    if(flash_color != c_black){//if screen flashes,
        Play_Sound(sfx_Spell_Cast);//play sound
        iterations = 7;//flash screen
    }
}
//================
//End Spell Flash=
//================
else if(state = "End_Spell_Flash"){
    state = "Spell_Loop";
    screen_flash = false;
    if(obj_Battle_Cutscene_Controller.number_of_targets = 0){
        event_perform(ev_other,ev_user0);
    }
    else{
        Global_Battle_Cutscene_Prop_Event(effect,"Create_Event",id);
    }
}
//===========
//Spell Loop=
//===========
else if(state = "Spell_Loop"){
    state = "Start_Spell_Hit";
    with(obj_Battle_Cutscene_Controller){//pan target on screen (if not already on screen)
        event_perform(ev_other,ev_user0);
    }
}
//================
//Start Spell Hit=
//================
else if(state = "Start_Spell_Hit"){
    state = "End_Spell_Hit";
    Global_Battle_Cutscene_Prop_Event(effect,"Spell_Hit_Event",id);
}
//==============
//End Spell Hit=
//==============
else if(state = "End_Spell_Hit"){
    state = "Start_Spell_Hit";
    with(obj_Battle_Cutscene_Controller){
        event_perform(ev_other,ev_user0);
    }
}

