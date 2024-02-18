--
-- create tables
--

-- feebdakc GEE 30 jan 2024
-- jullie hebben pas 1 tabel;, kijk naar de beoordelingscriteria in de opdracth hoeveel je erbij moet maken
-- er staat een video op de opdracht die je helpt met een 1:n rellatie (bijvoorrbeeld voor een table met merken)

-- producten -----------------------------------------------
CREATE TABLE products (
id INTEGER PRIMARY KEY AUTOINCREMENT,
code VARCHAR(15),
name VARCHAR(255),
merken VARCHAR(250),
description TEXT,
maten VARCHAR (50),
prijsklasse VARCHAR (10),
aandrijving VARCHAR (20),
materialen VARCHAR (100),
category_id INTEGER,
price NUMERIC(10, 2),
);
------------------------------------------------------------

-- merken --------------------------------------------------
CREATE TABLE merken (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   merken VARCHAR(255)
);

insert into merken (merken) values ('Rolex');
insert into merken (merken) values ('Patek Phillipe');
insert into merken (merken) values ('Cartier');
insert into merken (merken) values ('Audemars Piguet');
insert into merken (merken) values ('Tag Heuer');
insert into merken (merken) values ('Omega');
-----------------------------------------------------------

-- maten --------------------------------------------------
CREATE TABLE maten (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  maten VARCHAR(255),
 );

insert into maten (maten) values ('36mm');
insert into maten (maten) values ('38mm');
insert into maten (maten) values ('40mm');
insert into maten (maten) values ('42mm');
insert into maten (maten) values ('46mm');
-----------------------------------------------------------

-- prijsklasse --------------------------------------------
CREATE TABLE prijsklasse (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  prijsklasse VARCHAR(255),
 );

insert into prijsklasse (prijsklasse) values ('5.000 - 10.000')
insert into prijsklasse (prijsklasse) values ('10.000 - 15.000')
insert into prijsklasse (prijsklasse) values ('15.000 - 20.000')
insert into prijsklasse (prijsklasse) values ('20.000 - 25.000')
insert into prijsklasse (prijsklasse) values ('25.000+')
------------------------------------------------------------

-- aandrijving ---------------------------------------------
CREATE TABLE aandrijving (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  aandrijving VARCHAR(255),
 );

insert into aandrijving (aandrijving) values ('automatisch')
insert into aandrijving (aandrijving) values ('quartz')
------------------------------------------------------------

-- materialen ----------------------------------------------
CREATE TABLE materialen (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  materialen VARCHAR(255),
 );

insert into materialen (materialen) values ('keramiek')
insert into materialen (materialen) values ('titanium')
insert into materialen (materialen) values ('edelstaal')
------------------------------------------------------------

-- product_category ----------------------------------------
CREATE TABLE product_category (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  product_id INTEGER,
  category_id INTEGER
);

insert into product_category (product_id, category_id) values (1, 1);
insert into product_category (product_id, category_id) values (2, 2);
insert into product_category (product_id, category_id) values (3, 3);
insert into product_category (product_id, category_id) values (4, 4);
insert into product_category (product_id, category_id) values (5, 7);
insert into product_category (product_id, category_id) values (6, 6);
insert into product_category (product_id, category_id) values (7, 1);
insert into product_category (product_id, category_id) values (8, 5);
insert into product_category (product_id, category_id) values (9, 1);
insert into product_category (product_id, category_id) values (10, 5);
-------------------------------------------------------------


  
  --
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--



-- 1
insert into products (name, description, code, price, merken) values ('Rolex', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 45000, 1);

-- 2
insert into products (name, description, code, price, merken) values ('Patek Phillipe Aquanaut', 'De Patek Aquanaut, een modern sporthorloge', '077030122-3', 89000, 2);

-- 3
insert into products (name, description, code, price, merken) values ('Cartier', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13.5, 3);

-- 4
insert into products (name, description, code, price, merken) values ('Audemars Piguet', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5, 4);

-- 5
insert into products (name, description, code, price, merken) values ('Tag Heuer', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14, 5);

-- 6
insert into products (name, description, code, price, merken) values ('Breitling', ' B21 Tourbillon Ford Mustang', '492662523-7', 45000, 6);

-- 7
insert into products (name, description, code, price, merken) values ('Omega', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14, 7);

-- 8
insert into products (name, description, code, price, merken) values ('Tudor', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14, 8);

-- 9
insert into products (name, description, code, price, merken) values ('Tudor', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14, 9);

-- 10
insert into products (name, description, code, price, merken) values ('Tudor', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14, 10);



