mirror = 1;//by default, we are not mirroring the right frames

	//====
	//Down
	//====
	if(direction = 270 && (image_index >= number_of_frames)){//if we are beyond the alloted down frames
	    image_index = 0;//reset frame to the start of the block
	}
	//==
	//Up
	//==
	else if(direction = 90){//up
	    if(image_index >= (number_of_frames * 2)){//if we are beyond the alloted up frames
	        image_index = number_of_frames;//reset frame to the start of the block
	    }
	    else if(image_index < number_of_frames){//if we are less than the minimum frame (if we changed direction)
	        image_index = number_of_frames + frac(image_index);//set image to current position in new animation to maintain walk cycle
	    }
	}
	//=====
	//Right
	//=====
	else if((direction = 0)||(direction = 45)||(direction = 315)){//right
	    if(image_index >= (number_of_frames * 3)){//if we are beyond the alloted right frames
	        image_index = number_of_frames * 2;//reset frame to the start of the block
	    }
	    else if(image_index < number_of_frames * 2){//if we are less than the minimum frame (if we changed direction)
	        image_index = (number_of_frames * 2) + frac(image_index);//set image to current position in new animation to maintain walk cycle
	    }
	}
	//====
	//Left
	//====
	else if((direction = 180)||(direction = 135)||(direction = 225)){//left
	    if(sprite_get_number(sprite_index)<(number_of_frames * 4)){//if we need to mirror the right frames
	        mirror = -1;
	        if(image_index >= (number_of_frames * 3)){//if we are beyond the alloted right frames
	            image_index = number_of_frames * 2;//reset frame to the start of the block
	        }
	        else if(image_index < number_of_frames*2){//if we are less than the minimum frame (if we changed direction)
	            image_index = (number_of_frames * 2) + frac(image_index);//set image to current position in new animation to maintain walk cycle
	        }
	    }
	    else{//otherwise we have custom left frames
	        if(image_index >= (number_of_frames * 4)){//if we are beyond the alloted left frames
	            image_index = number_of_frames * 3;//reset frame to the start of the block
	        }
	        else if(image_index < number_of_frames*3){//if we are less than the minimum frame (if we changed direction)
	            image_index = (number_of_frames * 3) + frac(image_index);//set image to current position in new animation to maintain walk cycle
	        }
	    }
	}


//Enable Shader
if(use_shader){//if we're using a shader
    Set_Shader();//enable it
}

var sprite_x = floor(x+sprite_offset_x);
var sprite_y = floor(y+sprite_offset_y);

