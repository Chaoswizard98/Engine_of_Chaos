function Call_Battle_Cutscene() {
	//This script calls a cutscene based on ID.
	switch(script_ID){
	    //==================
	    //Utility / Defaults
	    //==================
	    case "Reveal_Hidden_Unit": Reveal_Hidden_Unit(); break;//revealing a hidden unit
	    case "Spawn_Character": Spawn_Character(); break;//spawning a character
	    case "Teleport_Tile_Pathfinding_Fade": Teleport_Tile_Pathfinding_Fade(); break;//teleport tile fade
	    case "Teleport_Tile_Manual_Fade": Teleport_Tile_Manual_Fade(); break;//teleport tile fade
	    case "Retreat_From_Battle": Retreat_From_Battle(); break;//confirm retreating from battle
	    case "Retreat_From_Battle_Overworld": Retreat_From_Battle_Overworld(); break;//confirm retreating from battle
	    case "Status_Effects_Battle": Status_Effects_Battle(); break;//update status effects
	    case "Battle_Death_Animation": Battle_Death_Animation(); break;//update status effects
	    case "Battle_Death_Animation_End": Battle_Death_Animation_End(); break;//update status effects
	    case "Quit_Game": Quit_Game_Cutscene(); break;//Quit Game
	    case "Cast_Egress_Battle": Cast_Egress_Battle(); break; //Cast Egress
	    case "Use_Egress_Item_Battle": Use_Egress_Item_Battle(); break //Item causes egress
    
	    case "Player_Was_Defeated_Default": Default_Battle_Defeat(); break;//Player Was Defeated
	    case "Defeated_All_Enemies_Default": Default_Battle_Victory(); break;//Defeated All Enemies
	}



}
