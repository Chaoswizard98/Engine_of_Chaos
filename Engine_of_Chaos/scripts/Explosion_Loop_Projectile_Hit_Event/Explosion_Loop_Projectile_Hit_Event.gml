function Explosion_Loop_Projectile_Hit_Event() {
	var _object = argument[0];//spell controller OR battle cutscene prop

	with(_object){
	    Create_Spell_Controller("End_Spell_Flash","Explosion_Loop",1,projectile_direction);
	}



}
