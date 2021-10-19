function Finished_Demo_Cutscene() {
	switch(state){
	    case 0:
	        state += 1;
	        Finish_Room_Transition(id);
	    break;
	    case 1:
	        state += 1;
	        Create_Dialogue(spr_Chaos_Portrait,sfx_Dialogue05,"Greetings,^ and congratulations on completing the demo.% It's been a long journey re-working the entire engine from scratch and revising the chapter 1 script.% That said,^ pending what is hopefully a quick port to GameMaker Stuido 2,^ the engine is feature complete,^ and an early beta build should be available soon.% For now I'll put you back in Ashenwood so that you can explore the town further.% If you're not already aware,^ Milkshake has a wander radius of 99,^ a Ring of Chicken is hidden somewhere in town,^ and enemies killed by a character named 'JOGURT' will do exactly what a Shining Force fan expects it to.%\nCheers!\n-Chaoswizard98",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 2:
	        state += 1;
	        Room_Transfer("Jason","Force",room_Ashenwood,"Egress");
	        instance_destroy();
	    break;
	}



}
