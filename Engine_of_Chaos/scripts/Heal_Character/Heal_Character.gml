function Heal_Character() {
	var _character = argument[0];
	var _damage = argument[1];


	_damage = min(_damage,(Get_Character_Max_Health("Local",_character,"Total")-Get_Character_Health("Local",_character,"Total")));
	Set_Character_Health("Local",_character,"Add",_damage);



}
