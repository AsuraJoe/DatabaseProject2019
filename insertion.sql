set FOREIGN_KEY_CHECKS =0;

/*entity*/
insert INTO entity(entity_id, entity_name) Values(1,'Dropped Item');
insert INTO entity(entity_id, entity_name) Values(2, 'Experience Orb');
insert INTO entity(entity_id, entity_name) Values(10, 'Arrow');
insert INTO entity(entity_id, entity_name) Values(30, 'Armor Stand');
insert INTO entity(entity_id, entity_name) Values(41, 'Boat');
insert INTO entity(entity_id, entity_name) Values(42, 'Minecart');
insert INTO entity(entity_id, entity_name) Values(50, 'Creeper');
insert INTO entity(entity_id, entity_name) Values(51, 'Skeleton');
insert INTO entity(entity_id, entity_name) Values(52, 'Spider');
insert INTO entity(entity_id, entity_name) Values(54, 'Zombie');
insert INTO entity(entity_id, entity_name) Values(55, 'Slime');
insert INTO entity(entity_id, entity_name) Values(58, 'Enderman');
insert INTO entity(entity_id, entity_name) Values(90, 'Pig');
insert INTO entity(entity_id, entity_name) Values(91, 'Sheep');
insert INTO entity(entity_id, entity_name) Values(92, 'Cow');
insert INTO entity(entity_id, entity_name) Values(93, 'Chicken');

/*entity_instance*/
insert INTO entity_instance( entity_id,x,y,z)Values(1,1.1,1.2,1.3);
insert INTO entity_instance( entity_id,x,y,z)Values(30,5,5,5);

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

/*item_instance*/
insert INTO item_instance(stack, item_id) values (1,1);

/*insert block*/
/*gravity should be false for almost everything*/
insert INTO block(block_name, transparent, gravity) Values('Bricks', false, false);
insert INTO block(block_name, transparent, gravity) Values('Wood', false, false);
insert INTO block(block_name, transparent, gravity) Values('Cobblestone', false, false);
insert INTO block(block_name, transparent, gravity) Values('Button', true, false);
insert INTO block(block_name, transparent, gravity) Values('Door', true, false);
insert INTO block(block_name, transparent, gravity) Values('Fence', true, false);
insert INTO block(block_name, transparent, gravity) Values('Fence Gate', true, false);
insert INTO block(block_name, transparent, gravity) Values('Leaves', true, false);
insert INTO block(block_name, transparent, gravity) Values('Log', false, false);
insert INTO block(block_name, transparent, gravity) Values('Oak Planks', false, false);
insert INTO block(block_name, transparent, gravity) Values('Pressure Plate', true, false);
insert INTO block(block_name, transparent, gravity) Values('Sapling', true, false);
insert INTO block(block_name, transparent, gravity) Values('Sign', true, false);
insert INTO block(block_name, transparent, gravity) Values('Activator Rail', true, false);
insert INTO block(block_name, transparent, gravity) Values('Flower', true, false);
insert INTO block(block_name, transparent, gravity) Values('Andesite', false, false);
insert INTO block(block_name, transparent, gravity) Values('Slab', false, false);
insert INTO block(block_name, transparent, gravity) Values('Stairs', true, false);
insert INTO block(block_name, transparent, gravity) Values('Wall', true, false);
insert INTO block(block_name, transparent, gravity) Values('Anvil', true, true);
insert INTO block(block_name, transparent, gravity) Values('Beacon', true, false);
insert INTO block(block_name, transparent, gravity) Values('Bamboo', false, false);
insert INTO block(block_name, transparent, gravity) Values('Carpet', true, false);
insert INTO block(block_name, transparent, gravity) Values('Bed', true, false);
insert INTO block(block_name, transparent, gravity) Values('Concrete Powder', false, true);
insert INTO block(block_name, transparent, gravity) Values('Glass', true, false);
insert INTO block(block_name, transparent, gravity) Values('Wool', false, false);
insert INTO block(block_name, transparent, gravity) Values('Block of Coal', false, false);
insert INTO block(block_name, transparent, gravity) Values('Diamond Block', false, false);
insert INTO block(block_name, transparent, gravity) Values('Emerald Block', false, false);
insert INTO block(block_name, transparent, gravity) Values('Gold Block', false, false);
insert INTO block(block_name, transparent, gravity) Values('Iron Block', false, false);
insert INTO block(block_name, transparent, gravity) Values('Bookshelf', false, false);
insert INTO block(block_name, transparent, gravity) Values('Cactus', true, false);
insert INTO block(block_name, transparent, gravity) Values('Chest', true, false);
insert INTO block(block_name, transparent, gravity) Values('Coarse Dirt', false, false);
insert INTO block(block_name, transparent, gravity) Values('Coal Ore', false, false);
insert INTO block(block_name, transparent, gravity) Values('Sandstone', false, false);
insert INTO block(block_name, transparent, gravity) Values('Dirt', false, false);
insert INTO block(block_name, transparent, gravity) Values('Furnace', true, false);
insert INTO block(block_name, transparent, gravity) Values('Grass Block', false, false);
insert INTO block(block_name, transparent, gravity) Values('Gravel', false, true);
insert INTO block(block_name, transparent, gravity) Values('Prismarine', false, false);
insert INTO block(block_name, transparent, gravity) Values('Lapis Lazuli Ore', false, false);

