var _gold_window_x = Get_Anchor_X("Top_Left") + window_x + pan;
var _gold_window_y = Get_Anchor_Y("Top_Left") + window_y;

var _gold_text_x = _gold_window_x + 8;
var _gold_text_y = _gold_window_y + 8;

var _gold_ammount_x = _gold_text_x + 56;
var _gold_ammount_y = _gold_text_y + 8;



draw_sprite(spr_Shop_Gold_Window,0,_gold_window_x,_gold_window_y);
draw_set_font(fnt_MenuFont);
draw_set_halign(fa_left);
draw_text(_gold_text_x,_gold_text_y,Get_Menu_Display_Message("Generic","Gold"));
draw_set_halign(fa_right);
draw_text(_gold_ammount_x,_gold_ammount_y,string(global.Gold));
draw_set_halign(fa_left);
draw_set_color(c_white); //reset draw color

