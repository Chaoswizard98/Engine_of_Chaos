//===========================
//non-Modifyable Declarations
//===========================
allow_interaction = false;
state = "Start";
display = false;
action = "Use_Item";
decision = "none";

pan_direction = "none";
pan_x = 0;
pan_y = 0;
max_x_pan = (floor(Get_Camera_Width() / 2) + 50);
max_y_pan = 100;
equip_pan_x = 0;
max_equip_pan_x = sprite_get_width(spr_Equip_Window) + 8;

current_object = noone;//the object we report back to
parent_event = "none";
parent_event_trigger = "none";
current_character = noone;//the player/character interacting with this
current_npc = noone;//npc trigger (for shops)
current_index = 0;//current highlighted menu
cancel_event = "Default";//event to perform on cancel button

target_character = noone;//OG character we're trading with
target_inventory_slot = 0;//inventory slot of OG character
equip_slot = 0;//current equipment slot we're trying to fill

//input repeat delays
max_input_delay = 40;//on key press, set timer to 40
min_input_delay = 5;//on continued hold, set timer to 5
input_delay = max_input_delay;
auto_move = false;

play_pan_sound = false;
display_type = "Inventory_Icons";//what cross menu draw code do we use?
input_event = "none";//what button did we push?

//=======================
//Modifyable Declarations
//=======================
font_color = c_white;//The color of our font
menu_font = fnt_MenuFont;//Font we're using
animation_speed = .0625;
number_of_menu_options = global.Number_Of_Inventory_Slots;

inventory_slot[0] = 0;

pan_speed_up = (max_y_pan / 8);//pan speed up
pan_speed_down = (max_y_pan / 8);//pan speed down
pan_speed_left = (max_x_pan / 8);//25;//pan speed left
pan_speed_right = (max_x_pan / 8);//25;//pan speed right
equip_pan_speed = (max_equip_pan_x / 8);

//============================
//Post Modifyable Calculations
//============================
image_speed = animation_speed;//set animation speed
equip_pan_x = -max_equip_pan_x;
pan_y = max_y_pan;

