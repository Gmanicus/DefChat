# DefChat
Chat asset for the Defold engine

![alt text](https://raw.githubusercontent.com/GamingBud/DefChat/master/misc/DEF_CHAT.gif)

Untested on non-Windows devices. Anyone willing to test and report the details back to me would be helpful.

-----------------------------------------------------------------------------------------------
DefChat is a chat asset for any Defold project. It activates on press of the ‘enter’ key, which allows you to start typing. Once the ‘enter’ key is pressed again the message is read and fit into the space above it.

Other scripts can have their messages printed through the message-passing system as well. This allows for easy adaptability for Multiplayer projects especially.

From Character-Precise linebreaking to the ability to stamp messages overtime, it’s got it.

# Installation Guide

To install DefChat, you need to add it as a library dependency. Click the "Copy Library URL" button above, open your game.project file, and paste the url into the "Dependencies" list.

Then go to the toolbar at the top of your editor, select "Project" and click "Fetch Libraries". You should see the "DefChat" folder appear in a few seconds.

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
