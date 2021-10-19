state = "none";
effect = "none";
effect_level = 1;
position = "Left";

prop_timer = 0;
max_prop_timer = 1;
looping_effect = "none";

waiting_for_event = false;
event_timer = 0;
max_event_timer = 30;

//spawn radius for spells
min_x = 0;
max_x = 0;
min_y = 0;
max_y = 0;
mirror = 1;

screen_flash = false;
flash_color = c_white;
tint_color = c_white;
flash_timer = 0;
flash_on = 3;
max_flash_timer = 6;
iterations = 1;
display_spell = false;

number_of_event_tags = 5;

var i = 0;
for(i=0;i<number_of_event_tags;i+=1){
	event_tags[i] = "none";
}