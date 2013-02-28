"The Year 4003" by Logan Moss 

When play begins:
	say "It is the year 4003 you are in an Electronical war between two armies. You are a troop that has been trained in the arts of electronic guns for 10 years. You have been awarded with numerous medals and honors. This has been one of the biggest wars known to the electronical race. Unfortunately even with the skill and the strategies that you have, you were captured by the opposing army and are now being held in a cell. Like any other average prisoner you think to yourself, 'why would I stay here?'"

Use no scoring.

Cell A is a room. Cell A is south of Cell A door. The description of cell a is "A prison cell that is concealed. The walls and the floor are made of some type of concrete. On the left side of the room is my makeshift of a bed. I need to stop looking around and figure out if I can find a way to get out of this cage. There is a door to the north of the room, the door says Cell A."

The description of the player is "Just an average trooper that has been trying to serve his duty in the line of fire. With only a couple of wounds and some electric burns in my armor, still as dashing as ever."

Bed frame is a container. Bed frame is in cell. It is undescribed. The description of bed frame is "A messy non-made bed. The bed frame is made of some box springs and some metal wire. With my tactical skills maybe I could use some of these things."

Metal wire is a thing. Metal wire is inside bed. It is undescribed. The description of metal wire is "Some long, hard, sturdy, and thin strips of wire. This could become very useful."

Wire key is a thing. Wire key unlocks Cell A door. 

Cell A door is a door. Cell A door is locked. Cell A door is undescribed. Cell A door is north of Cell A. The description of Cell A door is "A Strong high-tech looking door. Surprisingly, you can see that the lock is just an old lock, I wonder why this isn't as high tech as the rest of the building."

Hallway is a room. It is north of Cell A door

Box springs is a thing. It is undescribed. Box springs is in bed frame. The description of box springs is "Just some ordinary box springs."
Instead of taking box springs:
	say "I don't think I would really need that right now."
	
Walls is scenery. Wall is in cell. It is undescribed. The description of wall is "Just a hard wall that is made of concrete."

Floor is scenery. Floor is in cell. It is undescribed. The description of floor is "Just a hard floor that is made of concrete."

Understand "bend [something]" or "mold [something]" or "change [something]" as Molding. Molding is an action applying to one thing.

Check Molding:
	if noun is Metal Wire:
		say "You bend the wire into a key!";
		now Metal Wire is off-stage;
		now player has Wire Key.