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
insert INTO block(block_name, transparent, gravity) Values('Birch_log', true, true);

/*insert block_instance*/
insert INTO block_instance(breaking_stage,x,y,z) Values(1,2,3,4);

/*chunk*/
insert INTO chunk(lower_x,lower_y,lower_z,upper_x,upper_y,upper_z)values(4,5,6,1,2,3);

/*biome*/
insert INTO biome(name) values ('Snowy Tundra');

/*biome_blocks*/
insert INTO biome_blocks(name, block_id) Values ('Snowy Tundra',12);

/*structure*/
insert INTO structure(name, biome)values ('Mineshaft','Overworld');

/*insert enchantment*/
/*max level cant be int '1' as 'I' */
insert INTO enchantment(enchantment_id,max_level)values('Aqua Affinity', '1');

/*inventory*/
insert INTO inventory(slot, item_instance_number) values (1, 1);

/*insert player*/
insert INTO player(username, health, hunger, air) Values ('Steve', 20,9,12);

/*insert mob*/
insert INTO mob(mob_name, mob_type, health, air) Values('Cave spider', 'Monsters',20,12);

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

Select * from block_drops;
