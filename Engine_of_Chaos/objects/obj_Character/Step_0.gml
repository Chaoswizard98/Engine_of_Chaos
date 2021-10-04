//================
//Player Movement=
//================
if(Can_Control_Character(id)){
    if(Pressed_Key("Right_Button",true)){//RIGHT
        Move_Character_Town(x+global.Tile_Size,y,"Right",1,player_move_speed,player_walking_animation_speed,"Right");
    }
    else if(Pressed_Key("Left_Button",true)){//LEFT
        Move_Character_Town(x-global.Tile_Size,y,"Left",1,player_move_speed,player_walking_animation_speed,"Left");
    }
    else if(Pressed_Key("Up_Button",true)){//UP
        Move_Character_Town(x,y-global.Tile_Size,"Up",1,player_move_speed,player_walking_animation_speed,"Up");
    }
    else if(Pressed_Key("Down_Button",true)){//DOWN
        Move_Character_Town(x,y+global.Tile_Size,"Down",1,player_move_speed,player_walking_animation_speed,"Down");
    }
}

//==================
//Follower Movement=
//==================
if(object_following != noone){//if we are following a target
    if(object_following.move_timer = (global.Tile_Size /2)){//if the target we're following is halfway to their destination,
        if(Find_Distance_Radius(object_following.projected_x,object_following.projected_y,projected_x,projected_y)>1){
        move_speed = object_following.move_speed;//set move speed to target move speed (in case of a slower or faster target)
        var _follower_x_offset = follower_x_offset;
        var _follower_y_offset = follower_y_offset;
        Follower_Movement(follower_x_offset,follower_y_offset);//try to move to the projected area
        
        while(Destination_Blocked(projected_x,projected_y,Get_Character_Movement_Type("Local",id,"Total"),id,"Character")&&(_follower_x_offset != 0)){//if it's blocked, (and we arent directly behind the target)
            if(_follower_x_offset > 0){
                _follower_x_offset -= 1;
            }
            else if(_follower_x_offset < 0){
                _follower_x_offset += 1;
            }
            Follower_Movement(_follower_x_offset,_follower_y_offset);//try the next position
        }
    
        //What direction do we face the character?
        if(speed_x >0){
            Face_Direction(id,"Right");
        }
        else if(speed_x < 0){
            Face_Direction(id,"Left");
        }
        else if(speed_y > 0){
            Face_Direction(id,"Down");
        }
        else if(speed_y < 0){
            Face_Direction(id,"Up");
        }
        
        if(speed_x != 0 || speed_y != 0){
        //set direction to face.
        moving = true;// Lets start moving
        image_speed = object_following.image_speed;
        move_timer = global.Tile_Size;
        }
        }
    }
}

//===================
//NPC circuit script=
//===================
else if(!cutscene_mode && !moving && has_circuit && is_npc){
    if(event_timer > 0){//if we are currently running an event
        event_timer -= 1;//decrement event timer
        if(event_timer = 0){//if we hit 0,
            event_timer = -1;//stop the loop
            if(circuit_direction = "up"){
                Move_Character_Town(x,y-global.Tile_Size,"Up",1,npc_move_speed,npc_walking_animation_speed,"Up");
            }
            else if(circuit_direction = "down"){
                Move_Character_Town(x,y+global.Tile_Size,"Down",1,npc_move_speed,npc_walking_animation_speed,"Down");
            }
            else if(circuit_direction = "left"){
                Move_Character_Town(x-global.Tile_Size,y,"Left",1,npc_move_speed,npc_walking_animation_speed,"Left");
            }
            else if(circuit_direction = "right"){
                Move_Character_Town(x+global.Tile_Size,y,"Right",1,npc_move_speed,npc_walking_animation_speed,"Right");
            }
        }
    }
}

