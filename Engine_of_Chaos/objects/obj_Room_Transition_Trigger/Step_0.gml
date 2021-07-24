event_inherited();
var _character = noone;
var _x = x;
var _y = y;
var _can_reset_trigger = true;
with(obj_Character){//loop through characters to see if there are any on this tile (may be multiple, hence instance_position wont work)
    if((round(x) = _x)&&(y = _y)){//if the character is at this position
        if(Can_Control_Character(id)&&(_character = noone)&&(can_trigger_room_transition)){//check if we can control them, and if they can trigger this event
            _character = id;//we can control them, remember this character
        }
        if(can_trigger_room_transition){//if the character at this location can trigger the tile
            _can_reset_trigger = false;
        }
    }
}

if(_character != noone){//if there is a character here
    if(call_trigger){//if we can teleport the character,
        if(global.In_Battle){//if we're in battle, ask player for confirmation
            call_trigger = false;
            _character.allow_interaction = false;
            Create_Cutscene_Controller(battle_cutscene_script,"Battle_Cutscene",0,_character,id);//confirmation cutscene
        }
        else{//otherwise, teleport
            call_trigger = false;
            _character.allow_interaction = false;
            Room_Transfer(_character,"Tile",id);
        }
    }
}
else if(_can_reset_trigger){
    call_trigger = true;//allow tile to be triggered
}

