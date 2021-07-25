Create_Global_Game_Settings();//initialize controls, etc
Create_New_Data();//Initialize character data
Create_Audio_Controller();//Create Audio Controller
Load_Config();//Load our configuration (If it exists)

sprite_index = spr_Splash_Screen_Character;
image_speed = .17;

display_text = false;
fade_direction = "none";

fade_speed = .05;
fade = 0;

previous_frame = 0;