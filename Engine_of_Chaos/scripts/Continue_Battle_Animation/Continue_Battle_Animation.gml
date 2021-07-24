function Continue_Battle_Animation() {
	var _object = argument[0];//object performing the animation

	_object.image_speed = Get_Battle_Cutscene_Sprite_Stats(Get_Character_Battle_Cutscene_Sprite("Local",_object.character,"Total"),_object.animation,"Animation_Speed");



}
