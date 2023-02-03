//Set up spell props
var _x_pos = Get_Anchor_X("Top_Left") + Get_Battle_Cutscene_Character_Draw_Location(id,"X_Pos",x_pan);
var _y_pos = Get_Anchor_Y("Top_Left") + Get_Battle_Cutscene_Character_Draw_Location(id,"Y_Pos",x_pan);
var _mirror = Get_Battle_Cutscene_Character_Draw_Location(id,"Mirror",x_pan);

var _draw_alpha = alpha;
var _draw_color = Multiply_Colors(c_white,obj_Battle_Cutscene_Controller.tint_color);

//if(location = "Foreground"){
//    draw_sprite_ext(Get_Terrain_Stats(Get_Terrain_Type(character.x,character.y),"Foreground_Sprite"),0,_x_pos,_y_pos,_mirror,1,0,_draw_color,1);
//}

_x_pos += shake_x;
_y_pos += shake_y;


//Enable Shader
if(hit_flash){//if we're using a shader
    shader_set(sh_Hit_Flash);
    _draw_alpha = 1;//flash_alpha;
    _draw_color = hit_flash_color;
}
else{
    _draw_color = Multiply_Colors(_draw_color,obj_Battle_Cutscene_Controller.tint_color);
}
//Draw Weapon
if(weapon_object != noone){
    with(weapon_object){
		if(Get_Weapon_Cutscene_Position(cutscene_character,"Layer")="Below"){
	        x_pos = _x_pos - Get_Anchor_X("Top_Left");
	        y_pos = _y_pos - Get_Anchor_Y("Top_Left");
	        alpha = _draw_alpha;
	        draw_color = _draw_color;
	        event_perform(ev_other,ev_user2);
		}
    }
}

//Draw Character
draw_sprite_ext(sprite_index,image_index,_x_pos,_y_pos,_mirror,1,0,_draw_color,_draw_alpha);

//Draw Weapon
if(weapon_object != noone){
    with(weapon_object){
		if(Get_Weapon_Cutscene_Position(cutscene_character,"Layer")="Above"){
	        x_pos = _x_pos - Get_Anchor_X("Top_Left");
	        y_pos = _y_pos - Get_Anchor_Y("Top_Left");
	        alpha = _draw_alpha;
	        draw_color = _draw_color;
	        event_perform(ev_other,ev_user2);
		}
    }
}

x_pos = _x_pos - Get_Anchor_X("Top_Left");
y_pos = _y_pos - Get_Anchor_Y("Top_Left");

if(hit_flash){//if we're using a shader
    shader_reset();//reset the shader
}

