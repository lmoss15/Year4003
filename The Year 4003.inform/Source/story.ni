"The Year 4003" by Logan Moss 

Include Secret Doors by Andrew Owen.

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

Cell A is a room. Cell A is south of Sturdy metal door. The description of cell a is "A prison cell that is concealed. The walls and the floor are made of some type of concrete. On the left side of the room is my makeshift of a bed. I need to stop looking around and figure out if I can find a way to get out of this cage. There is a door to the north of the room, the door says Cell A."

The description of the player is "Just an average trooper that has been trying to serve his duty in the line of fire. With only a couple of wounds and some electric burns in my dirty clothes, still as dashing and handsome as ever."

Bed frame is a container. Bed frame is in cell. It is undescribed. The description of bed frame is "A messy non-made bed. The bed frame is made of some box springs and some metal wire. With my tactical skills maybe I could use some of these things."

Metal wire is a thing. It is undescribed. The description of metal wire is "Some long, hard, sturdy, and thin strips of wire. This could become very useful. With effort, I think I would be able to bend or mold this to my will."

After examining bed frame for the first time:
	move metal wire to bed frame.
	
Wire key is a thing. Wire key unlocks Sturdy Metal Door. 

Sturdy Metal Door is a door. Sturdy metal door is lockable and locked. Sturdy metal door is undescribed. Sturdy metal door is north of Cell A. It is south of hallway. Sturdy metal door can be unlocked by wire key. The description of Sturdy metal door is "A Strong high-tech looking door. Surprisingly, you can see that the lock is just an old lock, I wonder why this isn't as high tech as the rest of the building."

Box springs are a thing. Box springs is undescribed. Box springs is in bed frame. The description of box springs is "Just some ordinary box springs."

Instead of taking box springs:
	say "I don't think I would really need that right now."
	
Wall is scenery. Wall is in cell A. The description of wall is "Just a hard wall that is made of concrete."
Walls is scenery. Walls is in cell A. The description of walls is "Just a hard wall that is made of concrete."

Floor is scenery. Floor is in cell A. The description of floor is "Just a hard floor that is made of concrete."

Understand "bend [something]" or "mold [something]" or "change [something]" as Molding. Molding is an action applying to one thing.

Instead of going north in Cell A:
	if Sturdy Metal Door is unlocked:
		now player is in Hallway;
	otherwise:
		say "I can't go this way, it's locked! I would need to make a makeshift key in order to unlock this door."
		
instead of going south in Hallway:
	If sturdy metal door is unlocked:
		now player is in cell A.
	
Check Molding:
	if noun is Metal Wire:
		if player has Metal Wire:
			If a random chance of 1 in 2 succeeds:
				say "Using your strength and rough hands, you bend the wire into a key!";
				now Metal Wire is off-stage;
				now player has Wire Key;
			otherwise:
				say "You attempt to bend the wire into something useful, however your hand slips. You get a small cut on your hand and start bleeding. It doesn't look too bad though, maybe you should try again.";
				Let F be a random number from 1 to 5;
				decrease the present health of player by F;
				say "Your health is: [The present health of player]";
		otherwise:
			say "You cannot bend something that you do not have!"
			
		
Chapter 2 Hallway

Hallway is a room. Hallway is north of Sturdy Metal Door. The printed name is "Hallway". The description of Hallway is "A hallway that has a couple bits and pieces of wrappers and trash around. You would think in the year 4003 they would take more care of the place. There are foor door ways that lead into seperate rooms. In the west, there's a door that is labeled Storage. In the east, there's a door that has the label Cell B. In the north you can hear chatter and harsh voices and tones, probably the guard room."

Wrappers are a thing. Wrappers is undescribed. Wrappers is in hallway. The description of Wrappers is "Gross. It's just some sticky candy wrappers and some other dirty things."

Instead of taking Wrappers:
	say "I don't think I really need that right now."
Instead of taking Trash:
	say "I don't think I really need that right now."
	
Trash is a thing. Trash is undescribed. Trash is in hallway. The description of trash is "Gross. It's just some sticky candy wrappers and some other dirty things."

Chapter 3 Extension rooms to Hallway

Cell B is a room. Cell B is east of Hallway. The description of Cell B is "A cell room that looks like it hasn't been used in over 400 years. In the corner there is a broken down bed frame. In the back of the room you spot something that has been collecting dust, it looks like a plaque. You can also see something that looks very high-tech, you can tell it wasn't installed recently, but it looks high-tech. Kind of some sort of voice application."

Broken bed frame is scenery. It is in Cell B. The description is "The metal looks bented and rusted. Not to mention, some of the edges look a little sharp. I would get no use out of this what so ever."

Storage is a room. Storage is west of Hallway. The description of storage is "Very dusty and dark. You look around but you can't seem to find a light switch. You look high and low and all you can see is a shelf on your left. Someone really needs to clean the cobwebs and dust off the floor and the corners."

Cardboard box is a supporter. It is in supply closet. The description is "Just a regular cardboard box. Inside the box you see some clothes that are labeled 'Janitor', maybe this could help you blend in."

