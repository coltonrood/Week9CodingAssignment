
create table users (
id int(11) not null auto_increment,
username varchar(25) not null,
email varchar(50) not null,
password varchar(25) not null,
primary key (id)
);


create table posts (
id int(11) not null auto_increment,
post_content varchar(255) not null,
post_date datetime default current_timestamp,
primary key(id),
foreign key (id) references users(id)
);

create table comments (
id int(11) not null auto_increment,
content varchar(255) not null,
comment_date datetime default current_timestamp,
primary key(id),
foreign key (id) references users(id),
foreign key (id) references posts(id)
);






