DROP TABLE IF EXISTS CUSTOMERS,ORDERS cascade;
CREATE TABLE CUSTOMERS
(
    id           INT AUTO_INCREMENT NOT NULL ,
    name         NCHAR(20) NOT NULL,
    surname      NCHAR(20) NOT NULL,
    age          INT       NOT NULL,
    phone_number NCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ORDERS
(
    id           INT AUTO_INCREMENT NOT NULL ,
    date         TIMESTAMP NOT NULL DEFAULT now(),
    customer_id  INT       NOT NULL,
    product_name NCHAR(100) NOT NULL,
    amount       INT       NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(id)
);

INSERT INTO CUSTOMERS(name, surname, age, phone_number) VALUES ('Arseny','Sazonov',33,'0000000000000');
INSERT INTO CUSTOMERS(name, surname, age, phone_number) VALUES ('Lev','Leshenko',79,'1111111111111');
INSERT INTO CUSTOMERS(name, surname, age, phone_number) VALUES ('Iosif','Kobzon',200,'2222222222222');
INSERT INTO CUSTOMERS(name, surname, age, phone_number) VALUES ('Morgenshtern','Karimov',30,'33333333333');

INSERT INTO ORDERS (customer_id, product_name, amount)
VALUES (1, 'Насвай', 50),
       (2, 'Пивасик', 150),
       (3, 'Сиги', 195),
       (4, 'Эксклюзивное издание "Жизнь и ловля пресноводных рыб"', 13500);