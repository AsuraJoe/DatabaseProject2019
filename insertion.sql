set FOREIGN_KEY_CHECKS =0;
/*users*/
insert into user( username, pass, email, moderator) Values ('TN', 'qwer7898', 'skyrider245@gmail.com', true );
insert into user( username, pass, email, moderator) Values ('meloneater', 'YuanyesPassword', 'yuanyegeng@gmail.com', true );
insert into user( username, pass, email, moderator) Values ('dxeman', 'DevonsPassword', 'dvon@gmail.com', true );
/*entity*/
insert INTO entity(entity_id,entity_name) Values(1,'Dropped Item');
insert INTO entity(entity_id,entity_name) Values(2,'Experience Orb');
insert INTO entity(entity_id,entity_name) Values(3,'Area Effect Cloud');
insert INTO entity(entity_id,entity_name) Values(5,'Wither Skeleton');
insert INTO entity(entity_id,entity_name) Values(7,'Egg');
insert INTO entity(entity_id,entity_name) Values(9,'Painting');
insert INTO entity(entity_id,entity_name) Values(10,'Arrow');
insert INTO entity(entity_id,entity_name) Values(11,'Snowball');
insert INTO entity(entity_id,entity_name) Values(14,'Ender Pearl');
insert INTO entity(entity_id,entity_name) Values(15,'Eye of Ender');
insert INTO entity(entity_id,entity_name) Values(21,'Falling Block');
insert INTO entity(entity_id,entity_name) Values(30,'Armor Stand');
insert INTO entity(entity_id,entity_name) Values(42,'Minecart');
insert INTO entity(entity_id,entity_name) Values(50,'Creeper');
insert INTO entity(entity_id,entity_name) Values(51,'Skeleton');
insert INTO entity(entity_id,entity_name) Values(52,'Spider');
insert INTO entity(entity_id,entity_name) Values(54,'Zombie');
insert INTO entity(entity_id,entity_name) Values(55,'Slime');
insert INTO entity(entity_id,entity_name) Values(56,'Ghast');
insert INTO entity(entity_id,entity_name) Values(58,'Endermen');
insert INTO entity(entity_id,entity_name) Values(59,'Cave Spider');
insert INTO entity(entity_id,entity_name) Values(61,'Blaze');
insert INTO entity(entity_id,entity_name) Values(68,'Guardian');
insert INTO entity(entity_id,entity_name) Values(90,'Pig');
insert INTO entity(entity_id,entity_name) Values(91,'Sheep');
insert INTO entity(entity_id,entity_name) Values(92,'Cow');
insert INTO entity(entity_id,entity_name) Values(93,'Chicken');
insert INTO entity(entity_id,entity_name) Values(95,'Wolf');
insert INTO entity(entity_id,entity_name) Values(120,'Villager');

insert into mob_properties(entity_id,default_health,hostility) values(50,20,'hostile');
insert into mob_properties(entity_id,default_health,hostility) values(51,20,'hostile');
insert into mob_properties(entity_id,default_health,hostility) values(52,20,'hostile');
insert into mob_properties(entity_id,default_health,hostility) values(54,20,'hostile');
insert into mob_properties(entity_id,default_health,hostility) values(55,20,'hostile');
insert into mob_properties(entity_id,default_health,hostility) values(58,30,'hostile - passive');
insert into mob_properties(entity_id,default_health,hostility) values(59,20,'hostile');
insert into mob_properties(entity_id,default_health,hostility) values(61,20,'hostile');
insert into mob_properties(entity_id,default_health,hostility) values(68,20,'hostile');
insert into mob_properties(entity_id,default_health,hostility) values(90,10,'passive');
insert into mob_properties(entity_id,default_health,hostility) values(91,10,'passive');
insert into mob_properties(entity_id,default_health,hostility) values(92,10,'passive');
insert into mob_properties(entity_id,default_health,hostility) values(95,5,'hosile - passive');
insert into mob_properties(entity_id,default_health,hostility) values(120,15,'passive');


/*entity_instance*/
insert INTO entity_instance( entity_id,x,y,z)Values(50,1.1,1.2,1.3);

