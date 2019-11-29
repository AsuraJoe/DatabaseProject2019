set FOREIGN_KEY_CHECKS =0;

/*entity*/
insert INTO entity() Values();

/*entity_instance*/
insert INTO entity_instance( entity_id,x,y,z)Values(1,1.1,1.2,1.3);

/*insert item*/
/*i am not sure what is placeable function in here so u need to fix placeable part, is that mean renewable?*/
insert INTO item (item_name, max_stack,placeable) Values('Sword',0,true);
insert INTO item (item_name, max_stack,placeable) Values('Axe',0,true);
insert INTO item (item_name, max_stack,placeable) Values('Hoe',0,true);
insert INTO item (item_name, max_stack,placeable) Values('Apple',64,true);
insert INTO item (item_name, max_stack,placeable) Values('Leather',64,true);
insert INTO item (item_name, max_stack,placeable) Values('Bucket',16,true);
insert INTO item (item_name, max_stack,placeable) Values('Boots',0,true);
insert INTO item (item_name, max_stack,placeable) Values('Cap',0,true);
insert INTO item (item_name, max_stack,placeable) Values('Pants',0,true);
insert INTO item (item_name, max_stack,placeable) Values('Tunic',0,true);
insert INTO item (item_name, max_stack,placeable) Values('Compass',64,true);
insert INTO item (item_name, max_stack,placeable) Values('stick',64,true);
insert INTO item (item_name, max_stack,placeable) Values('Pumpkin Seeds',64,true);
insert INTO item (item_name, max_stack,placeable) Values('Music Disc',0,true);
insert INTO item (item_name, max_stack,placeable) Values('Boat',0,true);
insert INTO item (item_name, max_stack,placeable) Values('Eye of Ender',64,true);
insert INTO item (item_name, max_stack,placeable) Values('Potato',64,true);
insert INTO item (item_name, max_stack,placeable) Values('Lead',64,true);
insert INTO item (item_name, max_stack,placeable) Values('Snowball',16,true);
insert INTO item (item_name, max_stack,placeable) Values('Fishing Rod',0,true);
insert INTO item (item_name, max_stack,placeable) Values('Knowledge Book',0,false);
insert INTO item (item_name, max_stack,placeable) Values('Arrow',64,true);
insert INTO item (item_name, max_stack,placeable) Values('Enchanted Book',0,true);
insert INTO item (item_name, max_stack,placeable) Values('Chestplate',0,true);
insert INTO item (item_name, max_stack,placeable) Values('Helmet',0,true);
insert INTO item (item_name, max_stack,placeable) Values('Leggings',0,true);
insert INTO item (item_name, max_stack,placeable) Values('Wheat',64,true);
insert INTO item (item_name, max_stack,placeable) Values('Diamond',64,false);
insert INTO item (item_name, max_stack,placeable) Values('Paper',64,true);
insert INTO item (item_name, max_stack,placeable) Values('Glass Bottle',64,true);
insert INTO item (item_name, max_stack,placeable) Values('Gunpowder',64,true);
insert INTO item (item_name, max_stack,placeable) Values('Book',64,true);
insert INTO item (item_name, max_stack,placeable) Values('Raw Beef',64,true);
insert INTO item (item_name, max_stack,placeable) Values('Bow',0,true);

/*item_instance*/
insert INTO item_instance(stack, item_id) values (1,1);

/*insert block*/
/*idont know what gravity mean in here so i put all true*/
insert INTO block(block_name, transparent, gravity) Values('Bricks', false, true);
insert INTO block(block_name, transparent, gravity) Values('Wood', false, true);
insert INTO block(block_name, transparent, gravity) Values('Cobblestone', false, true);
insert INTO block(block_name, transparent, gravity) Values('Button', true, true);
insert INTO block(block_name, transparent, gravity) Values('Door', true, true);
insert INTO block(block_name, transparent, gravity) Values('Fence', true, true);
insert INTO block(block_name, transparent, gravity) Values('Fence Gate', true, true);
insert INTO block(block_name, transparent, gravity) Values('Leaves', true, true);
insert INTO block(block_name, transparent, gravity) Values('Log', false, true);
insert INTO block(block_name, transparent, gravity) Values('Planks', false, true);
insert INTO block(block_name, transparent, gravity) Values('Pressure Plate', true, true);
insert INTO block(block_name, transparent, gravity) Values('Sapling', true, true);
insert INTO block(block_name, transparent, gravity) Values('Sign', true, true);
insert INTO block(block_name, transparent, gravity) Values('Activator Rail', true, true);
insert INTO block(block_name, transparent, gravity) Values('Flower', true, true);
insert INTO block(block_name, transparent, gravity) Values('Andesite', false, true);
insert INTO block(block_name, transparent, gravity) Values('Slab', false, true);
insert INTO block(block_name, transparent, gravity) Values('Stairs', true, true);
insert INTO block(block_name, transparent, gravity) Values('Wall', true, true);
insert INTO block(block_name, transparent, gravity) Values('Anvil', true, true);
insert INTO block(block_name, transparent, gravity) Values('Beacon', true, false);
insert INTO block(block_name, transparent, gravity) Values('Bamboo', false, true);
insert INTO block(block_name, transparent, gravity) Values('Carpet', true, true);
insert INTO block(block_name, transparent, gravity) Values('Bed', true, true);
insert INTO block(block_name, transparent, gravity) Values('Concrete Powder', false, true);
insert INTO block(block_name, transparent, gravity) Values('Glass', true, true);
insert INTO block(block_name, transparent, gravity) Values('Wool', false, true);
insert INTO block(block_name, transparent, gravity) Values('Block of Coal', false, true);
insert INTO block(block_name, transparent, gravity) Values('Block of Diamond', false, true);
insert INTO block(block_name, transparent, gravity) Values('Block of Emerald', false, true);
insert INTO block(block_name, transparent, gravity) Values('Block of Gold', false, true);
insert INTO block(block_name, transparent, gravity) Values('Block of Iron', false, true);
insert INTO block(block_name, transparent, gravity) Values('Bookshelf', false, true);
insert INTO block(block_name, transparent, gravity) Values('Cactus', true, true);
insert INTO block(block_name, transparent, gravity) Values('Chest', true, true);
insert INTO block(block_name, transparent, gravity) Values('Coarse Dirt', false, true);
insert INTO block(block_name, transparent, gravity) Values('Anvil', true, true);
insert INTO block(block_name, transparent, gravity) Values('Coal Ore', false, true);
insert INTO block(block_name, transparent, gravity) Values('Sandstone', false, true);
insert INTO block(block_name, transparent, gravity) Values('Dirt', false, true);
insert INTO block(block_name, transparent, gravity) Values('Furnace', true, true);
insert INTO block(block_name, transparent, gravity) Values('Grass Block', false, true);
insert INTO block(block_name, transparent, gravity) Values('Gravel', false, true);
insert INTO block(block_name, transparent, gravity) Values('Prismarine', false, true);
insert INTO block(block_name, transparent, gravity) Values('Lapis Lazuli Ore', false, true);

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
insert INTO structure(name, biome)values ('Fortress','The Nether');

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
