function Word_Wrap(_message, _width, _character, _force) {
	/*
	 **  Usage:
	 **      string_width_wrap(text,width,char,force)
	 **
	 **  Arguments:
	 **      text        string of text you want to wrap, string
	 **      width       maximum line width in pixels, real
	 **      char        line break character, string
	 **      force       if true, force line break if no spaces are present,
	 **                  if false, let lines overflow
	 **
	 **  Returns:
	 **      the given string, word wrapped to the given pixel width,
	 **      with line break characters inserted at the end of each line
	 **
	 **  GMLscripts.com
	 */
	{
	     var pos_space, pos_current, text_current, text_output;
	     pos_space = -1;
	     pos_current = 1;
	     text_current = _message;
	     if (is_real(_character)) _character = "\n";
	     text_output = "";
	     while (string_length(text_current) >= pos_current) {
	         if ((string_width(string_copy(text_current,1,pos_current)) > _width)) {
	             //if there is a space in this line then we can break there
	             if (pos_space != -1){
	                 text_output += string_copy(text_current,1,pos_space) + string(_character);
	                 //remove the text we just looked at from the current text string
	                 text_current = string_copy(text_current,pos_space+1,string_length(text_current)-(pos_space));
	                 pos_current = 1;
	                 pos_space = -1;
	             } else if (_force) {
	                 //if not, we can force line breaks
	                 text_output += string_copy(text_current,1,pos_current-1) + string(_character);
	                 //remove the text we just looked at from the current text string
	                 text_current = string_copy(text_current,pos_current,string_length(text_current)-(pos_current-1));
	                 pos_current = 1;
	                 pos_space = -1;
	             }
	         }
	         if (string_char_at(text_current,pos_current) == " ") pos_space = pos_current;
	         pos_current += 1;
	     }
	     if (string_length(text_current) > 0) text_output += text_current;
	     return text_output;
	}
}