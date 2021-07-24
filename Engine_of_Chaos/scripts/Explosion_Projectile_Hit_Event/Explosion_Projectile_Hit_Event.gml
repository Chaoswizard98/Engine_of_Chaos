function Explosion_Projectile_Hit_Event() {
	var _object = argument[0];//spell controller OR battle cutscene prop

	with(_object){
	    Create_Battle_Cutscene_Prop("Explosion_Big",x_pos,y_pos,0,mirror,false,false,sfx_Boom);
	}



}
