if(waiting_for_state){//wait for current state to end
    counter += 1;//a character has finished event. Update the counter
    if(counter >= max_counter){//wait for all characters to end their animation event
        timer = true;//start timer countdown.
        waiting_for_state = false;//next update triggers event
    }
}
else{//run cutscene event
    Global_Battle_Cutscene_Event();
}

