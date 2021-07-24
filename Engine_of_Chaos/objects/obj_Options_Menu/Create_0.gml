//===========================
//Non-Modifyable Declarations
//===========================
window_pan_direction = "none";//direction of the pan
allow_interaction = false;//Are we able to interact with this object

scroll_arrow_timer = 15;//Time between arrow flashes
scroll_arrow_state = 0;//0/1 on or off
show_scroll_arrows = true;//do we show the scroll arrows? (off when selections are made)

arrow_position = 0;//array position of the selection arrow
start_index = 0;//the first menu option to be shown (Scroll bar)

state = "Selecting_Option";//what is our event state?
parent_event = "none";//what event is another object telling us to do?
parent_event_trigger = "none";
input_event = "none";//what button did we push?
current_object = noone;

number_of_menu_options = 0;//Number of options in array below
max_options_on_screen = 0; //Maximum number of options that will fit in the window
menu_options[0] = "";//display name of first option
menu_locked[0] = false;//can we select the first option?
settings_array[0] = "";//settings display name

//input repeat delays
max_input_delay = 40;//on key press, set timer to 40
min_input_delay = 5;//on continued hold, set timer to 5
input_delay = max_input_delay;
auto_move = false;

play_pan_sound = false;
display_type = "none";

//=======================
//Modifyable Declarations
//=======================
window_x = 8;//floor((view_wview - sprite_get_width(spr_Control_Config_Window))/2);//for center of screen
window_y = 8 + sprite_get_height(spr_Start_Menu_Window);

pan_speed = 8;
max_pan = window_x + sprite_get_width(spr_Control_Config_Window);
window_pan = -max_pan;

//pan_speed = 50;
//max_pan = 300;
//window_pan = -max_pan;//Dialogue Window

font_color = c_white;//The color of our font
locked_font_color = c_gray;//The color of our font (when menu is locked)
menu_font = fnt_MenuFont;//Font we're using

