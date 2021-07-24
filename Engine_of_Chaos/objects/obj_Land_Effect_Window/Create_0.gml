display = false;//do we draw thhe hud?
current_character = noone;//character to draw

font_color = c_white;//The color of our font
menu_font = fnt_MenuFont;//Font we're using

window_pan_direction = "none";
play_pan_sound = false;

window_x = 8;
window_y = 8;

//pan_speed = 22;
pan_speed = 8;
window_pan = 0;
window_width = sprite_get_width(spr_Battle_HUD_Start)+sprite_get_width(spr_Battle_HUD_End);
max_pan = window_x + window_width;

action = "default";

