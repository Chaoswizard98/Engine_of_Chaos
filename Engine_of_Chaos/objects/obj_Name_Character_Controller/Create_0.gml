//===========================
//Non-Modifyable Declarations
//===========================
window_pan_direction = "none";//direction of the pan
allow_interaction = false;//Are we able to interact with this object

cursor_flash_timer = 15;//Time between arrow flashes
cursor_flash_state = 0;//0/1 on or off

completed_name = "";//the end result of the name
default_name = "";//if we press 'end' without naming the character, which name do we use?

selector_position_x = 0;//cursor x position
selector_position_y = 0;//cursor y position
current_character = 0;//current ammount of letters in name

input_event = "none";
state = "Naming_Character";
portrait_controller = noone;//link to portrait controller

//input repeat delays
max_input_delay = 40;//on key press, set timer to 40
min_input_delay = 5;//on continued hold, set timer to 5
input_delay = max_input_delay;
auto_move = false;

play_pan_sound = false;

//=======================
//Modifyable Declarations
//=======================

var i = 0;
for(i = 0; i < 26; i+= 1){
    characters[0,i] = chr(ord("A") + i);//uppercase letters
}
for(i = 0; i < 26; i+= 1){
    characters[1,i] = chr(ord("a") + i);//lowercase letters
}
//"0123456789,.-!?\#'  DEL END";
for(i = 0; i < 10; i+= 1){
    characters[2,i] = chr(ord("0") + i);//numbers
}
characters[2,10] = ",";
characters[2,11] = ".";
characters[2,12] = "-";
characters[2,13] = "!";
characters[2,14] = "?";
characters[2,15] = "#";
characters[2,16] = "'";
characters[2,17] = " ";
characters[2,18] = "^19";//placeholder, sets array index to DEL
characters[2,19] = "DEL";
characters[2,20] = "^19";//placeholder, sets array index to DEL
characters[2,21] = "^19";//placeholder, sets array index to DEL
characters[2,22] = "^23";//placeholder, sets array index to END
characters[2,23] = "END";
characters[2,24] = "^23";//placeholder, sets array index to END
characters[2,25] = "^23";//placeholder, sets array index to END

max_letters = 7;//max name length
for(i = 0; i < max_letters; i+=1){//define name array as blank
    name[i] = "";
}

font_color = c_white;//The color of our font
menu_font = fnt_MenuFont;//Font we're using

//pan_speed = 25;//pan speed
//max_pan = 200;//start/end point of pan

name_character_window_x = floor((Get_Camera_Width() - sprite_get_width(spr_Name_Character_Window))/2);
name_character_window_y = (floor((Get_Camera_Height() - (sprite_get_height(spr_Name_Character_Window)+sprite_get_height(spr_Default_Portrait)))/2)+sprite_get_height(spr_Default_Portrait))-32;

character_name_window_x = name_character_window_x + sprite_get_width(spr_Default_Portrait);
character_name_window_y = name_character_window_y - sprite_get_height(spr_Character_Name_Window);

max_character_name_window_pan_x = Get_Camera_Width() - character_name_window_x;
max_character_name_window_pan_y = character_name_window_y + sprite_get_height(spr_Character_Name_Window);
max_name_character_window_pan = Get_Camera_Height() + name_character_window_y;

character_name_window_pan_x = max_character_name_window_pan_x;
character_name_window_pan_y = max_character_name_window_pan_y;
name_character_window_pan = max_name_character_window_pan;

pan_speed = 8;

