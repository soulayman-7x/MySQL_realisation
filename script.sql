create database blogDB character set utf8mb4 collate utf8mb4_general_ci;
use blogDB;

create table user (
	user_id INT auto_increment primary key,
    user_name varchar(45) not null,
	user_email varchar(200) unique not null,
    user_password varchar(255)
);

create table category (
	category_id INT auto_increment primary key,
    category_name varchar(45) not null
);

create table article (
	article_id INT auto_increment primary key,
    article_title varchar(100) not null,
    article_content text not null,
    article_date_pub datetime default current_timestamp,
    article_status boolean default true,
    user_id INT,    
    category_id INT,
    foreign key (user_id) references user(user_id) on delete cascade,
    foreign key (category_id) references category(category_id) on delete set null
);

create table comment (
	comment_id INT auto_increment primary key,
    comment_content text not null,
    comment_pub_date datetime default current_timestamp,
    user_id INT,
    article_id INT,
    foreign key (user_id) references user(user_id),
    foreign key (article_id) references article(article_id)
);

alter table user add INDEX index_email (user_email);
alter table user add INDEX indes_name (user_name);
alter table article add INDEX index_article (article_title);

insert INTO category (category_name) values ('Technology');
INSERT INTO category (category_name) VALUES ('Programming');
INSERT INTO category (category_name) VALUES ('Database Design');
INSERT INTO category (category_name) VALUES ('Web Development');


insert into user (user_name, user_email, user_password) values 
('soulayman', 'soulayman@gmail.com', 'sou010110'),
('John_Doe', 'john@example.com', 'securePass123'),
('Sarah_Connor', 'sarah.c@gmail.com', 'terminator2025');


insert into article (article_title, article_content, user_id, category_id) values
('Apprendre SQL', 'SQL est un langage puissant...', 1, 1),
('Python Basics', 'Python is easy to learn...', 2, 2),
('Relational Databases', 'In this post, we discuss SQL structure...', 3, 3);

insert into comment (comment_content, user_id, article_id) values 
('Super article, merci !', 1, 1),
('Very clear explanation!', 2, 3),
('I love SQL too!', 3, 1);


