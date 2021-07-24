//Calculate window size
var _character = current_character;


var _spacing = 8;//spacing per iteration
var _max_bar_size = 100;//limit on HP bar size

var _title_text = Get_Character_Name("Local",_character,"Total")+" "+ Get_Character_Class("Local",_character,"Abbreviation")+string(Get_Character_Level("Local",_character,"Derived"));

var _current_health = Get_Character_Health("Local",_character,"Total");
var _max_health = Get_Character_Max_Health("Local",_character,"Total");
var _current_magic = Get_Character_Magic("Local",_character,"Total");
var _max_magic = Get_Character_Max_Magic("Local",_character,"Total");

var _number_display_length = 59;//7 digits * 8 pixel font + 3 (2 end bar, 1 space)
var _health_bar_size = min(max(_max_health,_current_health),_max_bar_size)+_number_display_length;
var _magic_bar_size = min(max(_max_magic,_current_magic),_max_bar_size)+_number_display_length;

var _HUD_Size = max(string_length(_title_text),ceil(_health_bar_size / _spacing),ceil(_magic_bar_size / _spacing));
var _HUD_Scale = max(_HUD_Size - 6,0);

window_width = (sprite_get_width(spr_Battle_HUD_Start)+sprite_get_width(spr_Battle_HUD_End)+(_HUD_Scale * _spacing));
max_pan = window_offset_x + window_width;