//==================
//NPC wander script=
//==================
else if(!cutscene_mode && !moving && allow_wander && is_npc){//if we arent in a cutscene, and we arent moving,
    if(event_timer > 0){//if we are currently running an event
        event_timer -= 1;//decrement event timer
        if(event_timer = 0){//if we hit 0,
            event_timer = -1;//stop the loop
            var _direction;
            _direction = irandom_range(1,(4+idle_wander_rolls));//pick a random direction
                
            if (_direction = 1){//right
                if(Find_Distance_Radius(x_origin,y_origin,x+global.Tile_Size,y) <= wander_radius){
                    Move_Character_Town(x+global.Tile_Size,y,"Right",1,npc_move_speed,npc_walking_animation_speed,"Right");
                }
                else{
                    event_timer = event_cooldown;//reset event timer
                }
            }
            else if (_direction = 2){//up
                if(Find_Distance_Radius(x_origin,y_origin,x,y-global.Tile_Size) <= wander_radius){
                    Move_Character_Town(x,y-global.Tile_Size,"Up",1,npc_move_speed,npc_walking_animation_speed,"Up");
                }
                else{
                    event_timer = event_cooldown;//reset event timer
                }
            }
            else if (_direction = 3){//left
                if(Find_Distance_Radius(x_origin,y_origin,x-global.Tile_Size,y) <= wander_radius){
                    Move_Character_Town(x-global.Tile_Size,y,"Left",1,npc_move_speed,npc_walking_animation_speed,"Left");
                }
                else{
                    event_timer = event_cooldown;//reset event timer
                }
            }
            else if (_direction = 4){//down
                if(Find_Distance_Radius(x_origin,y_origin,x,y+global.Tile_Size) <= wander_radius){
                    Move_Character_Town(x,y+global.Tile_Size,"Down",1,npc_move_speed,npc_walking_animation_speed,"Down");
                }
                else{
                    event_timer = event_cooldown;//reset event timer
                }
            }
            else{//null case, stay in place.
                event_timer = event_cooldown;//reset event timer
            }
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
        movement_iterations -= 1;
        if(movement_iterations <= 0){
            moving = false;//stop moving
            speed_x = 0;//set speeds to 0
            speed_y = 0;//set speeds to 0
            move_speed = 0;//set move_speed to 0
            x = round(x);//fix floating point errors
            y = round(y);//fix floating point errors
            previous_x = x;//set previous to current location
            previous_y = y;//set previous to current location
            image_speed = idle_animation_speed;//return to idle speed
            if(is_npc){//if they are an NPC, trigger event cooldown
                event_timer = event_cooldown;//reset event timer
            }
            if(cutscene_mode){
                //ping cutscene script
                Call_Cutscene_Move_Script(id);
            }
        }
        else{//not done moving yet,
            previous_x = x;//set previous to current location
            previous_y = y;//set previous to current location
            if(move_direction = "Up"){
                Move_Character_Town(x,y-global.Tile_Size,"Up",movement_iterations,move_speed,image_speed,direction);
            }
            else if(move_direction = "Down"){
                Move_Character_Town(x,y+global.Tile_Size,"Down",movement_iterations,move_speed,image_speed,direction);
            }
            else if(move_direction = "Left"){
                Move_Character_Town(x-global.Tile_Size,y,"Left",movement_iterations,move_speed,image_speed,direction);
            }
            else if(move_direction = "Right"){
                Move_Character_Town(x+global.Tile_Size,y,"Right",movement_iterations,move_speed,image_speed,direction);
            }
        }
    }
}

if((animation != "none")&&(animation != "Freeze_Sprite_Animation")){//if we are playing an animation
    if(animation_count <= number_of_animations){//if we havent hit the end
        if(animation = "Jump"){
            if(animation_direction = "up"){
                animation_offset_y -= animation_speed;
                if(animation_offset_y <= -(global.Tile_Size/2)){
                    animation_offset_y = -(global.Tile_Size/2);
                    animation_direction = "down";
                }
            }
            else if(animation_direction = "down"){
                animation_offset_y += animation_speed;
                if(animation_offset_y >= 0){
                    animation_offset_y = 0;
                    animation_direction = "up";
                    animation_count += 1;//increase animation count
                }
            }
        }
        else if(animation = "Spin"){
            animation_timer -= 1;
            if(animation_timer <= 0){
                if(spin_direction = "Clockwise"){
                    switch(direction){
                        case 0: direction = 270; break;
                        case 90: direction = 0; break;
                        case 180: direction = 90; break;
                        case 270: direction = 180; break;
                    }
                }
                else{
                    switch(direction){
                        case 0: direction = 90; break;
                        case 90: direction = 180; break;
                        case 180: direction = 270; break;
                        case 270: direction = 0; break;
                    }
                }
                if(direction = end_direction){//if we completed a full spin,
                    animation_count += 1;//increase timer
                }
                animation_timer = animation_speed;
            }
        }
        else if(animation = "Sprite_Animation"){//drawing a sprite that isnt the character (ie, explode, etc)
            animation_frame += animation_speed;
            if(animation_frame >= sprite_get_number(animation_sprite)){//if at final sprite frame
                animation_count += 1;
                if(animation_count > number_of_animations){//if we ran all our animations
                    animation_frame = sprite_get_number(animation_sprite)-1;//set to final frame
                }
                else{
                    animation_frame = 0;//reset frame
                }
            }
        }
        else if(animation = "Fade_Character"){//drawing a sprite that isnt the character (ie, explode, etc)
            if(alpha <= end_alpha){//if we're fading in
                alpha += animation_speed;//increase alpha
                if(alpha >= end_alpha){
                    alpha = end_alpha;//set alpha to final alpha
                    animation_count += 1;//increase timer
                }
            }
            else{//if we're fading out
                alpha -= animation_speed;//increase alpha
                if(alpha <= end_alpha){
                    alpha = end_alpha;//set alpha to final alpha
                    animation_count += 1;//increase timer
                }
            }
        }
        else{
            animation_timer -= 1;//decrement timer
            if(animation_timer <= 0){//if timer is 0
                if(animation = "Shake_Head"){
                    if(animation_direction = "left"){//left direction
                        animation_offset_x -= 1;//update head position
                        if(animation_offset_x<= -1){//if we hit the end,
                            animation_direction = "right";//reverse the shake
                        }
                    }
                    else if(animation_direction = "right"){//right direction
                        animation_offset_x += 1;//update head position
                        if(animation_offset_x>= 1){//if we hit the end,
                            animation_direction = "left";//reverse the shake
                        }
                    }
                    animation_count += 1;//increase animation count
                }
                else if(animation = "Nod_Head"){
                    if(animation_direction = "down"){//left direction
                        animation_offset_y += 1;//update head position
                        if(animation_offset_y >= 1){//if we hit the end,
                            animation_direction = "up";//reverse the shake
                        }
                    }
                    else if(animation_direction = "up"){//right direction
                        animation_offset_y -= 1;//update head position
                        if(animation_offset_y <= 0){//if we hit the end,
                            animation_direction = "down";//reverse the shake
                            animation_count += 1;//increase animation count
                        }
                    }
                }
                else if(animation = "Shudder"){
                    if(animation_direction = "down"){
                        animation_offset_y = -3;
                        animation_direction = "up";//reverse the shake
                    }
                    else if(animation_direction = "up"){
                        animation_offset_y = 0;
                        animation_direction = "down";//reverse the shake
                        animation_count += 1;//increase animation count
                    }
                }
                animation_timer = animation_speed;//reset timer
            }
        }
    }
    else{//animation is over
        if(!(animation = "Sprite_Animation" && freeze_last_frame)){//dont reset for sprite animation if freezing on final frame
            Reset_Sprite_Animation(id);//reset the animation variables
        }
        else{
            animation = "Freeze_Sprite_Animation";//freeze animation to break loop while maintaining persistence
        }
        if(chained_animation != "none"){
            Chained_Animation(id);
        }
        else if(cutscene_mode){//cutscene script call
            with(obj_Cutscene_Controller){
                event_perform(ev_other,ev_user0);
            }
        }
    }
}

if(hit_flash){//if showing hit flash, animate it
    flash_alpha -= hit_flash_speed;//subtract speed
    if(flash_alpha <= 0){//if done with flash, reset defaults
        hit_flash = false;
        hit_flash_color = c_white;
        flash_speed = 0;
        flash_alpha = 0;
    }
}

if(spell_cast){//if showing hit flash, animate it
    flash_timer -= 1;//subtract speed
    if(flash_timer <= 0){//if done with flash, reset defaults
        if(use_shader){
            use_shader = false;
        }
        else{
            use_shader = true;
        }
        flash_timer = flash_speed;
    }
}

if(pathfinding){
    path_timer -= pathfinding_speed;
    if(path_timer <= 0){
        Play_Sound(sfx_Walk);
        path_timer = global.Tile_Size;
    }
}

if(waiting_for_AI){
    ai_timer -= 1;
    if(ai_timer <= 0){
        ai_timer = 0;
        waiting_for_AI = false;
        event_perform(ev_other,ev_user0);
    }
}

if(Can_Control_Character(id)){
    if(Pressed_Key("Select_Button",false)){
        if(global.In_Battle){//if we're in battle,
            if(Can_End_Turn(id)){//make sure we arent ending on an ally / other passable object
                var interactable_object = Get_Interactable_Object(x,y,direction);//check if something is in this direction
                if(interactable_object != noone){//if we can interact with an object
                    allow_interaction = false;
                    End_Character_Movement(id,"Search");//reset depth and clear movement tiles
                    if(Object_Is_Character(interactable_object)){//if this is a character, ('Talk' option)
                        Create_Main_Battle_Menu_Talk(id,id,noone);//current object,player,npc
                    }
                    else{//otherwise, this is a chest / bookshelf / etc. ('Search' Option)
                        Create_Main_Battle_Menu_Search(id,id,noone);//current object,player,npc
                    }
                }
                else{
                    allow_interaction = false;
                    End_Character_Movement(id,"End_Movement");//reset depth and clear movement tiles
                    Create_Main_Battle_Menu(id,id,noone);//current object,player,npc
                }
            }
            else{
                Play_Sound(sfx_Error);
            }
        }
        else{//Display Menu
            allow_interaction = false;
            Create_Main_Town_Menu(id,id,noone);//<current_object> <current_character> <current_npc>
        }
    }
    else if(Pressed_Key("Inspect_Button",false)){
        Search_Event(id,"player_trigger");//character,event
    }
    else if(Pressed_Key("Cancel_Button",false)){
        if(global.In_Battle){//if we're in battle,
            Walk_To_Start_Position(id);//walk to start location
        }
    }
}

