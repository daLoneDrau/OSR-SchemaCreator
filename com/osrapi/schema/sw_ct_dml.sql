-- ADD ATTRIBUTES
INSERT INTO sw_ct.attribute(code, description, name) VALUES(
  'AC', 'Armour Class', 'Armour Class'), (
  'ACM', 'Armour Class Modifier', 'Armour Class Modifier'), (
  'BRW', 'brawn', 'Brawn'), (
  'COM', 'common sense', 'Common Sense'), (
  'COR', 'coordination', 'Coordinaton'), (
  'CRM', 'Charm', 'Charm'), (
  'CRP', 'Corruption', 'Corruption'), (
  'DB', 'Damage Bonus', 'Damage Bonus'), (
  'EDU', 'education', 'Education'), (
  'HIR', 'Max Hirelings', 'Max Hirelings'), (
  'HRD', 'hardiness', 'Hardiness'), (
  'LAB', 'Melee Bonus', 'Melee Bonus'), (
  'LAN', 'Understand Language %', 'Understand Language %'), (
  'LEA', 'leadership', 'Leadership'), (
  'LUK', 'Luck', 'Luck'), (
  'MAB', 'Missile Attack Bonus', 'Missile Attack Bonus'), (
  'MHP', 'Max Hit Points', 'Max Hit Points'), (
  'SAN', 'Sanity', 'Sanity'), (
  'SKL', 'Skill', 'Skill');


-- ADD DIES
INSERT INTO sw_ct.die(code, value) VALUES(
  'D2', 2), (
  'D3', 3), (
  'D4', 4), (
  'D6', 6), (
  'D8', 8), (
  'D10', 10), (
  'D12', 12), (
  'D20', 20), (
  'D100', 100);


-- ADD DICES
INSERT INTO sw_ct.dice(code, die, number, plus) VALUES(
  'ONE_D10', (SELECT die_id FROM sw_ct.die WHERE code='D10'), 1, 0), (
  'ONE_D2', (SELECT die_id FROM sw_ct.die WHERE code='D2'), 1, 0), (
  'ONE_D3', (SELECT die_id FROM sw_ct.die WHERE code='D3'), 1, 0), (
  'ONE_D4', (SELECT die_id FROM sw_ct.die WHERE code='D4'), 1, 0), (
  'ONE_D4_PLUS_1', (SELECT die_id FROM sw_ct.die WHERE code='D4'), 1, 1), (
  'ONE_D6', (SELECT die_id FROM sw_ct.die WHERE code='D6'), 1, 0), (
  'ONE_D8', (SELECT die_id FROM sw_ct.die WHERE code='D8'), 1, 0), (
  'THREE_D6', (SELECT die_id FROM sw_ct.die WHERE code='D6'), 3, 0), (
  'TWO_D4', (SELECT die_id FROM sw_ct.die WHERE code='D4'), 2, 0), (
  'TWO_D6', (SELECT die_id FROM sw_ct.die WHERE code='D6'), 2, 0);


-- ADD EQUIPMENT_ELEMENT_TYPES
INSERT INTO sw_ct.equipment_element_type(code, value) VALUES(
  'EQUIP_ELEMENT_AC', 0), (
  'EQUIP_ELEMENT_AC_MODIFIER', 1), (
  'EQUIP_ELEMENT_STRENGTH', 2), (
  'EQUIP_ELEMENT_WISDOM', 3), (
  'EQUIP_ELEMENT_DEXTERITY', 4), (
  'EQUIP_ELEMENT_CHARM', 5), (
  'EQUIP_ELEMENT_CORRUPTION', 6), (
  'EQUIP_ELEMENT_DMG_BONUS', 7), (
  'EQUIP_ELEMENT_INTELLIGENCE', 8), (
  'EQUIP_ELEMENT_MAX_HIRELINGS', 9), (
  'EQUIP_ELEMENT_CONSTITUTION', 10), (
  'EQUIP_ELEMENT_TO_HIT', 11), (
  'EQUIP_ELEMENT_LANGUAGE', 12), (
  'EQUIP_ELEMENT_CHARISMA', 13), (
  'EQUIP_ELEMENT_LUCK', 14), (
  'EQUIP_ELEMENT_MHP', 15), (
  'EQUIP_ELEMENT_MISSILE_BONUS', 16), (
  'EQUIP_ELEMENT_SANITY', 17), (
  'EQUIP_ELEMENT_SKILL', 18);


