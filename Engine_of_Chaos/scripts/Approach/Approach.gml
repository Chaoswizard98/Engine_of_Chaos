/// Approach(a, b, amount)
// Moves "a" towards "b" by "amount" and returns the result
// Nice bcause it will not overshoot "b", and works in both directions
// Examples:
//      speed = Approach(speed, max_speed, acceleration);
//      hp = Approach(hp, 0, damage_amount);
//      hp = Approach(hp, max_hp, heal_amount);
//      x = Approach(x, target_x, move_speed);
//      y = Approach(y, target_y, move_speed);
 
function Approach(_a,_b,_ammount){
	if(_a < _b){
	    _a += _ammount;
	    if(_a > _b){
	        return _b;
		}
	}
	else{
	    _a -= _ammount;
	    if(_a < _b){
	        return _b;
		}
	}
	return _a;
}