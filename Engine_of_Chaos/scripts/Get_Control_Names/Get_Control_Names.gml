function Get_Control_Names(argument0) {
	//This is basically a list of all valid keys for mapping.
	//If a key you want to use is not here then just add another case...
	switch argument0
	{
	    case vk_control: name="Ctrl"; break;
	    case vk_space: name="Space"; break;
	    case vk_pageup: name="PgUp"; break;
	    case vk_pagedown: name="PgDown"; break;
	    case vk_end: name="End"; break;
	    case vk_home: name="Home"; break;
	    case vk_left: name="Left Arrow"; break;
	    case vk_right: name="Right Arrow"; break;
	    case vk_up: name="Up Arrow"; break;
	    case vk_down: name="Down Arrow"; break;
	    case vk_insert: name="Ins"; break;
	    case vk_delete: name="Del"; break;
	    case vk_escape: name="Escape"; break;
	    case vk_numpad0: name="Num0"; break;
	    case vk_numpad1: name="Num1"; break;
	    case vk_numpad2: name="Num2"; break;
	    case vk_numpad3: name="Num3"; break;
	    case vk_numpad4: name="Num4"; break;
	    case vk_numpad5: name="Num5"; break;
	    case vk_numpad6: name="Num6"; break;
	    case vk_numpad7: name="Num7"; break;
	    case vk_numpad8: name="Num8"; break;
	    case vk_numpad9: name="Num9"; break;
	    case vk_f1: name="F1"; break;
	    case vk_f2: name="F2"; break;
	    case vk_f3: name="F3"; break;
	    case vk_f4: name="F4"; break;
	    case vk_f5: name="F5"; break;
	    case vk_f6: name="F6"; break;
	    case vk_f7: name="F7"; break;
	    case vk_f8: name="F8"; break;
	    case vk_f9: name="F9"; break;
	    case vk_f10: name="F10"; break;
	    case vk_f11: name="F11"; break;
	    case vk_f12: name="F12"; break;
	    case ord("A"): name="A"; break;
	    case ord("B"): name="B"; break;
	    case ord("C"): name="C"; break;
	    case ord("D"): name="D"; break;
	    case ord("E"): name="E"; break;
	    case ord("F"): name="F"; break;
	    case ord("G"): name="G"; break;
	    case ord("H"): name="H"; break;
	    case ord("I"): name="I"; break;
	    case ord("J"): name="J"; break;
	    case ord("K"): name="K"; break;
	    case ord("L"): name="L"; break;
	    case ord("M"): name="M"; break;
	    case ord("N"): name="N"; break;
	    case ord("O"): name="O"; break;
	    case ord("P"): name="P"; break;
	    case ord("Q"): name="Q"; break;
	    case ord("R"): name="R"; break;
	    case ord("S"): name="S"; break;
	    case ord("T"): name="T"; break;
	    case ord("U"): name="U"; break;
	    case ord("V"): name="V"; break;
	    case ord("W"): name="W"; break;
	    case ord("X"): name="X"; break;
	    case ord("Y"): name="Y"; break;
	    case ord("Z"): name="Z"; break;
	    case ord("0"): name="0"; break;
	    case ord("1"): name="1"; break;
	    case ord("2"): name="2"; break;
	    case ord("3"): name="3"; break;
	    case ord("4"): name="4"; break;
	    case ord("5"): name="5"; break;
	    case ord("6"): name="6"; break;
	    case ord("7"): name="7"; break;
	    case ord("8"): name="8"; break;
	    case ord("9"): name="9"; break;
	    default: name= "Unnamed Key";
	}
	return name;



}
