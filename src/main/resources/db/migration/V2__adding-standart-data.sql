INSERT INTO countries (country_name) VALUES
('Japan'),
('Germany'),
('South Korea'),
('China'),
('Russia'),
('USA'),
('France'),
('Czech Republic'),
('Great Britain'),
('Italy'),
('Sweden');

INSERT INTO brands (brand_name, country_id) VALUES
('Toyota', 1),('Lexus', 1),('Nissan', 1),('Honda', 1),('Mazda', 1),('Subaru', 1),('Mitsubishi', 1),('Suzuki', 1),
('Volkswagen', 2),('BMW', 2),('Mercedes-Benz', 2),('Audi', 2),('Porsche', 2),
('Hyundai', 3),('Kia', 3),('Genesis', 3),
('Chery', 4),('Geely', 4),('Haval', 4),('Lixiang', 4),('Xiaomi', 4),('BYD', 4),('Zeekr', 4),
('Lada', 5),('GAZ', 5),('UAZ', 5),('Moskvich', 5),
('Ford', 6),('Chevrolet', 6),('Cadillac', 6),('Jeep', 6),('Dodge', 6),('Tesla', 6),
('Renault', 7),('Peugeot', 7),('Citroen', 7),
('Skoda', 8),
('Land Rover', 9),('Jaguar', 9),('MINI', 9),('Bentley', 9),('Rolls-Royce', 9),('Aston Martin', 9),
('Fiat', 10),('Alfa Romeo', 10),('Ferrari', 10),('Maserati', 10),('Lamborghini', 10),
('Volvo', 11);

