-- Active: 1748956180064@@127.0.0.1@5432@postgres

create database school;

drop database school;

create table students (
  id serial,
  name varchar(50),
  age int,
  isActive boolean,
  dob date
);

drop table students;

drop table if exists students;

create table students (
  id serial primary key,
  username varchar(50) not null,
  email varchar(50) unique,
  age int check (age >= 18),
  isActive boolean default true
)