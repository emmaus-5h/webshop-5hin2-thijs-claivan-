--
-- create tables
--

-- feebdakc GEE 30 jan 2024
-- jullie hebben pas 1 tabel;, kijk naar de beoordelingscriteria in de opdracth hoeveel je erbij moet maken
-- er staat een video op de opdracht die je helpt met een 1:n rellatie (bijvoorrbeeld voor een table met merken)


CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  merken VARCHAR (20),
);


CREATE TABLE merken (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR (255)
 
  
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, merken) values ('Rolex', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 45000, 1);
insert into products (name, description, code, price, merken) values ('Patek Phillipe', 'De Patek Aquanaut, een modern sporthorloge', '077030122-3', 89000, 2);
insert into products (name, description, code, price, merken) values ('Cartier', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13.5, 3);
insert into products (name, description, code, price, merken) values ('Audemars Piguet', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5, 3);
insert into products (name, description, code, price, merken) values ('Tag Heuer', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14, 5);
insert into products (name, description, code, price, merken) values ('Breitling', ' B21 Tourbillon Ford Mustang', '492662523-7', 45000, 6);
insert into products (name, description, code, price, merken) values ('Omega', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14, 7);
insert into products (name, description, code, price, merken) values ('Tudor', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14, 8);
insert into products (name, description, code, price) values ('...', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14);
insert into products (name, description, code, price) values ('...', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14);
insert into products (name, description, code, price) values ('...', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14);
insert into products (name, description, code, price) values ('...', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14);

insert into merken (name, id) values ('Rolex', 1);
insert into merken (name, id) values ('Patek Phillipe', 2);
insert into merken (name, id) values ('Cartier', 3);
insert into merken (name, id) values ('Audemars Piguet', 4);
insert into merken (name, id) values ('Tag Heuer', 5);
insert into merken (name, id) values ('Breitling', 6);
insert into merken (name, id) values ('Omega', 7);
insert into merken (name, id) values ('Tudor', 8);
