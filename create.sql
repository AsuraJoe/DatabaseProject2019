CREATE TABLE entity (
    entity_id int not null,
    primary key (entity_id)
)
create table entity_instance{
    instance_number int not null,
    primary key (instance_number),
    entity_id int,
    foreign key (entity_id) references entity(entity_id)
    }
create table item{
    item_id int not null,
    primary key (item_id),
    max_stack int,
    placeable boolean
}
create table item_instance{
    instance_number int not null,
    primary key (instance_number),
    stack int,
    item_id int,
    foreign key (item_id) references item (item_id)
}
create table block{
    block_id int not null,
    primary key (block_id),
    transparent boolean,
    gravity boolean
}
create table block_instance{
    instance_number int not null,
    primary key (instance_number),
    breaking_stage int,
    x int,
    y int,
    z int
}
create table chunk{
    lower_x int,
    lower_y int,
    lower_z int,
    primary key(lower_x,lower_y,lower_z),
    upper_x int,
    upper_y int,
    upper_z int,
}
create table biome{
    name unique not null varchar(45),
    primary key (name)
}
create table biome_blocks{
    name varchar(45),
    foreign key (name) references biome(name),
    block_id int,
    foreign key (block_id) references block(block_id)
}
create table structure{
    name varchar(45) unique not null,
    biome varchar(45),
    foreign key (biome) references biome(name)
}
create table enchantment{
    enchantment_id int unique not null,
    primary key (enchantment_id),
    max_level int
}
create table inventory{}
create table player{
    instance_number unique not null,
    foreign key (instance_number) references entity_instance(instance_number),
    username varchar(45) unique not null,
    health int,
    hunger int,
    air int
}
create table mob{
    instance_number unique not null,
    foreign key (instance_number) references entity_instance(instance_number),
    mob_type varchar(45),
    health int,
    air int
}
create table armor_stand{
    instance_number unique not null,
    foreign key (instance_number) references entity_instance(instance_number),
}
create table minecart{
    instance_number unique not null,
    foreign key (instance_number) references entity_instance(instance_number),
    damage int
}
create table block_drops{
    block_id int not null,
    foreign key (block_id) references block(block_id),
    item_id int not null,
    foreign key (item_id) references item(item_id)
}
create table creates_block{
    item_id int not null,
    foreign key (item_id) references item(item_id),
    block_id int not null,
    foreign key (block_id) references block(block_id)
}
create table creates_entity{}
create table entity_drops{}
create table structure_made_of{}