-- ADD EQUIPMENT_ITEM_MODIFIERS
INSERT INTO sw_ct.equipment_item_modifier(code, percent, special, value) VALUES(
  'MINUS_1', false, 0, -1.0), (
  'MINUS_2', false, 0, -2.0), (
  'MINUS_3', false, 0, -3.0), (
  'MINUS_4', false, 0, -4.0), (
  'MINUS_5', false, 0, -5.0), (
  'MINUS_6', false, 0, -6.0), (
  'PLUS_1', false, 0, 1.0);


-- ADD EVENTS
INSERT INTO sw_ct.event(code) VALUES(

-- ADD GENDERS
INSERT INTO sw_ct.gender(description, name) VALUES(
  'male', 'Male'), (
  'female', 'Female');


-- ADD GROUPS
INSERT INTO sw_ct.group(name) VALUES(
  'BARBARIAN'), (
  'SOLDIER'), (
  'WIZARD'), (
  'THIEF'), (
  'SOPHISTICATED_WEAPON'), (
  'PLATE_ARMOUR'), (
  'LEATHER_ARMOUR'), (
  'MAIL_ARMOUR');


-- ADD HOMELANDS
INSERT INTO sw_ct.homeland(description, name) VALUES(
  'This part of the world is home to a barbarian tribe, the Wolfers, who worship the Great Wolf Mother. This goddess cleared the lands of the Serpent People and Khaos for her children in ancient times.The Ice Coast contains three city states(Bulwulf, Longren and Blood Stead), as well as numerous small towns and villages.The land is a mix of evergreen forests, icy marshland and cold desolate plains.The south is dominated by the Wolf ''s HeadMountains, home to isolated families and small communities.The brave or unwary may encounter Khaos monsters in remote, deep caves, where they have been hiding since being driven out by the Wolf Mother.', 'Ice Coast'), (
  'The icy steppes between the Wolf ''s HeadMountains and Cold Lake are populated by tribes of Nomads. These horse warriors protect their families who travel by caravan in large wooden wagons with their attendant herds of yak.They worship the savage Lord of the Winds, Fragan, awaiting the time when his human embodiment, the Great Khan, comes into the world to lead them in conquest.', 'Death Wind Steppe'), (
  'This part of the world is inhabited by a primitive people that cower in cave complexes or villages of rude mud huts. They are ruled by the despotic Masters, dinosaur riding tyrants who abuse their power and lord it over everyone else. There is also a small class of Sorcerers who live in ancient towers and occasionally form pacts with the Dinosaur Riders. The humans of the region habitually make war upon the local demi-human primitives, the ape-men and the scattered remnants of the Serpent Folk Empire.', 'Terror Lizard Run'), (
  'The tribes of this tropical region are split between animal totem worshipers and those who worship the Great Snake, themselves a savage throwback to the time when the Serpent Folk ruled this area.All of them however, live in fear of the Priests of the Greater Others who sacrifice countless victims at their temple to the Locust Star on Mount Terror. This terrifying active volcano is the fiery heart of evil at the centre of the Continent of Terror, and the people of Jagmani live in its shadow.', 'Jagmani Jungles'), (
  'This region is a loose confederation of City States, comprising of Port Black Mire, Shamuti and Peopolis. They have all recently ousted the last of their rulers from the Island Empire of Myrindor.The governments that have replaced the haughty Sorcerers from Myrindor may be despotic in their own way, but it''s a home - grown type of corruption that their respective populations can stomach for now.The members of this confederation have benefited from the free trade and security that comes with mutual alliance.Brave souls steel themselves for the next stage of revolution when the Free Territories will become truly free!', 'Free Territories'), (
  'For aeons the Sorcerers of Myrindor ruled the Continent of Terror through their pacts of power with the Elemental Lords of Zarth. When those pacts were broken, the Lords broke free, devastating Myrindor in the process.After the apocalypse the surviving Lords recalled the last of their fleets and armies to protect the motherland.Two thousand years later, Myrindor''s elite and teaming masses alike exist in a drug hazed dream of past glories, while the ruling priesthood groom a candidate capable of being Emperor of Zarth.', 'Myrindor'), (
  'Bright and bedazzling, a spectacle of unparalleled decadence and prosperity, the Four Cities are the inheritors of the ancient pacts of power the Sorcerers of Myrindor made with the Elemental Lords of Zarth and then lost two thousand years ago. The Four Cities are full of sights such as gleaming painted ziggurat temples, floating streets, windmills, fertile fields of yellow - corn and giant copper burners.It is good to be a citizen of the Four City Alliance and its people are happy and optimistic as a result.The only thing they fear is that the constant stream of blood sacrifices that the Lords require will dry up and the same sort of magical cataclysm that devastated and belittled Myrindor will be their fate.', 'Four City Alliance'), (
  'The pirates of the Reaper''s Sea are a mixed bunch of outcasts from the southern regions of the Continent of Terror. Their history began with the Fall of Myrindor two thousand years ago when some of the Admirals of the Battle Barges decided never to go home.These huge floating fortresses with crews in the hundreds became communities in and of themselves.As time progressed smaller vessels joined the pirate fleets.The pirates survived and prospered by raiding the Free Territories and even the cities of the Ice Coast when weather permitted it.Now the pirate fleets are a terrifying force to be reckoned with.It is only the constant internal feuds between the Admirals, which prevents them from invading and crushing one of their land locked neighbours.', 'Reaper''s Sea');

-- ADD homeland's RELATED modifierss
INSERT INTO sw_ct.homeland_modifiers_lookup(homeland_id, key, value) VALUES (
  (SELECT homeland_id FROM sw_ct.homeland WHERE name='Ice Coast'),
  'EQUIP_ELEMENT_CONSTITUTION',
  'PLUS_1');
INSERT INTO sw_ct.homeland_modifiers_lookup(homeland_id, key, value) VALUES (
  (SELECT homeland_id FROM sw_ct.homeland WHERE name='Death Wind Steppe'),
  'EQUIP_ELEMENT_DEXTERITY',
  'PLUS_1');
INSERT INTO sw_ct.homeland_modifiers_lookup(homeland_id, key, value) VALUES (
  (SELECT homeland_id FROM sw_ct.homeland WHERE name='Terror Lizard Run'),
  'EQUIP_ELEMENT_STRENGTH',
  'PLUS_1');
INSERT INTO sw_ct.homeland_modifiers_lookup(homeland_id, key, value) VALUES (
  (SELECT homeland_id FROM sw_ct.homeland WHERE name='Jagmani Jungles'),
  'EQUIP_ELEMENT_DEXTERITY',
  'PLUS_1');
INSERT INTO sw_ct.homeland_modifiers_lookup(homeland_id, key, value) VALUES (
  (SELECT homeland_id FROM sw_ct.homeland WHERE name='Free Territories'),
  'EQUIP_ELEMENT_WISDOM',
  'PLUS_1');
INSERT INTO sw_ct.homeland_modifiers_lookup(homeland_id, key, value) VALUES (
  (SELECT homeland_id FROM sw_ct.homeland WHERE name='Myrindor'),
  'EQUIP_ELEMENT_INTELLIGENCE',
  'PLUS_1');
INSERT INTO sw_ct.homeland_modifiers_lookup(homeland_id, key, value) VALUES (
  (SELECT homeland_id FROM sw_ct.homeland WHERE name='Four City Alliance'),
  'EQUIP_ELEMENT_CHARISMA',
  'PLUS_1');
INSERT INTO sw_ct.homeland_modifiers_lookup(homeland_id, key, value) VALUES (
  (SELECT homeland_id FROM sw_ct.homeland WHERE name='Reaper''s Sea'),
  'EQUIP_ELEMENT_STRENGTH',
  'PLUS_1');


-- ADD BACKGROUNDS
INSERT INTO sw_ct.background(description, homeland, name) VALUES(
  'Member of a grave robber family who raided the outskirts of the Sunless City, avoiding traps and running away from undead monstrosities.', 'Ice Coast', 'Graverobber'), (
  'Press ganged into the Ice Ships and spent early years raiding the cities and towns of the Ice Coast. You became strong from the dangerous and hard life at sea.', 'Ice Coast', 'Sailor'), (
  'Endured slavery in Blood Stead. Berserkers killed your family in a raid.', 'Ice Coast', 'Thrall'), (
  'Member of a happy and prosperous family in Longren. Wealth only sustained by constant scheming and politicking.', 'Ice Coast', 'Scion'), (
  'Born in the shadow of Zaran''s Tower, your family served the mysterious Sorcerer of the Tower', 'Ice Coast', 'Servant'), (
  'Your family fled violence in their clan''s lands and settled in the Wolf ''s HeadMountains as "Wolfers"', 'Ice Coast', 'Refugee'), (
  'Enjoyed the freedom of Bulwulf ''s Council of Peers growing up.', 'Ice Coast', 'Freeman'), (
  'Lived in a remote fishing village, where strange things regularly visited from the depths of the sea.', 'Ice Coast', 'Fisherman'), (
  'You grew up a Slave to the Priests of Five Tent Camp.', 'Death Wind Steppe', 'Slave'), (
  'You ran with the Warrior pack of the Five Tent Camp.', 'Death Wind Steppe', 'Horseman'), (
  'At an early age you became an apprentice to a Sorcerer of Fragan.', 'Death Wind Steppe', 'Apprentice'), (
  'You saw your family sacrificed by the Priests of Five Tent Camp and swore vengeance.', 'Death Wind Steppe', 'Orphan'), (
  'Raised in a mountain dwelling family who feuded with Werewolves.', 'Death Wind Steppe', 'Mountain Folk'), (
  'Your family were hunters of the Steppe', 'Death Wind Steppe', 'Hunter'), (
  'Part of the proud warrior elite of a nomad tribe.', 'Death Wind Steppe', 'Warrior'), (
  'Your family fought Terror Lizards who crossed the Cold Lake.', 'Death Wind Steppe', 'Frontier Folk'), (
  'Slave of the Dinosaur Riders. You became strong from hard labour, lifting riding tackle, dinosaur feed and cleaning up dung.', 'Terror Lizard Run', 'Slave'), (
  'Apprenticed to one of the Tower Sorcerers, you learnt guile to survive all the intrigues and to avoid ending up as a sacrifice to the Great Others!', 'Terror Lizard Run', 'Apprentice'), (
  'A runner slave used for passing messages between the Dinosaur Rider Lords and occasionally in Dinosaur Races. You are fast and agile as a result of avoiding attacks from bad tempered dinosaurs.', 'Terror Lizard Run', 'Homing Pigeon'), (
  'A simple villager in a settlement under the protection of the Dinosaur Rider Lords. You''ve seen their comings and goings, and many of your neighbours ended up as food for their mounts. As a result you are rather philosophical about life and death.', 'Terror Lizard Run', 'Villager'), (
  'An underground denizen of one of the many cave systems that dot Terror Lizard Run. You endured a tough life of hunter gathering while hiding from the Terror Lizards.', 'Terror Lizard Run', 'Morlock'), (
  'A roaming hunter making a living from the hides of the rogue Terror Lizards that plague the settlements of the Run.', 'Terror Lizard Run', 'Hunter'), (
  'A dweller of a dark ruined underground city from antiquity. You have learnt secrets that are denied to the surface dwellers.', 'Terror Lizard Run', 'Occultist'), (
  'An apprentice Dinosaur Rider, you grew up tough and strong to avoid the snapping jaws of your mount!', 'Terror Lizard Run', 'Dinosaur Rider'), (
  'Member of the Jaguar Tribe, fearless warriors who leap down at their victims from the trees.', 'Jagmani Jungles', 'Jaguar Tribal'), (
  'Member of the Chameleon Tribe, who stalk the jungles, ambushing prey, and disappearing into the shadows as if by magic.', 'Jagmani Jungles', 'Chameleon Tribal'), (
  'A slave of the Priests of Mount Terror, until you escaped. You can Speak Blood Tongue', 'Jagmani Jungles', 'Slave'), (
  'A member of a clan of humans who worshipped the Great Snake. You were raised in this poisonous environment until rescued by hunters from one of the animal totem tribes.', 'Jagmani Jungles', 'Snake Clan'), (
  'Raised amongst Ape-Men who treated you as one of their own.', 'Jagmani Jungles', 'Tarzan'), (
  'Brought up in a Free Territory Trading Post. Mixing with the traders who passed through the post made you more sociable.', 'Jagmani Jungles', 'Trader'), (
  'Inhabitant of one of the lost cities of an ancient civilization from millennia ago. You learnt from Wise Ones about the mystical philosophies now long lost to most Zarthan''s.', 'Jagmani Jungles', 'Lost Civilization'), (
  'Member of a community descended from a group of explorers from the Free Territories. They came hundreds of years ago searching for treasure in the many ruins to be found in the Jungle.', 'Jagmani Jungles', 'Lost Tribal'), (
  'Your family are fallen nobility who fled Peopolis after the Beggar King came to power.', 'Free Territories', 'Refugee'), (
  'You were born into of one of the street gangs of Peopolis and were taught from an early age to be "quick or dead".', 'Free Territories', 'Streetwise'), (
  'Brought up in the Slave Pens of Shamuti, your childhood was a nightmare where only the strong survived.', 'Free Territories', 'Slave'), (
  'You were born under the shadow of the Lonely Colossus and are a bit strange for it.', 'Free Territories', 'City Folk'), (
  'Your family was blood bound to serve the Sorcerers of Port Black Mire.', 'Free Territories', 'Indentured'), (
  'A member of a hunter clan from the Black Mire. You hunted for game and treasure from the civilisations that existed before the marsh.', 'Free Territories', 'Hunter'), (
  'Member of a merchant clan, travelling the trade routes in caravans between the cities.', 'Free Territories', 'Merchant'), (
  'Descended from a long line of idealistic freedom fighters waging guerrilla war from the shadows to end the corruption of the Tyrants.', 'Free Territories', 'Revolutionary'), (
  'The offspring of a haughty and noble trader dealing with exotic and forbidden wares.', 'Myrindor', 'Trader'), (
  'Born into one of the elite mercenary companies, you deal in Myrindor''s deadly war arts.', 'Myrindor', 'Mercenary'), (
  'Your mother was a famous Sorceress. Your childhood was dominated by the turmoil that the constant stream of Sorcerers duels with rivals caused.', 'Myrindor', 'Mage-Borne'), (
  'You were a slave to a noble family, you became well used to their capricious whims and cruel behaviour.', 'Myrindor', 'Slave'), (
  'You were a slave to the Priest of the Outer Dark.', 'Myrindor', 'Slave'), (
  'Servant at the Monastery of Tribulation. What hardships you''ve endured and horrors you have witnessed as a result.', 'Myrindor', 'Servant'), (
  'You grew up without an immediate family in the great mass of citizens of Stinhar, in a drugged haze, full of wonder, spectacle and violence. You are one of the ''pretty'' ones who charmed the masked nobles and survived as a result.', 'Myrindor', 'Courtier'), (
  'You are one of the fisher people of the Deserted Coast. Compared to the city dwellers, you have a simple life of singing folk songs, eating and drinking heartily and occasionally running from the monsters that live in dark caves of the coast.', 'Myrindor', 'Fisher People'), (
  'Grew up in a trader family travelling on brightly coloured Selling Barges to foreign lands.', 'Four City Alliance', 'Trader'), (
  'From a young age you took part in the Temple Ball games. Avoiding the heavy body blows of your peers and the obsidian ball of murder that the game is played with.', 'Four City Alliance', 'Athlete'), (
  'A painted slave owned by a well off family, trained from a young age to pander to their every whim.', 'Four City Alliance', 'Slave'), (
  'A crafter slave who helped build one of the many grand public buildings that dominate the region''s landscape.', 'Four City Alliance', 'Slave'), (
  'Born into a religious family you were given an education in astrology, philosophy and the basics of sorcery.', 'Four City Alliance', 'Scholar'), (
  'Born into a warrior pack and fought against rival cities to gain sacrifices for the Elemental Lord of your City.', 'Four City Alliance', 'Warrior'), (
  'You were raised in a noble court. Although pandered and privileged growing up, you developed a strong sense of your own power and destiny to rule.', 'Four City Alliance', 'Noble'), (
  'Born into a farming clan, you poured the blood and mixed the crushed bones of sacrifices into the earth to ensure fertility. It was a life of simple but joyous toil, protected by the warrior clans and divine law.', 'Four City Alliance', 'Farmer'), (
  'You were born a barge slave, a hard life of fetching and carrying for uncaring masters and being chained under decks to the oars for the slightest offence.', 'Reaper''s Sea', 'Slave'), (
  'You had the privilege to be born into the family of a ship''s captain. As a result you are well versed with the strategies and tactics that your parent employed to keep their command.', 'Reaper''s Sea', 'Ship Commander'), (
  'The fleet you were born into was allied with the Isle of Skulls and its dark magics. You are hardened to the sight of the unnatural and the horrors of the Other Words.', 'Reaper''s Sea', 'Pirate'), (
  'Survivor of a disastrous raid into Myrindor, you spent your early years as a slave there until you managed to escape back to the pirate fleets.', 'Reaper''s Sea', 'Slave'), (
  'Brought up amongst the trader arm of your fleet, you are better at communication and negotiation than most of your pirate peers.', 'Reaper''s Sea', 'Trader'), (
  'You parents are ''Fixers'', crafters who fixed broken rigging, shattered rudders, and holes in the hull. Your childhood was spent merrily climbing around the ships of the fleet as a result.', 'Reaper''s Sea', 'Fixer'), (
  'After every savage battle your family would bind wounds, perform amputations and send the mortally wounded on their way. As healers they also dealt with outbreaks of plague and those whose minds snapped from a savage life on the seas.', 'Reaper''s Sea', 'Healer'), (
  'Your family were what the pirates call Pearl Fishers. They earned their living diving for pearls from oysters when the fleet found a suitable anchor. They would also search for any treasure or valuables that could be discovered on the ocean bed, especially after sea battles.', 'Reaper''s Sea', 'Pearl Fisher');

-- ADD background's RELATED modifierss
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Graverobber'),
  'EQUIP_ELEMENT_DEXTERITY',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Sailor'),
  'EQUIP_ELEMENT_STRENGTH',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Thrall'),
  'EQUIP_ELEMENT_CONSTITUTION',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Scion'),
  'EQUIP_ELEMENT_DEXTERITY',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Servant'),
  'EQUIP_ELEMENT_INTELLIGENCE',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Refugee'),
  'EQUIP_ELEMENT_CONSTITUTION',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Freeman'),
  'EQUIP_ELEMENT_WISDOM',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Fisherman'),
  'EQUIP_ELEMENT_WISDOM',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Slave'),
  'EQUIP_ELEMENT_CONSTITUTION',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Horseman'),
  'EQUIP_ELEMENT_STRENGTH',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Apprentice'),
  'EQUIP_ELEMENT_INTELLIGENCE',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Orphan'),
  'EQUIP_ELEMENT_WISDOM',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Mountain Folk'),
  'EQUIP_ELEMENT_CONSTITUTION',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Hunter'),
  'EQUIP_ELEMENT_DEXTERITY',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Warrior'),
  'EQUIP_ELEMENT_STRENGTH',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Frontier Folk'),
  'EQUIP_ELEMENT_WISDOM',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Slave'),
  'EQUIP_ELEMENT_STRENGTH',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Apprentice'),
  'EQUIP_ELEMENT_INTELLIGENCE',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Homing Pigeon'),
  'EQUIP_ELEMENT_DEXTERITY',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Villager'),
  'EQUIP_ELEMENT_WISDOM',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Morlock'),
  'EQUIP_ELEMENT_CONSTITUTION',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Hunter'),
  'EQUIP_ELEMENT_DEXTERITY',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Occultist'),
  'EQUIP_ELEMENT_INTELLIGENCE',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Dinosaur Rider'),
  'EQUIP_ELEMENT_STRENGTH',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Jaguar Tribal'),
  'EQUIP_ELEMENT_STRENGTH',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Chameleon Tribal'),
  'EQUIP_ELEMENT_INTELLIGENCE',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Slave'),
  'EQUIP_ELEMENT_CONSTITUTION',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Snake Clan'),
  'EQUIP_ELEMENT_WISDOM',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Tarzan'),
  'EQUIP_ELEMENT_STRENGTH',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Trader'),
  'EQUIP_ELEMENT_CHARISMA',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Lost Civilization'),
  'EQUIP_ELEMENT_WISDOM',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Lost Tribal'),
  'EQUIP_ELEMENT_DEXTERITY',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Refugee'),
  'EQUIP_ELEMENT_CHARISMA',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Streetwise'),
  'EQUIP_ELEMENT_DEXTERITY',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Slave'),
  'EQUIP_ELEMENT_STRENGTH',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='City Folk'),
  'EQUIP_ELEMENT_WISDOM',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Indentured'),
  'EQUIP_ELEMENT_INTELLIGENCE',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Hunter'),
  'EQUIP_ELEMENT_DEXTERITY',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Merchant'),
  'EQUIP_ELEMENT_WISDOM',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Revolutionary'),
  'EQUIP_ELEMENT_CHARISMA',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Trader'),
  'EQUIP_ELEMENT_INTELLIGENCE',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Mercenary'),
  'EQUIP_ELEMENT_STRENGTH',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Mage-Borne'),
  'EQUIP_ELEMENT_INTELLIGENCE',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Slave'),
  'EQUIP_ELEMENT_WISDOM',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Slave'),
  'EQUIP_ELEMENT_WISDOM',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Servant'),
  'EQUIP_ELEMENT_CONSTITUTION',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Courtier'),
  'EQUIP_ELEMENT_CHARISMA',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Fisher People'),
  'EQUIP_ELEMENT_DEXTERITY',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Trader'),
  'EQUIP_ELEMENT_CHARISMA',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Athlete'),
  'EQUIP_ELEMENT_DEXTERITY',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Slave'),
  'EQUIP_ELEMENT_WISDOM',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Slave'),
  'EQUIP_ELEMENT_STRENGTH',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Scholar'),
  'EQUIP_ELEMENT_INTELLIGENCE',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Warrior'),
  'EQUIP_ELEMENT_STRENGTH',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Noble'),
  'EQUIP_ELEMENT_CHARISMA',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Farmer'),
  'EQUIP_ELEMENT_CONSTITUTION',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Slave'),
  'EQUIP_ELEMENT_CONSTITUTION',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Ship Commander'),
  'EQUIP_ELEMENT_INTELLIGENCE',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Pirate'),
  'EQUIP_ELEMENT_WISDOM',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Slave'),
  'EQUIP_ELEMENT_CONSTITUTION',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Trader'),
  'EQUIP_ELEMENT_CHARISMA',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Fixer'),
  'EQUIP_ELEMENT_DEXTERITY',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Healer'),
  'EQUIP_ELEMENT_WISDOM',
  'PLUS_1');
