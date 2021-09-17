character = noone;//character we're drawing
sprite_ID = "Default";//ID of the sprite set to draw (Saved in case of sprite costume changes due to equipment breaking mid cutscene)
animation = "Idle";//animation to play
current_frame = 0;//current frame of the animation (used for frame triggers)
trigger_event = false;//ping battle cutscene controller?
freeze_final_frame = false;//pause animation on final frame?
return_to_idle = true;//do we return to idle stance post animation?
weapon_object = noone;

location = "Foreground";
position = "Right";
x_pan_speed = 15;
max_x_pan = 176;
x_pan = max_x_pan;
pan_direction = "none";
on_screen = false;

max_hit_timer = 30;
hit_timer = 0;

shake_x = 0;
shake_y = 0;

x_pos = 0;
y_pos = 0;

//Event Flags
attacks_performed = 0;
experience_gained = 0;
gold_earned = 0;
highest_z_value = 0;
reduce_xp = true;//remove 0-2 xp at the end
damage_taken = 0;
damage_healed = 0;
magic_restored = 0;
magic_damage_taken = 0;
blocked_attack = false;
can_counter = true;
counter_target = noone;//remember who we counter against.
played_death_event = false;

//shaders
hit_flash = false;
hit_flash_color = c_white;
hit_flash_speed = 0;
flash_speed = 0;
flash_alpha = 0;
flash_timer = 0;

//Fading
fade = false;
alpha = 1;
end_alpha = 1;
fade_speed = .1;

//Battle HUD
display_HUD = false;//do we draw the hud?
font_color = c_white;//The color of our font
menu_font = fnt_MenuFont;//Font we're using
display_type = "Main_HUD";//Where to draw the HUD
window_pan = 0;//Not used, needed to re-use draw script

