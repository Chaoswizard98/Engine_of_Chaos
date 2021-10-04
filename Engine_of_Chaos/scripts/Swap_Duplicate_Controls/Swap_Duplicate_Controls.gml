function Swap_Duplicate_Controls(_ignore) {
	//ensure we dont have 2 controls bound to the same button
	var _swap;

	switch(_ignore){
	    case "Up": _swap = global.Up_Button; break;
	    case "Down": _swap = global.Down_Button; break;
	    case "Left": _swap = global.Left_Button; break;
	    case "Right": _swap = global.Right_Button; break;
	    case "Select": _swap = global.Select_Button; break;
	    case "Cancel": _swap = global.Cancel_Button; break;
	    case "Inspect": _swap = global.Inspect_Button; break;
	    case "Main Menu": _swap = global.Main_Menu_Button; break;
	}

	switch(keyboard_lastkey){
	    case global.Up_Button: global.Up_Button = _swap; break;
	    case global.Down_Button: global.Down_Button = _swap; break;
	    case global.Left_Button: global.Left_Button = _swap; break;
	    case global.Right_Button: global.Right_Button = _swap; break;
	    case global.Select_Button: global.Select_Button = _swap; break;
	    case global.Cancel_Button: global.Cancel_Button = _swap; break;
	    case global.Inspect_Button: global.Inspect_Button = _swap; break;
	    case global.Main_Menu_Button: global.Main_Menu_Button = _swap; break;
	}
}