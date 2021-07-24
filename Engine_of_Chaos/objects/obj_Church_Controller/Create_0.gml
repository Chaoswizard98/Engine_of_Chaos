state = "Start";
voice_ID = "sfx_Dialogue05";
decision = "none";
parent_event = "none";
parent_event_trigger = "none";
character_index = 0;
no_one_injured = true;//if we're on the first party status check (for no one is dead display)
number_of_promotions = 0;
promotion_array[number_of_promotions] = "none";
//promotion_text[number_of_promotions] = '';


//dialogue_ID = 'Default';//dialogue message differences
current_player = noone;
current_npc = noone;

current_object = id;
allow_interaction = false;
dialogue_ID = "Default_Church";//dialogue message differences
script_ID = "none";


window_x = (Get_Camera_Width() - (sprite_get_width(spr_Shop_Gold_Window) + 8));
window_y = (Get_Camera_Height() - (sprite_get_height(spr_Shop_Gold_Window) + 8 ));

play_pan_sound = false;
pan_direction = "none";
pan_speed = 8;

max_pan = (sprite_get_width(spr_Shop_Gold_Window) + 8);
pan = max_pan;



