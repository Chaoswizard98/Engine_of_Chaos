function Cutscene_Messages_English(_cutscene_object,_message_ID) {
	var _cutscene = _cutscene_object.script_ID;
	var _player_name = Get_Character_Name("Local",_cutscene_object.player_trigger,"Total");
	
	switch(_cutscene){
		case "Jess_Dialogue":
			switch(_message_ID){
				case "01": return ("Oh! Hey "+_player_name+"!^ I'm glad you stopped by!% I wanted to give you something before you left for your next adventure."); break;
				case "02": return ("-JESS gives "+_player_name+" a "+Get_Item_Stats("SF2_Healing_Seed","Item_Name")+"-"); break;
				case "03": return "Thanks JESS."; break;
				case "04": return "Stay safe out there okay?"; break;
			}
		break;
		case "Found_Fluffy_Cutscene":
			switch(_message_ID){
				case "01": return ("There appears to be a cat in this barrel.%\nWould you like to take it with you?@"); break;
				case "02": return ("No one in your party can hold it!"); break;
				case "03": return "The party obtains FLUFFY."; break;
			}
		break;
		case "Return_Fluffy_Cutscene":
			switch(_message_ID){
				case "01": return ("Meow!"); break;
				case "02": return ("FLUFFY!"); break;
				case "03": return "I’m so glad you’re alright!"; break;
				case "04": return "Where did you run off to this time?"; break;
				case "05": return "Thank you so much for finding FLUFFY!%\nI know it isn't much,^ but please accept this small reward for bringing him back to me."; break;
				case "06": return "-JUDY gives "+_player_name+" the Agility Ring-"; break;
				case "07": return "Thanks again young man!"; break;
			}
		break;
		case "AU_Hillford_Adventurer_Advice_Cutscene":
			switch(_message_ID){
				case "01": return ("Hey there kid.^ Are you by chance an adventurer?@"); break;
				case "02": return ("Hah! I knew it."); break;
				case "03": return ("Hah! Don’t mess with me kid,^ I know an adventurer when I see one."); break;
				case "04": return ("\nYou can always spot an adventurer by the look in their eyes and the way they carry themselves.%\nAs a veteran I feel as though I should give you some professional advice,^ but honestly,^ that's not quite my style."); break;
				case "05": return ("Stick with it kid.^ It's the best damned profession around."); break;
			}
		break;
		case "AU_Hillford_Villager_03_Cutscene":
			switch(_message_ID){
				case "01": return ("It's a long story,^ but our priest is actually quite skilled with a sword.^ Would you like to hear about it?@"); break;
				case "02": return ("Years ago our town was attacked by a bunch of bandits while our priest was giving a sermon.%\nHe calmly stepped outside and told them to leave or they'd face the wrath of our goddess.%\nAs you can imagine,^ a group of around 20 bandits weren't about to be intimidated by a random priest.%\nWhen the first bandit tried to attack him,^ he just threw the guy to the ground,^ picked up his sword,^ and effortlessly cut the rest down where they stood.%\nThen he just walked back inside and finished his sermon as if nothing had happened.%\nThe man's a living legend!"); break;
				case "03": return ("Oh well, perhaps some other time then."); break;
			}
		break;
		case "AU_Hillford_Inn_Cutscene":
			switch(_message_ID){
				case "01": return ("I want the strongest ale you have!"); break;
				case "02": return ("Sure thing.^ One dwarven ale coming right up."); break;
				case "03": return ("Here you are sir.^ That'll be 20 Gold."); break;
				case "04": return ("-MAX hands the bartender 20 Gold-"); break;
				case "05": return ("Oh, we don't have any Gold."); break;
				case "06": return ("Sorry, but I'm not giving this stuff out for free you know."); break;
				case "07": return ("MAX. Did you really just spend 20 Gold on a drink?"); break;
				case "08": return ("Well yeah, I was thirsty."); break;
				case "09": return ("Well that's a shame."); break;
				case "10": return ("Oh that reminds me!^ KIRA's going to be so jealous when she finds out how many wolves we killed."); break;
				case "11": return ("But we didn't kill any wolves..."); break;
				case "12": return ("Oops. Dropped my beer."); break;
				
				case "13": return ("Hey! What was that for!?"); break;
				case "14": return ("Oh hey KIRA."); break;
				case "15": return ("My hand slipped."); break;
				
				case "16": return ("Yeah right! You did that on purpose!^ And you made me spill my drink!"); break;
				case "17": return ("Then you should have held on tighter."); break;
				
				case "18": return ("Yeah right!^ You did that on purpose!"); break;
				case "19": return ("Then you should have dodged."); break;
				
				case "20": return ("Somehow when I heard the commotion from my room,^ I figured it must be you guys."); break;
				case "21": return ("Seriously.^ Do you two ever stop fighting?"); break;
				case "22": return ("Oh!^ It's good to see you again KARINA."); break;
				case "23": return ("Likewise."); break;
				case "24": return ("I'm surprised to see you here early."); break;
				case "25": return ("Of course I'm here early.^ I'm smart enough to know that one of you always insists on leaving as soon as possible."); break;
				case "26": return ("It's not like it takes a genius to figure that out."); break;
				case "27": return ("It is a shame though.^ I was kind of hoping to lose the extra baggage and leave the princess behind."); break;
				case "28": return ("Watch your tongue wildling or I'll cut it out."); break;
				case "29": return ("I'll cut you down before you can even cast a single spell."); break;
				case "30": return ("If you want to incur the wrath of every knight in Aveimore, you're welcome to try."); break;
				case "31": return ("Well if they're anything like the ones that escort your trade caravans,^ then I'm not worried."); break;
				case "32": return ("How about we try not to get kicked out of the inn this time?"); break;
				case "33": return ("Fine.^^ I'll just have to kill the princess some other time."); break;
				case "34": return ("Or you two could try getting along for once."); break;
				case "35": return ("That will never happen."); break;
				case "36": return ("Should we get going then?"); break;
				case "37": return ("Yeah.^ Moorenfirch is just through the mines."); break;
				case "38": return ("Oh man!^ I can't wait to see GUILDMASTER again!"); break;
				case "39": return ("Please try and contain your excitement this time..."); break;
			}
		break;
		
		case "Battle_02_Intro_Cutscene":
			switch(_message_ID){
				case "01": return ("Are those creatures what I think they are?"); break;
				case "02": return ("Yeah.^ Much like the gems here,^ wisps are a form of condensed magic energy.%\nAlthough they are somewhat sentient,^ as long as we don't harm them,^ they won't attack us."); break;
				case "03": return ("With a resource like this,^ it's no wonder your kingdom is known for its magecraft."); break;
				case "04": return ("Guys! I got one!"); break;
				case "05": return ("How do you always manage to make things worse?"); break;
				case "06": return ("Look on the bright side!^ It'll be more fun!"); break;
				case "07": return ("You are such a pain."); break;
			}
		break;
		
		case "Old_Rope_Cutscene":
			switch(_message_ID){
				case "01": return ("-Max tries to open the chest-"); break;
				case "02": return ("-But the chest is locked-"); break;
				case "03": return ("Hey Jason give me your sword!"); break;
				case "04": return ("Why?"); break;
				case "05": return ("So I can smash the lock!"); break;
				case "06": return ("Knowing you,^ you'll break the sword and whatever is inside with your attempt."); break;
				case "07": return ("Come on.^ I got this!"); break;
				case "08": return ("Sorry,^ but that's not going to happen."); break;
				case "09": return ("You people are helpless."); break;
				case "10": return ("-Kira sticks a short wire into the lock-"); break;
				case "11": return ("-The chest contains rope-"); break;
				case "12": return ("What a surprise.^ A useless old rope."); break;
				case "13": return ("Well,^ at least it's better than nothing."); break;
				case "14": return ("If you want to carry that dirty old rope around with you,^ be my guest."); break;
				case "15": return ("You're just jealous because you don't have a dirty old rope to carry."); break;
				case "16": return ("Okay I see where this is going.^ Let's get out of here before you two start killing each other again."); break;
			}
		break;
	}
}