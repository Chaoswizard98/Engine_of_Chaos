//===========================
//Non-Modifyable Declarations
//===========================
message = "Test"; //The message we want to print out
message_length = string_length(message); //get the number of characters in the message
message_draw = ""; //current state of printed message. It's blank right now. Message to be appended 1 letter at a time. 
characters = 0; //how many characters have already been drawn
scrolling = false;//Are we scrolling the text?
y_scroll = 0;//Scroll Position
line_number = 1; //Used for scrolling text. Should this get to 3, it would delete line 1 and shift the text up 1 line. 

display_arrow = false; //Do we display the flasing arrow?
arrow_state = 0; //Used for flashing the arrow. (0 = off, 1 = on)
arrow_timer = 0; //countdown for arrow flashes
pan_direction = "none";//global Pan flag "in" or "out", 'none' means it's not panning.

allow_interaction = true; //if "false" the player cannot interact with this object, but they can still speed up dialogue. 
allow_speed_up = true; //Do you want to allow the player to be able to speed up dialogue? (You might not for things like opening cutscene).
wait_for_input = false;//For longer messages, wait for the user to push the select button to continue
auto_pan_out = false;//do we automatically pan out the dialogue window when done or wait for script call?
ending_message = false;//are we ending the message and starting the delay countdown?
end_message_delay = 5;//default 'continue' delay.
force_end = false;//do we close the dialogue controller without user input?

voice = noone; //sound we play when printing dialogue
current_object = noone; //What object is feeding events to this controller? (to be set when created by said object)
allow_speed_up = true;//Allow the user to speed up the text by pressing a button
printing = false;//are we printing out the message?
print_delay = 0;//delay between printing each letter
sound_delay = 0;//delay between voice beeps (needed for higher speeds)
prints_per_step = 1;//how many letters are printed per step
portrait_controller = noone;//the portrait linked to this object
parent_event = "none";
parent_event_trigger = "none";

//=======================
//Modifyable Declarations
//=======================
x_pos = floor((Get_Camera_Width() - sprite_get_width(spr_Dialogue_Window))/2);
y_pos = Get_Camera_Height() - (sprite_get_height(spr_Dialogue_Window) + 8);
max_pan = Get_Camera_Height() - y_pos;

window_pan = max_pan;//Dialogue Window

pan_speed = 8;
font_color = c_white;//The color of our font
dialogue_font = fnt_DialogueFont;//Font we're using
word_wrap_length = 260;//length in pixels that result in word wrap

