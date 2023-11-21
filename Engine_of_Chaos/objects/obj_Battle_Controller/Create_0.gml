turn_order[0] = noone;//keep track of turn order
number_of_turns = 0;//number of characters in turn order
current_turn = 0;//what turn number are we on?

hidden_units[0] = noone;//List of hidden units (so we can access them when deactivated)
number_of_hidden_units = 0;//number of deactivated units
skip_hidden_reveal = false;//temp disable hidden reveal (if characters attack right after reveal)

battle_ID = "none";
round_number = 0;
battle_state = 0;
snap_cursor_to_character = true;//gets set to false for target selection
won_battle = false;
lost_battle = false;

event = "none";

round_start = false;

number_of_AI_regions = 11;
var i;
for(i=0; i<number_of_AI_regions; i+=1){
    entered_region[i] = false;
}

//set battle flags.
//Note: slot 0 is reserved for the player name when they die.
number_of_battle_flags = 25;
for(i=0; i<number_of_battle_flags; i+=1){
	//NOTE* 0 is reserved for player death, 1 is reserved for boss death
    battle_flags[i] = "";
}

