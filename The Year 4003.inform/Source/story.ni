"The Year 4003" by Logan Moss 

Include Secret Doors by Andrew Owen.

When play begins:
	now left hand status line is "Exits: [exit list]";
	now right hand status line is "[location]".
To say exit list:
	let place be location;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room, say " [way]".

When play begins:
	say "It is the year 4003, you are in an Electronical war between two armies. You are a trooper that has been trained in the arts of electronic guns for 10 years. You have been awarded with numerous medals and honors. This has been one of the biggest wars known to the electronical race. Unfortunately even with the skill and the strategies that you have, you were captured by the opposing army and are now being held in a cell. Like any other average prisoner you think to yourself, 'why would I stay here, should I escape?'"
	The present health of the player is 100.
	
Use no scoring.

A person has a number called max health.
A person has a number called present health.

The max health of a person is usually 100.

The max health of the player is usually 100.

The present health of a person is usually 5.
[Source, Brandon Lau. With edits.]

An every turn rule: 
	If the present health of the player is less than 1, end the game in death.

Rule for deciding whether all includes something: it does not.

Rule for printing a parser error when the latest parser error is the nothing to do error:
	say "Why would you want to take everything here? Haha, that would be silly." instead.

instead of attacking guard jeffery:
	If a random chance of 2 in 3 succeeds:
		Let G be a random number from 5 to 5;
		say "You damage Guard Jeffery for [G] damage!";
		decrease the present health of Guard Jeffery by G;
		say "(Health: [the present health of Guard jeffery])[line break]";
		move Guard Jeffery to dead;
		say "You use some quick and deadly move in which you end up silencing the guard forever. He will not be bothering you anymore.";
	otherwise:
		say "The decently trained guard dodged your attack.".
		
every turn:
	If the location of Guard Jeffery is not the location of the player:
		do nothing;
	otherwise:
		If a random chance of 1 in 4 succeeds:
			say "You have dodged the Guards attack.";
		otherwise:
			Let Z be a random number from 10 to 20;
			say "Guard Jeffery lunges forward.";
			decrease the present health of the player by Z;
			say "You have been damaged for [Z] HP.";
			say "Your present health is [the present health of the player]".
			
				
Chapter 1 Cell A

Cell A is a room. Cell A is south of Sturdy metal door. The description of cell a is "A prison cell that is concealed. The walls and the floor are made of some type of concrete. On the left side of the room is my makeshift of a bed. I need to stop looking around and figure out if I can find a way to get out of this cage. There is a door to the north of the room, the door says Cell A."

Dead is a room.

The description of the player is "Just an average trooper that has been trying to serve his duty in the line of fire. With only a couple of wounds and some electric burns in my dirty clothes, still as dashing and handsome as ever."

Bed frame is a container. Bed frame is in cell. It is fixed in place. It is undescribed. The description of bed frame is "A messy non-made bed. The bed frame is made of some Metal Wire and Box Springs. With my tactical skills maybe I could use some of these things."

Metal wire is a thing. It is undescribed. The description of metal wire is "Some long, hard, sturdy, and thin strips of wire. This could become very useful. With effort, I think I would be able to Bend, Mold, or Change this to my will."

After examining bed frame for the first time:
	move metal wire to bed frame.
	
Wire key is a thing. Wire key unlocks Sturdy Metal Door. 

Sturdy Metal Door is a door. Sturdy metal door is lockable and locked. Sturdy metal door is undescribed. Sturdy metal door is north of Cell A. It is south of hallway. Sturdy metal door can be unlocked by wire key. The description of Sturdy metal door is "A Strong high-tech looking door. Surprisingly, you can see that the lock is just an old lock, I wonder why this isn't as high tech as the rest of the building."

Box springs are a thing. Box springs is undescribed. Box springs is in bed frame. The description of box springs is "Just some ordinary box springs."

Instead of taking box springs:
	say "I could try and make this into a key, but I think this is too thick to bend. Maybe I should try and use something more thin."
	
Wall is scenery. Wall is in cell A. The description of wall is "Just a hard wall that is made of concrete."
Walls is scenery. Walls is in cell A. The description of walls is "Just a hard wall that is made of concrete."

Floor is scenery. Floor is in cell A. The description of floor is "Just a hard floor that is made of concrete."

Understand "bend [something]" or "mold [something]" or "change [something]" or "make [something]" or "create [something]" or "construct [something]" or "form [something]" as Molding. Molding is an action applying to one thing.

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
				Let F be a random number from 3 to 7;
				decrease the present health of player by F;
				say "Your health is: [The present health of player]";
		otherwise:
			say "You cannot bend something that you do not have!"
			
		
Chapter 2 Hallway