INSERT INTO models (model_name, brand_id) VALUES
('Camry', 1),('Corolla', 1),('RAV4', 1),('Land Cruiser Prado', 1),('Land Cruiser', 1),('Highlander', 1),('Prius', 1),('Yaris', 1),
('Avensis', 1),('Hilux', 1),
('RX', 2),('NX', 2),('LX', 2),('GX', 2),('ES', 2),('IS', 2),('UX', 2),
('Qashqai', 3),('X-Trail', 3),('Juke', 3),('Almera', 3),('Terrano', 3),('Teana', 3),('Leaf', 3),('Murano', 3),('Note', 3),
('CR-V', 4),('Civic', 4),('Accord', 4),('Fit', 4),('Stepwgn', 4),('Pilot', 4),
('CX-5', 5),('6', 5),('3', 5),('CX-7', 5),('CX-9', 5),
('Forester', 6),('Outback', 6),('Impreza', 6),('Legacy', 6),('XV', 6),('Crosstrek', 6),('Tribeca', 6),
('Outlander', 7),('ASX', 7),('Lancer', 7),('Pajero', 7),('Pajero Sport', 7),('L200', 7),('Galant', 7),('Grandis', 7),
('Grand Vitara', 8),('SX4', 8),('Jimny', 8),('Swift', 8),('Liana', 8),('Vitara', 8),
('Polo', 9),('Tiguan', 9),('Passat', 9),('Touareg', 9),('Golf', 9),('Jetta', 9),('Caddy', 9),('Transporter', 9),
('5 Series', 10),('3 Series', 10),('X5', 10),('X3', 10),('7 Series', 10),('X6', 10),('1 Series', 10),('X1', 10),
('E-Class', 11),('C-Class', 11),('S-Class', 11),('GLE', 11),('GLC', 11),('GLS', 11),('A-Class', 11),('CLA', 11),('G-Class', 11),('V-Class', 11),
('A6', 12),('A4', 12),('Q5', 12),('Q7', 12),('A8', 12),('A3', 12),('Q3', 12),('A5', 12),('TT', 12),
('Cayenne', 13),('Macan', 13),('Panamera', 13),('911', 13),('Taycan', 13),('Cayman', 13),
('Solaris', 14),('Creta', 14),('Tucson', 14),('Santa Fe', 14),('Elantra', 14),('Sonata', 14),('Getz', 14),('i30', 14),
('ix35', 14),('H-1', 14),('Staria', 14),('Palisade', 14),
('Rio', 15),('Sportage', 15),('Ceed', 15),('Optima', 15),('K5', 15),('Sorento', 15),('Cerato', 15),('Soul', 15),
('Picanto', 15),('Seltos', 15),('Carnival', 15),('Mohave', 15),('Stinger', 15),('Spectra', 15),
('GV80', 16),('G80', 16),('GV70', 16),('G70', 16),('G90', 16),('GV60', 16),
('Tiggo 7 Pro', 17),('Tiggo 8 Pro', 17),('Arrizo 8', 17),('Tiggo 4', 17),('Tiggo 7', 17),('Tiggo 8', 17),
('Tiggo', 17),('Bonus', 17),('QQ', 17),
('Coolray', 18),('Monjaro', 18),('Atlas', 18),('Atlas Pro', 18),('Tugella', 18),('Emgrand', 18),('Okavango', 18),
('Preface', 18),('Geometry C', 18),('MK', 18),
('Jolion', 19),('F7', 19),('F7x', 19),('Dargo', 19),('H9', 19),('M6', 19),('H6', 19),
('L7', 20),('L9', 20),('L8', 20),('L6', 20),('MEGA', 20),('Li ONE', 20),
('SU7', 21),('YU7', 21),('SU7 Ultra', 21),
('Song Plus', 22),('Han', 22),('Tang', 22),('Qin Plus', 22),('Yuan Plus', 22),('Seagull', 22),('Dolphin', 22),('Seal', 22),('F3', 22),
('001', 23),('X', 23),('009', 23),('007', 23),('7X', 23),('MIX', 23),
('Granta', 24),('Vesta', 24),('Niva Legend', 24),('Niva Travel', 24),('Largus', 24),('Priora', 24),('Kalina', 24),
('2114', 24),('2110', 24),('2107', 24),('XRAY', 24),
('Газель Next', 25),('Газель', 25),('Газель Бизнес', 25),('Газель NN', 25),('Соболь', 25),('Волга 31105', 25),
('Волга 3110', 25),('Volga Siber', 25),('ГАЗон Next', 25),
('Patriot', 26),('Hunter', 26),('Буханка', 26),('Pickup', 26),('Профи', 26),('Симбир', 26),
('3', 27),('3e', 27),('6', 27),('8', 27),('Святогор', 27),
('Focus', 28),('Mondeo', 28),('Kuga', 28),('Explorer', 28),('Transit', 28),('Fiesta', 28),('Fusion', 28),('EcoSport', 28),('Mustang', 28),('C-MAX', 28),
('Cruze', 29),('Lacetti', 29),('Aveo', 29),('Niva', 29),('Captiva', 29),('Tahoe', 29),('Cobalt', 29),('Spark', 29),
('Camaro', 29),('Lanos', 29),('Epica', 29),('Orlando', 29),
('Escalade', 30),('SRX', 30),('CTS', 30),('XT5', 30),('XT6', 30),('ATS', 30),
('Grand Cherokee', 31),('Wrangler', 31),('Cherokee', 31),('Compass', 31),('Renegade', 31),('Liberty', 31),('Commander', 31),
('Caliber', 32),('Journey', 32),('Challenger', 32),('Charger', 32),('Durango', 32),('Caravan', 32),('Stratus', 32),('Neon', 32),('Ram', 32),
('Model 3', 33),('Model Y', 33),('Model S', 33),('Model X', 33),('Cybertruck', 33),
('Logan', 34),('Duster', 34),('Sandero', 34),('Kaptur', 34),('Fluence', 34),('Arkana', 34),('Megane', 34),('Scenic', 34),
('Laguna', 34),('Symbol', 34),('Koleos', 34),('Kangoo', 34),('Master', 34),
('308', 35),('206', 35),('408', 35),('3008', 35),('Partner', 35),('Boxer', 35),('407', 35),('207', 35),('5008', 35),('4007', 35),('107', 35),
('C4', 36),('C5', 36),('Berlingo', 36),('Jumper', 36),('C3', 36),('C4 Picasso', 36),('C-Elysee', 36),('C4 Aircross', 36),('C1', 36),('SpaceTourer', 36),
('Octavia', 37),('Rapid', 37),('Kodiaq', 37),('Fabia', 37),('Superb', 37),('Yeti', 37),('Karoq', 37),('Roomster', 37),
('Range Rover Sport', 38),('Range Rover', 38),('Discovery', 38),('Freelander', 38),('Range Rover Evoque', 38),
('Discovery Sport', 38),('Defender', 38),('Range Rover Velar', 38),
('XF', 39),('F-Pace', 39),('X-Type', 39),('XJ', 39),('XE', 39),('E-Pace', 39),('I-Pace', 39),('S-Type', 39),('F-Type', 39),
('Hatch', 40),('Countryman', 40),('Clubman', 40),('Paceman', 40),('Coupe', 40),('Cabrio', 40),
('Continental GT', 41),('Bentayga', 41),('Continental Flying Spur', 41),('Arnage', 41),('Mulsanne', 41),
('Cullinan', 42),('Phantom', 42),('Ghost', 42),('Wraith', 42),('Dawn', 42),
('DBX', 43),('Vantage', 43),('DB9', 43),('DBS', 43),('Rapide', 43),('Vanquish', 43),('DB11', 43),
('Ducato', 44),('500', 44),('Albea', 44),('Doblo', 44),('Punto', 44),('Bravo', 44),('Panda', 44),('Scudo', 44),('Linea', 44),
('156', 45),('159', 45),('Giulia', 45),('Stelvio', 45),('147', 45),('Giulietta', 45),('Mito', 45),('Brera', 45),('Tonale', 45),
('Purosangue', 46),('SF90 Stradale', 46),('F8 Tributo', 46),('488', 46),('458 Italia', 46),('California', 46),
('Roma', 46),('Portofino', 46),('GTC4Lusso', 46),('812 Superfast', 46),('F430', 46),('360', 46),
('Levante', 47),('Ghibli', 47),('Quattroporte', 47),('GranTurismo', 47),('Grecale', 47),('Coupe', 47),
('Urus', 48),('Huracan', 48),('Gallardo', 48),('Aventador', 48),('Murcielago', 48),('Revuelto', 48),('Temerario', 48),
('XC90', 49),('XC60', 49),('S60', 49),('S80', 49),('XC70', 49),('S90', 49),('V40', 49),('XC40', 49),('EX90', 49),('C30', 49),('V90', 49);

