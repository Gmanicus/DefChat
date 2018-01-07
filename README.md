# DefChat
Chat asset for the Defold engine

https://github.com/GamingBud/DefChat/blob/master/misc/DEF_CHAT.gif

-----------------------------------------------------------------------------------------------
DefChat is a chatterbox. He really likes repeating what everyone says. The good thing is that he's good about keeping things neat and orderly.

* DefChat will accept keypresses upon activation by (default) the "enter" key. Type as maniacally as you want... he'll keep up.

* When typing your message, it will appear in the commandline. It will be subbed to fit once it gets to long.

* If you make a mistake, there is a way back. Backspacing is supported.

Upon deactivating the commandline, your message (if any) will be displayed in the chatbox above the commandline.

* Linebreaks are inserted where necessary to keep the message within the chatbox bounds. Currently "Character-Precise".

* All previous messages are bumped the appropriate space to make way for the new node.

* All nodes after 8 are wiped to save on memory and processing. This also provides shielding from the chat taking over the screen because chatbox cropping is currently not implemented.
