function Set_Shader() {
	//Enables a shader for a specific object
	switch(shader_type){
	    case "sh_Spell_Cast_Flash": 
	        shader_set(sh_Spell_Cast_Flash);
	        shader_set_uniform_f(shader_get_uniform(sh_Spell_Cast_Flash,"colorIn"),shader_color_in[0],shader_color_in[1],shader_color_in[2],shader_color_in[3]);//shader variable,r,g,b,a
	        shader_set_uniform_f(shader_get_uniform(sh_Spell_Cast_Flash,"colorOut"),shader_color_out[0],shader_color_out[1],shader_color_out[2],shader_color_out[3]);
	        shader_set_uniform_f(shader_get_uniform(sh_Spell_Cast_Flash,"colorTolerance"),shader_tolerance[0],shader_tolerance[1],shader_tolerance[2],shader_tolerance[3]);
	        shader_set_uniform_f(shader_get_uniform(sh_Spell_Cast_Flash,"colorBlend"),1.0);
	    break;
	}
}