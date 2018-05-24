Properties = {

	fonts = {
		default = {name = hash("Example")},							-- Set fonts for DEF_CHAT to use
		Second_Example = {name = hash("Second_Example")}
	},

	stamp_text_instant = true,										-- Set stamp property. (True) instant messasge. (False) stamped message.

	caret_speed = 0.48,												-- Set timing properties. Floor value is monitor refresh rate.
	stamp_speed = 0.001,

	size = {

		frame = vmath.vector3(400, 125, 0),
		commandline = vmath.vector3(400, 25, 0)

	},

	frame_color = vmath.vector4(0,0,0,0.5),

	commandline_color = {
		active = vmath.vector4(.8,.8,.8,0.9),					-- Set command line color.
		idle = vmath.vector4(.2,.2,.2,0.5)
	},

	font_color = {
		in_frame = vmath.vector4(1,1,1,1),
		in_commandline = vmath.vector4(0,0,0,1)
	},

	commands = {													-- Commands to be executed after '>' key. Runs function named under 'func'.

		{
			command = "clear",
			func = "clear_chat",
			args = {"amount"}
		}

	}
	
}