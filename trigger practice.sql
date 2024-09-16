show databases;
create database practical;
use practical;

create table users(fullname varchar(120),email varchar(120),usrname varchar(30),
password varchar(60),percentage int);
insert into users values('gayatri w ','gayatri@gmail.com','gayatri','root',98);
select * from users;

create trigger password_hasher
before insert
on users
for each row
set new . password= MD5(new.password);

create trigger  percentagechanger
before insert 
on users
for each row
set new. percentage = new. percentage + 5;

insert into users values ('Dipti xyz','Dipti@gmail.com','rootdata','Dipti','78');
select * from users;

insert into users values ('Pradnya xyz','Pradnya@gmail.com','data','Pradnya','77');
select *from users;
insert into users values ('Pradnya xyz','Pradnya@gmail.com','data','Password1','77');
drop trigger percentagechanger;

insert into users values('jayesh xyz','jayesh@gmail.com','ram','sita','77');
select * from users;
