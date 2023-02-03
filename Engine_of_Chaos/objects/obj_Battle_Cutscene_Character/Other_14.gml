var _x_pos = Get_Anchor_X("Top_Left") + Get_Battle_Cutscene_Character_Draw_Location(id,"X_Pos",x_pan);
var _y_pos = Get_Anchor_Y("Top_Left") + Get_Battle_Cutscene_Character_Draw_Location(id,"Y_Pos",x_pan);
var _mirror = Get_Battle_Cutscene_Character_Draw_Location(id,"Mirror",x_pan);

var _draw_alpha = alpha;
var _draw_color = Multiply_Colors(c_white,obj_Battle_Cutscene_Controller.tint_color);

if(location = "Foreground"){
    draw_sprite_ext(Get_Terrain_Stats(Get_Terrain_Type(character.x,character.y),"Foreground_Sprite"),0,_x_pos,_y_pos,_mirror,1,0,_draw_color,1);
}