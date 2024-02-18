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
maten VARCHAR(50),
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
insert into merken (merken) values ('Patek Philipe');
insert into merken (merken) values ('Cartier');
insert into merken (merken) values ('Audemars Piguet');
insert into merken (merken) values ('Tag Heuer');
insert into merken (merken) values ('Omega');
insert into merken (merken) values ('Breitling');
insert into merken (merken) values ('Tudor');
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

insert into prijsklasse (prijsklasse) values ('5.000 - 10.000');
insert into prijsklasse (prijsklasse) values ('10.000 - 15.000');
insert into prijsklasse (prijsklasse) values ('15.000 - 20.000');
insert into prijsklasse (prijsklasse) values ('20.000 - 25.000');
insert into prijsklasse (prijsklasse) values ('25.000+');
------------------------------------------------------------

-- aandrijving ---------------------------------------------
CREATE TABLE aandrijving (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  aandrijving VARCHAR(255),
 );

insert into aandrijving (aandrijving) values ('automatisch');
insert into aandrijving (aandrijving) values ('quartz');
------------------------------------------------------------

-- materialen ----------------------------------------------
CREATE TABLE materialen (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  materialen VARCHAR(255),
 );

insert into materialen (materialen) values ('keramiek');
insert into materialen (materialen) values ('titanium');
insert into materialen (materialen) values ('edelstaal');
------------------------------------------------------------

-- product_category ----------------------------------------
CREATE TABLE materialen_aandrijving (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  materialen_id INTEGER,
  aandrijving_id INTEGER
);

-- materialen dan aandrijving (...,...)
insert into materialen_aandrijving (materialen_id, aandrijving_id) values (1, 1);
insert into materialen_aandrijving (materialen_id, aandrijving_id) values (1, 2);
insert into materialen_aandrijving (materialen_id, aandrijving_id) values (2, 1);
insert into materialen_aandrijving (materialen_id, aandrijving_id) values (2, 2);
insert into materialen_aandrijving (materialen_id, aandrijving_id) values (3, 1);
insert into materialen_aandrijving (materialen_id, aandrijving_id) values (3, 2);
-------------------------------------------------------------



  
  --
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

-- artiekelen ----------------------------------------------

-- 1
insert into products (name, merken, description, maten, prijsklasse, aandrijving, materialen, code, price) values ('Rolex GMT master II', 'Rolex', 'De GMT-Master II is een horloge van hoge kwaliteit dat perfect is voor iemand wie meerdere tijdzones in de gaten wil houden. De GMT-Master II heeft een tweekleurige bezel met daarop 24-uur markeringen en een extra wijzer waarmee je twee verschillende tijdzones tegelijkertijd kan aflezen.', '40mm', '5.000 - 10.000', 'automatisch', 'edelstaal', '816905633-0', 8600, 1);

-- 2
insert into products (name, merken, description, maten, prijsklasse, aandrijving, materialen, code, price) values ('Patek Philipe Aquanaut steel', 'Patek Philipe', 'The Patek Philippe Nautilus 5167A-001 featuers a stainless steel case and a tropic style rubber strap. It is powered by the self-winding caliber 324 S C. Reference 5167/1A-001 is similar yet fitted with a stainless steel bracelet.', '38mm', '25.000+', 'quartz', 'edelstaal', '077030122-3', 25.000+, 2);

-- 3
insert into products (name, merken, description, maten, prijsklasse, aandrijving, materialen, code, price) values ('Cartier Tank Française', 'Cartier', 'De Tank Française werd geïntroduceerd in 1996, met een metalen band die harmonieus aansloot bij de kast. Het horloge maakte direct deel uit van de beroemde Tank-familie.', '36mm', '5.000 - 10.000', 'automatisch', 'keramiek', '445924201-X', 5.500, 3);

-- 4
insert into products (name, merken, description, maten, prijsklasse, aandrijving, materialen, code, price) values ('Audemars Piguet Roal Oak 41', 'Audemars Piguet', 'Een brede achthoekige lunette, acht zeshoekige schroeven, patrijspoortdesign: dat is de Royal Oak in een notendop. Dit felbegeerde horloge van Audemars Piguet is een icoon.', '42mm', '25.000+', 'automatisch', 'edelstaal', '693155505-7', 25.000+, 4);

-- 5
insert into products (name, merken, description, maten, prijsklasse, aandrijving, materialen, code, price) values ('Tag Heuer Formula 1 Diamonds Bezel', 'Tag Heuer', 'De TAG Heuer Formula 1 zijn door de autosport geïnspireerde horloges. Erg herkenbaar aan de Formula 1 is de tachymeter op de lunette, waarmee de snelheid van een bewegend object te meten is', '36mm', '5.000 - 10.000', 'automatisch', 'titanium', '686928463-6', 5.250, 5);

-- 6
insert into products (name, merken, description, maten, prijsklasse, aandrijving, materialen, code, price) values ('Breitling top time B01', 'Breitling', 'De Top Time B01 Deus is ontworpen in samenwerking met de Australische surf- en motorfabrikant Deus Ex Machina en zal motorrijders, boarders en backpackers aanspreken, die allemaal op zoek zijn naar de vrijheid om de wereld op hun eigen manier en in hun eigen tempo te verkennen.', '46mm', '5.000 - 10.000', 'quartz', 'edelstaal', '686928463-6', 8.750, 5);

-- 7
insert into products (name, merken, description, maten, prijsklasse, aandrijving, materialen, code, price) values ('Omega seamaster professional', 'Omega', 'De Omega Seamaster Professional Chronometer is ontworpen om aan de hoogste precisienormen te voldoen en is uitgerust met een Zwitsers automatisch uurwerk dat is gecertificeerd door de COSC.', '42mm', '10.000 - 15.000', 'automatisch', 'keramiek', '492662523-7', 12.750, 7);

-- 8
insert into products (name, merken, description, maten, prijsklasse, aandrijving, materialen, code, price) values ('Tudor prince date day', 'Tudor', 'De Tudor Prince Date Dat, werd oorspronkelijk in de jaren 70 geïntroduceerd. Dankzij de dag- en datumweergave is het horloge niet alleen stijlvol, maar ook functioneel.', '40mm', '20.000 - 25.000', 'quartz', 'edelstaal', '493572523-8', 21.300, 8);

-- 9
insert into products (name, merken, description, maten, prijsklasse, aandrijving, materialen, code, price) values ('rolex cosmograph daytona', 'Rolex', 'De Cosmograph Daytona is kenmerkend voor de expertise van Rolex en valt op door zijn chronometrische precisie en onfeilbare betrouwbaarheid.', '40mm', '20.000 - 25.000', 'automatisch', 'titanium', '492662523-9', 22.300, 9);

-- 10
insert into products (name, merken, description, maten, prijsklasse, aandrijving, materialen, code, price) values ('patek philippe nautilus rose gold', 'Patek Philippe', 'De Patek Philippe Nautilus is een van de beroemdste en populairste luxe horloges ter wereld. De waarde van dit model is in de laatste jaren verveelvoudigd. Vooral zeldzame vintage-horloges worden aangeboden voor astronomische bedragen.', '46mm', '15.000 - 20.000', 'quatz', 'edelstaal', '492662523-10', 14.600, 10);
------------------------------------------------------------

