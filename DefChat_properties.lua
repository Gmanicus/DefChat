Properties = {

	fonts = {
		default = {name = hash("Example")},							-- Set fonts for DEF_CHAT to use
		Second_Example = {name = hash("Second_Example")}
	},

	commands = {													-- Commands to be executed after '>' key. Runs function named under 'func'.

		{
			command = "clear",
			func = "clear_chat",
			args = {"amount"}
		}

	},

	stamp_text_instant = true,										-- Set stamp property. (True) instant messasge. (False) stamped message.

	caret_speed = 0.48,												-- Set timing properties. Floor value is monitor refresh rate.
	stamp_speed = 0.001,

	commandline_color = vmath.vector4(.8,.8,.8,0.3)					-- Set command line color.
	
}