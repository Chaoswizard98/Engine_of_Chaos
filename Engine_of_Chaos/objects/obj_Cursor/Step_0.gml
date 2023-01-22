if((!moving)&&(allow_interaction)&&(!pathfinding)){//if we arent moving and we can control the character,
	if(!inspecting_character){
	    if(Pressed_Key("Up_Right_Buttons",true)){//RIGHT
	        Move_Cursor(x+global.Tile_Size,y-global.Tile_Size,"Up_Right",cursor_move_speed);
	    }
	    else if(Pressed_Key("Down_Right_Buttons",true)){//RIGHT
	        Move_Cursor(x+global.Tile_Size,y+global.Tile_Size,"Up_Right",cursor_move_speed);
	    }
	    else if(Pressed_Key("Up_Left_Buttons",true)){//RIGHT
	        Move_Cursor(x-global.Tile_Size,y-global.Tile_Size,"Up_Right",cursor_move_speed);
	    }
	    else if(Pressed_Key("Down_Left_Buttons",true)){//RIGHT
	        Move_Cursor(x-global.Tile_Size,y+global.Tile_Size,"Up_Right",cursor_move_speed);
	    }
	    else if(Pressed_Key("Right_Button",true)){//RIGHT
	        Move_Cursor(x+global.Tile_Size,y,"Right",cursor_move_speed);
	    }
	    else if(Pressed_Key("Left_Button",true)){//LEFT
	        Move_Cursor(x-global.Tile_Size,y,"Left",cursor_move_speed);
	    }
	    else if(Pressed_Key("Up_Button",true)){//UP
	        Move_Cursor(x,y-global.Tile_Size,"Up",cursor_move_speed);
	    }
	    else if(Pressed_Key("Down_Button",true)){//DOWN
	        Move_Cursor(x,y+global.Tile_Size,"Down",cursor_move_speed);
	    }
		
		else if(Pressed_Key("Select_Button",false)){
			var _character = instance_position(x,y,obj_Character);
            if(_character != noone && !_character.hidden){
                allow_interaction = false;
                Create_Status_Page("Local",_character,id);
            }
            else{
                allow_interaction = false;
                Create_Cursor_Menu(id,Get_Current_Turn(),noone);//current object,player,npc
            }
		}
		else if(Pressed_Key("Cancel_Button",false)){
			allow_interaction = false;
            Move_Cursor_To_Target(Get_Current_Turn(),"Start_Turn");
		}
		else if(Pressed_Key("Inspect_Button",false)){
			var _character = instance_position(x,y,obj_Character);    
            if(_character != noone){
                allow_interaction = false;
                inspecting_character = true;
                Create_Battle_HUD(id,_character,"Inspect_Character","Main_HUD");//create the battle HUD
            }
		}
	}
	else{//We are inspecting a character
		if(Pressed_Key("Select_Button",false)||Pressed_Key("Cancel_Button",false)||Pressed_Key("Inspect_Button",false)){
			allow_interaction = false;
            inspecting_character = false;
            Pan_Out_Land_Effect_Window("End_Inspect_Character");
		}
	}
}

//=================
//Movement Updator=
//=================
if(moving){
    x += speed_x; //update x position
    y += speed_y; //update y position
    move_timer -= move_speed;//decrease timer by speed
    if (move_timer <= 0){//if we have reached the end
        moving = false;//stop moving
        speed_x = 0;//set speeds to 0
        speed_y = 0;//set speeds to 0
        move_speed = 0;//set move_speed to 0
        x = round(x);//fix floating point errors
        y = round(y);//fix floating point errors
    }
}