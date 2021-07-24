function Swap_Duplicate_Controls() {
	//ensure we dont have 2 controls bound to the same button
	var Ignore, Swap;

	Ignore = argument[0];

	switch(Ignore){
	    case "Up": Swap = global.Up_Button; break;
	    case "Down": Swap = global.Down_Button; break;
	    case "Left": Swap = global.Left_Button; break;
	    case "Right": Swap = global.Right_Button; break;
	    case "Select": Swap = global.Select_Button; break;
	    case "Cancel": Swap = global.Cancel_Button; break;
	    case "Inspect": Swap = global.Inspect_Button; break;
	    case "Main Menu": Swap = global.Main_Menu_Button; break;
	}

	switch(keyboard_lastkey){
	    case global.Up_Button: global.Up_Button = Swap; break;
	    case global.Down_Button: global.Down_Button = Swap; break;
	    case global.Left_Button: global.Left_Button = Swap; break;
	    case global.Right_Button: global.Right_Button = Swap; break;
	    case global.Select_Button: global.Select_Button = Swap; break;
	    case global.Cancel_Button: global.Cancel_Button = Swap; break;
	    case global.Inspect_Button: global.Inspect_Button = Swap; break;
	    case global.Main_Menu_Button: global.Main_Menu_Button = Swap; break;
	}



}