INSERT INTO sw_ct.background_modifiers_lookup(background_id, key, value) VALUES (
  (SELECT background_id FROM sw_ct.background WHERE name='Pearl Fisher'),
  'EQUIP_ELEMENT_DEXTERITY',
  'PLUS_1');


-- ADD OBJECT_TYPES
INSERT INTO sw_ct.object_type(code, flag) VALUES(
  'OBJECT_TYPE_WEAPON', 1), (
  'OBJECT_TYPE_DAGGER', 2), (
  'OBJECT_TYPE_1H', 4), (
  'OBJECT_TYPE_2H', 8), (
  'OBJECT_TYPE_BOW', 16), (
  'OBJECT_TYPE_SHIELD', 32), (
  'OBJECT_TYPE_FOOD', 64), (
  'OBJECT_TYPE_GOLD', 128), (
  'OBJECT_TYPE_ARMOR', 256), (
  'OBJECT_TYPE_HELMET', 512), (
  'OBJECT_TYPE_RING', 1024), (
  'OBJECT_TYPE_LEGGINGS', 2048);


-- ADD IO_ITEM_DATAS
INSERT INTO sw_ct.io_item_data(count, damages, description, food_value, internal_script, left_ring, light_value, max_owned, name, price, ring_type, stack_size, steal_value, weight) VALUES(
-- ADD io_item_data's RELATED groupss

-- ADD io_item_data's RELATED typess

-- ADD io_item_data's RELATED modifierss


-- ADD SCRIPT_ACTION_TYPES
INSERT INTO sw_ct.script_action_type(code) VALUES(

-- ADD SCRIPT_ACTIONS
INSERT INTO sw_ct.script_action(name, type) VALUES(

-- ADD SCRIPT_BUNDLES
INSERT INTO sw_ct.script_bundle(name) VALUES(
-- ADD script_bundle's RELATED scriptss


-- ADD IO_PC_DATAS
INSERT INTO sw_ct.io_pc_data(background, bags, flags, gender, gold, homeland, interface_flags, internal_script, level, xp) VALUES(
-- ADD io_pc_data's RELATED groupss

-- ADD io_pc_data's RELATED attributess

-- ADD io_pc_data's RELATED scripted_eventss


-- ADD SKILLS
INSERT INTO sw_ct.skill(description, name) VALUES(