INSERT INTO types_of_engine (name_of_type_engine) VALUES
('Gasoline'),('Diesel'),('Electric'),('Hybrid'),('Extended Range Electric'),('Gas');

INSERT INTO types_of_drive (name_of_drive_type) VALUES
('FWD'),('RWD'),('AWD');

INSERT INTO types_of_wheel_side (wheel_position) VALUES
('LHD'),('RHD');

INSERT INTO transmissions (type_of_transmission) VALUES
('Manual'),('Automatic'),('Robot'),('CVT');

INSERT INTO volumes_of_engine (volume) VALUES
(0.7),(0.8),(1.0),(1.2),(1.3),(1.4),(1.5),(1.6),(1.8),(2.0),(2.2),(2.3),(2.4),(2.5),(2.7),(2.8),(3.0),(3.3),(3.5),(3.6),
(3.7),(3.8),(4.0),(4.2),(4.4),(4.5),(4.6),(4.7),(4.8),(5.0),(5.4),(5.5),(5.6),(5.7),(6.0),(6.2),(6.3),(6.6),(6.7);

INSERT INTO car_body_types (name_of_body) VALUES
('SUV'),('Sedan'),('Liftback'),('Hatchback'),('Universal'),('Minivan'),('Compact MPV'),('Commercial Van'),('Pickup'),
('Coupe'),('Cabriolet'),('Roadster');

INSERT INTO colors (color_name) VALUES
('Black'),('White'),('Gray'),('Silver'),('Blue'),('Red'),('Brown'),('Green'),('Beige'),('Orange'),('Yellow'),('Purple'),
('Gold'),('Bronze'),('Burgundy'),('Pink');

INSERT INTO cities (name_of_city) VALUES
('Moscow'),('Saint Petersburg'),('Novosibirsk'),('Vladivostok'),('Yekaterinburg'),('Krasnodar'),('Kazan'),('Volgograd'),
('Nizhny Novgorod'),('Chelyabinsk'),('Samara'),('Ufa'),('Rostov-on-Don'),('Omsk'),('Krasnoyarsk'),('Voronezh'),('Perm');