/*insert item*/
/*Placable means it can be placed*/ 
insert INTO item (item_id, item_name, max_stack,placeable) Values(267,'Iron Sword',1,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(258,'Iron Axe',1,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(292,'Iron Hoe',1,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(260,'Apple',64,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(334,'Leather',64,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(325,'Bucket',16,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(309,'Iron Boots',1,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(306,'Iron Helmet',1,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(308,'Iron Leggings',1,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(307,'Iron Chestplate',1,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(345,'Compass',64,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(280,'Stick',64,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(361,'Pumpkin Seeds',64,true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(368,'Ender Pearl',64,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(381,'Eye of Ender',64,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(392,'Potato',64,true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(420,'Lead',64,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(332,'Snowball',16,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(346,'Fishing Rod',1,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(340,'Book',64,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(262,'Arrow',64,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(296,'Wheat',64,true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(264,'Diamond',64,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(339,'Paper',64,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(374,'Glass Bottle',64,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(289,'Gunpowder',64,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(363,'Raw Beef',64,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(261,'Bow',1,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(344,'Egg',16,false);
insert INTO item (item_id, item_name, max_stack,placeable) Values(45,'Bricks', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(17,'Oak Wood', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(4,'Cobblestone', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(1,'Stone', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(77,'Stone Button', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(64,'Oak Door', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(85,'Oak Fence', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(107, 'Oak Fence Gate', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(18,'Oak Leaves', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(5,'Oak Wood Planks', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(70,'Stone Pressure Plate', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(6,'Oak Sapling', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(63,'Sign', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(157,'Activator Rail', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(37,'Dandelion', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(53,'Oak Wood Stairs', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(145,'Anvil', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(138,'Beacon', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(171,'White Carpet',64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(26,'Bed', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(252,'White Concrete Powder', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(20,'Glass', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(35,'White Wool', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(173, 'Block of Coal', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(57,'Diamond Block', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(133,'Emerald Block', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(41,'Gold Block', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(42,'Iron Block', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(47,'Bookshelf', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(81,'Cactus', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(54,'Chest', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(3,'Dirt', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(2,'Grass', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(24,'Sandstone', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(61,'Furnace', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(13,'Gravel', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(168, 'Prismarine', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(56, 'Diamond Ore', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(79, 'Ice', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(12,'Sand', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(78, 'Snow', 64, true);
insert INTO item (item_id, item_name, max_stack,placeable) Values(318, 'Flint', 64, true);


/*item_instance*/
insert INTO item_instance(stack, item_id) values (60,45);
insert INTO item_instance(stack, item_id) values (1,267);
insert INTO item_instance(stack, item_id) values (49,79);
insert INTO item_instance(stack, item_id) values (1,267);
insert INTO item_instance(stack, item_id) values (34,79);
insert INTO item_instance(stack, item_id) values (5,77);
insert INTO item_instance(stack, item_id) values (1,258);
insert INTO item_instance(stack, item_id) values (30,56);
insert INTO item_instance(stack, item_id) values (19,168);
insert INTO item_instance(stack, item_id) values (56,318);
insert INTO item_instance(stack, item_id) values (1,267);
insert INTO item_instance(stack, item_id) values (1,258);
insert INTO item_instance(stack, item_id) values (40,264);
insert INTO item_instance(stack, item_id) values (1,292);

/*insert block*/
/*gravity should be false for almost everything*/
insert INTO block(block_id, block_name, transparent, gravity) Values(45,'Bricks', false, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(17,'Oak Wood', false, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(4,'Cobblestone', false, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(1,'Stone', false, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(77,'Stone Button', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(64,'Oak Door', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(85,'Oak Fence', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(107, 'Oak Fence Gate', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(18,'Oak Leaves', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(5,'Oak Wood Planks', false, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(70,'Stone Pressure Plate', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(6,'Oak Sapling', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(63,'Sign', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(157,'Activator Rail', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(37,'Dandelion', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(53,'Oak Wood Stairs', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(145,'Anvil', true, true);
insert INTO block(block_id, block_name, transparent, gravity) Values(138,'Beacon', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(171,'White Carpet', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(26,'Bed', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(252,'White Concrete Powder', false, true);
insert INTO block(block_id, block_name, transparent, gravity) Values(20,'Glass', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(35,'White Wool', false, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(173, 'Block of Coal', false, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(57,'Diamond Block', false, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(133,'Emerald Block', false, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(41,'Gold Block', false, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(42,'Iron Block', false, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(47,'Bookshelf', false, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(81,'Cactus', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(54,'Chest', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(3,'Dirt', false, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(2,'Grass', false, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(24,'Sandstone', false, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(61,'Furnace', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(13,'Gravel', false, true);
insert INTO block(block_id, block_name, transparent, gravity) Values(168, 'Prismarine', false, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(56, 'Diamond Ore', false, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(9, 'Still Water', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(79, 'Ice', true, false);
insert INTO block(block_id, block_name, transparent, gravity) Values(12,'Sand', false, true);
insert INTO block(block_id, block_name, transparent, gravity) Values(78, 'Snow', true, false);


/*insert block_instance*/
insert INTO block_instance(breaking_stage,x,y,z) Values(1,2,3,4);

/*chunk*/


/*biome*/
insert INTO biome(name) values ('Ocean');
insert INTO biome(name) values ('Frozen Ocean');
insert INTO biome(name) values ('River');
insert INTO biome(name) values ('Frozen River');
insert INTO biome(name) values ('Beach');
insert INTO biome(name) values ('Forest');
insert INTO biome(name) values ('Wooded Hills');
insert INTO biome(name) values ('Birch Forest');
insert INTO biome(name) values ('Birch Forest Hills');
insert INTO biome(name) values ('Dark Forest');
insert INTO biome(name) values ('Dark Forest Hills');
insert INTO biome(name) values ('Taiga');
insert INTO biome(name) values ('Taiga Mountains');
insert INTO biome(name) values ('Swamp');
insert INTO biome(name) values ('Savanna');
insert INTO biome(name) values ('Plains');
insert INTO biome(name) values ('Sunflower Plains');
insert INTO biome(name) values ('Desert');
insert INTO biome(name) values ('Desert Hills');
insert INTO biome(name) values ('Desert Lakes');
insert INTO biome(name) values ('Snowy Tundra');
insert INTO biome(name) values ('Snowy Mountains');
insert INTO biome(name) values ('Mountains');
insert INTO biome(name) values ('Wooded Mountains');
insert INTO biome(name) values ('Gravelly Mountains');

/*biome_blocks*/
insert INTO biome_blocks(name, block_id) Values ('Ocean',9);
insert INTO biome_blocks(name, block_id) Values ('Frozen Ocean',9);
insert INTO biome_blocks(name, block_id) Values ('Frozen Ocean',79);
insert INTO biome_blocks(name, block_id) Values ('River',9);
insert INTO biome_blocks(name, block_id) Values ('Frozen River',79);
insert INTO biome_blocks(name, block_id) Values ('Beach',12);
insert INTO biome_blocks(name, block_id) Values ('Beach',9);
insert INTO biome_blocks(name, block_id) Values ('Forest',2);
insert INTO biome_blocks(name, block_id) Values ('Wooded Hills',2);
insert INTO biome_blocks(name, block_id) Values ('Birch Forest',2);
insert INTO biome_blocks(name, block_id) Values ('Birch Forest Hills',2);
insert INTO biome_blocks(name, block_id) Values ('Dark Forest',2);
insert INTO biome_blocks(name, block_id) Values ('Dark Forest Hills',2);
insert INTO biome_blocks(name, block_id) Values ('Taiga',2);
insert INTO biome_blocks(name, block_id) Values ('Taiga',78);
insert INTO biome_blocks(name, block_id) Values ('Taiga Mountains',1);
insert INTO biome_blocks(name, block_id) Values ('Taiga Mountains',2);
insert INTO biome_blocks(name, block_id) Values ('Taiga Mountains',78);
insert INTO biome_blocks(name, block_id) Values ('Swamp',2);
insert INTO biome_blocks(name, block_id) Values ('Swamp',9);
insert INTO biome_blocks(name, block_id) Values ('Savanna',2);
insert INTO biome_blocks(name, block_id) Values ('Plains',2);
insert INTO biome_blocks(name, block_id) Values ('Sunflower Plains',2);
insert INTO biome_blocks(name, block_id) Values ('Desert',12);
insert INTO biome_blocks(name, block_id) Values ('Desert Hills',12);
insert INTO biome_blocks(name, block_id) Values ('Desert Lakes',12);
insert INTO biome_blocks(name, block_id) Values ('Desert Lakes',9);
insert INTO biome_blocks(name, block_id) Values ('Snowy Tundra',2);
insert INTO biome_blocks(name, block_id) Values ('Snowy Tundra',9);
insert INTO biome_blocks(name, block_id) Values ('Snowy Tundra',78);
insert INTO biome_blocks(name, block_id) Values ('Snowy Mountains',2);
insert INTO biome_blocks(name, block_id) Values ('Snowy Mountains',1);
insert INTO biome_blocks(name, block_id) Values ('Snowy Mountains',78);
insert INTO biome_blocks(name, block_id) Values ('Mountains',1);
insert INTO biome_blocks(name, block_id) Values ('Mountains',2);
insert INTO biome_blocks(name, block_id) Values ('Wooded Mountains',1);
insert INTO biome_blocks(name, block_id) Values ('Wooded Mountains',2);
insert INTO biome_blocks(name, block_id) Values ('Gravelly Mountains',1);
insert INTO biome_blocks(name, block_id) Values ('Gravelly Mountains',2);
insert INTO biome_blocks(name, block_id) Values ('Gravelly Mountains',13);

/*structure*/
insert INTO structure(name, biome)values ('Mineshaft','Overworld');
insert INTO structure(name, biome)values ('Stronghold','Any');
insert INTO structure(name, biome)values ('Fossil','Desert');
insert INTO structure(name, biome)values ('Buried treasure','Beach, Snowy Beach, Ocean, Stone Shore');
insert INTO structure(name, biome)values ('Ocean ruin','Ocean, Beach');
insert INTO structure(name, biome)values ('Shipwreck','Ocean, Beach');
insert INTO structure(name, biome)values ('Ocean Monument','Deep Ocean');
insert INTO structure(name, biome)values ('Desert pyramid','Desert');
insert INTO structure(name, biome)values ('Igloo','Snowy Tundra');
insert INTO structure(name, biome)values ('Jungle pyramid','Jungle');
insert INTO structure(name, biome)values ('Village','Plains, Desert, Taipa');
insert INTO structure(name, biome)values ('Swamp hut','Swamp');
insert INTO structure(name, biome)values ('Woodland mansion','Deep Forest');
insert INTO structure(name, biome)values ('Dungeon','Any');

/*insert enchantment*/
/*max level cant be int '1' as 'I' */
insert INTO enchantment(enchantment_name,max_level)values('Aqua Affinity', 1);
insert INTO enchantment(enchantment_name,max_level)values('Bane of Arthropods', 4);
insert INTO enchantment(enchantment_name,max_level)values('Blast Protection', 5);
insert INTO enchantment(enchantment_name,max_level)values('Channeling', 1);
insert INTO enchantment(enchantment_name,max_level)values('Curse of Binding', 1);
insert INTO enchantment(enchantment_name,max_level)values('Curse of Vanishing', 1);
insert INTO enchantment(enchantment_name,max_level)values('Depth Strider', 3);
insert INTO enchantment(enchantment_name,max_level)values('Efficiency', 4);
insert INTO enchantment(enchantment_name,max_level)values('Feather Falling', 5);
insert INTO enchantment(enchantment_name,max_level)values('Fire Aspect', 2);
insert INTO enchantment(enchantment_name,max_level)values('Fire Protection', 5);
insert INTO enchantment(enchantment_name,max_level)values('Flame', 1);
insert INTO enchantment(enchantment_name,max_level)values('Fortune', 3);
insert INTO enchantment(enchantment_name,max_level)values('Frost Walker', 2);
insert INTO enchantment(enchantment_name,max_level)values('Impaling', 4);
insert INTO enchantment(enchantment_name,max_level)values('Infinity', 1);
insert INTO enchantment(enchantment_name,max_level)values('Knockback', 2);
insert INTO enchantment(enchantment_name,max_level)values('Looting', 3);
insert INTO enchantment(enchantment_name,max_level)values('Loyalty', 3);
insert INTO enchantment(enchantment_name,max_level)values('Mending', 1);

/*enchant*/
insert INTO enchant(item_instance_number,enchantment_id,lv) values(2,1,1);
insert INTO enchant(item_instance_number,enchantment_id,lv) values(2,2,3);
insert INTO enchant(item_instance_number,enchantment_id,lv) values(7,3,5);
insert INTO enchant(item_instance_number,enchantment_id,lv) values(7,2,2);
insert INTO enchant(item_instance_number,enchantment_id,lv) values(7,12,1);
insert INTO enchant(item_instance_number,enchantment_id,lv) values(14,13,3);
insert INTO enchant(item_instance_number,enchantment_id,lv) values(14,17,1);
/*inventory*/
insert INTO inventory(slot, item_instance_number) values (1, 1);

/*insert player*/
insert INTO player(username, health, hunger, air) Values ('Steve', 20,9,12);
insert INTO player(username, health, hunger, air) Values ('Dave', 14,6,12);
insert INTO player(username, health, hunger, air) Values ('Devon', 20,7,12);

/*insert mob*/
/*idk what air is in here so all 12*/


/*armor_stand*/
insert into armor_stand()values();

/*insert minecrat*/
insert INTO minecart (damage) Values(6);

/*insert block_drops*/
insert INTO block_drops(block_id,  item_id) Values(45,45);
insert INTO block_drops(block_id,  item_id) Values(17,17);
insert INTO block_drops(block_id,  item_id) Values(4,4);
insert INTO block_drops(block_id,  item_id) Values(1,4);
insert INTO block_drops(block_id,  item_id) Values(77,77);
insert INTO block_drops(block_id,  item_id) Values(64,64);
insert INTO block_drops(block_id,  item_id) Values(85,85);
insert INTO block_drops(block_id,  item_id) Values(107, 107);
insert INTO block_drops(block_id,  item_id) Values(18,260);
insert INTO block_drops(block_id,  item_id) Values(18,280);
insert INTO block_drops(block_id,  item_id) Values(5,5);
insert INTO block_drops(block_id,  item_id) Values(70,70);
insert INTO block_drops(block_id,  item_id) Values(6,6);
insert INTO block_drops(block_id,  item_id) Values(63,63);
insert INTO block_drops(block_id,  item_id) Values(157,157);
insert INTO block_drops(block_id,  item_id) Values(37,37);
insert INTO block_drops(block_id,  item_id) Values(53,53);
insert INTO block_drops(block_id,  item_id) Values(145,145);
insert INTO block_drops(block_id,  item_id) Values(138,138);
insert INTO block_drops(block_id,  item_id) Values(171,171);
insert INTO block_drops(block_id,  item_id) Values(26,26);
insert INTO block_drops(block_id,  item_id) Values(252,252);
insert INTO block_drops(block_id,  item_id) Values(35,35);
insert INTO block_drops(block_id,  item_id) Values(173,173);
insert INTO block_drops(block_id,  item_id) Values(57,57);
insert INTO block_drops(block_id,  item_id) Values(133,133);
insert INTO block_drops(block_id,  item_id) Values(41,41);
insert INTO block_drops(block_id,  item_id) Values(42,42);
insert INTO block_drops(block_id,  item_id) Values(47,340);
insert INTO block_drops(block_id,  item_id) Values(81,81);
insert INTO block_drops(block_id,  item_id) Values(54,54);
insert INTO block_drops(block_id,  item_id) Values(3,3);
insert INTO block_drops(block_id,  item_id) Values(2,3);
insert INTO block_drops(block_id,  item_id) Values(24,24);
insert INTO block_drops(block_id,  item_id) Values(61,61);
insert INTO block_drops(block_id,  item_id) Values(13,13);
insert INTO block_drops(block_id,  item_id) Values(13,318);
insert INTO block_drops(block_id,  item_id) Values(168, 168);
insert INTO block_drops(block_id,  item_id) Values(56, 264);
insert INTO block_drops(block_id,  item_id) Values(12,12);
insert INTO block_drops(block_id,  item_id) Values(78,332);



insert into creates_block(item_id, block_id)values(45,45);
insert into creates_block(item_id, block_id)values(17,17);
insert into creates_block(item_id, block_id)values(4,4);
insert into creates_block(item_id, block_id)values(1,1);
insert into creates_block(item_id, block_id)values(77,77);
insert into creates_block(item_id, block_id)values(64,64);
insert into creates_block(item_id, block_id)values(85,85);
insert into creates_block(item_id, block_id)values(107,107);
insert into creates_block(item_id, block_id)values(18,18);
insert into creates_block(item_id, block_id)values(5,5);
insert into creates_block(item_id, block_id)values(70,70);
insert into creates_block(item_id, block_id)values(6,6);
insert into creates_block(item_id, block_id)values(63,63);
insert into creates_block(item_id, block_id)values(157,157);
insert into creates_block(item_id, block_id)values(37,37);
insert into creates_block(item_id, block_id)values(53,53);
insert into creates_block(item_id, block_id)values(145,145);
insert into creates_block(item_id, block_id)values(138,138);
insert into creates_block(item_id, block_id)values(171,171);
insert into creates_block(item_id, block_id)values(26,26);
insert into creates_block(item_id, block_id)values(252,252);
insert into creates_block(item_id, block_id)values(20,20);
insert into creates_block(item_id, block_id)values(35,35);
insert into creates_block(item_id, block_id)values(173,173);
insert into creates_block(item_id, block_id)values(57,57);
insert into creates_block(item_id, block_id)values(133,133);
insert into creates_block(item_id, block_id)values(41,41);
insert into creates_block(item_id, block_id)values(42,42);
insert into creates_block(item_id, block_id)values(47,47);
insert into creates_block(item_id, block_id)values(81,81);
insert into creates_block(item_id, block_id)values(54,54);
insert into creates_block(item_id, block_id)values(3,3);
insert into creates_block(item_id, block_id)values(2,2);
insert into creates_block(item_id, block_id)values(24,24);
insert into creates_block(item_id, block_id)values(61,61);
insert into creates_block(item_id, block_id)values(13,13);
insert into creates_block(item_id, block_id)values(168,168);
insert into creates_block(item_id, block_id)values(56,56);
insert into creates_block(item_id, block_id)values(9,9);
insert into creates_block(item_id, block_id)values(79,79);
insert into creates_block(item_id, block_id)values(12,12);
insert into creates_block(item_id, block_id)values(78,78);



insert into creates_entity(item_id,entity_id)values(381,15);
insert into creates_entity(item_id,entity_id)values(368,14);
insert into creates_entity(item_id,entity_id)values(332,11);
insert into creates_entity(item_id,entity_id)values(344,7);

insert into entity_drops(entity_id,item_id)values(5,352);
insert into entity_drops(entity_id,item_id)values(10,262);
insert into entity_drops(entity_id,item_id)values(15,381);
insert into entity_drops(entity_id,item_id)values(42,328);
insert into entity_drops(entity_id,item_id)values(50,289);
insert into entity_drops(entity_id,item_id)values(51,352);
insert into entity_drops(entity_id,item_id)values(51,262);
insert into entity_drops(entity_id,item_id)values(58,368);
insert into entity_drops(entity_id,item_id)values(91,35);
insert into entity_drops(entity_id,item_id)values(92,334);
insert into entity_drops(entity_id,item_id)values(92,363);


insert into structure_made_of(name, block_id)values('Shipwreck', 5);



set FOREIGN_KEY_CHECKS =1;


Select ii.instance_number, i.item_name, ii.stack 
from item_instance ii , item i 
where ii.item_id = i.item_id;

Select ec.enchantment_id, e.enchantment_name
from  enchant ec, enchantment e
where ec.enchantment_id = e.enchantment_id and ec.item_instance_number = 14;

