CREATE DATABASE IF NOT EXISTS living;

USE living;

create table persons (
  id int auto_increment primary key,
  name text,
  team text,
  sex text,
  nickname1 text,
  nickname2 text,
  profile text,
  spell text,
  extension1 text,
  extension2 text,
  imageurl text,
  fixed int,
  favcount int
);

