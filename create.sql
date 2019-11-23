CREATE TABLE ENTITY (
    entity_id int not null,
    primary key (entity_id)
)
create table entity_instance{}
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
create table block{}
create table block_instance{}
create table chunk{}
create table biome{}
create table structure{}
create table enchantment{}
create table inventory{}
create table player{}
create table mob{}
create table armor_stand{}
create table minecart{}
create table block_drops{}
create table creates_block{}
create table creates_entity{}
create table entity_drops{}
create table structure_made_of{}