if((animation = "none")||(animation = "Fade_Character")){//draw normal sprite
    draw_sprite_ext(sprite_index,-1,floor(x+sprite_offset_x),floor(y+sprite_offset_y),mirror,1,rotation,flash_color,alpha);
}
else if(animation = "Spin"){
    draw_sprite_ext(sprite_index,image_index,floor(x+sprite_offset_x),floor(y+sprite_offset_y),mirror,1,rotation,flash_color,alpha);
}
else if((animation = "Sprite_Animation") || (animation = "Freeze_Sprite_Animation")){
    if(!hide_character){//if we dont hide the character,
        draw_sprite_ext(sprite_index,image_index,floor(x+sprite_offset_x),floor(y+sprite_offset_y),mirror,1,rotation,flash_color,alpha);//draw them
    }
    draw_sprite_ext(animation_sprite,animation_frame,floor(x+sprite_offset_x),floor(y+sprite_offset_y),mirror,1,rotation,flash_color,1);//draw custom sprite animation
    //draw_sprite_ext(animation_sprite,animation_frame,floor(x),floor(y),mirror,1,rotation,flash_color,1);//draw custom sprite animation
}
else if(animation = "Shake_Head"){
    if(mirror = -1){//if we mirror the left / right frames, we need to add offsets rather than subtract. Gamemaker logic....
        draw_sprite_ext(sprite_index,image_index,floor(x+sprite_offset_x),floor(y+sprite_offset_y),mirror,1,0,flash_color,alpha);//draw the base sprite
        draw_sprite_part_ext(sprite_index,image_index,7,0,11,13,sprite_x+ 7+animation_offset_x-2,sprite_y - sprite_get_yoffset(sprite_index),mirror,1,flash_color,alpha);//draw head
    }
    else{
        draw_sprite_ext(sprite_index,image_index,floor(x+sprite_offset_x),floor(y+sprite_offset_y),mirror,1,0,flash_color,alpha);//draw the base sprite
        draw_sprite_part_ext(sprite_index,image_index,7,0,11,13,sprite_x - sprite_get_xoffset(sprite_index) + 7+animation_offset_x,sprite_y - sprite_get_yoffset(sprite_index),mirror,1,flash_color,alpha);//draw head
    }
}
else if(animation = "Nod_Head"){
    if(mirror = -1){//if we mirror the left / right frames, we need to add offsets rather than subtract. Gamemaker logic....
        draw_sprite_part_ext(sprite_index,image_index,0,0,7,13,sprite_x+sprite_get_xoffset(sprite_index),sprite_y - sprite_get_yoffset(sprite_index),mirror,1,flash_color,alpha);//L shoulder
        draw_sprite_part_ext(sprite_index,image_index,18,0,5,13,sprite_x+18+sprite_get_xoffset(sprite_index),sprite_y - sprite_get_yoffset(sprite_index),mirror,1,flash_color,alpha);//R shoulder
        draw_sprite_part_ext(sprite_index,image_index,0,13,24,11,sprite_x+sprite_get_xoffset(sprite_index),sprite_y - sprite_get_yoffset(sprite_index)+13,mirror,1,flash_color,alpha);//body
        draw_sprite_part_ext(sprite_index,image_index,7,0,11,13,sprite_x+7-2,sprite_y - sprite_get_yoffset(sprite_index)+animation_offset_y,mirror,1,flash_color,alpha);//head
    }
    else{
        draw_sprite_part_ext(sprite_index,image_index,0,0,7,13,sprite_x - sprite_get_xoffset(sprite_index),sprite_y - sprite_get_yoffset(sprite_index),mirror,1,flash_color,alpha);//L shoulder
        draw_sprite_part_ext(sprite_index,image_index,18,0,5,13,sprite_x - sprite_get_xoffset(sprite_index)+18,sprite_y - sprite_get_yoffset(sprite_index),mirror,1,flash_color,alpha);//R shoulder
        draw_sprite_part_ext(sprite_index,image_index,0,13,24,11,sprite_x - sprite_get_xoffset(sprite_index),sprite_y - sprite_get_yoffset(sprite_index)+13,mirror,1,flash_color,alpha);//body
        draw_sprite_part_ext(sprite_index,image_index,7,0,11,13,sprite_x - sprite_get_xoffset(sprite_index)+7,sprite_y - sprite_get_yoffset(sprite_index)+animation_offset_y,mirror,1,flash_color,alpha);//head
    }
}
else if(animation = "Jump"){
    draw_sprite_ext(sprite_index,-1,floor(x+sprite_offset_x),floor(y+sprite_offset_y)+animation_offset_y,mirror,1,rotation,flash_color,alpha);
}
else if(animation = "Shudder"){
    if(mirror = -1){
        draw_sprite_general(sprite_index,image_index,0,0,sprite_width,sprite_height,sprite_x + sprite_get_xoffset(sprite_index),sprite_y - sprite_get_yoffset(sprite_index)-animation_offset_y,mirror,(sprite_height + animation_offset_y)/sprite_height,rotation,flash_color,flash_color,flash_color,flash_color,alpha);
    }
    else{
        draw_sprite_general(sprite_index,image_index,0,0,sprite_width,sprite_height,sprite_x - sprite_get_xoffset(sprite_index),sprite_y - sprite_get_yoffset(sprite_index)-animation_offset_y,mirror,(sprite_height + animation_offset_y)/sprite_height,rotation,flash_color,flash_color,flash_color,flash_color,alpha);
    }
}

//Disable Shader
if(use_shader){//if using a shader
    shader_reset();//reset the shader
}


