INSERT INTO generations (year_start, year_end, generation_name, model_id) VALUES
(2001, 2006, 'XV30', 1),(2006, 2011, 'XV40', 1),(2011, 2014, 'XV50', 1),(2014, 2017, 'XV55', 1),(2017, 2024, 'XV70', 1),(2024, NULL, 'XV80', 1),
(2000, 2007, 'E120/E130', 2),(2006, 2013, 'E140/E150', 2),(2013, 2019, 'E170/E180', 2),(2018, NULL, 'E210', 2),
(2000, 2005, 'XA20', 3),(2005, 2013, 'XA30', 3),(2012, 2019, 'XA40', 3),(2018, NULL, 'XA50', 3),
(2002, 2009, '120', 4),(2009, 2023, '150', 4),(2024, NULL, '250', 4),
(1998, 2007, '100', 5),(2007, 2021, '200', 5),(2021, NULL, '300', 5),
(2000, 2007, 'XU20', 6),(2007, 2013, 'XU40', 6),(2013, 2019, 'XU50', 6),(2019, NULL, 'XU70', 6),
(2000, 2003, 'XW11', 7),(2003, 2011, 'XW20', 7),(2009, 2015, 'XW30', 7),(2015, 2022, 'XW50', 7),(2022, NULL, 'XW60', 7),
(1999, 2005, 'XP10', 8),(2005, 2011, 'XP90', 8),(2011, 2020, 'XP130', 8),(2020, NULL, 'XP210', 8),
(1997, 2003, 'T220', 9),(2003, 2009, 'T250', 9),(2008, 2018, 'T270', 9),
(2004, 2015, 'AN10/AN20/AN30', 10),(2015, NULL, 'AN120/AN130', 10),
(1998, 2003, 'I', 11),(2003, 2009, 'II', 11),(2008, 2015, 'III', 11),(2015, 2022, 'IV', 11),(2022, NULL, 'V', 11),
(2014, 2021, 'I', 12),(2021, NULL, 'II', 12),
(1998, 2007, '470', 13),(2007, 2021, 'LX 570/LX 450d', 13),(2021, NULL, 'LX 600/LX 500d', 13),
(2002, 2009, '470', 14),(2009, 2023, '460', 14),(2024, NULL, '550', 14),
(2001, 2006, 'IV', 15),(2006, 2012, 'V', 15),(2012, 2018, 'VI', 15),(2018, NULL, 'VII', 15),
(1999, 2005, 'I', 16),(2005, 2013, 'II', 16),(2013, 2020, 'III', 16),(2020, NULL, 'III(Restyling 2)', 16),
(2018, NULL, 'I', 17),
(2006, 2013, 'I', 18),(2013, 2021, 'II', 18),(2021, NULL, 'III', 18),
(2000, 2007, 'T30', 19),(2007, 2015, 'T31', 19),(2013, 2022, 'T32', 19),(2021, NULL, 'T33', 19),
(2010, 2019, 'I', 20),(2019, NULL, 'II', 20),
(2000, 2006, 'N16', 21),(2006, 2013, 'Classic', 21),(2012, 2018, 'G11', 21),
(1995, 2004, 'R50', 22),(2014, 2022, 'D10', 22),
(2003, 2008, 'J31', 23),(2008, 2014, 'J32', 23),(2014, 2016, 'J33', 23),
(2010, 2017, 'ZE0', 24),(2017, NULL, 'ZE1', 24),
(2002, 2008, 'Z50', 25),(2007, 2016, 'Z51', 25),(2014, 2024, 'Z52', 25),(2024, NULL, 'Z53', 25),
(2004, 2013, 'E11', 26),(2012, 2020, 'E12', 26),(2020, NULL, 'E13', 26),
(2001, 2006, 'II', 27),(2006, 2012, 'III', 27),(2012, 2018, 'IV', 27),(2016, 2023, 'V', 27),(2022, NULL, 'VI', 27),
(2000, 2006, 'VII', 28),(2005, 2012, 'VIII', 28),(2011, 2017, 'IX', 28),(2015, 2022, 'X', 28),(2021, NULL, 'XI', 28),
(1997, 2002, 'VI', 29),(2002, 2008, 'VII', 29),(2008, 2013, 'VIII', 29),(2012, 2017, 'IX', 29),(2017, 2023, 'X', 29),(2023, NULL, 'XI', 29),
(2001, 2007, 'I', 30),(2007, 2013, 'II', 30),(2013, 2020, 'III', 30),(2020, NULL, 'IV', 30),
(2001, 2005, 'II', 31),(2005, 2009, 'III', 31),(2009, 2015, 'IV', 31),(2015, 2022, 'V', 31),(2022, NULL, 'VI', 31),
(2002, 2008, 'I', 32),(2008, 2015, 'II', 32),(2015, 2022, 'III', 32),(2022, NULL, 'IV', 32),
(2011, 2017, 'I', 33),(2016, NULL, 'II', 33),
(2002, 2008, 'I', 34),(2007, 2013, 'II', 34),(2012, NULL, 'III', 34),
(2003, 2009, 'I', 35),(2009, 2013, 'II', 35),(2013, 2019, 'III', 35),(2018, NULL, 'IV', 35),
(2006, 2012, 'I', 36),
(2006, 2016, 'I', 36),(2016, 2023, 'II', 36),