[implement clothes]

Shelf is a supporter. It is in storage. It is undescribed. The description of shelf is "Just a regular shelf. Nothing seems unordinary about it, except for the few chips and cracks in the old wood."

After examining shelf for the first time:
	say "You pat your hand on top of the shelf and notice a bump that seems to have made a high pitched tinging sound. It sounds like a key.";
	Move brass key to shelf;
	Change description of shelf to "Just a regular shelf. Nothing seems unordinary about it, except for the few chips and cracks in the old wood. There is also a brass key on top."

Instead of taking brass key:
	Change description of shelf to "Just a regular shelf. Nothing seems unordinary about it, except for the few chips and cracks in the old wood. There was a brass key here.";
	Continue the action.	

Wall passage is a secret door. It is north of Cell B. It is south of Supply closet. It is undescribed.


Instead of going north in Cell B:
	If wall passage is revealed:
		now player is in Supply Closet;
	otherwise:
		continue the action.
		
Instead of going south in Supply closet:
	now player is in Cell B.
	
Supply Closet is a room. It is north of Wall passage. The description is "A dirty, cramped, and dark supply closet. There's some high-tech looking cleaning supplies in the corner. There is also some clothes with the label 'Janitor'. That would definitely come in handy."

Instead of answering Voice Activation that "1113213211":
	now the wall passage is revealed;
	say "The wall begins to push outwards, you first think you're going to get crushed. However, it seems to shift into different shapes leaving behind an opening that looks like a secret passage to the north."

Plaque is scenery. Plaque is in Cell B. The Description of plaque is "A very shiny, bright, wooden square that looks like it has been polished, but never touched. On the plaque there are some numbers, I wonder what this could be. I wonder if it's some type of riddle. Under the last number, it looks like someone scratched out the number. I wonder what that number is... It says,[paragraph break]1[line break]11[line break]21[line break]1211[line break]111221[line break]312211[line break]13112221[line break]------[paragraph break]Hmm.. I bet that the voice activation device goes along with the last line of the plaque."

Voice Activation is a man. He is in Cell B. The description of voice activation is "Just a small box that seems to have a purpose in this room. It startles you and says 'Say 'answer' and then put in the code, this will unl…' The sound must be bugged, the last sentence got cut short. (In short, put 'answer' before you enter the code. Ex: 'Answer #')"
[1113213211]

Hallway door is a door. It is north of Hallway. It is undescribed. It is lockable and locked. The description is "A hallway door that seems to have a lot of chatter going on behind it. I assume it's the guard room. If worse comes to worse and I have no where else to go, I might have to go into the guard room. The lock is just a simple key lock. Why do all of these doors just have old key locks?"

Brass key is a thing. Brass key unlocks hallway door. The description of brass key is "A brass key that probably unlocks just a regular door."

Guard room is a room. It is north of Hallway door. The description is "A larger room that has a center table and some lockers. This is probably where most of the guards hang out. To the north there is a door, it was left open, some guard had probably just left."

Guard Jeffery is a man. He is in guard room. The description of guard jeffery is "A tall lanky man who looks like you have just woken up from a nap. He doesn't look happy, you should probably take him out before he alerts others."

Instead of going north in hallway:
	if hallway door is unlocked:
		now player is in guard room;
	otherwise:
		continue the action.
		
After entering guard room for the first time:
	say "The guard that has Jeffery on his shirt stands up and says 'Hey! What are you doing out of your cell! Don't move or i'll shoot!' You can tell Jeffery is a little on the slower side, so I don't think him shooting you will be a problem if you move first."

Chapter 4 Lobby

Lobby is a room. Lobby is north of Guard room. Lobby is west of Closet. The description of lobby is "You are in the lobby of the building. It seems to be bustling with many guards and employee's. You see a lot of people wearing nurse and doctor outfits, probably because of the war going on outside. There are many potted plants and couches. As you look around, you notice many people that look crazy, odd. You've made it! To the north there is the exit to the building, you'll soon be out of here and into freedom."

Couches are scenery. Couches are in lobby. The description is "Just some comfortable, bouncy, and boxy couches. It looks like very few people have actually sit in these couches."

Cell X is a room. Cell X is north of lobby. The printed name is "Cell A". The description of Cell X is "A prison cell that is concealed. The walls and the floor are made of some type of concrete. On the left side of the room is my makeshift of a bed. I need to stop looking around and figure out if I can find a way to get out of this cage. There is a door to the north of the room, the door says Cell A. Why does this seem so vaguely familar?[paragraph break]Just then a female pushing a cart walks in.[line break]'Good afternoon Mr. Williams, are you ready for your daily medicine?'[line break]'Who are you? Who am I?'[line break]'You're silly! I'm your caretaker! You obviously know who you are! Just look at your nametag on your shirt!'"

Nametag is scenery. It is in Cell X. The description of nametag is "unicorns"

instead of examining nametag:
	say "You notice a nametag that has been on you the entire time, it says:[line break]Mr. Jacob Williams[line break]Mental Patient[line Break]Member since: January 12, 2003";
	end the game in victory.
