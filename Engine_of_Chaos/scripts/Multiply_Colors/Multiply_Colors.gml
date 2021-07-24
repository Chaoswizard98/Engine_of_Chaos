function Multiply_Colors() {
	//Merges 2 colors by multiplying their values (mimics image_blend)
	var _color_1 = argument[0];
	var _color_2 = argument[1];
	var _new_color;

	_new_color = make_colour_rgb((colour_get_red(_color_1) * colour_get_red(_color_2)) / 255,(colour_get_green(_color_1) * colour_get_green(_color_2)) / 255,(colour_get_blue(_color_1) * colour_get_blue(_color_2)) / 255);

	return _new_color;



}
