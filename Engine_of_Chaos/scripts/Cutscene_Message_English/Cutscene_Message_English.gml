function Cutscene_Message_English() {
	var _menu = argument[0];//Menu we're calling from
	var _message_ID = argument[1];//Message to look up

	//Extra data provided by the menu object
	//things like character names, items, prices, etc.
	var _data1 = argument[2];
	var _data2 = argument[3];
	var _data3 = argument[4];
	var _data4 = argument[5];
	var _data5 = argument[6];


	switch(_menu){
	    //=================
	    //Party_Management=
	    //=================
	    case "Cutscene_01":
	        switch(_message_ID){
	            case "Greeting": return ("Hello " + _data1 + ". Did you need something?"); break;
	            case "Farewell": return ("Take it easy " + _data1 + "!"); break;
	            case "Default": return ("Sorry " + _data1 + ".#I can't talk right now.^#Please come back later."); break;
	        }
	    break;
    
	    case "NPC_Dialogue": 
	        switch(_message_ID){
	            case "Old_Woman_Bowie": return ("He thinks of you as his own grandson.%#Sometimes he may badger you, but that's because he loves you."); break;
	            case "Old_Man_Bowie": return ("Sir Astral is the wisest person in Granseal.%#He's such a great man, he opened a school all by himself.%#You must realize how lucky you are."); break;
	            case "Fake_Shopkeeper_Bowie": return ("Hi, boy! Good morning.#Are you going to school?%#Say, Sir Astral certainly is a great person.%#He even teaches a mischievous kid like you."); break;
	            case "Young_Man_Bowie": return ("Granseal's harbor is behind me.#All ships left early this morning."); break;
	            case "Jahas_Mom_Bowie": return ("Good morning BOWIE!#It's a wonderful day, isn't it?"); break;
            
	            case "Jamie": return ("Chasing chickens is fun!"); break;
	            case "Missing_Paper": return ("Hurry up and get that paper!"); break;
	            case "Castle_Guard": return ("Sorry bud.^ I can't let you through."); break;
            
	            case "Default": return ("Placeholder NPC Dialogue."); break;
	        }
	    break;
	}



}
