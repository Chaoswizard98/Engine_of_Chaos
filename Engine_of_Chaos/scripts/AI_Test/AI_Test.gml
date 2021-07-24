function AI_Test() {
	var _character = argument[0];
	var _skip_action = false;

	_skip_action = AI_Cast_Spell(_skip_action,_character,"Default",6,-99,"Blaze",1);
	_skip_action = AI_Attack_Target(_skip_action,_character,"Default",6,-99);//<skip_action>, <character>, <formula>, <speed>, <min_threat>
	//_skip_action = AI_Flee(_skip_action,_character,6,60);
	_skip_action = AI_Move_Towards_Nearest_Target(_skip_action,_character,"Enemy",2,60);
	//_skip_action = AI_Follow_Target(_skip_action,_character,Get_Character('Karina','Default'),6);//<skip_action>, <character>, <target>, <speed>, <search_range>
	//_skip_action = AI_Move_To_Location(_skip_action,_character,144,96,2);//<skip_action>, <character>, <x>, <y>, <speed>, <search_range>
	//_skip_action = AI_Wander(_skip_action,_character,3,0,2,'Origin');//<skip_action>, <character>, <wander_range>, <min>, <max>, <formula>
	_skip_action = AI_Do_Nothing(_skip_action,_character);//<skip_action>, <character>



}
