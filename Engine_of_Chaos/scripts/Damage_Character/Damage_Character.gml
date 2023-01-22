function Damage_Character(_character,_damage){
	if(!(global.Invincibility && Get_Faction_Stats(_character.faction,"Relation","Player") = "Ally")){
		Set_Character_Health("Local",_character,"Remove",_damage);
	}
}