Hallway is a room. Hallway is north of Sturdy Metal Door. The printed name is "Hallway". The description of Hallway is "A hallway that has a couple bits and pieces of wrappers and trash around. You would think in the year 4003 they would take more care of the place. There are four door ways that lead into separate rooms. In the west, there's a room that is labeled Storage. In the east, there's an open door that has the label Cell B. In the north you see a hallway door, you can hear chatter and harsh voices and tones, probably the guard room."

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

Cobwebs are scenery. Cobwebs are in Storage. The description is "Just some ordinary cobwebs that have gathered in the corner."

Dust is scenery. Dust is in storage. The description is "Just some dust, you lean closer to get a better look and sneeze. Good job."

Instead of taking dust:
	say "Now why would I need that?"
	
Instead of taking cobwebs:
	say "I don't really think I should take that with me."
	
Instead of eating cobwebs:
	say "Is that really logical? Kapri?"
	
Instead of eating dust:
	say "That is probably the worst thing I could do right now."

Cardboard box is a container. It is in supply closet. It is undescribed. The description is "Just a regular cardboard box. Inside the box you see some clothes that are labeled 'Janitor', maybe this could help you blend in."

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
	
Supply Closet is a room. It is north of Wall passage. The printed name is "Supply Closet". The description is "A dirty, cramped, and dark supply closet. There's some high-tech looking cleaning supplies in the corner. There is also some clothes with the label 'Janitor'. That would definitely come in handy. There is a door to the west, probably leading out to the lobby."

Janitor suit is a thing. It is wearable. It is in Cardboard box. The description is "A suit that looks fairly dirty, it has some dirt stains and some cleaning stains, but other than that, it's completely wearable!"

Guard suit is a thing. It is wearable. It is in lockers. It is undescribed. The description is "A suit that makes me look fairly tough, there are some unknown stains, but i'm not too worried about that. I can definitely use this to blend into the outside world."

Lockers are containers. Lockers are in guard room. It is undescribed. The description is "Just some regular guard lockers. One of them has been left open, inside there is a guard suit."

Instead of taking guard suit:
	say "Taken.";
	Change description of lockers to "Just some regular guard lockers. One of them has been left open.";
	move guard suit to player.

Understand "couch" as couches.
Understand "clothes" as janitor suit.
Understand "clothes" as Guard suit.

Instead of going north in Guard room:
	if player is wearing guard suit:
		continue the action;
	Otherwise:
		Say "If I go outside dressed like this, they'll know that I am trying to escape!".

Instead of going west in supply closet:
	If player is wearing janitor suit:
		continue the action;
	Otherwise:
		say "I should probably put on the suit, so I can blend in."
		
Plaque is scenery. Plaque is in Cell B. The Description of plaque is "A very shiny, bright, wooden square that looks like it has been polished, but never touched. On the plaque there are some numbers, I wonder what this could be. I wonder if it's some type of riddle. Under the last number, it looks like someone scratched out the number. I wonder what that number is... It says,[paragraph break]1[line break]11[line break]21[line break]1211[line break]111221[line break]312211[line break]13112221[line break]------[paragraph break]Hmm.. I bet that the voice activation device goes along with the last line of the plaque. Maybe I should Talk or Examine the voice activation."

Voice Activation is a man. He is in Cell B. The description of voice activation is "Just a small box that seems to have a purpose in this room. It startles you and says 'Put in the code, the last line of the plaque is the code, say it outloud, this will unl…' The sound must be bugged, the last sentence got cut short."
[1113213211]

Hallway door is a door. It is north of Hallway. It is undescribed. It is lockable and locked. The description is "A hallway door that seems to have a lot of chatter going on behind it. I assume it's the guard room. If worse comes to worse and I have no where else to go, I might have to go into the guard room. The lock is just a simple brass key lock. Why do all of these doors just have old key locks?"

Brass key is a thing. Brass key unlocks hallway door. The description of brass key is "A brass key that probably unlocks just a regular door."

Guard room is a room. It is north of Hallway door. The description is "A larger room that has a center table and some lockers. This is probably where most of the guards hang out. To the north there is a door, it was left open, some guard had probably just left."

Guard Jeffery is a man. He is in guard room. The description of guard jeffery is "A tall lanky man who looks like you have just woken up from a nap. He doesn't look happy, you should probably take him out before he alerts others."

Instead of going north in hallway:
	if hallway door is unlocked:
		now player is in guard room;
		say "The guard that has Jeffery on his shirt stands up and says 'Hey! What are you doing out of your cell! You can tell Jeffery is a little on the slower side, so I don't think he will be a problem if you move first.";
	otherwise:
		say "You can't go north until the door is unlocked.";
		continue the action.

Center table is scenery. It is in guard room. The description is "Just a regular round table, in the middle you can see some cards and some poker chips. The guards have definitely been gambling, like regular guards."

Chapter 4 Lobby

