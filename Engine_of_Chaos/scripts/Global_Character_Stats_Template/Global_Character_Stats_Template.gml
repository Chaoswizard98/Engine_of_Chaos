function Global_Character_Stats_Template() {
	//toss default stats for all characters here.
	//This way you dont need to dupe shared variables (like status ailments, resistances, etc)

	var i = argument[0];

	//================
	//Character Info =
	//================
	global.character_ID[i] = "none";
	global.Name[i] = "none";
	global.Level[i] = 1;
	global.Level_Scheme[i] = "Default";
	global.Experience[i] = 0;

	//===========================
	//Stuff set by level scheme =
	//===========================
	global.Attack[i] = 0;
	global.Defense[i] = 0;
	global.Agility[i] = 0;
	global.Max_Health[i] = 0;
	global.Max_Magic[i] = 0;
	global.Current_Health[i] = 0;
	global.Current_Magic[i] = 0;

	global.Movement_Range[i] = 0;
	global.Movement_Type[i] = "Foot";

	//===============
	//Generic Stats =
	//===============
	global.Accuracy[i] = 100;//chance to hit
	global.Evasion[i] = 6.25;//chance to dodge
	global.Crit[i] = 6.25;//chance to crit
	global.Counter[i] = 6.25;//chance to counter
	global.Multi_Strike[i] = 6.25;//chance to multi-attack
	global.Special_Attack[i] = 0;//chance to special attack
	global.Special_Attack_Type[i] = "none";//Spec type

	global.Max_Attack_Range[i] = 1;//how far out can we attack?
	global.Min_Attack_Range[i] = 0;//what's our range limit? (archers cant hit next to them, though that's typically handled via item stats)
	global.Attack_Size[i] = 1;//Basic Attack AoE
	global.Attack_Pattern[i] = "Default";//Basic attack AoE Formula.
	global.Attack_Range_Type[i] = "Default";//Attack Range Generation. (default, line, etc)
	global.Attack_Target_Type[i] = "Enemy";//What does our basic attack target?
	global.Attack_Select_Type[i] = "Enemy";//What does our basic attack actually run damage on? (Target self, but AoE hits surrounding enemies for example)
	global.Turns[i] = 1;//how many turns do they get per round in battle?

	//===============
	//Faction Stats =
	//===============
	global.Faction[i] = "none";//the current party they're in
	global.In_Battle_Party[i] = false;//are they in the battle party?
	global.Can_Leave_Battle_Party[i] = true;//are they allowed to leave the battle party? (Leaders cannot)

	//===================
	//Fun Tracked Stats =
	//===================
	global.Kills[i] = 0;
	global.Deaths[i] = 0;

	//=========
	//sprites =
	//=========
	//global.Overworld_Sprite_ID[i] = "none";
	//global.Overworld_Sprite_ID_Override[i] = "none";
	//global.Portrait_ID[i] = "none";
	//global.Portrait_ID_Override[i] = "none";
	//global.Voice_ID[i] = "none";
	//global.Voice_ID_Override[i] = "none";
	//global.Battle_Cutscene_Sprite_ID[i] = "none";
	//global.Battle_Cutscene_Sprite_ID_Override[i] = "none";
    
	//=======
	//Magic =
	//=======
	global.Spells[i,0] = "none";
	global.Spells[i,1] = "none";
	global.Spells[i,2] = "none";
	global.Spells[i,3] = "none";
	global.Spell_Level[i,0] = 0;
	global.Spell_Level[i,1] = 0;
	global.Spell_Level[i,2] = 0;
	global.Spell_Level[i,3] = 0;

	//=======
	//Items =
	//=======
	global.Items[i,0] = "none";
	global.Items[i,1] = "none";
	global.Items[i,2] = "none";
	global.Items[i,3] = "none";
	global.Equipment[i,0] = -1;
	global.Equipment[i,1] = -1;

	//========================
	//Damages and Resistances=
	//========================
	global.Fire_Damage[i] = 0;
	global.Ice_Damage[i] = 0;
	global.Water_Damage[i] = 0;
	global.Lightning_Damage[i] = 0;
	global.Wind_Damage[i] = 0;
	global.Earth_Damage[i] = 0;
	global.Light_Damage[i] = 0;
	global.Shadow_Damage[i] = 0;
	global.Magic_Damage[i] = 0;//typeless magic damage
	global.Void_Damage[i] = 0;//un-resistable damage

	global.Fire_Resistance[i] = 0;
	global.Ice_Resistance[i] = 0;
	global.Water_Resistance[i] = 0;
	global.Lightning_Resistance[i] = 0;
	global.Wind_Resistance[i] = 0;
	global.Earth_Resistance[i] = 0;
	global.Light_Resistance[i] = 0;
	global.Shadow_Resistance[i] = 0;
	global.Magic_Resistance[i] = 0;//Generic magic resistance


	//============
	//Stat Buffs =
	//============
	global.Attack_Up[i,0] = 0;//potency
	global.Attack_Up[i,1] = 0;//turns remaining
	global.Attack_Up[i,2] = 0;//resistance
	global.Attack_Up[i,3] = 0;//infliction_chance
	global.Attack_Up[i,4] = 0;//infliction_potency
	global.Attack_Up[i,5] = 0;//infliction_turns_remaining

	global.Defense_Up[i,0] = 0;//potency
	global.Defense_Up[i,1] = 0;//turns remaining
	global.Defense_Up[i,2] = 0;//resistance
	global.Defense_Up[i,3] = 0;//infliction_chance
	global.Defense_Up[i,4] = 0;//infliction_potency
	global.Defense_Up[i,5] = 0;//infliction_turns_remaining

	global.Agility_Up[i,0] = 0;//potency
	global.Agility_Up[i,1] = 0;//turns remaining
	global.Agility_Up[i,2] = 0;//resistance
	global.Agility_Up[i,3] = 0;//infliction_chance
	global.Agility_Up[i,4] = 0;//infliction_potency
	global.Agility_Up[i,5] = 0;//infliction_turns_remaining

	global.Movement_Up[i,0] = 0;//potency
	global.Movement_Up[i,1] = 0;//turns remaining
	global.Movement_Up[i,2] = 0;//resistance
	global.Movement_Up[i,3] = 0;//infliction_chance
	global.Movement_Up[i,4] = 0;//infliction_potency
	global.Movement_Up[i,5] = 0;//infliction_turns_remaining

	//===============
	//Stat De-Buffs =
	//===============
	global.Attack_Down[i,0] = 0;//potency
	global.Attack_Down[i,1] = 0;//turns remaining
	global.Attack_Down[i,2] = 0;//resistance
	global.Attack_Down[i,3] = 0;//infliction_chance
	global.Attack_Down[i,4] = 0;//infliction_potency
	global.Attack_Down[i,5] = 0;//infliction_turns_remaining

	global.Defense_Down[i,0] = 0;//potency
	global.Defense_Down[i,1] = 0;//turns remaining
	global.Defense_Down[i,2] = 0;//resistance
	global.Defense_Down[i,3] = 0;//infliction_chance
	global.Defense_Down[i,4] = 0;//infliction_potency
	global.Defense_Down[i,5] = 0;//infliction_turns_remaining

	global.Agility_Down[i,0] = 0;//potency
	global.Agility_Down[i,1] = 0;//turns remaining
	global.Agility_Down[i,2] = 0;//resistance
	global.Agility_Down[i,3] = 0;//infliction_chance
	global.Agility_Down[i,4] = 0;//infliction_potency
	global.Agility_Down[i,5] = 0;//infliction_turns_remaining

	global.Movement_Down[i,0] = 0;//potency
	global.Movement_Down[i,1] = 0;//turns remaining
	global.Movement_Down[i,2] = 0;//resistance
	global.Movement_Down[i,3] = 0;//infliction_chance
	global.Movement_Down[i,4] = 0;//infliction_potency
	global.Movement_Down[i,5] = 0;//infliction_turns_remaining

	//=================
	//Status Ailments =
	//=================
	global.Flight[i,0] = 0;//potency
	global.Flight[i,1] = 0;//turns remaining
	global.Flight[i,2] = 0;//resistance
	global.Flight[i,3] = 0;//infliction_chance
	global.Flight[i,4] = 0;//infliction_potency
	global.Flight[i,5] = 0;//infliction_turns_remaining

	global.Poison[i,0] = 0;//potency
	global.Poison[i,1] = 0;//turns remaining
	global.Poison[i,2] = 25;//resistance
	global.Poison[i,3] = 0;//infliction_chance
	global.Poison[i,4] = 0;//infliction_potency
	global.Poison[i,5] = 0;//infliction_turns_remaining

	global.Paralysis[i,0] = 0;//potency
	global.Paralysis[i,1] = 0;//turns remaining
	global.Paralysis[i,2] = 25;//resistance
	global.Paralysis[i,3] = 0;//infliction_chance
	global.Paralysis[i,4] = 0;//infliction_potency
	global.Paralysis[i,5] = 0;//infliction_turns_remaining

	global.Silence[i,0] = 0;//potency
	global.Silence[i,1] = 0;//turns remaining
	global.Silence[i,2] = 25;//resistance
	global.Silence[i,3] = 0;//infliction_chance
	global.Silence[i,4] = 0;//infliction_potency
	global.Silence[i,5] = 0;//infliction_turns_remaining

	global.Sleep[i,0] = 0;//potency
	global.Sleep[i,1] = 0;//turns remaining
	global.Sleep[i,2] = 25;//resistance
	global.Sleep[i,3] = 0;//infliction_chance
	global.Sleep[i,4] = 0;//infliction_potency
	global.Sleep[i,5] = 0;//infliction_turns_remaining

	global.Stun[i,0] = 0;//potency
	global.Stun[i,1] = 0;//turns remaining
	global.Stun[i,2] = 25;//resistance
	global.Stun[i,3] = 0;//infliction_chance
	global.Stun[i,4] = 0;//infliction_potency
	global.Stun[i,5] = 0;//infliction_turns_remaining

	global.Petrify[i,0] = 0;//potency
	global.Petrify[i,1] = 0;//turns remaining
	global.Petrify[i,2] = 25;//resistance
	global.Petrify[i,3] = 0;//infliction_chance
	global.Petrify[i,4] = 0;//infliction_potency
	global.Petrify[i,5] = 0;//infliction_turns_remaining

	global.Bleed[i,0] = 0;//potency
	global.Bleed[i,1] = 0;//turns remaining
	global.Bleed[i,2] = 25;//resistance
	global.Bleed[i,3] = 0;//infliction_chance
	global.Bleed[i,4] = 0;//infliction_potency
	global.Bleed[i,5] = 0;//infliction_turns_remaining

	global.Magic_Immunity[i,0] = 0;//potency
	global.Magic_Immunity[i,1] = 0;//turns remaining
	global.Magic_Immunity[i,2] = 0;//resistance
	global.Magic_Immunity[i,3] = 0;//infliction_chance
	global.Magic_Immunity[i,4] = 0;//infliction_potency
	global.Magic_Immunity[i,5] = 0;//infliction_turns_remaining

	global.Snare[i,0] = 0;//potency
	global.Snare[i,1] = 0;//turns remaining
	global.Snare[i,2] = 25;//resistance
	global.Snare[i,3] = 0;//infliction_chance
	global.Snare[i,4] = 0;//infliction_potency
	global.Snare[i,5] = 0;//infliction_turns_remaining

	global.Confusion[i,0] = 0;//potency
	global.Confusion[i,1] = 0;//turns remaining
	global.Confusion[i,2] = 25;//resistance
	global.Confusion[i,3] = 0;//infliction_chance
	global.Confusion[i,4] = 0;//infliction_potency
	global.Confusion[i,5] = 0;//infliction_turns_remaining

	global.Berserk[i,0] = 0;//potency
	global.Berserk[i,1] = 0;//turns remaining
	global.Berserk[i,2] = 25;//resistance
	global.Berserk[i,3] = 0;//infliction_chance
	global.Berserk[i,4] = 0;//infliction_potency
	global.Berserk[i,5] = 0;//infliction_turns_remaining

	global.Curse_Suppression[i,0] = 0;//potency
	global.Curse_Suppression[i,1] = 0;//turns remaining
	global.Curse_Suppression[i,2] = 0;//resistance
	global.Curse_Suppression[i,3] = 0;//infliction_chance
	global.Curse_Suppression[i,4] = 0;//infliction_potency
	global.Curse_Suppression[i,5] = 0;//infliction_turns_remaining



}
