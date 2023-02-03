//===========================
//Non-Modifyable Declarations
//===========================
state = "Selecting_Option";
current_object = noone;
input_event = "none";
window_pan_direction = "none";//direction of the pan
allow_interaction = false;//Are we able to interact with this object
play_pan_sound = false;
parent_event = "none";

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

new_character_name = "";//From name character controller
decision = "none";//from decision controller

//=======================
//Modifyable Declarations
//=======================
new_game_room = room_next(room);//Room we're put in when starting a new game (defaults to next room)
tutorial_room = room_next(room);//room_next(room);//Room we're put in when starting the tutorial (defaults to next room)

display_type = "Default";//In case you add your own custom draw script

//Font
font_color = c_white;//The color of our font
locked_font_color = c_gray;//The color of our font (when menu is locked)
menu_font = fnt_MenuFont;//Font we're using

//Window Pan
window_x = 8;
window_y = 8;

pan_speed = 8;
window_pan = 0;
window_width = sprite_get_width(spr_Start_Menu_Window);
max_pan = window_x + window_width;

//Menu Options
number_of_menu_options = 4;//Number of options in array below
max_options_on_screen = 4; //Maximum number of options that will fit in the window

menu_options[0] = "New Game";
menu_options[1] = "Load Game";
menu_options[2] = "Challenges";
menu_options[3] = "Options";

menu_locked[0] = false;//Certain slots can be 'locked'
menu_locked[1] = true;//You cant choose load game until a save is created.
menu_locked[2] = false;//Challenges temporarilly disabled.
if(Has_Existing_Save()){//if a save exists,
    menu_locked[1] = false;//allow loading
	//menu_locked[2] = false;//enable challenges
}
menu_locked[3] = false;

//Lock the load game button if no save exists
if(file_exists("SyroGS0.ini")||file_exists("SyroGS1.ini")||file_exists("SyroGS2.ini")||file_exists("SyroGS3.ini")){
    menu_locked[1] = false;
}

//============================
//Post Modifyable Calculations
//============================
if(number_of_menu_options < max_options_on_screen){//if there are less than the limit of options
    max_options_on_screen = number_of_menu_options;//shrink max to the total number of options
}