Lobby is a room. Lobby is north of Guard room. Lobby is west of Closet. The description of lobby is "You are in the lobby of the building. It seems to be bustling with many guards and employee's. You see a lot of people wearing nurse and doctor outfits, probably because of the war going on outside. There are many potted plants and couches. As you look around, you notice many people that look crazy, odd. To the north there is the exit to the building."

Couches are enterable scenery supporters. Couches are in lobby. The description is "Just some comfortable, bouncy, and boxy couches. It looks like very few people have actually sit in these couches."

Cell X is a room. The printed name is "Cell A". The description of Cell X is "A prison cell that is concealed. The walls and the floor are made of some type of concrete. On the left side of the room is my makeshift of a bed. I need to stop looking around and figure out if I can find a way to get out of this cage. There is a door to the north of the room, the door says Cell A. Why does this seem so vaguely familar?[paragraph break]Just then a female pushing a cart walks in.[line break]'Good afternoon Mr. Williams, are you ready for your daily medicine?'[line break]'Who are you? Who am I?'[line break]'You're silly! I'm your caretaker! You obviously know who you are! Just look at your nametag on your shirt!'"

Nametag is scenery. It is in Cell X. The description of nametag is "unicorns are tasty."

instead of examining nametag:
	say "You notice a nametag that has been on you the entire time, it says:[line break]Mr. Jacob Williams[line break]Mental Patient[line Break]Member since: January 12, 2003";
	end the game in victory.
	
Potted plants are scenery. Potted plants are in lobby. The description is "Just some regular potted plants. There is some soil spilled over the side, but that seems like someone probably just bumped into it. Nothing out of the ordinary."

Instead of going south in lobby:
	If player is wearing Janitor suit:
		say "I hear some guards down in that hall, I don't think I would need to bother them.";
	otherwise:
		Continue the action.
		
Instead of going east in lobby:
	If player is wearing guard suit:
		Say "Instead of walking into a supply closet, I think I should probably escape through the north exit door.";
	otherwise:
		continue the action.
		
Instead of going north in lobby:
	Say "∂���������Ê���������������� ��F�������!��v˘�ÄB@��,�U��!�†B@��,�V��O�ÄB@��,�W��Ü�»B@��,�[line break]Y�X¥���B@��W����·»B@�,�Z���ÄB@��,?�ÄB@��,�\��m�ÄR@��,����õ�B@������^»���B@���_��˛���B@�+�ÄB@�������V�ÄB@�������Å���r@���[line break]����¶���B@�������B@����������B@������,�B@��[paragraph break]";
	move janitor suit to dead;
	move guard suit to dead;
	move wire key to dead;
	move brass key to dead;
	now player is in cell X;
	move bed frame to dead;
	move box springs to dead;
	change description of player to "You notice a nametag that has been on you the entire time, perhaps I should examine that closer…".

Understand "1113213211" as loving unicorns.
Loving unicorns is an action applying to nothing.
Check loving unicorns:
	If player is in cell B:
		now the wall passage is revealed;
		change description of Cell b to "A cell room that looks like it hasn't been used in over 400 years. In the corner there is a broken down bed frame. In the back of the room you spot something that has been collecting dust, it looks like a plaque. You can also see something that looks very high-tech, you can tell it wasn't installed recently, but it looks high-tech. Kind of some sort of voice application. To the north there is a hidden passage way.";
		say "The wall begins to push outwards, you first think you're going to get crushed. However, it seems to shift into different shapes leaving behind an opening that looks like a secret passage to the north.";
	otherwise:
		say "What are you talkin' bout?"


Guards are scenery. They are in lobby. The description of guards are "Some busy guards that are too fast to look in detail."

Employees are scenery. They are in lobby. The description of employees are "Some busy employees bustling around, they seem to be mobing too fast and are too busy to notice in detail."

Understand "hint" as casting hint.

Casting hint is an action applying to nothing.

Check casting hint:
	If player is in Cell B:
		say "The line above directly corresponds with the line below.";
	If player is in cell A:
		say "That's odd, I just suddenly thought of bending or molding the wire, I must be crazy!";
	If player is in Hallway:
		say "That's odd, I just suddenly thought of a brass key in the storage room. Then I thought of a second option, going east into cell B. I must be crazy! ";
	Otherwise:
		say "What are you doing? Asking yourself for hints? Stop talking to yourself.".
		

Understand "xyzzy" or "say xyzzy" or "cast xyzzy" as casting xyzzy.

Casting xyzzy is an action applying to nothing.

Check casting xyzzy:
	say "Xyzzy, what are you trying to accomplish by this? You must be crazy! What are you a mental?"

Concrete is scenery. It is in Cell A. The description is "Just some hard concrete."

[Shortest Route:
x bed
take wire
bend wire (maybe x2)
open door with wire key
n
e
x plaque
1113213211
n
take suit
put on suit
w
n
x nametag
]