//==============================================
//Enable Shader
if(hit_flash){//if we're using a shader
    shader_set(sh_Hit_Flash);


var sprite_x = floor(x+sprite_offset_x);
var sprite_y = floor(y+sprite_offset_y);

if((animation = "none")||(animation = "Fade_Character")){//draw normal sprite
    draw_sprite_ext(sprite_index,-1,floor(x+sprite_offset_x),floor(y+sprite_offset_y),mirror,1,0,hit_flash_color,flash_alpha);
}
else if(animation = "Spin"){
    draw_sprite_ext(sprite_index,image_index,floor(x+sprite_offset_x),floor(y+sprite_offset_y),mirror,1,0,hit_flash_color,flash_alpha);
}
else if((animation = "Sprite_Animation") || (animation = "Freeze_Sprite_Animation")){
    if(!hide_character){//if we dont hide the character,
        draw_sprite_ext(sprite_index,image_index,floor(x+sprite_offset_x),floor(y+sprite_offset_y),mirror,1,0,hit_flash_color,flash_alpha);//draw them
    }
    draw_sprite_ext(animation_sprite,animation_frame,floor(x+sprite_offset_x),floor(y+sprite_offset_y),mirror,1,0,hit_flash_color,1);//draw custom sprite animation
}
else if(animation = "Shake_Head"){
    if(mirror = -1){//if we mirror the left / right frames, we need to add offsets rather than subtract. Gamemaker logic....
        draw_sprite_ext(sprite_index,image_index,floor(x+sprite_offset_x),floor(y+sprite_offset_y),mirror,1,0,hit_flash_color,flash_alpha);//draw the base sprite
        draw_sprite_part_ext(sprite_index,image_index,7,0,11,13,sprite_x+ 7+animation_offset_x-2,sprite_y - sprite_get_yoffset(sprite_index),mirror,1,hit_flash_color,flash_alpha);//draw head
    }
    else{
        draw_sprite_ext(sprite_index,image_index,floor(x+sprite_offset_x),floor(y+sprite_offset_y),mirror,1,0,hit_flash_color,flash_alpha);//draw the base sprite
        draw_sprite_part_ext(sprite_index,image_index,7,0,11,13,sprite_x - sprite_get_xoffset(sprite_index) + 7+animation_offset_x,sprite_y - sprite_get_yoffset(sprite_index),mirror,1,hit_flash_color,flash_alpha);//draw head
    }
}
else if(animation = "Nod_Head"){
    if(mirror = -1){//if we mirror the left / right frames, we need to add offsets rather than subtract. Gamemaker logic....
        draw_sprite_part_ext(sprite_index,image_index,0,0,7,13,sprite_x+sprite_get_xoffset(sprite_index),sprite_y - sprite_get_yoffset(sprite_index),mirror,1,hit_flash_color,flash_alpha);//L shoulder
        draw_sprite_part_ext(sprite_index,image_index,18,0,5,13,sprite_x+18+sprite_get_xoffset(sprite_index),sprite_y - sprite_get_yoffset(sprite_index),mirror,1,hit_flash_color,flash_alpha);//R shoulder
        draw_sprite_part_ext(sprite_index,image_index,0,13,24,11,sprite_x+sprite_get_xoffset(sprite_index),sprite_y - sprite_get_yoffset(sprite_index)+13,mirror,1,hit_flash_color,flash_alpha);//body
        draw_sprite_part_ext(sprite_index,image_index,7,0,11,13,sprite_x+7-2,sprite_y - sprite_get_yoffset(sprite_index)+animation_offset_y,mirror,1,hit_flash_color,flash_alpha);//head
    }
    else{
        draw_sprite_part_ext(sprite_index,image_index,0,0,7,13,sprite_x - sprite_get_xoffset(sprite_index),sprite_y - sprite_get_yoffset(sprite_index),mirror,1,hit_flash_color,flash_alpha);//L shoulder
        draw_sprite_part_ext(sprite_index,image_index,18,0,5,13,sprite_x - sprite_get_xoffset(sprite_index)+18,sprite_y - sprite_get_yoffset(sprite_index),mirror,1,hit_flash_color,flash_alpha);//R shoulder
        draw_sprite_part_ext(sprite_index,image_index,0,13,24,11,sprite_x - sprite_get_xoffset(sprite_index),sprite_y - sprite_get_yoffset(sprite_index)+13,mirror,1,hit_flash_color,flash_alpha);//body
        draw_sprite_part_ext(sprite_index,image_index,7,0,11,13,sprite_x - sprite_get_xoffset(sprite_index)+7,sprite_y - sprite_get_yoffset(sprite_index)+animation_offset_y,mirror,1,hit_flash_color,alpha);//head
    }
}
else if(animation = "Jump"){
    draw_sprite_ext(sprite_index,-1,floor(x+sprite_offset_x),floor(y+sprite_offset_y)+animation_offset_y,mirror,1,0,hit_flash_color,flash_alpha);
}
else if(animation = "Shudder"){
    if(mirror = -1){
        draw_sprite_general(sprite_index,image_index,0,0,sprite_width,sprite_height,sprite_x + sprite_get_xoffset(sprite_index),sprite_y - sprite_get_yoffset(sprite_index)-animation_offset_y,mirror,(sprite_height + animation_offset_y)/sprite_height,0,hit_flash_color,hit_flash_color,hit_flash_color,hit_flash_color,flash_alpha);
    }
    else{
        draw_sprite_general(sprite_index,image_index,0,0,sprite_width,sprite_height,sprite_x - sprite_get_xoffset(sprite_index),sprite_y - sprite_get_yoffset(sprite_index)-animation_offset_y,mirror,(sprite_height + animation_offset_y)/sprite_height,0,hit_flash_color,hit_flash_color,hit_flash_color,hit_flash_color,flash_alpha);
    }
}

    shader_reset();//reset the shader
}
//==============================================

