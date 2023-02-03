function Finished_Demo_Cutscene() {
	switch(state){
	    case 0:
	        state += 1;
			var _jason = Spawn_Player("AU_Jason","Moorenfirch_01");//default character, default spawn location (Overwritten by room transition controller if it exists)
			Start_Room(_jason);
			_jason.visible = false;
	        Finish_Room_Transition(id);
	    break;
	    case 1:
	        state += 1;
	        Create_Dialogue(spr_AU_Chaos_Portrait,sfx_Dialogue05,"Greetings,^ and congratulations on completing the demo.% For now I'll put you back in Hillford so that you can explore the town further.% I promise it works this time.^^ Probably.% If you're not already aware,^ Milkshake has a wander radius of 99,^ a Ring of Chicken is hidden somewhere in Ashenwood,^ there is a Protect Milk hidden in Hillford,^ and enemies killed by a character named 'JOGURT' will drop a Jogurt Ring.%\nCheers!\n-Chaoswizard98",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 2:
	        state += 1;
	        Room_Transfer("AU_Jason","Force",room_Hillford,"Egress");
	        instance_destroy();
	    break;
	}
}
