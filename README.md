# DefChat
Chat asset for the Defold engine

![alt text](https://github.com/GamingBud/DefChat/blob/master/misc/DEF_CHATvs.555.gif)

Untested on non-Windows devices.

-----------------------------------------------------------------------------------------------
DefChat is a chat asset for any Defold project. It activates on press of the ‘enter’ key, which allows you to start typing. Once the ‘enter’ key is pressed again the message is read and fit into the space above it.

Other scripts can have their messages printed through the message-passing system as well. This allows for easy adaptability, Multiplayer projects especially.

From Character-Precise linebreaking to the ability to stamp messages overtime, it’s got it.

------

# Installation Guide

To install DefChat, you need to add it as a library dependency. Click the "Copy Library URL" button above, open your game.project file, and paste the url into the "Dependencies" list. Go to the toolbar at the top of your editor, select "Project" and click "Fetch Libraries". You should see the "DefChat" folder appear in a few seconds.

Once that's all fine and dandy, make sure to download the DefChat_Properties file. It is required, but is not included in installation so that it is not overwritten every update.

Once you've copied the properties file, you need a font. With your font in hand, you need to attach it to the properties file and the DefChat.gui file. **Make sure that _"All Chars"_ is selected on the font!** With that done, you're all set!

------

------

# Modifiable Properties

I set aside a properties module for DefChat to hook to that will not be overwritten every update. This allows you to make modifications, and not have those set back to the default for every update. Current properties:

placeholder = {

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

		stamp_text_instant = true,										-- Set stamp property. (True)  instant messasge. (False) stamped message.

		caret_speed = 0.48,												-- Set timing properties. Floor value is monitor refresh rate.
		stamp_speed = 0.001,

		commandline_color = {
			active = vmath.vector4(.8,.8,.8,0.9),					-- Set command line color.
			idle = vmath.vector4(.2,.2,.2,0.5)
		}
	}

------

# Version 0.05 - Jan. 5th, 2018

Initial commit. Chat asset added to Defold community websites and Github repository.

------

# Version 0.1 - Jan. 7th, 2018

FIXED: Backspacing causing odd duplication and deformed commandline text  
FIXED: Caret extending beyond commandline width

CHANGED: Commandline text allowed width to make text fit neater and more evenly  
CHANGED: get_length(self, it) function for mutli-use with a return statement instead of a single variable equation

------

# Version 0.105 - Jan. 8th, 2018

ADDED: Commands. You can now make your own functions, insert the call name and function name into the self.chatCommands table, and have it accessible using the '>' key.  
ADDED: 'clear' command. It wipes all currently displayed messages.

------

# Version 0.5 - Feb. 2nd, 2018 - MILESTONE

FIXED: Caret starting at the length of the previously typed chat.  
FIXED: Commands not being recieved because of string case.  

ADDED: Frame to GUI. Messages are now cropped to the boundaries of the chat box.

-----

# Version 0.555 - March 19th, 2018

ADDED: Command arguments. You can now make your own command, and have it gather each argument from the input in succession. For example, >clear 2. The clear_chat function would recieve this and only delete 2 messages.  

CHANGED: Organization to make things easier to understand/follow along.

-----

# Version 0.560 - May 15th, 2018

ADDED: Use of special characters. You can now use special characters in the chat, as long as your font supports them.
ADDED: Alt-Sequence functionality. Hold Alt and enter a sequence to print special characters.
