function Calculate_Physical_Damage() {
	var _attacker = argument[0];
	var _target = argument[1];
	var _has_crit = argument[2];
	var _has_counter = argument[3];


	//(((Attack *Crit)-Defense)*Counter)*Land Effect
	var _attack = Get_Character_Attack("Local",_attacker,"Total");
	var _defense = Get_Character_Defense("Local",_target,"Total");
	var _counter = 1-(.75 * _has_counter);
	var _land_effect = (1-Get_Land_Effect(Get_Terrain_Type(_target.x,_target.y),Get_Character_Movement_Type("Local",_target,"Total")));
	var _crit = 1+(.25 * _has_crit);
	var _physical_damage = max((_attack - _defense),0);
	var _damage = 0;

	//Get Resistances
	var _fire_resistance = (1 - Get_Character_Fire_Resistance("Local",_target,"Total"));
	var _ice_resistance = (1 - Get_Character_Ice_Resistance("Local",_target,"Total"));
	var _water_resistance = (1 - Get_Character_Water_Resistance("Local",_target,"Total"));
	var _lightning_resistance = (1 - Get_Character_Lightning_Resistance("Local",_target,"Total"));
	var _wind_resistance = (1 - Get_Character_Wind_Resistance("Local",_target,"Total"));
	var _earth_resistance = (1 - Get_Character_Earth_Resistance("Local",_target,"Total"));
	var _light_resistance = (1 - Get_Character_Light_Resistance("Local",_target,"Total"));
	var _shadow_resistance = (1 - Get_Character_Shadow_Resistance("Local",_target,"Total"));
	var _magic_resistance = (1 - Get_Character_Magic_Resistance("Local",_target,"Total"));

	//Get Damages
	var _fire_damage = max(floor((Get_Character_Fire_Damage("Local",_attacker,"Total") * _fire_resistance) * _magic_resistance),0);
	var _ice_damage = max(floor((Get_Character_Ice_Damage("Local",_attacker,"Total") * _ice_resistance) * _magic_resistance),0);
	var _water_damage = max(floor((Get_Character_Water_Damage("Local",_attacker,"Total") * _water_resistance) * _magic_resistance),0);
	var _lightning_damage = max(floor((Get_Character_Lightning_Damage("Local",_attacker,"Total") * _lightning_resistance) * _magic_resistance),0);
	var _wind_damage = max(floor((Get_Character_Wind_Damage("Local",_attacker,"Total") * _wind_resistance) * _magic_resistance),0);
	var _earth_damage = max(floor((Get_Character_Earth_Damage("Local",_attacker,"Total") * _earth_resistance) * _magic_resistance),0);
	var _light_damage = max(floor((Get_Character_Light_Damage("Local",_attacker,"Total") * _light_resistance) * _magic_resistance),0);
	var _shadow_damage = max(floor((Get_Character_Shadow_Damage("Local",_attacker,"Total") * _shadow_resistance) * _magic_resistance),0);

	var _magic_damage = max(floor(Get_Character_Magic_Damage("Local",_attacker,"Total") * _magic_resistance),0);
	var _void_damage = max(floor(Get_Character_Void_Damage("Local",_attacker,"Total")),0);


	_damage = floor((((_physical_damage + _fire_damage + _ice_damage + _water_damage + _lightning_damage + _wind_damage + _earth_damage + _light_damage + _shadow_damage + _magic_damage + _void_damage)*_crit)*_counter)*_land_effect);
	_damage = max(_damage,1);//always do at least 1 damage
	return _damage;



}
