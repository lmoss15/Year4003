"The Year 4003" by Logan Moss 

When play begins:
	say "It is the year 4003 you are in an Electronical war between two armies. You are a troop that has been trained in the arts of electronic guns for 10 years. You have been awarded with numerous medals and honors. This has been one of the biggest wars known to the electronical race. Unfortunately even with the skill and the strategies that you have, you were captured by the opposing army and are now being held in a cell. Like any other average prisoner you think to yourself, 'why would I stay here?'"
	The present health of the player is 100.
	
Use no scoring.

A person has a number called max health.
A person has a number called present health.

The max health of a person is usually 100.

The max health of the player is usually 100.

The present health of a person is usually 1.

Rule for deciding whether all includes something: it does not.

Rule for printing a parser error when the latest parser error is the nothing to do error:
	say "Why would you want to take everything here? Haha, that would be silly." instead.

Chapter 1 Cell A

Cell A is a room. Cell A is south of Cell A door. The description of cell a is "A prison cell that is concealed. The walls and the floor are made of some type of concrete. On the left side of the room is my makeshift of a bed. I need to stop looking around and figure out if I can find a way to get out of this cage. There is a door to the north of the room, the door says Cell A."

The description of the player is "Just an average trooper that has been trying to serve his duty in the line of fire. With only a couple of wounds and some electric burns in my clothes, still as dashing and handsome as ever."

Bed frame is a container. Bed frame is in cell. It is undescribed. The description of bed frame is "A messy non-made bed. The bed frame is made of some box springs and some metal wire. With my tactical skills maybe I could use some of these things."

Metal wire is a thing. Metal wire is inside bed. It is undescribed. The description of metal wire is "Some long, hard, sturdy, and thin strips of wire. This could become very useful. With effort, I think I would be able to mold this to my will."

Wire key is a thing. Wire key unlocks Cell A door. 

Cell A door is a door. Cell A door is locked. Cell A door is undescribed. Cell A door is north of Cell A. Cell A door is south of hallway. Cell A door can be unlocked by wire key. The description of Cell A door is "A Strong high-tech looking door. Surprisingly, you can see that the lock is just an old lock, I wonder why this isn't as high tech as the rest of the building."

Box springs is a thing. Box springs is undescribed. Box springs is in bed frame. The description of box springs is "Just some ordinary box springs."

Instead of taking box springs:
	say "I don't think I would really need that right now."
	
Walls is scenery. Wall is in cell. Walls is undescribed. The description of wall is "Just a hard wall that is made of concrete."

Floor is scenery. Floor is in cell. Floor is undescribed. The description of floor is "Just a hard floor that is made of concrete."

Understand "bend [something]" or "mold [something]" or "change [something]" as Molding. Molding is an action applying to one thing.

Check Molding:
	if noun is Metal Wire:
		If a random chance of 1 in 3 succeeds:
			say "Using your strength and rough hands, you bend the wire into a key!";
			now Metal Wire is off-stage;
			now player has Wire Key;
		otherwise:
			say "You attempt to bend the wire into something useful, however your hand slips. You get a small cut on your hand and start bleeding. It doesn't look too bad though, maybe you should try again.";
			Let F be a random number from 1 to 5;
			decrease the present health of player by F;
			say "Your health is: [The present health of player]"
		
Chapter 2 Hallway

Hallway is a room. Hallway is north of Cell A door. The description of hallway is "A hallway that has a couple bits and pieces of wrappers and trash around. You would think in the future they would take more care of the place. There are foor door ways that lead into seperate rooms. In the west, there's a door that is labeled Storage. In the east, there's a door that has the label Cell B. In the north you can hear chatter and harsh voices and tones, probably the guard room."

Storage is a room. Storage is to the west of Hallway. The description of storage is "Very dusty and dark. Someone really needs to clean the cobwebs and dust off the floor and the corners. In the back of the room you spot something that has been recently moved, what that could be?"

Cardboard Box is a supporter. Cardboard box is in Storage. The Description of Cardboard box is "A somewhat torn box that looks like it has been used before to carry some fresh produce.
