create table user (
    user_id int AUTO_INCREMENT,
    username VARCHAR(30) not null,
    pass VARCHAR(30) not null,
    email varchar(55) not null,
    moderator boolean  not null default 0,
    primary key (user_id),
    Constraint Usr_straint unique (username, pass)
);

CREATE TABLE entity (
    entity_id int not null AUTO_INCREMENT,
    entity_name varchar(30) not null,
    primary key (entity_id)
);
create table entity_instance (
    instance_number int not null AUTO_INCREMENT,
    primary key (instance_number),
    entity_id int,
    foreign key (entity_id) references entity(entity_id) on delete cascade,
    x float,
    y float,
    z float
);
create table item (
    item_id int unique not null AUTO_INCREMENT,
    item_name varchar(40) not null,
    primary key (item_id),
    max_stack int,
    instances_count int default 0,
    placeable boolean
);
create table item_instance(
    instance_number int not null AUTO_INCREMENT,
    primary key (instance_number),
    stack int,
    item_id int,
    foreign key (item_id) references item (item_id) on delete cascade,
    enchant_count int default 0
);
create table block(
    block_id int not null AUTO_INCREMENT,
    primary key (block_id),
    block_name varchar(30),
    transparent boolean,
    gravity boolean
);
create table block_instance (
    instance_number int not null AUTO_INCREMENT,
    primary key (instance_number),
    block_id int not null,
    foreign key (block_id) references block (block_id) on delete cascade,
    breaking_stage int,
    x int,
    y int,
    z int
);
create table chunk (
    lower_x int,
    lower_z int,
    biome_name varchar(45),
    foreign key (biome_name) references biome(name) on delete set null, 
    primary key(lower_x,lower_z)
);
create table biome (
    name varchar(45) not null,
    primary key (name)
);
create table biome_blocks(
    name varchar(45),
    foreign key (name) references biome(name),
    block_id int,
    foreign key (block_id) references block(block_id) on delete cascade
);
create table structure(
    name varchar(45) unique not null,
    biome varchar(45),
    foreign key (biome) references biome(name)
);
create table enchantment(
    enchantment_id int unique not null AUTO_INCREMENT,
    primary key (enchantment_id),
    enchantment_name varchar(40),
    max_level int
);

create table enchant (
enchantment_id int,
item_instance_number int,
foreign key (enchantment_id) references enchantment(enchantment_id) on delete cascade,
foreign key (item_instance_number) references item_instance(instance_number) on delete cascade,
lv int not null,
constraint UC_enchant unique (enchantment_id, item_instance_number)
);
create table inventory(
    username varchar(45),
    foreign key (username) references player (username) on delete cascade,
    slot int,
    item_instance_number int,
    foreign key (item_instance_number) references item_instance (instance_number) on delete cascade
);
create table player(
    username varchar(45) unique not null,
    primary key (username),
    health int,
    hunger int,
    air int
);
create table mob(
    instance_number int  not null AUTO_INCREMENT,
    primary key (instance_number),
    foreign key (instance_number) references entity_instance(instance_number) on delete cascade,
    health int,
    constraint UC_mob unique (instance_number)
);
create table mob_properties(
    entity_id int not null,
    primary key (entity_id),
    foreign key (entity_id) references entity (entity_id) on delete cascade,
    default_health int,
    hostility varchar(45)
);
create table minecart(
    instance_number int not null AUTO_INCREMENT,
    primary key (instance_number),
    foreign key (instance_number) references entity_instance(instance_number) on delete cascade,
    damage int,
     constraint UC_cart unique(instance_number)
);
create table block_drops(
    block_id int not null AUTO_INCREMENT,
    foreign key (block_id) references block(block_id) on delete cascade,
    item_id int not null,
    foreign key (item_id) references item(item_id) on delete cascade
);
create table creates_block(
    item_id int not null AUTO_INCREMENT,
    foreign key (item_id) references item(item_id) on delete cascade,
    block_id int not null,
    foreign key (block_id) references block(block_id) on delete cascade
);
create table creates_entity(
    item_id int not null AUTO_INCREMENT,
    foreign key (item_id) references item(item_id) on delete cascade,
    entity_id int,
    foreign key (entity_id) references entity(entity_id) on delete cascade
);
create table entity_drops(
    entity_id int AUTO_INCREMENT,
    foreign key (entity_id) references entity(entity_id) on delete cascade,
    item_id int,
    foreign key (item_id) references item(item_id) on delete cascade
);
create table structure_made_of(
    name varchar(45) not null,
    foreign key (name) references structure (name) on delete cascade,
    block_id int not null,
    foreign key (block_id) references block(block_id) on delete set null,    
);