/*insert block_instance*/
insert INTO block_instance(breaking_stage,x,y,z) Values(1,2,3,4);

/*chunk*/
insert INTO chunk(lower_x,lower_y,lower_z,upper_x,upper_y,upper_z)values(1,2,3,4,5,6);

/*biome*/
insert INTO biome(name) values ('Ocean');
insert INTO biome(name) values ('Deep Ocean');
insert INTO biome(name) values ('Frozen Ocean');
insert INTO biome(name) values ('Cold Ocean');
insert INTO biome(name) values ('River');
insert INTO biome(name) values ('Frozen River');
insert INTO biome(name) values ('Beach');
insert INTO biome(name) values ('Forest');
insert INTO biome(name) values ('Wooded Hills');
insert INTO biome(name) values ('Flower Forest');
insert INTO biome(name) values ('Birch Forest');
insert INTO biome(name) values ('Birch Forest Hills');
insert INTO biome(name) values ('Dark Forest');
insert INTO biome(name) values ('Dark Forest Hills');
insert INTO biome(name) values ('Jungle');
insert INTO biome(name) values ('Jungle Hills');
insert INTO biome(name) values ('Jungle Edge');
insert INTO biome(name) values ('Bamboo Jungle');
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
insert INTO biome(name) values ('Mountain Edge');
insert INTO biome(name) values ('Badlands');

/*biome_blocks*/
insert INTO biome_blocks(name, block_id) Values ('ocean',0);
insert INTO biome_blocks(name, block_id) Values ('Deep Ocean',24);
insert INTO biome_blocks(name, block_id) Values ('Frozen Ocean',10);
insert INTO biome_blocks(name, block_id) Values ('Cold Ocean',46);
insert INTO biome_blocks(name, block_id) Values ('River',7);
insert INTO biome_blocks(name, block_id) Values ('Frozen River',11);
insert INTO biome_blocks(name, block_id) Values ('Beach',16);
insert INTO biome_blocks(name, block_id) Values ('Forest',4);
insert INTO biome_blocks(name, block_id) Values ('Wooded Hills',18);
insert INTO biome_blocks(name, block_id) Values ('Flower Forest',132);
insert INTO biome_blocks(name, block_id) Values ('Birch Forest',27);
insert INTO biome_blocks(name, block_id) Values ('Birch Forest Hills',28);
insert INTO biome_blocks(name, block_id) Values ('Dark Forest',29);
insert INTO biome_blocks(name, block_id) Values ('Dark Forest Hills',157);
insert INTO biome_blocks(name, block_id) Values ('Jungle',21);
insert INTO biome_blocks(name, block_id) Values ('Jungle Hills',22);
insert INTO biome_blocks(name, block_id) Values ('Jungle Edge',23);
insert INTO biome_blocks(name, block_id) Values ('Bamboo Jungle',168);
insert INTO biome_blocks(name, block_id) Values ('Taiga',5);
insert INTO biome_blocks(name, block_id) Values ('Taiga Mountains',19);
insert INTO biome_blocks(name, block_id) Values ('Swamp',6);
insert INTO biome_blocks(name, block_id) Values ('Savanna',35);
insert INTO biome_blocks(name, block_id) Values ('Plains',1);
insert INTO biome_blocks(name, block_id) Values ('Sunflower Plains',129);
insert INTO biome_blocks(name, block_id) Values ('Desert',2);
insert INTO biome_blocks(name, block_id) Values ('Desert Hills',17);
insert INTO biome_blocks(name, block_id) Values ('Desert Lakes',130);
insert INTO biome_blocks(name, block_id) Values ('Snowy Tundra',12);
insert INTO biome_blocks(name, block_id) Values ('Snowy Mountains',13);
insert INTO biome_blocks(name, block_id) Values ('Mountains',3);
insert INTO biome_blocks(name, block_id) Values ('Wooded Mountains',34);
insert INTO biome_blocks(name, block_id) Values ('Gravelly Mountains',131);
insert INTO biome_blocks(name, block_id) Values ('Mountain Edge',20);
insert INTO biome_blocks(name, block_id) Values ('Badlands',37);

