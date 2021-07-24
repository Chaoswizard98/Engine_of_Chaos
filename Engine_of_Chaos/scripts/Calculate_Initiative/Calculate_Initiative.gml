function Calculate_Initiative() {
	/*
	(AGI * R) + r //Curtesy of Stordarth
	R is 7/8, 1, or 9/8.
	r is -1, 0, or 1.
	*/

	var _character = argument[0];

	var _R, _r;
	_R = round(random_range(7,9))/8;
	_r = round(random_range(-1,1));

	return floor((Get_Character_Agility("Local",_character,"Total")*_R)+_r);



}
