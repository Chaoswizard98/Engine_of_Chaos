function NPC_Dialogue_English() {
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
	    case "Advisor_Dialogue":
	        switch(_message_ID){
	            case "Default_Advisor_Greeting": return ("Hello " + _data1 + ". Did you need something?"); break;
	            case "Default_Advisor_Farewell": return ("Take it easy " + _data1 + "!"); break;
	            //case 'Default': return ("Sorry " + _data1 + ".#I can't talk right now.^#Please come back later."); break;
	        }
	    break;
    
	    case "NPC_Dialogue": 
	        switch(_message_ID){
	            //TEMP DEMO STUFF
	            case "Old_Woman_Bowie": return ("He thinks of you as his own grandson.%#Sometimes he may badger you, but that's because he loves you."); break;
	            case "Old_Man_Bowie": return ("Sir Astral is the wisest person in Granseal.%#He's such a great man, he opened a school all by himself.%#You must realize how lucky you are."); break;
	            case "Fake_Shopkeeper_Bowie": return ("Hi, boy! Good morning.#Are you going to school?%#Say, Sir Astral certainly is a great person.%#He even teaches a mischievous kid like you."); break;
	            case "Young_Man_Bowie": return ("Granseal's harbor is behind me.#All ships left early this morning."); break;
	            case "Jahas_Mom_Bowie": return ("Good morning BOWIE!#It's a wonderful day, isn't it?"); break;
            
	            case "Jamie": return ("Chasing chickens is fun!"); break;
	            case "Missing_Paper": return ("Hurry up and get that paper!"); break;
	            case "Castle_Guard": return ("Sorry bud.^ I can't let you through."); break;
            
            
	            //Ashenwood NPCs
	            case "Jasons_Mom": return ("Good Morning sweetie. Going out?%#Make sure you eat something before you go!"); break;
	            case "Jasons_Dad": return ("Hey there son! Don't mind me I'm just doing some woodworking.%#Oh you're going on another adventure?%#Have fun! Try not to die out there!"); break;
	            case "Jasons_Grandpa": return ("Hey there lad. I was about to tend to the animals.%#If you see Ol' Muleborne, tell him I said hi!"); break; 
	            case "Cieras_Mom": return ("I know she can handle herself, but I still worry about her.%#Keep her safe ok?"); break;
	            case "Cieras_Dad": return ("Good Morning " + _data1 + "!%#CIERA said you guys were headed off on another adventure.%#You kids look out for each other out there!"); break;
	            case "Cieras_Middle_Brother": return ("Phew!^ This is hard work!"); break;
	            case "Cieras_Older_Brother": return ("Hey there " + _data1 + "!%#I'm just taking a quick break before I get back to the fields.%#You're going on another adventure?%#Be sure to keep my sister safe, ok?"); break;
	            case "Maxs_Mom": return ("Going on another adventure " + _data1 + "?%#Make sure MAX doesnt get into too much trouble ok?"); break;
            
	            case "Muleborne": return ("Hey there " + _data1 + ".%#I heard you were going on another adventure.%#Have you talked to my granddaughter yet?%#She said she had a gift for you."); break;
	            case "Jess": return ("Stay safe out there okay?"); break;
	            case "Ashenwood_Villager_1": return ("Don't mind me, I'm just doing a routine patrol.%#Keeping an eye out for monsters and all that."); break;
	            case "Ashenwood_Villager_2": return ("I'm getting better,^ but I'm still struggling with proper edge alignment.%#At this rate I'll never become a knight.%#That won't stop me from trying though!"); break;
	            case "Ashenwood_Villager_3": return ("I heard you were working on your swordsmanship.%#How's that going?"); break;
	            case "Ashenwood_Kid_1": return ("Some adventurers stopped by the inn earlier.%#I think I heard them talking about goblins."); break;
	            case "Ashenwood_Kid_2": return ("Did you ever eat a bug?%#They're kind of crunchy..."); break;
	            case "Ashenwood_Kid_3": return ("I saw a bunny the other day!%#It was cute and fluffy but it ran away when I got close..."); break;
	            case "Ashenwood_Innkeeper": return ("Be careful if you're headed east.%#The wolf population can get a bit out of hand this time of year."); break;
	            case "Granny_Gladys": return ("Hey there " + _data1 + ".%#If you need any healing while you're in town,^ you make sure you stop by ol' Granny Gladys.%#I'm always happy to help!"); break;
	            case "Ashenwood_Adventurer_1": return ("That ogre we fought sure was tough!%#He shattered my shield and sent me flying with one swing!"); break;
	            case "Ashenwood_Adventurer_2": return ("My friend and I just took down an ogre living in a cave up north.%#He was living with a group of around 50 goblins.%#Apparently they provided him with food and in turn, he offered his protection.%#It was a tough fight,^ but we managed to take them all out!"); break;
	            case "Ashenwood_Traveler": return ("I traveled here all the way from Merillian City just to get my hands on a few drinks.%#Seriously, the wine you make here is out of this world!"); break;
            
	            case "Cow": return ("Mooooooo!"); break;
            
	            case "Default": return ("Placeholder NPC Dialogue."); break;
	        }
	    break;
    
	    //default: return ("Unregistered Dialogue Message."); break;
	}

	return ("Unregistered Dialogue Message.");



}
