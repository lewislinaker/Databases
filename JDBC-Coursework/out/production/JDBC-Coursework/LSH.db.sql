CREATE TABLE planets (popvalue INTEGER, planet_id INTEGERPRIMARY KEY, name VARCHAR(15)NOT NULL); 
CREATE TABLE heroes (secretIdentity VARCHAR(30), codename VARCHAR(30), hero_id INTEGERPRIMARY KEY, homeWorld_id INTEGER, FOREIGN KEY (homeWorld_id) REFERENCES planets (planet_id)); 
CREATE TABLE powers (description VARCHAR (100), hero_id INTEGER, PRIMARY KEY (description, hero_id), FOREIGN KEY (hero_id) REFERENCES heroes (hero_id)); 
CREATE TABLE missions (name VARCHAR (100)PRIMARY KEY, planet_name VARCHAR (15)NOT NULL, FOREIGN KEY (planet_name) REFERENCES planets (name)); 

INSERT INTO planets (popvalue, planet_id, name) VALUES ("17", "1", "Antares"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("8", "2", "Bgztl"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("27", "3", "Bismoll"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("8", "4", "Braal"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("20", "5", "Cargg"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("30", "6", "Colu"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("30", "7", "Daxam"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("\N", "8", "Dryad"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("10", "9", "Durla"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("\N", "10", "Earth"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("\N", "11", "Hyrakius"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("27", "12", "Imsk"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("0", "13", "Krypton"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("27", "14", "Naltor"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("8", "15", "Orando"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("\N", "16", "Phlon"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("30", "17", "Rimbor"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("27", "18", "Starhaven"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("27", "19", "Talok VIII"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("\N", "20", "Teall"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("27", "21", "Tharr"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("\N", "22", "Titan"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("27", "23", "Trom"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("8", "24", "Winath"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("\N", "25", "Xanthu"); 
INSERT INTO planets (popvalue, planet_id, name) VALUES ("34", "26", "Zoon"); 

INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Rokk Krinn ", "Cosmic Boy", "1", "4"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Garth Ranzz ", "Lightning Lad ", "2", "24"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Imra Ardeen ", "Saturn Girl ", "3", "22"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Luornu Durgo ", "Triplicate Girl", "4", "5"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Tinya Wazzo ", "Phantom Girl", "5", "2"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Kal-El (a.k.a. Clark Kent) ", "Superboy", "6", "13"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Reep Daggle ", "Chameleon Boy", "7", "9"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Gim Allon ", "Colossal Boy ", "8", "10"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Lyle Norg ", "Invisible Kid ", "9", "10"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Thom Kallor ", "Star Boy ", "10", "25"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("James Cullen ", "Kid Quantum ", "11", "1"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Querl Dox ", "Brainiac 5", "12", "6"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Kara Zor-El", "Supergirl ", "13", "13"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("", "Laurel Gand ", "14", "7"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Dirk Morgna ", "Sun Boy ", "15", "10"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Salu Digby ", "Shrinking Violet", "16", "12"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Chuck Taine ", "Bouncing Boy ", "17", "10"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Jo Nah ", "Ultra Boy", "18", "17"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Lar Gand ", "Mon-El", "19", "7"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Tenzil Kem ", "Matter-Eater Lad ", "20", "3"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Jan Arrah ", "Element Lad", "21", "21"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Ayla Ranzz ", "Lightning Lass", "22", "24"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Nura Nal ", "Dream Girl ", "23", "14"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Andrew Nolan ", "Ferro Lad ", "24", "10"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Val Armorr ", "Karate Kid ", "25", "10"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Projectra Wind'zzor ", "Princess Projectra", "26", "15"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Tasmia Mallor ", "Shadow Lass ", "27", "19"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Condo Arlik ", "Chemical King ", "28", "16"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Brin Londo ", "Timber Wolf", "29", "26"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Drake Burroughs ", "Wildfire", "30", "10"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Troy Stewart ", "Tyroc ", "31", "10"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("", "Dawnstar", "32", "18"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("", "Blok ", "33", "8"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Jacques Foccart ", "Invisible Kid II ", "34", "10"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Mysa Nal ", "White Witch", "35", "14"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Pol Krinn ", "Magnetic Kid ", "36", "4"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Brek Bannin ", "Polar Boy ", "37", "21"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("(an unpronounceable glyph) ", "Quislet ", "38", "20"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Ganglios ", "Tellus ", "39", "11"); 
INSERT INTO heroes (secretIdentity, codename, hero_id, homeWorld_id) VALUES ("Nobody", "Hero on non-existant planet", "40", "473"); 

INSERT INTO missions (name, planet_name) VALUES ("Darkseid", "Apocalypse"); 
INSERT INTO missions (name, planet_name) VALUES ("Earth War", "Earth"); 
INSERT INTO missions (name, planet_name) VALUES ("Planet Kidnap", "Daxam"); 
INSERT INTO missions (name, planet_name) VALUES ("Mission on non-existant planet", "Zorgorn"); 

INSERT INTO powers (description, hero_id) VALUES ("Magnetism manipulation", "1"); 
INSERT INTO powers (description, hero_id) VALUES ("control and generation of magnetic fields", "1"); 
INSERT INTO powers (description, hero_id) VALUES ("Electrical manipulation", "2"); 
INSERT INTO powers (description, hero_id) VALUES ("control and generation of electrical fields", "2"); 
INSERT INTO powers (description, hero_id) VALUES ("Telepathy", "3"); 
INSERT INTO powers (description, hero_id) VALUES ("ability to read and control minds", "3"); 
INSERT INTO powers (description, hero_id) VALUES ("Ability to split into three bodies", "4"); 
INSERT INTO powers (description, hero_id) VALUES ("Intangibility", "5"); 
INSERT INTO powers (description, hero_id) VALUES ("Flight", "6"); 
INSERT INTO powers (description, hero_id) VALUES ("Invulnerability", "6"); 
INSERT INTO powers (description, hero_id) VALUES ("Superhuman Strength", "6"); 
INSERT INTO powers (description, hero_id) VALUES ("Superhuman Speed", "6"); 
INSERT INTO powers (description, hero_id) VALUES ("Super vision, consisting of", "6"); 
INSERT INTO powers (description, hero_id) VALUES ("X-Ray Vision", "6"); 
INSERT INTO powers (description, hero_id) VALUES ("Telescopic/Microscopic Vision", "6"); 
INSERT INTO powers (description, hero_id) VALUES ("Heat Vision", "6"); 
INSERT INTO powers (description, hero_id) VALUES ("Super-hearing", "6"); 
INSERT INTO powers (description, hero_id) VALUES ("Super Breath (including Freeze Breath)", "6"); 
INSERT INTO powers (description, hero_id) VALUES ("Eidetic memory", "6"); 
INSERT INTO powers (description, hero_id) VALUES ("Regeneration", "6"); 
INSERT INTO powers (description, hero_id) VALUES ("Longevity", "6"); 
INSERT INTO powers (description, hero_id) VALUES ("Other enhanced physical senses (including olfaction)", "6"); 
INSERT INTO powers (description, hero_id) VALUES ("Shapeshifting", "7"); 
INSERT INTO powers (description, hero_id) VALUES ("Ability to grow to gigantic size", "8"); 
INSERT INTO powers (description, hero_id) VALUES ("Invisibility to the naked eye", "9"); 
INSERT INTO powers (description, hero_id) VALUES ("Ability to increase the mass of objects", "10"); 
INSERT INTO powers (description, hero_id) VALUES ("Ability to cast stasis fields", "11"); 
INSERT INTO powers (description, hero_id) VALUES ("12th level intelligence", "12"); 
INSERT INTO powers (description, hero_id) VALUES ("Flight", "13"); 
INSERT INTO powers (description, hero_id) VALUES ("Invulnerability", "13"); 
INSERT INTO powers (description, hero_id) VALUES ("Superhuman Strength", "13"); 
INSERT INTO powers (description, hero_id) VALUES ("Superhuman Speed", "13"); 
INSERT INTO powers (description, hero_id) VALUES ("Super vision, consisting of", "13"); 
INSERT INTO powers (description, hero_id) VALUES ("X-Ray Vision", "13"); 
INSERT INTO powers (description, hero_id) VALUES ("Telescopic/Microscopic Vision", "13"); 
INSERT INTO powers (description, hero_id) VALUES ("Heat Vision", "13"); 
INSERT INTO powers (description, hero_id) VALUES ("Super-hearing", "13"); 
INSERT INTO powers (description, hero_id) VALUES ("Super Breath (including Freeze Breath)", "13"); 
INSERT INTO powers (description, hero_id) VALUES ("Eidetic memory", "13"); 
INSERT INTO powers (description, hero_id) VALUES ("Regeneration", "13"); 
INSERT INTO powers (description, hero_id) VALUES ("Longevity", "13"); 
INSERT INTO powers (description, hero_id) VALUES ("Other enhanced physical senses (including olfaction)", "13"); 
INSERT INTO powers (description, hero_id) VALUES ("Flight", "14"); 
INSERT INTO powers (description, hero_id) VALUES ("Invulnerability", "14"); 
INSERT INTO powers (description, hero_id) VALUES ("Superhuman Strength", "14"); 
INSERT INTO powers (description, hero_id) VALUES ("Superhuman Speed", "14"); 
INSERT INTO powers (description, hero_id) VALUES ("Super vision, consisting of", "14"); 
INSERT INTO powers (description, hero_id) VALUES ("X-Ray Vision", "14"); 
INSERT INTO powers (description, hero_id) VALUES ("Telescopic/Microscopic Vision", "14"); 
INSERT INTO powers (description, hero_id) VALUES ("Heat Vision", "14"); 
INSERT INTO powers (description, hero_id) VALUES ("Super-hearing", "14"); 
INSERT INTO powers (description, hero_id) VALUES ("Super Breath (including Freeze Breath)", "14"); 
INSERT INTO powers (description, hero_id) VALUES ("Eidetic memory", "14"); 
INSERT INTO powers (description, hero_id) VALUES ("Regeneration", "14"); 
INSERT INTO powers (description, hero_id) VALUES ("Longevity", "14"); 
INSERT INTO powers (description, hero_id) VALUES ("Other enhanced physical senses (including olfaction)", "14"); 
INSERT INTO powers (description, hero_id) VALUES ("light generation", "15"); 
INSERT INTO powers (description, hero_id) VALUES ("Heat generation", "15"); 
INSERT INTO powers (description, hero_id) VALUES ("Ability to shrink to microscopic size", "16"); 
INSERT INTO powers (description, hero_id) VALUES ("Super-bouncing", "17"); 
INSERT INTO powers (description, hero_id) VALUES ("Super-strength", "18"); 
INSERT INTO powers (description, hero_id) VALUES ("super-speed", "18"); 
INSERT INTO powers (description, hero_id) VALUES ("flight", "18"); 
INSERT INTO powers (description, hero_id) VALUES ("invulnerability", "18"); 
INSERT INTO powers (description, hero_id) VALUES ("flash vision", "18"); 
INSERT INTO powers (description, hero_id) VALUES ("penetra-vision", "18"); 
INSERT INTO powers (description, hero_id) VALUES ("Flight", "19"); 
INSERT INTO powers (description, hero_id) VALUES ("Invulnerability", "19"); 
INSERT INTO powers (description, hero_id) VALUES ("Superhuman Strength", "19"); 
INSERT INTO powers (description, hero_id) VALUES ("Superhuman Speed", "19"); 
INSERT INTO powers (description, hero_id) VALUES ("Super vision, consisting of", "19"); 
INSERT INTO powers (description, hero_id) VALUES ("X-Ray Vision", "19"); 
INSERT INTO powers (description, hero_id) VALUES ("Telescopic/Microscopic Vision", "19"); 
INSERT INTO powers (description, hero_id) VALUES ("Heat Vision", "19"); 
INSERT INTO powers (description, hero_id) VALUES ("Super-hearing", "19"); 
INSERT INTO powers (description, hero_id) VALUES ("Super Breath (including Freeze Breath)", "19"); 
INSERT INTO powers (description, hero_id) VALUES ("Eidetic memory", "19"); 
INSERT INTO powers (description, hero_id) VALUES ("Regeneration", "19"); 
INSERT INTO powers (description, hero_id) VALUES ("Longevity", "19"); 
INSERT INTO powers (description, hero_id) VALUES ("Other enhanced physical senses (including olfaction)", "19"); 
INSERT INTO powers (description, hero_id) VALUES ("Can eat any substance", "20"); 
INSERT INTO powers (description, hero_id) VALUES ("Elemental transmutation", "21"); 
INSERT INTO powers (description, hero_id) VALUES ("Electrical manipulation", "22"); 
INSERT INTO powers (description, hero_id) VALUES ("control and generation of electrical fields", "22"); 
INSERT INTO powers (description, hero_id) VALUES ("Precognition", "23"); 
INSERT INTO powers (description, hero_id) VALUES ("Ability to transform into iron", "24"); 
INSERT INTO powers (description, hero_id) VALUES ("superhuman strength", "24"); 
INSERT INTO powers (description, hero_id) VALUES ("invulnerability", "24"); 
INSERT INTO powers (description, hero_id) VALUES ("Mastery of all known martial arts", "25"); 
INSERT INTO powers (description, hero_id) VALUES ("Generation of illusions", "26"); 
INSERT INTO powers (description, hero_id) VALUES ("Shadow-casting", "27"); 
INSERT INTO powers (description, hero_id) VALUES ("Control over the rate of chemical reactions", "28"); 
INSERT INTO powers (description, hero_id) VALUES ("Superhuman agility", "29"); 
INSERT INTO powers (description, hero_id) VALUES ("Superhuman strength", "29"); 
INSERT INTO powers (description, hero_id) VALUES ("Energy blasts", "30"); 
INSERT INTO powers (description, hero_id) VALUES ("Energy manipulation", "30"); 
INSERT INTO powers (description, hero_id) VALUES ("flight.", "30"); 
INSERT INTO powers (description, hero_id) VALUES ("Sonic power that creates unusual effects", "31"); 
INSERT INTO powers (description, hero_id) VALUES ("Interstellar tracking", "32"); 
INSERT INTO powers (description, hero_id) VALUES ("unaided space travel", "32"); 
INSERT INTO powers (description, hero_id) VALUES ("flight", "32"); 
INSERT INTO powers (description, hero_id) VALUES ("Superhuman strength", "33"); 
INSERT INTO powers (description, hero_id) VALUES ("Superhuman physical resistance", "33"); 
INSERT INTO powers (description, hero_id) VALUES ("deliberately wrong", "500"); 
INSERT INTO powers (description, hero_id) VALUES ("energy absorption", "33"); 
INSERT INTO powers (description, hero_id) VALUES ("Invisibility to the naked eye and to most forms of detection", "34"); 
INSERT INTO powers (description, hero_id) VALUES ("Spellcasting", "35"); 
INSERT INTO powers (description, hero_id) VALUES ("Magnetism manipulation", "36"); 
INSERT INTO powers (description, hero_id) VALUES ("ability to generate and control magnetic fields", "36"); 
INSERT INTO powers (description, hero_id) VALUES ("Cold manipulation", "37"); 
INSERT INTO powers (description, hero_id) VALUES ("ability to absorb heat and produce cold", "37"); 
INSERT INTO powers (description, hero_id) VALUES ("Telepathy", "39"); 
INSERT INTO powers (description, hero_id) VALUES ("telekinesis", "39"); 

