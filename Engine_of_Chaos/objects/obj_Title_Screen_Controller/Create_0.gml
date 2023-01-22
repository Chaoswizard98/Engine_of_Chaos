//===========================
//Non-Modifyable Declarations
//===========================
allow_interaction = false;//Allows you to press the continue button
state = "Room_Start";//event state
//Create_Global_Game_Settings();//initialize controls, etc
//Create_New_Data();//Initialize character data
//Create_Audio_Controller();//Create Audio Controller
//Load_Config();//Load our configuration (If it exists)

//=======================
//Modifyable Declarations
//=======================
font_color = c_white;//The color of our font
font_type = fnt_MenuFont;//Font we're using

start_button_text = "SPACE TO START";//Text that displays over the start button
start_button = vk_space;//button that starts the game

//================
//Welcome Messages
//================
randomize();//generate a seed for RNG calculations

var temp;
temp = round(random_range(0,12));//Random number between 0 and N+1
welcome_message = "Default Message!";//default message

switch(temp){
    case 0: welcome_message = "Default Message!"; break;
    case 1: welcome_message = "Now with random\n title messages!"; break;
    case 2: welcome_message = "Release or riot!"; break;
    case 3: welcome_message = "Now with complimentary\n bugs!"; break;
    case 4: welcome_message = "Chaos! Fix the typos!"; break;
    case 5: welcome_message = "Contains at least 3\n lines of code!"; break;
    case 6: welcome_message = "Welcome to Alpha!"; break;
    case 7: welcome_message = "It's not a bug\n it's a feature."; break;
    case 8: welcome_message = "Is the next update\n ready yet?"; break; 
    case 9: welcome_message = "You are reading this."; break;
    case 10: welcome_message = "Wolf has obtained\nthe healing rain!"; break;//~Tyadran
	case 11: welcome_message = "Doesn't work on\nmobile devices!"; break;//Nihil
}

//===========
//Screen Fade
//===========

//start black, fade in
Create_Screen_Fade(c_black,1,0,.04,"in",id);//color, start, end, speed, direction, object