/*structure*/
insert INTO structure(name, biome)values ('Mineshaft','Overworld');
insert INTO structure(name, biome)values ('Stronghold','Any');
insert INTO structure(name, biome)values ('Fossil','Desert');
insert INTO structure(name, biome)values ('Buried treasure','Beach');
insert INTO structure(name, biome)values ('Buried treasure','Snowy Beach');
insert INTO structure(name, biome)values ('Buried treasure','Ocean');
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
insert INTO structure(name, biome)values ('Tree','Forest');

/*insert enchantment*/
/*max level cant be int '1' as 'I' */
insert INTO enchantment(enchantment_id,max_level)values('Aqua Affinity', '1');
insert INTO enchantment(enchantment_id,max_level)values('Bane of Arthropods', '4');
insert INTO enchantment(enchantment_id,max_level)values('Blast Protection', '5');
insert INTO enchantment(enchantment_id,max_level)values('Channeling', '1');
insert INTO enchantment(enchantment_id,max_level)values('Curse of Binding', '1');
insert INTO enchantment(enchantment_id,max_level)values('Curse of Vanishing', '1');
insert INTO enchantment(enchantment_id,max_level)values('Depth Strider', '3');
insert INTO enchantment(enchantment_id,max_level)values('Efficiency', '4');
insert INTO enchantment(enchantment_id,max_level)values('Feather Falling', '5');
insert INTO enchantment(enchantment_id,max_level)values('Fire Aspect', '2');
insert INTO enchantment(enchantment_id,max_level)values('Fire Protection', '5');
insert INTO enchantment(enchantment_id,max_level)values('Flame', '1');
insert INTO enchantment(enchantment_id,max_level)values('Fortune', '3');
insert INTO enchantment(enchantment_id,max_level)values('Frost Walker', '2');
insert INTO enchantment(enchantment_id,max_level)values('Impaling', '4');
insert INTO enchantment(enchantment_id,max_level)values('Infinity', '1');
insert INTO enchantment(enchantment_id,max_level)values('Knockback', '2');
insert INTO enchantment(enchantment_id,max_level)values('Looting', '3');
insert INTO enchantment(enchantment_id,max_level)values('Loyalty', '3');
insert INTO enchantment(enchantment_id,max_level)values('Mending', '1');

/*inventory*/
insert INTO inventory(slot, item_instance_number) values (1, 1);

/*insert player*/
insert INTO player(username, health, hunger, air) Values ('Steve', 20,9,12);

/*insert mob*/
/*idk what air is in here so all 12*/
insert INTO mob(mob_name, mob_type, health, air) Values('Cave spider', 'Monsters',20,12);
insert INTO mob(mob_name, mob_type, health, air) Values('Chicken', 'Peaceful',4,12);
insert INTO mob(mob_name, mob_type, health, air) Values('Cow', 'Peaceful',10,12);
insert INTO mob(mob_name, mob_type, health, air) Values('Cat', 'Peaceful',10,12);
insert INTO mob(mob_name, mob_type, health, air) Values('Horse', 'Monsters',15,12);
insert INTO mob(mob_name, mob_type, health, air) Values('Pufferfish', 'Defensive',3,12);
insert INTO mob(mob_name, mob_type, health, air) Values('Wolf', 'Animals',8,12);
insert INTO mob(mob_name, mob_type, health, air) Values('Panda', 'Animals',20,12);
insert INTO mob(mob_name, mob_type, health, air) Values('Enderman', 'Monsters',40,12);
insert INTO mob(mob_name, mob_type, health, air) Values('Spider', 'Monsters',16,12);
insert INTO mob(mob_name, mob_type, health, air) Values('Zombie Pigman', 'Monsters',20,12);
insert INTO mob(mob_name, mob_type, health, air) Values('Creeper', 'Hostile',20,12);
insert INTO mob(mob_name, mob_type, health, air) Values('Zombie', 'Hostile',20,12);
insert INTO mob(mob_name, mob_type, health, air) Values('Zombie Villager', 'Hostile',20,12);
insert INTO mob(mob_name, mob_type, health, air) Values('Slime', 'Hostile',4,12);
insert INTO mob(mob_name, mob_type, health, air) Values('NPC', 'Education Edition exclusive mobs',20,12);
insert INTO mob(mob_name, mob_type, health, air) Values('Blaze', 'Hostile',20,12);
insert INTO mob(mob_name, mob_type, health, air) Values('Guardian', 'Hostile',30,12);
insert INTO mob(mob_name, mob_type, health, air) Values('Ghast', 'Hostile',10,12);

/*armor_stand*/
insert into armor_stand()values();

/*insert minecrat*/
insert INTO minecart (damage) Values(6);

/*insert block_drops*/
insert into block_drops(item_id)value(1);


insert into creates_block(block_id)values(1);

insert into creates_entity(entity_id)values(1);

insert into entity_drops(item_id)values(1);

insert into structure_made_of(name, block_id, x,y,z)values('dont know this one', 1, 1,2,3);

set FOREIGN_KEY_CHECKS =1;
