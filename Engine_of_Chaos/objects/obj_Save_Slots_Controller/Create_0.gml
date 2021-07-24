//===========================
//Non-Modifyable Declarations
//===========================
state = "Selecting_Option";
current_object = noone;
input_event = "none";
window_pan_direction = "none";//direction of the pan
allow_interaction = false;//Are we able to interact with this object
play_pan_sound = false;
event = "none";

//Scroll arrow
max_scroll_arrow_timer = 15;//Time between arrow flashes
scroll_arrow_timer = max_scroll_arrow_timer;
scroll_arrow_state = 0;//0/1 on or off
show_scroll_arrows = true;//do we show the scroll arrows? (off when selections are made)
arrow_position = 0;//array position of the selection arrow
start_index = 0;//the first menu option to be shown (Scroll bar)

//input repeat delays
max_input_delay = 40;//on key press, set timer to 40
min_input_delay = 5;//on continued hold, set timer to 5
input_delay = max_input_delay;
auto_move = false;

new_character_name = "";//Character Name

//=======================
//Modifyable Declarations
//=======================
display_type = "Default";//In case you add your own custom draw script

//Font
font_color = c_white;//The color of our font
locked_font_color = c_gray;//The color of our font (when menu is locked)
menu_font = fnt_MenuFont;//Font we're using

//Window Pan
window_x = 8;
window_y = 8 + sprite_get_height(spr_Start_Menu_Window);

pan_speed = 8;
window_pan = 0;
window_width = sprite_get_width(spr_Save_Slot_Window);
max_pan = window_x + window_width;

//Menu Options
number_of_menu_options = global.Number_Of_Save_Slots;//Number of options in array below
max_options_on_screen = 4; //Maximum number of options that will fit in the window

var i = 0;//Although these are filled here, they are replaced in the "Create_Save_Slots_Controller" script
for (i = 0; i< number_of_menu_options; i += 1){
    menu_options[i] = "EMPTY";
    menu_locked[i] = false;
}

menu_options[number_of_menu_options-1] = "DELETE";
menu_locked[number_of_menu_options-1] = false;

//============================
//Post Modifyable Calculations
//============================
if(number_of_menu_options < max_options_on_screen){//if there are less than the limit of options
    max_options_on_screen = number_of_menu_options;//shrink max to the total number of options
}

