function Test_Cutscene() {
	var _player;
	_player = global.Player;//set player to the npc's current object

	switch(state){
	    case 0:
	        _player.allow_interaction = false;//allow player movement
	        _player.cutscene_mode = true;
	        Create_Dialogue(_player.portrait_ID,Get_Voice(_player.voice_ID),"Cutscene Test.",id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        state += 1;
	    break;
	    case 1:
	        state += 1;
	        //Spin(_player,6);//character,iterations
	        //Sprite_Animation(_player,spr_MaxOverworld,1,.0625,false,false);//character, sprite, iterations, speed, hide char, freeze
	        //Shudder(_player);
	        //Hit_Flash(_player,.0625,c_red,10);
        
	        //_player.alpha = 0;
	        //Fade_Character(_player);
	        Move_Character(_player,"Right",1,3,"Right",0);//character,direction,tiles,speed,[face direction],[animation speed]
	    break;
	    case 2:
	        state += 1;
	        //Pan_Camera_To_Target();
	        //Pan_Camera_To_Location(0,0,8);
	        Enable_Spell_Cast_Flash(_player,3,c_black,c_yellow);
	        Create_Screen_Shake(3,0,3,true);
	    break;
	    case 3:
	        if(!instance_exists(obj_Lighting_Controller)){
	            Enable_Lighting_System();
	        }
	        else{
	            Disable_Lighting_System();
	        }
	        Reset_Camera(global.Player);
	        Stop_Screen_Shake();
	        Disable_Spell_Cast_Flash(_player);
	        Reset_Sprite_Animation(global.Player);
	        _player.allow_interaction = true;//allow player movement
	        _player.cutscene_mode = false;
	        instance_destroy();//destroy the cutscene controller
	    break;
	}



}
