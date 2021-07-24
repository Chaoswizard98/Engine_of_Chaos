if(!Get_Weapon_Cutscene_Position(cutscene_character,"Hidden")){//If we draw the weapons this frame
    var _inventory_slot = 0;//equipment slot
    var _character = cutscene_character.character;//character
    
    var _sprite = Get_Equipped_Item_Stats("Local",_character,_inventory_slot,"Battle_Sprite");
    var _frame = Get_Weapon_Cutscene_Position(cutscene_character,"Frame");
    image_speed = Get_Weapon_Cutscene_Position(cutscene_character,"Animation_Speed");
    
    //character hand position
    var _hand_pos_x = Get_Weapon_Cutscene_Position(cutscene_character,"X_Pos");
    var _hand_pos_y = Get_Weapon_Cutscene_Position(cutscene_character,"Y_Pos");
    
    if(cutscene_character.position = "Left"){//if alt position,
        _hand_pos_x = -_hand_pos_x;//invert offset direction
    }
    
    //final draw position (character position + hand offset)
    var _x_pos = Get_Anchor_X("Top_Left") + x_pos + _hand_pos_x;
    var _y_pos = Get_Anchor_Y("Top_Left") + y_pos + _hand_pos_y;
    
    
    
    //weapon rotation
    var _rotation = Get_Weapon_Cutscene_Position(cutscene_character,"Rotation");
    var _mirror = Get_Weapon_Cutscene_Position(cutscene_character,"Mirror");
    
    //Draw the weapon
    draw_sprite_ext(_sprite,_frame,_x_pos,_y_pos,_mirror,1,_rotation,draw_color,alpha);
}

