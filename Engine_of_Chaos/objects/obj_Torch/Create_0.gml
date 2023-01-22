event_inherited();
//Basic Light Variables
enabled = true;//are we showing the light?
x_offset = 7;//draw location x offset
y_offset = 13;//draw location y offset
alpha = .4;//alpha of the light
target = id;//object the light source is following

//default light
outer_light_color = c_black;//outer light color
inner_light_color = c_orange;//inner light color
radius = 90;//radius of the light

//sprite light
light_sprite = noone;//sprite to use as a light source
sprite_light_color = c_white;//color of sprite light
scale = 1;//scale of sprite

//Torch animation speed
image_speed = .125;
torch_alpha1 = 1;//alpha of the light
torch_alpha2 = .8;//alpha of the light

//Post-Modifyables
alpha = torch_alpha1;
visible = true;
