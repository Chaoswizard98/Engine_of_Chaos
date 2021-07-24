if(action = "AI_Attack")||(action = "AI_Cast_Spell")||(action = "AI_Use_Item"){
    state = "AI_Event";
    run_timer = true;
    timer = max_timer;
}
else{
    state = "none";
    allow_interaction = true;
}

