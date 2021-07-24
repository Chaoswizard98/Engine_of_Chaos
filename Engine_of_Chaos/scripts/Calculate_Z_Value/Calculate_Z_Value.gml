function Calculate_Z_Value() {
	/*If Hero is 2 Levels higher than monster OR LESS: z=50
	If Hero is 3 Levels higher than monster: z=40
	If Hero is 4 Levels higher than monster: z=30
	If Hero is 5 Levels higher than monster: z=20
	If Hero is 6 Levels higher than monster: z=10
	If Hero is 7 Levels higher than monster OR MORE: z=0*/

	var _attacker = argument[0];
	var _target = argument[1];

	var _attacker_level = Get_Character_Level("Local",_attacker,"Total");
	var _target_level = Get_Character_Level("Local",_target,"Total");

	var _level_difference = max((_attacker_level - _target_level),2);
	var _z_value = 0;

	switch(_level_difference){
	    case 2: _z_value = 50; break;
	    case 3: _z_value = 40; break;
	    case 4: _z_value = 30; break;
	    case 5: _z_value = 20; break;
	    case 6: _z_value = 10; break;
	    default: _z_value = 1; break;
	}

	return (_z_value * global.Xp_Modifier);



}
