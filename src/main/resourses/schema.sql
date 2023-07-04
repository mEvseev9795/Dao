create schema if not exists netology;

create table if not exists customers (
    id int auto_increment primary key,
    name varchar(25),
    surname varchar(25),
    age int,
    phone_number varchar(25)
    );

create table if not exists orders (
    id int auto_increment primary key,
    date timestamp not null default now(),
    customer_id int references customers (id),
    product_name varchar(25),
    amount int
    );