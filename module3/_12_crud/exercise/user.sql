CREATE DATABASE user_management;
USE user_management;

create table type_user(
	id int primary key auto_increment,
    `type` varchar(45)
);

create table users (
 id  int primary key AUTO_INCREMENT,
 name varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 type_id int,
 status_delete bit(1),
 foreign key (type_id) references type_user(id)
);

insert into type_user(`type`) value
('Diamond'),
('Platinum'),
('Ruby');

insert into users(name, email, country, type_id, status_delete) values('Hảo ngu','haongu.com.vn','Núi', 1, 0);
insert into users(name, email, country, type_id, status_delete) values('Uyên đẹp gái','uyendepgai.com.vn','Đà nẵng', 2, 0);
insert into users(name, email, country, type_id, status_delete) values('Uyên nè','uyenuyen.com.vn','Campuchia', 3, 0);