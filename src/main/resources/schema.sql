create table CUSTOMERS
(
    id int primary key AUTO_INCREMENT,
    name varchar(255),
    surname varchar(255),
    age int,
    phone_number int
);

insert into customers(name, surname, age, phone_number)
values
    ('Oleg', 'Petrov', 32, 234234),
    ('Ivan', 'Gubin', 22, 231232),
    ('Andrey', 'Ivanov', 36, 123123),
    ('Ben', 'Smith', 62, 123121);

create table ORDERS
(
    id int primary key AUTO_INCREMENT,
    date timestamp not null default now(),
    customer_id int references customers (id),
    product_name varchar(255),
    amount int not null
);


insert into orders(customer_id, product_name, amount)
values
    (1, 'product1', 100),
    (4, 'product2', 500),
    (3, 'product3', 800),
    (4, 'product4', 200),
    (2, 'product5', 400),
    (3, 'product6', 600),
    (2, 'product7', 300),
    (1, 'product8', 700);