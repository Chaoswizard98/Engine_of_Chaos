event_inherited();
//================
//Non-Modifyables=
//================
call_trigger = false;//do not call cutscene by default (in case player starts on this tile)
mask_index = spr_Character_Mask;//set mask to full tile
battle_cutscene_script = "Retreat_From_Battle";//what cutscene do we call in battle?

//============
//Modifyables=
//============
next_room = noone;//room to spawn player in
transition_type = "Screen_Fade";//screen transition type

