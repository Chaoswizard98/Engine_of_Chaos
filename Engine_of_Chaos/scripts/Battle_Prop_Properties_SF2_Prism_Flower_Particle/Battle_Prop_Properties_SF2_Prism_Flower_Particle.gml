function Battle_Prop_Stats_SF2_Prism_Flower_Particle(_stat){
	var _sprite = choose(spr_SF2_Prism_Flower_Particle_1,spr_SF2_Prism_Flower_Particle_2,spr_SF2_Prism_Flower_Particle_3);
	var _animation_speed = 0;
	var _draw_location = "Highest";
	var _instant_destruction = false;//immediately destroys on spell controller destruction
	
	switch(_stat){
		case "Sprite": return _sprite; break;	
		case "Animation_Speed": return _animation_speed; break;
		case "Draw_Location": return _draw_location; break;
		case "Instant_Destruction": return _instant_destruction; break;
	}
}