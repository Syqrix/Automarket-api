INSERT INTO countries (country_name) VALUES
('Japan'),
('Germany'),
('China'),
('Russia'),
('USA');

INSERT INTO brands (brand_name, country_id) VALUES
-- Japan
('Toyota', 1),('Lexus', 1),('Nissan', 1),('Honda', 1),('Mazda', 1),('Subaru', 1),('Mitsubishi', 1),('Suzuki', 1),
-- Germany
('Volkswagen', 2),('BMW', 2),('Mercedes-Benz', 2),('Audi', 2),('Porsche', 2),
-- China
('Chery', 3),('Geely', 3),('Haval', 3),('Lixiang', 3),('Xiaomi', 3),('BYD', 3),('Zeekr', 3),
-- Russia
('Lada', 4),('GAZ', 4),('UAZ', 4),('Moskvich', 4),
-- USA
('Ford', 5),('Chevrolet', 5),('Cadillac', 5),('Jeep', 5),('Dodge', 5),('Tesla', 5);

INSERT INTO models (model_name, brand_id) VALUES
-- Japan
('Camry', 1),('Corolla', 1),('RAV4', 1),('Land Cruiser Prado', 1),('Land Cruiser', 1),('Highlander', 1),('Prius', 1),
('Yaris', 1),('Avensis', 1),('Hilux', 1),
('RX', 2),('NX', 2),('LX', 2),('GX', 2),('ES', 2),('IS', 2),('UX', 2),
('Qashqai', 3),('X-Trail', 3),('Juke', 3),('Almera', 3),('Terrano', 3),('Teana', 3),('Leaf', 3),('Murano', 3),('Note', 3),
('CR-V', 4),('Civic', 4),('Accord', 4),('Fit', 4),('Stepwgn', 4),('Pilot', 4),
('CX-5', 5),('6', 5),('3', 5),('CX-7', 5),('CX-9', 5),
('Forester', 6),('Outback', 6),('Impreza', 6),('Legacy', 6),('XV', 6),('Crosstrek', 6),('Tribeca', 6),
('Outlander', 7),('ASX', 7),('Lancer', 7),('Pajero', 7),('Pajero Sport', 7),('L200', 7),('Galant', 7),('Grandis', 7),
('Grand Vitara', 8),('SX4', 8),('Jimny', 8),('Swift', 8),('Liana', 8),('Vitara', 8),
-- Germany
('Polo', 9),('Tiguan', 9),('Passat', 9),('Touareg', 9),('Golf', 9),('Jetta', 9),('Caddy', 9),('Transporter', 9),
('5 Series', 10),('3 Series', 10),('X5', 10),('X3', 10),('7 Series', 10),('X6', 10),('1 Series', 10),('X1', 10),
('E-Class', 11),('C-Class', 11),('S-Class', 11),('GLE', 11),('GLC', 11),('GLS', 11),('A-Class', 11),('CLA', 11),
('G-Class', 11),('V-Class', 11),
('A6', 12),('A4', 12),('Q5', 12),('Q7', 12),('A8', 12),('A3', 12),('Q3', 12),('A5', 12),('TT', 12),
('Cayenne', 13),('Macan', 13),('Panamera', 13),('911', 13),('Taycan', 13),('Cayman', 13),
-- China
('Tiggo 7 Pro', 14),('Tiggo 8 Pro', 14),('Arrizo 8', 14),('Tiggo 4', 14),('Tiggo 7', 14),('Tiggo 8', 14),('Tiggo', 14),
('Bonus', 14),('QQ', 14),
('Coolray', 15),('Monjaro', 15),('Atlas', 15),('Atlas Pro', 15),('Tugella', 15),('Emgrand', 15),('Okavango', 15),
('Preface', 15),('Geometry C', 15),('MK', 15),
('Jolion', 16),('F7', 16),('F7x', 16),('Dargo', 16),('H9', 16),('M6', 16),('H6', 16),
('L7', 17),('L9', 17),('L8', 17),('L6', 17),('MEGA', 17),('Li ONE', 17),
('SU7', 18),('YU7', 18),('SU7 Ultra', 18),
('Song Plus', 19),('Han', 19),('Tang', 19),('Qin Plus', 19),('Yuan Plus', 19),('Seagull', 19),('Dolphin', 19),
('Seal', 19),('F3', 19),
('001', 20),('X', 20),('009', 20),('007', 20),('7X', 20),('MIX', 20),
-- Russia
('Granta', 21),('Vesta', 21),('Niva Legend', 21),('Niva Travel', 21),('Largus', 21),('Priora', 21),('Kalina', 21),
('2114', 21),('2110', 21),('2107', 21),('XRAY', 21),
('Газель Next', 22),('Газель', 22),('Газель Бизнес', 22),('Газель NN', 22),('Соболь', 22),('Волга 31105', 22),
('Волга 3110', 22),('Volga Siber', 22),('ГАЗон Next', 22),
('Patriot', 23),('Hunter', 23),('Буханка', 23),('Pickup', 23),('Профи', 23),('Симбир', 23),
('3', 24),('3e', 24),('6', 24),('8', 24),('Святогор', 24),
-- USA
('Focus', 25),('Mondeo', 25),('Kuga', 25),('Explorer', 25),('Transit', 25),('Fiesta', 25),('Fusion', 25),
('EcoSport', 25),('Mustang', 25),('C-MAX', 25),
('Cruze', 26),('Lacetti', 26),('Aveo', 26),('Niva', 26),('Captiva', 26),('Tahoe', 26),('Cobalt', 26),
('Spark', 26),('Camaro', 26),('Lanos', 26),('Epica', 26),('Orlando', 26),
('Escalade', 27),('SRX', 27),('CTS', 27),('XT5', 27),('XT6', 27),('ATS', 27),
('Grand Cherokee', 28),('Wrangler', 28),('Cherokee', 28),('Compass', 28),('Renegade', 28),('Liberty', 28),
('Commander', 28),
('Caliber', 29),('Journey', 29),('Challenger', 29),('Charger', 29),('Durango', 29),('Caravan', 29),
('Stratus', 29),('Neon', 29),('Ram', 29),
('Model 3', 30),('Model Y', 30),('Model S', 30),('Model X', 30),('Cybertruck', 30);

INSERT INTO types_of_engine (name_of_type_engine) VALUES
('Gasoline'),('Diesel'),('Electric'),('Hybrid'),('Extended Range Electric'),('Gas');

INSERT INTO types_of_drive (name_of_drive_type) VALUES
('FWD'),('RWD'),('AWD');

INSERT INTO types_of_wheel_side (wheel_position) VALUES
('LHD'),('RHD');

INSERT INTO transmissions (type_of_transmission) VALUES
('Manual'),('Automatic'),('Robot'),('CVT'),('Reducer');

INSERT INTO volumes_of_engine (volume) VALUES
(0.0),(0.7),(0.8),(1.0),(1.1),(1.2),(1.3),(1.4),(1.5),(1.6),(1.7),(1.8),(1.9),(2.0),(2.1),(2.2),(2.3),(2.4),(2.5),(2.7),
(2.8),(2.9),(3.0),(3.2),(3.3),(3.5),(3.6),(3.7),(3.8),(4.0),(4.2),(4.4),(4.5),(4.6),(4.7),(4.8),(5.0),(5.2),(5.4),(5.5),
(5.6),(5.7),(6.0),(6.2),(6.3),(6.5),(6.6),(6.7),(11.1);

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
-- Toyota
(2001, 2006, 'XV30', 1),(2006, 2011, 'XV40', 1),(2011, 2017, 'XV50_XV55', 1),(2017, 2024, 'XV70', 1),
(2024, NULL, 'XV80', 1),
(2000, 2007, 'E120_E130', 2),(2006, 2013, 'E140_E150', 2),(2013, 2019, 'E170_E180', 2),(2018, NULL, 'E210', 2),
(2000, 2005, 'XA20', 3),(2005, 2013, 'XA30', 3),(2012, 2019, 'XA40', 3),(2018, NULL, 'XA50', 3),
(2002, 2009, '120', 4),(2009, 2023, '150', 4),(2024, NULL, '250', 4),
(1998, 2007, '100', 5),(2007, 2021, '200', 5),(2021, NULL, '300', 5),
(2000, 2007, 'XU20', 6),(2007, 2013, 'XU40', 6),(2013, 2019, 'XU50', 6),(2019, NULL, 'XU70', 6),
(2000, 2003, 'XW11', 7),(2003, 2011, 'XW20', 7),(2009, 2015, 'XW30', 7),(2015, 2022, 'XW50', 7),
(2022, NULL, 'XW60', 7),
(1999, 2005, 'XP10', 8),(2005, 2011, 'XP90', 8),(2011, 2020, 'XP130', 8),(2020, NULL, 'XP210', 8),
(1997, 2003, 'T220', 9),(2003, 2009, 'T250', 9),(2008, 2018, 'T270', 9),
(2004, 2015, 'AN10_AN30', 10),(2015, NULL, 'AN120_AN130', 10),
-- Lexus
(1998, 2003, 'X10', 11),(2003, 2009, 'X20', 11),(2008, 2015, 'AL10', 11),(2015, 2022, 'AL20', 11),
(2022, NULL, 'ALA10_ALH10', 11),
(2014, 2021, 'AZ10', 12),(2021, NULL, 'AZ20', 12),
(1998, 2007, 'UZJ100', 13),(2007, 2021, 'URJ200', 13),(2021, NULL, 'VJA310', 13),
(2002, 2009, 'UZJ120', 14),(2009, 2023, 'URJ150', 14),(2024, NULL, 'VJA250', 14),
(2001, 2006, 'XV30', 15),(2006, 2012, 'XV40', 15),(2012, 2018, 'XV60', 15),(2018, NULL, 'XZ10', 15),
(1999, 2005, 'XE10', 16),(2005, 2013, 'XE20', 16),(2013, NULL, 'XE30', 16),
(2018, NULL, 'ZA10', 17),
-- Nissan
(2006, 2013, 'J10', 18),(2013, 2021, 'J11', 18),(2021, NULL, 'J12', 18),
(2000, 2007, 'T30', 19),(2007, 2015, 'T31', 19),(2013, 2022, 'T32', 19),(2021, NULL, 'T33', 19),
(2010, 2019, 'F15', 20),(2019, NULL, 'F16', 20),
(2000, 2006, 'N16', 21),(2006, 2013, 'B10', 21),(2012, 2018, 'G11', 21),
(1995, 2004, 'R50', 22),(2014, 2022, 'D10', 22),
(2003, 2008, 'J31', 23),(2008, 2014, 'J32', 23),(2014, 2016, 'J33', 23),
(2010, 2017, 'ZE0', 24),(2017, NULL, 'ZE1', 24),
(2002, 2008, 'Z50', 25),(2007, 2016, 'Z51', 25),(2014, 2024, 'Z52', 25),(2024, NULL, 'Z53', 25),
(2004, 2013, 'E11', 26),(2012, 2020, 'E12', 26),(2020, NULL, 'E13', 26),
-- Honda
(2001, 2006, 'RD4_RD9', 27),(2006, 2012, 'RE1_RE7', 27),(2012, 2018, 'RM1_RM4', 27),
(2016, 2023, 'RW1_RW8', 27),(2022, NULL, 'RS', 27),
(2000, 2006, 'EU_EP_EM', 28),(2005, 2012, 'FD_FN', 28),(2011, 2017, 'FB_FK', 28),(2015, 2022, 'FC_FK', 28),
(2021, NULL, 'FE_FL', 28),
(1997, 2002, 'CG_CH_CL', 29),(2002, 2008, 'CL_CM', 29),(2008, 2013, 'CU_CW', 29),(2012, 2017, 'CR', 29),
(2017, 2023, 'CV', 29),(2023, NULL, 'CY', 29),
(2001, 2007, 'GD', 30),(2007, 2013, 'GE', 30),(2013, 2020, 'GK', 30),(2020, NULL, 'GR', 30),
(2001, 2005, 'RF3_RF8', 31),(2005, 2009, 'RG', 31),(2009, 2015, 'RK', 31),(2015, 2022, 'RP1_RP5', 31),
(2022, NULL, 'RP6_RP8', 31),
(2002, 2008, 'YF1_YF2', 32),(2008, 2015, 'YF3_YF4', 32),(2015, 2022, 'YF5_YF6', 32),(2022, NULL, 'YG1', 32),
-- Mazda
(2011, 2017, 'KE', 33),(2016, NULL, 'KF', 33),
(2002, 2008, 'GG', 34),(2007, 2013, 'GH', 34),(2012, NULL, 'GJ', 34),
(2003, 2009, 'BK', 35),(2009, 2013, 'BL', 35),(2013, 2019, 'BM_BN', 35),(2018, NULL, 'BP', 35),
(2006, 2012, 'ER', 36),
(2006, 2016, 'TB', 37),(2016, 2023, 'TC', 37),
-- Subaru
(1997, 2002, 'SF', 38),(2002, 2008, 'SG', 38),(2007, 2013, 'SH', 38),(2012, 2019, 'SJ', 38),(2018, 2025, 'SK', 38),
(2024, NULL, 'SL', 38),
(1998, 2003, 'BH_BP', 39),(2003, 2009, 'BP', 39),(2009, 2014, 'BR', 39),(2014, 2021, 'BS', 39),(2019, NULL, 'BT', 39),
(2000, 2007, 'GD_GG', 40),(2007, 2014, 'GH_GE', 40),(2011, 2017, 'GJ_GP', 40),(2016, 2023, 'GK_GT', 40),
(2022, NULL, 'GU', 40),
(1998, 2003, 'BE_BH', 41),(2003, 2009, 'BL_BP', 41),(2009, 2015, 'BM_BR', 41),(2014, 2020, 'BN_BS', 41),
(2019, NULL, 'BW_BT', 41),
(2011, 2017, 'GP', 42),(2017, 2023, 'GT', 42),(2023, NULL, 'GU', 42),
(2011, 2017, 'GP', 43),(2017, 2023, 'GT', 43),(2023, NULL, 'GU', 43),
(2005, 2014, 'WX', 44),
-- Mitsubishi
(2001, 2008, 'CU', 45),(2005, 2013, 'CW', 45),(2012, 2022, 'GF', 45),(2021, NULL, 'GN', 45),
(2010, 2024, 'GA', 46),(2022, NULL, 'BJB', 46),
(2000, 2010, 'CS', 47),(2007, 2018, 'CY_CZ', 47),
(1997, 2006, 'V20_V40', 48),(1999, 2006, 'V60_V70', 48),(2006, 2022, 'V80_V90', 48),
(1996, 2009, 'K90', 49),(2008, 2017, 'KH0', 49),(2015, NULL, 'KS0', 49),
(1996, 2007, 'K70', 50),(2005, 2015, 'KB0', 50),
(2014, 2024, 'KK0_KL0', 51),(2023, NULL, 'LC', 51),
(1996, 2006, 'EA_EC', 52),(2003, 2012, 'DJ_DM', 52),(2003, 2011, 'NA', 52),
--Suzuki
(1998, 2006, 'FT_GT', 53),(2005, 2019, 'JT', 53),(2022, NULL, 'YWD', 53),
(2006, 2014, 'GY_RW', 54),(2013, 2021, 'JY', 54),(2021, NULL, 'Y4', 54),
(1998, 2018, 'JB23_JB43', 55),(2018, NULL, 'JB64_JB74', 55),
(2000, 2006, 'HT', 56),(2004, 2011, 'ZA_ZC', 56),(2010, 2017, 'AZG', 56),(2016, 2024, 'A2L', 56),(2023, NULL, 'A7G', 56),
(2001, 2007, 'ER', 57),
(1988, 2006, 'ET_TA', 58),(2014, NULL, 'LY', 58),
-- Volkswagen
(1999, 2009, '6N2_9N3', 59),(2009, 2020, '6R_6C', 59),(2017, NULL, 'AW_CK', 59), -- Volkswagen Polo
(2007, 2016, '5N', 60),(2016, NULL, 'AD_CT', 60), -- Volkswagen Tiguan
(1996, 2005, 'B5', 61),(2005, 2015, 'B6_B7', 61),(2014, 2024, 'B8', 61),(2023, NULL, 'B9', 61), -- Volkswagen Passat
(2002, 2010, '7L', 62),(2010, 2018, '7P', 62),(2018, NULL, 'CR', 62), -- Volkswagen Touareg
(1997, 2006, 'Mk4', 63),(2003, 2013, 'Mk5_Mk6', 63),(2012, 2020, 'Mk7', 63),(2019, NULL, 'Mk8', 63), -- Volkswagen Golf
(1998, 2011, 'A4_A5', 64),(2010, 2019, 'A6', 64),(2018, NULL, 'A7', 64), -- Volkswagen Jetta
(1995, 2020, '9K_2K', 65),(2020, NULL, 'SB', 65), -- Volkswagen Caddy
(1990, 2015, 'T4_T5', 66),(2015, NULL, 'T6_T7', 66), -- Volkswagen Transporter
-- BMW
(1995, 2010, 'E39_E61', 67),(2009, 2017, 'F10_F11_F07', 67),(2016, 2024, 'G30_G31', 67),(2023, NULL, 'G60_G61', 67), -- BMW 5 Series
(1998, 2007, 'E46', 68),(2005, 2013, 'E90_E93', 68),(2011, 2020, 'F30_F34', 68),(2018, NULL, 'G20_G21', 68), -- BMW 3 Series
(1999, 2013, 'E53_E70', 69),(2013, 2018, 'F15', 69),(2018, NULL, 'G05', 69), -- BMW X5
(2003, 2017, 'E83_F25', 70),(2017, 2024, 'G01', 70),(2024, NULL, 'G45', 70), -- BMW X3
(1994, 2008, 'E38_E66', 71),(2008, 2015, 'F01_F02', 71),(2015, 2022, 'G11_G12', 71),(2022, NULL, 'G70', 71), -- BMW 7 Series
(2007, 2014, 'E71', 72),(2014, 2019, 'F16', 72),(2019, NULL, 'G06', 72), -- BMW X6
(2004, 2013, 'E81_E88', 73),(2011, 2019, 'F20_F21', 73),(2019, NULL, 'F40_F70', 73), -- BMW 1 Series
(2009, 2015, 'E84', 74),(2015, 2022, 'F48', 74),(2022, NULL, 'U11', 74), -- BMW X1
-- Mercedes-Benz
(1995, 2009, 'W210_W211', 75),(2009, 2016, 'W212_C207', 75),(2016, 2023, 'W213_C238', 75),(2023, NULL, 'W214_S214', 75), -- Mercedes E-Class
(1993, 2007, 'W202_W203', 76),(2007, 2014, 'W204_C204', 76),(2014, 2021, 'W205_C205', 76),(2021, NULL, 'W206_S206', 76), -- Mercedes C-Class
(1998, 2013, 'W220_W221', 77),(2013, 2020, 'W222_C217', 77),(2020, NULL, 'W223_X223', 77), -- Mercedes S-Class
(1997, 2011, 'W163_W164', 78),(2011, 2019, 'W166_C292', 78),(2018, NULL, 'V167_C167', 78), -- Mercedes GLE (M-Class)
(2008, 2015, 'X204', 79),(2015, 2023, 'X253_C253', 79),(2022, NULL, 'X254_C254', 79), -- Mercedes GLC (GLK)
(2006, 2019, 'X164_X166', 80),(2019, NULL, 'X167', 80), -- Mercedes GLS (GL)
(1997, 2012, 'W168_W169', 81),(2012, 2018, 'W176', 81),(2018, NULL, 'W177_V177', 81), -- Mercedes A-Class
(2013, 2019, 'C117_X117', 82),(2019, NULL, 'C118_X118', 82), -- Mercedes CLA
(1990, 2018, 'W463_Classic', 83),(2018, 2024, 'W463_New', 83),(2024, NULL, 'W465', 83), -- Mercedes G-Class
(1996, 2014, 'W638_W639', 84),(2014, NULL, 'W447', 84), -- Mercedes V-Class (Vito)
-- Audi
(1997, 2011, 'C5_C6', 85),(2011, 2018, 'C7', 85),(2018, NULL, 'C8_C9', 85), -- Audi A6
(1994, 2008, 'B5_B7', 86),(2007, 2015, 'B8', 86),(2015, NULL, 'B9_B10', 86), -- Audi A4
(2008, 2017, '8R', 87),(2016, NULL, 'FY_PPC', 87), -- Audi Q5
(2005, 2015, '4L', 88),(2015, NULL, '4M', 88), -- Audi Q7
(1994, 2010, 'D2_D3', 89),(2009, 2017, 'D4', 89),(2017, NULL, 'D5', 89), -- Audi A8
(1996, 2013, '8L_8P', 90),(2012, 2020, '8V', 90),(2020, NULL, '8Y', 90), -- Audi A3
(2011, 2018, '8U', 91),(2018, NULL, 'F3', 91), -- Audi Q3
(2007, 2016, '8T', 92),(2016, NULL, 'F5', 92), -- Audi A5
(1998, 2014, '8N_8J', 93),(2014, 2023, '8S', 93), -- Audi TT
-- Porsche
(2002, 2010, '955_957', 94),(2010, 2018, '958', 94),(2017, NULL, '9YA_9YB', 94), -- Porsche Cayenne
(2014, NULL, '95B_EV', 95), -- Porsche Macan
(2009, 2016, '970', 96),(2016, NULL, '971_972', 96), -- Porsche Panamera
(1997, 2012, '996_997', 97),(2011, 2019, '991', 97),(2018, NULL, '992', 97), -- Porsche 911
(2019, NULL, 'J1', 98), -- Porsche Taycan
(2005, 2016, '987c_981c', 99),(2016, NULL, '982', 99), -- Porsche Cayman
-- Chery
(2020, NULL, 'T1X', 100),
(2021, NULL, 'T1X', 101),
(2022, NULL, 'M1E', 102),
(2019, NULL, 'T1X', 103),
(2016, 2020, 'T15', 104),
(2018, NULL, 'T18', 105),
(2005, 2016, 'T11', 106),
(2011, 2014, 'A13', 107),
(2003, 2015, 'S11', 108),
--Geely
(2019, NULL, 'BMA', 109),
(2021, NULL, 'CMA', 110),
(2016, 2023, 'NL3', 111),
(2019, NULL, 'NL3', 112),
(2019, NULL, 'CMA', 113),
(2011, 2019, 'FE3', 114),(2021, NULL, 'BMA', 114),
(2020, NULL, 'CV', 115),
(2020, NULL, 'CMA', 116),
(2020, NULL, 'GE11', 117),
(2006, 2015, 'MK', 118),
--Haval
(2020, NULL, 'Lemon', 119),
(2018, 2024, 'i3', 120),(2024, NULL, 'Lemon', 120),
(2019, 2024, 'i3', 121),
(2020, NULL, 'Lemon', 122),
(2014, 2024, 'H9', 123),(2024, NULL, 'P71', 123),
(2017, NULL, 'H6_Chassis', 124),
(2011, 2017, 'H6', 125),(2017, 2020, 'i3', 125),(2020, NULL, 'Lemon', 125),
--Lixiang
(2023, NULL, 'Li_Platform', 126),
(2022, NULL, 'Li_Platform', 127),
(2022, NULL, 'Li_Platform', 128),
(2024, NULL, 'Li_Platform', 129),
(2024, NULL, 'Li_BEV', 130),
(2019, 2022, 'Li_First', 131),
--Xiaomi
(2024, NULL, 'Modena', 132),
(2025, NULL, 'Modena', 133),
(2025, NULL, 'Modena_Ultra', 134),
--BYD
(2020, NULL, 'e_Platform_3', 135),
(2020, NULL, 'Han', 136),
(2015, 2018, 'Tang', 137),(2018, NULL, 'Tang_Second', 137),
(2021, NULL, 'e_Platform_3', 138),
(2022, NULL, 'e_Platform_3', 139),
(2023, NULL, 'e_Platform_3', 140),
(2021, NULL, 'e_Platform_3', 141),
(2022, NULL, 'e_Platform_3', 142),
(2005, 2021, 'F3', 143),
--Zeekr
(2021, NULL, 'SEA', 144),
(2023, NULL, 'SEA_Entry', 145),
(2022, NULL, 'SEA', 146),
(2023, NULL, 'PMA2', 147),
(2024, NULL, 'SEA', 148),
(2024, NULL, 'SEA_M', 149),
-- Lada
(2011, NULL, '2190_2194', 150),
(2015, NULL, 'Lada_B', 151),(1977, NULL, '2121', 152),(2002, NULL, '2123', 153),(2012, NULL, 'B0_Commercial', 154),
(2007, 2018, '2170_2172', 155),(2004, 2018, '1118_2192', 156),(2001, 2013, '2114', 157),(1995, 2009, '2110', 158),
(1982, 2012, '2105', 159),(2015, 2022, 'B0', 160),
-- GAZ
(2013, NULL, 'Next', 161),(1994, 2010, '3302', 162),(2010, NULL, 'Бизнес', 163),(2021, NULL, 'NN', 164),
(1998, NULL, '2217_NN', 165),(2004, 2009, '31105', 166),(1997, 2004, '3110', 167),(2008, 2010, 'JR41', 168),
(2014, NULL, 'C41R11', 169)
,-- UAZ
(2005, NULL, '3163', 170),(2003, NULL, '315195', 171),(1965, NULL, '452', 172),(2008, NULL, '23632', 173),
(2017, NULL, '23602', 174),(2000, 2005, '3162', 175),
-- Moskvich
(2022, NULL, 'JAC_JS4', 176),(2022, NULL, 'JAC_E40X', 177),(2023, NULL, 'JAC_A5_Plus', 178),
(2024, NULL, 'JAC_X8_Plus', 179),(1997, 2002, 'AZLK_2141', 180),
-- Ford
(1998, 2025, 'C170_C2', 181),(1993, NULL, 'CDW27_CD542', 182),(2008, NULL, 'C1_C2', 183),(2001, NULL, 'U152_CD6', 184),
(2000, NULL, 'V184_V363', 185),(2002, 2023, 'B3_B479', 186),(2002, 2020, 'B3_CD4', 187),(2003, 2022, 'BV226_B515', 188),
(1994, NULL, 'SN95_S650', 189),(2003, 2019, 'C1_Global_C', 190),
-- Chevrolet
(2001, 2025, 'YG_D2LC', 191),(2002, 2013, 'J200', 192),(2002, 2020, 'T200_T300', 193),(1998, 2020, 'VAZ_2123', 194),
(2006, NULL, 'C100_CN200S', 195),(2000, NULL, 'GMT800_GMTT1XX', 196),(2004, NULL, 'Delta_GSV', 197),
(2005, 2022, 'M200_M400', 198),(1993, 2024, 'F_Body_Alpha', 199),(1997, 2017, 'T100', 200),
(2006, 2012, 'V250', 201),(2011, 2023, 'J309_Orlando_II', 202),
-- Cadillac
(2001, NULL, 'GMT800_GMTT1XX_Esc', 203),(2003, 2016, 'Sigma_TE', 204),(2002, 2019, 'Sigma_Alpha', 205),
(2016, NULL, 'C1XX_I_II', 206),(2019, NULL, 'C1XX_XT6', 207),(2012, 2019, 'Alpha_ATS', 208),
-- Jeep
(1998, NULL, 'WJ_WL', 209),(1996, NULL, 'TJ_JL', 210),(2001, 2023, 'KJ_KL', 211),(2006, NULL, 'MK49_MP', 212),
(2014, NULL, 'Small_Wide_4x4', 213),(2001, 2012, 'KJ_KK_Liberty', 214),(2005, NULL, 'XK_Grand_Commander', 215),
-- Dodge
(2006, 2012, 'PM', 216),(2008, NULL, 'JC_GAC_A88', 217),(2008, 2023, 'LA', 218),(2005, NULL, 'LX_STLA_Large', 219),
(2003, NULL, 'HB_WD', 220),(2000, 2020, 'RS_RT', 221),(1995, 2006, 'JA_JR', 222),(1999, 2021, 'PL_Small_Wide', 223),
(1993, 2009, 'BR_DR', 224),
-- Tesla
(2017, NULL, 'Model_3_Base', 225),(2020, NULL, 'Model_Y_Base', 226),(2012, NULL, 'Model_S_Base', 227),
(2015, NULL, 'Model_X_Base', 228),(2023, NULL, 'Cybertruck_Base', 229);

INSERT INTO modifications (horse_power, weight, wheel_id, generation_id, engine_id, transmission_id, drive_type_id, engine_volume_id, body_type_id) VALUES
-- Toyota
(152, 1400, 1, 1, 1, 2, 1, 18, 2),   -- Camry XV30 | 2.4 Gasoline Automatic FWD Sedan
(167, 1465, 1, 2, 1, 2, 1, 18, 2),   -- Camry XV40 | 2.4 Gasoline Automatic FWD Sedan
(277, 1540, 1, 2, 1, 2, 1, 26, 2),   -- Camry XV40 | 3.5 Gasoline Automatic FWD Sedan
(181, 1530, 1, 3, 1, 2, 1, 19, 2),   -- Camry XV50_XV55 | 2.5 Gasoline Automatic FWD Sedan
(181, 1570, 1, 4, 1, 2, 1, 19, 2),   -- Camry XV70 | 2.5 Gasoline Automatic FWD Sedan
(225, 1650, 1, 5, 4, 4, 1, 19, 2),   -- Camry XV80 | 2.5 Hybrid CVT FWD Sedan
(110, 1190, 1, 6, 1, 2, 1, 10, 2),   -- Corolla E120_E130 | 1.6 Gasoline Automatic FWD Sedan
(124, 1300, 1, 7, 1, 2, 1, 10, 2),   -- Corolla E140_E150 | 1.6 Gasoline Automatic FWD Sedan
(122, 1305, 1, 8, 1, 4, 1, 10, 2),   -- Corolla E170_E180 | 1.6 Gasoline CVT FWD Sedan
(122, 1370, 1, 9, 1, 4, 1, 10, 2),   -- Corolla E210 | 1.6 Gasoline CVT FWD Sedan
(150, 1310, 1, 10, 1, 2, 3, 14, 1),  -- RAV4 XA20 | 2.0 Gasoline Automatic AWD SUV
(152, 1540, 1, 11, 1, 4, 3, 14, 1),  -- RAV4 XA30 | 2.0 Gasoline CVT AWD SUV
(146, 1605, 1, 12, 1, 4, 3, 14, 1),  -- RAV4 XA40 | 2.0 Gasoline CVT AWD SUV
(180, 1640, 1, 12, 1, 2, 3, 19, 1),  -- RAV4 XA40 | 2.5 Gasoline Automatic AWD SUV
(149, 1615, 1, 13, 1, 4, 3, 14, 1),  -- RAV4 XA50 | 2.0 Gasoline CVT AWD SUV
(249, 1930, 1, 14, 1, 2, 3, 30, 1),  -- Land Cruiser Prado 120 | 4.0 Gasoline Automatic AWD SUV
(177, 2165, 1, 15, 2, 2, 3, 21, 1),  -- Land Cruiser Prado 150 | 2.8 Diesel Automatic AWD SUV
(282, 2125, 1, 15, 1, 2, 3, 30, 1),  -- Land Cruiser Prado 150 | 4.0 Gasoline Automatic AWD SUV
(281, 2240, 1, 16, 4, 2, 3, 18, 1),  -- Land Cruiser Prado 250 | 2.4 Hybrid Automatic AWD SUV
(235, 2320, 1, 17, 1, 2, 3, 35, 1),  -- Land Cruiser 100 | 4.7 Gasoline Automatic AWD SUV
(249, 2585, 1, 18, 2, 2, 3, 33, 1),  -- Land Cruiser 200 | 4.5 Diesel Automatic AWD SUV
(309, 2555, 1, 18, 1, 2, 3, 35, 1),  -- Land Cruiser 200 | 4.7 Gasoline Automatic AWD SUV
(415, 2420, 1, 19, 1, 2, 3, 26, 1),  -- Land Cruiser 300 | 3.5 Gasoline Automatic AWD SUV
(223, 1785, 1, 20, 1, 2, 3, 23, 1),  -- Highlander XU20 | 3.0 Gasoline Automatic AWD SUV
(273, 2020, 1, 21, 1, 2, 3, 26, 1),  -- Highlander XU40 | 3.5 Gasoline Automatic AWD SUV
(249, 2060, 1, 22, 1, 2, 3, 26, 1),  -- Highlander XU50 | 3.5 Gasoline Automatic AWD SUV
(249, 2090, 1, 23, 1, 2, 3, 26, 1),  -- Highlander XU70 | 3.5 Gasoline Automatic AWD SUV
(72, 1220, 1, 24, 4, 4, 1, 9, 2),   -- Prius XW11 | 1.5 Hybrid CVT FWD Sedan
(76, 1250, 1, 25, 4, 4, 1, 9, 4),   -- Prius XW20 | 1.5 Hybrid CVT FWD Hatchback
(99, 1370, 1, 26, 4, 4, 1, 12, 4),  -- Prius XW30 | 1.8 Hybrid CVT FWD Hatchback
(98, 1360, 1, 27, 4, 4, 1, 12, 4),  -- Prius XW50 | 1.8 Hybrid CVT FWD Hatchback
(152, 1420, 1, 28, 4, 4, 1, 14, 4),  -- Prius XW60 | 2.0 Hybrid CVT FWD Hatchback
(86, 915, 1, 29, 1, 1, 1, 7, 4),    -- Yaris XP10 | 1.3 Gasoline Manual FWD Hatchback
(87, 1045, 1, 30, 1, 3, 1, 7, 4),    -- Yaris XP90 | 1.3 Gasoline Robot FWD Hatchback
(99, 1075, 1, 31, 1, 4, 1, 7, 4),    -- Yaris XP130 | 1.3 Gasoline CVT FWD Hatchback
(125, 1040, 1, 32, 1, 4, 1, 9, 4),   -- Yaris XP210 | 1.5 Gasoline CVT FWD Hatchback
(128, 1245, 1, 33, 1, 1, 1, 14, 2),  -- Avensis T220 | 2.0 Gasoline Manual FWD Sedan
(147, 1370, 1, 34, 1, 2, 1, 14, 2),  -- Avensis T250 | 2.0 Gasoline Automatic FWD Sedan
(147, 1445, 1, 35, 1, 4, 1, 12, 2),  -- Avensis T270 | 1.8 Gasoline CVT FWD Sedan
(144, 1845, 1, 36, 2, 1, 3, 19, 9),  -- Hilux AN10_AN30 | 2.5 Diesel Manual AWD Pickup
(150, 2115, 1, 37, 2, 2, 3, 18, 9),  -- Hilux AN120_AN130 | 2.4 Diesel Automatic AWD Pickup
(204, 2145, 1, 37, 2, 2, 3, 21, 9),  -- Hilux AN120_AN130 | 2.8 Diesel Automatic AWD Pickup,
-- Lexus
(201, 1670, 1, 38, 1, 2, 3, 23, 1),   -- RX X10 | 3.0 Gasoline Automatic AWD SUV
(276, 1890, 1, 39, 1, 2, 3, 26, 1),   -- RX X20 | 3.5 Gasoline Automatic AWD SUV
(277, 1970, 1, 40, 1, 2, 3, 26, 1),   -- RX AL10 | 3.5 Gasoline Automatic AWD SUV
(238, 1960, 1, 41, 1, 2, 3, 14, 1),   -- RX AL20 | 2.0 Gasoline Automatic AWD SUV
(300, 2040, 1, 41, 1, 2, 3, 26, 1),   -- RX AL20 | 3.5 Gasoline Automatic AWD SUV
(249, 1985, 1, 42, 1, 2, 1, 18, 1),   -- RX ALA10_ALH10 | 2.4 Gasoline Automatic FWD SUV
(150, 1685, 1, 43, 1, 4, 3, 14, 1),   -- NX AZ10 | 2.0 Gasoline CVT AWD SUV
(238, 1780, 1, 43, 1, 2, 3, 14, 1),   -- NX AZ10 | 2.0 Gasoline Automatic AWD SUV
(279, 1790, 1, 44, 1, 2, 3, 18, 1),   -- NX AZ20 | 2.4 Gasoline Automatic AWD SUV
(234, 2430, 1, 45, 1, 2, 3, 35, 1),   -- LX UZJ100 | 4.7 Gasoline Automatic AWD SUV
(367, 2585, 1, 46, 1, 2, 3, 42, 1),   -- LX URJ200 | 5.7 Gasoline Automatic AWD SUV
(415, 2520, 1, 47, 1, 2, 3, 26, 1),   -- LX VJA310 | 3.5 Gasoline Automatic AWD SUV
(238, 2150, 1, 48, 1, 2, 3, 35, 1),   -- GX UZJ120 | 4.7 Gasoline Automatic AWD SUV
(296, 2290, 1, 49, 1, 2, 3, 34, 1),   -- GX URJ150 | 4.6 Gasoline Automatic AWD SUV
(354, 2350, 1, 50, 1, 2, 3, 26, 1),   -- GX VJA250 | 3.4 Gasoline Automatic AWD SUV
(186, 1560, 1, 51, 1, 2, 1, 23, 2),   -- ES XV30 | 3.0 Gasoline Automatic FWD Sedan
(277, 1620, 1, 52, 1, 2, 1, 26, 2),   -- ES XV40 | 3.5 Gasoline Automatic FWD Sedan
(184, 1610, 1, 53, 1, 2, 1, 19, 2),   -- ES XV60 | 2.5 Gasoline Automatic FWD Sedan
(200, 1640, 1, 54, 1, 2, 1, 19, 2),   -- ES XZ10 | 2.5 Gasoline Automatic FWD Sedan
(155, 1385, 1, 55, 1, 2, 2, 14, 2),   -- IS XE10 | 2.0 Gasoline Automatic RWD Sedan
(208, 1570, 1, 56, 1, 2, 2, 19, 2),   -- IS XE20 | 2.5 Gasoline Automatic RWD Sedan
(245, 1620, 1, 57, 1, 2, 2, 14, 2),   -- IS XE30 | 2.0 Gasoline Automatic RWD Sedan
(150, 1485, 1, 58, 1, 4, 1, 14, 1),   -- UX ZA10 | 2.0 Gasoline CVT FWD SUV,
-- Nissan
(141, 1435, 1, 59, 1, 4, 1, 14, 1),   -- Qashqai J10 | 2.0 Gasoline CVT FWD SUV
(144, 1425, 1, 60, 1, 4, 1, 14, 1),   -- Qashqai J11 | 2.0 Gasoline CVT FWD SUV
(158, 1410, 1, 61, 1, 4, 1, 7, 1),    -- Qashqai J12 | 1.3 Gasoline CVT FWD SUV
(140, 1415, 1, 62, 1, 2, 3, 14, 1),   -- X-Trail T30 | 2.0 Gasoline Automatic AWD SUV
(141, 1530, 1, 63, 1, 4, 3, 14, 1),   -- X-Trail T31 | 2.0 Gasoline CVT AWD SUV
(144, 1612, 1, 64, 1, 4, 3, 14, 1),   -- X-Trail T32 | 2.0 Gasoline CVT AWD SUV
(213, 1850, 1, 65, 4, 2, 3, 9, 1),    -- X-Trail T33 | 1.5 Hybrid Automatic AWD SUV
(117, 1195, 1, 66, 1, 4, 1, 10, 1),   -- Juke F15 | 1.6 Gasoline CVT FWD SUV
(117, 1200, 1, 67, 1, 3, 1, 3, 1),    -- Juke F16 | 1.0 Gasoline Robot FWD SUV
(102, 1220, 1, 68, 1, 2, 1, 10, 2),   -- Almera N16 | 1.6 Gasoline Automatic FWD Sedan
(143, 1435, 1, 69, 1, 2, 1, 10, 2),   -- Almera B10 | 1.6 Gasoline Automatic FWD Sedan
(102, 1190, 1, 70, 1, 2, 1, 10, 2),   -- Almera G11 | 1.6 Gasoline Automatic FWD Sedan
(143, 1435, 1, 71, 1, 2, 3, 14, 1),   -- Terrano R50 | 2.0 Gasoline Automatic AWD SUV
(143, 1435, 1, 72, 1, 2, 3, 14, 1),   -- Terrano D10 | 2.0 Gasoline Automatic AWD SUV
(182, 1513, 1, 73, 1, 4, 1, 19, 2),   -- Teana J31 | 2.5 Gasoline CVT FWD Sedan
(182, 1513, 1, 74, 1, 4, 1, 19, 2),   -- Teana J32 | 2.5 Gasoline CVT FWD Sedan
(182, 1513, 1, 75, 1, 4, 1, 19, 2),   -- Teana J33 | 2.5 Gasoline CVT FWD Sedan
(109, 1520, 1, 76, 3, 5, 1, 1, 4),    -- Leaf ZE0 | Electric Reducer FWD Hatchback
(150, 1580, 1, 77, 3, 5, 1, 1, 4),    -- Leaf ZE1 | Electric Reducer FWD Hatchback
(249, 1903, 1, 78, 1, 4, 3, 26, 1),   -- Murano Z50 | 3.5 Gasoline CVT AWD SUV
(249, 1903, 1, 79, 1, 4, 3, 26, 1),   -- Murano Z51 | 3.5 Gasoline CVT AWD SUV
(249, 1903, 1, 80, 1, 4, 3, 26, 1),   -- Murano Z52 | 3.5 Gasoline CVT AWD SUV
(249, 1903, 1, 81, 1, 4, 3, 26, 1),   -- Murano Z53 | 3.5 Gasoline CVT AWD SUV
(110, 1150, 1, 82, 1, 2, 1, 10, 4),   -- Note E11 | 1.6 Gasoline Automatic FWD Hatchback
(116, 1220, 1, 83, 4, 5, 1, 6, 4),    -- Note E12 | 1.2 Hybrid Reducer FWD Hatchback
(116, 1220, 1, 84, 4, 5, 1, 6, 4),    -- Note E13 | 1.2 Hybrid Reducer FWD Hatchback,
-- Honda
(150, 1490, 1, 85, 1, 2, 3, 14, 1),   -- CR-V RD4_RD9 | 2.0 Gasoline Automatic AWD SUV
(166, 1595, 1, 86, 1, 2, 3, 18, 1),   -- CR-V RE1_RE7 | 2.4 Gasoline Automatic AWD SUV
(190, 1570, 1, 87, 1, 2, 3, 18, 1),   -- CR-V RM1_RM4 | 2.4 Gasoline Automatic AWD SUV
(190, 1595, 1, 88, 1, 4, 3, 9, 1),    -- CR-V RW1_RW8 | 1.5 Gasoline CVT AWD SUV
(204, 1720, 1, 89, 4, 5, 3, 14, 1),   -- CR-V RS | 2.0 Hybrid Reducer AWD SUV
(110, 1180, 1, 90, 1, 2, 1, 10, 4),   -- Civic EU_EP_EM | 1.6 Gasoline Automatic FWD Hatchback
(140, 1212, 1, 91, 1, 2, 1, 12, 2),   -- Civic FD_FN | 1.8 Gasoline Automatic FWD Sedan
(141, 1278, 1, 92, 1, 2, 1, 12, 2),   -- Civic FB_FK | 1.8 Gasoline Automatic FWD Sedan
(182, 1319, 1, 93, 1, 4, 1, 9, 2),    -- Civic FC_FK | 1.5 Gasoline CVT FWD Sedan
(182, 1365, 1, 94, 1, 4, 1, 9, 4),    -- Civic FE_FL | 1.5 Gasoline CVT FWD Hatchback
(147, 1410, 1, 95, 1, 2, 1, 14, 2),   -- Accord CG_CH_CL | 2.0 Gasoline Automatic FWD Sedan
(190, 1460, 1, 96, 1, 2, 1, 18, 2),   -- Accord CL_CM | 2.4 Gasoline Automatic FWD Sedan
(201, 1540, 1, 97, 1, 2, 1, 18, 2),   -- Accord CU_CW | 2.4 Gasoline Automatic FWD Sedan
(180, 1531, 1, 98, 1, 2, 1, 18, 2),   -- Accord CR | 2.4 Gasoline Automatic FWD Sedan
(192, 1445, 1, 99, 1, 4, 1, 9, 2),    -- Accord CV | 1.5 Gasoline CVT FWD Sedan
(204, 1560, 1, 100, 4, 5, 1, 14, 2),  -- Accord CY | 2.0 Hybrid Reducer FWD Sedan
(110, 1020, 1, 101, 1, 4, 1, 9, 4),   -- Fit GD | 1.5 Gasoline CVT FWD Hatchback
(110, 1020, 1, 102, 1, 4, 1, 9, 4),   -- Fit GE | 1.5 Gasoline CVT FWD Hatchback
(110, 1020, 1, 103, 1, 4, 1, 9, 4),   -- Fit GK | 1.5 Gasoline CVT FWD Hatchback
(110, 1020, 1, 104, 1, 4, 1, 9, 4),   -- Fit GR | 1.5 Gasoline CVT FWD Hatchback
(160, 1500, 1, 105, 1, 2, 1, 14, 6),  -- Stepwgn RF3_RF8 | 2.0 Gasoline Automatic FWD Minivan
(155, 1560, 1, 106, 1, 2, 1, 14, 6),  -- Stepwgn RG | 2.0 Gasoline Automatic FWD Minivan
(150, 1580, 1, 107, 1, 4, 1, 14, 6),  -- Stepwgn RK | 2.0 Gasoline CVT FWD Minivan
(150, 1630, 1, 108, 1, 4, 1, 9, 6),   -- Stepwgn RP1_RP5 | 1.5 Gasoline CVT FWD Minivan
(184, 1840, 1, 109, 4, 5, 1, 14, 6),  -- Stepwgn RP6_RP8 | 2.0 Hybrid Reducer FWD Minivan
(244, 2015, 1, 110, 1, 2, 3, 26, 1),  -- Pilot YF1_YF2 | 3.5 Gasoline Automatic AWD SUV
(249, 2060, 1, 111, 1, 2, 3, 26, 1),  -- Pilot YF3_YF4 | 3.5 Gasoline Automatic AWD SUV
(249, 2060, 1, 112, 1, 2, 3, 26, 1),  -- Pilot YF5_YF6 | 3.5 Gasoline Automatic AWD SUV
(289, 2130, 1, 113, 1, 2, 3, 26, 1),  -- Pilot YG1 | 3.5 Gasoline Automatic AWD SUV,
-- Mazda
(150, 1475, 1, 114, 1, 2, 1, 14, 1),  -- CX-5 KE | 2.0 Gasoline Automatic FWD SUV
(150, 1570, 1, 115, 1, 2, 3, 14, 1),  -- CX-5 KF | 2.0 Gasoline Automatic AWD SUV
(194, 1615, 1, 115, 1, 2, 3, 19, 1),  -- CX-5 KF | 2.5 Gasoline Automatic AWD SUV
(147, 1390, 1, 116, 1, 2, 1, 14, 2),  -- 6 GG | 2.0 Gasoline Automatic FWD Sedan
(147, 1390, 1, 117, 1, 2, 1, 14, 2),  -- 6 GH | 2.0 Gasoline Automatic FWD Sedan
(150, 1375, 1, 118, 1, 2, 1, 14, 2),  -- 6 GJ | 2.0 Gasoline Automatic FWD Sedan
(192, 1410, 1, 118, 1, 2, 1, 19, 2),  -- 6 GJ | 2.5 Gasoline Automatic FWD Sedan
(105, 1220, 1, 119, 1, 2, 1, 10, 4),  -- 3 BK | 1.6 Gasoline Automatic FWD Hatchback
(105, 1220, 1, 120, 1, 2, 1, 10, 4),  -- 3 BL | 1.6 Gasoline Automatic FWD Hatchback
(120, 1240, 1, 121, 1, 2, 1, 9, 4),   -- 3 BM_BN | 1.5 Gasoline Automatic FWD Hatchback
(150, 1350, 1, 122, 1, 2, 1, 14, 4),  -- 3 BP | 2.0 Gasoline Automatic FWD Hatchback
(238, 1740, 1, 123, 1, 2, 3, 17, 1),  -- CX-7 ER | 2.3 Gasoline Automatic AWD SUV
(231, 1960, 1, 124, 1, 2, 3, 19, 1),  -- CX-9 TB | 2.5 Gasoline Automatic AWD SUV
(231, 1960, 1, 125, 1, 2, 3, 19, 1),  -- CX-9 TC | 2.5 Gasoline Automatic AWD SUV,
-- Subaru
(158, 1415, 1, 126, 1, 2, 3, 14, 1),  -- Forester SF | 2.0 Gasoline Automatic AWD SUV
(158, 1415, 1, 127, 1, 2, 3, 14, 1),  -- Forester SG | 2.0 Gasoline Automatic AWD SUV
(150, 1495, 1, 128, 1, 4, 3, 14, 1),  -- Forester SH | 2.0 Gasoline CVT AWD SUV
(150, 1495, 1, 129, 1, 4, 3, 14, 1),  -- Forester SJ | 2.0 Gasoline CVT AWD SUV
(185, 1640, 1, 130, 1, 4, 3, 19, 1),  -- Forester SK | 2.5 Gasoline CVT AWD SUV
(180, 1665, 1, 131, 1, 4, 3, 19, 1),  -- Forester SL | 2.5 Gasoline CVT AWD SUV
(165, 1530, 1, 132, 1, 2, 3, 19, 5),  -- Outback BH_BP | 2.5 Gasoline Automatic AWD Universal
(165, 1395, 1, 133, 1, 2, 3, 19, 2),  -- Outback BP | 2.5 Gasoline Automatic AWD Sedan
(175, 1675, 1, 134, 1, 4, 3, 19, 5),  -- Outback BR | 2.5 Gasoline CVT AWD Universal
(175, 1675, 1, 135, 1, 4, 3, 19, 5),  -- Outback BS | 2.5 Gasoline CVT AWD Universal
(188, 1725, 1, 136, 1, 4, 3, 19, 5),  -- Outback BT | 2.5 Gasoline CVT AWD Universal
(125, 1315, 1, 137, 1, 2, 3, 14, 2),  -- Impreza GD_GG | 2.0 Gasoline Automatic AWD Sedan
(150, 1340, 1, 138, 1, 2, 3, 14, 4),  -- Impreza GH_GE | 2.0 Gasoline Automatic AWD Hatchback
(150, 1330, 1, 139, 1, 4, 3, 14, 4),  -- Impreza GJ_GP | 2.0 Gasoline CVT AWD Hatchback
(154, 1360, 1, 140, 1, 4, 3, 14, 4),  -- Impreza GK_GT | 2.0 Gasoline CVT AWD Hatchback
(152, 1380, 1, 141, 1, 4, 3, 14, 4),  -- Impreza GU | 2.0 Gasoline CVT AWD Hatchback
(156, 1420, 1, 142, 1, 2, 3, 19, 2),  -- Legacy BE_BH | 2.5 Gasoline Automatic AWD Sedan
(165, 1395, 1, 143, 1, 2, 3, 19, 2),  -- Legacy BL_BP | 2.5 Gasoline Automatic AWD Sedan
(167, 1505, 1, 144, 1, 4, 3, 19, 2),  -- Legacy BM_BR | 2.5 Gasoline CVT AWD Sedan
(175, 1595, 1, 145, 1, 4, 3, 19, 2),  -- Legacy BN_BS | 2.5 Gasoline CVT AWD Sedan
(185, 1615, 1, 146, 1, 4, 3, 19, 2),  -- Legacy BW_BT | 2.5 Gasoline CVT AWD Sedan
(150, 1440, 1, 147, 1, 4, 3, 14, 1),  -- XV GP | 2.0 Gasoline CVT AWD SUV
(150, 1440, 1, 148, 1, 4, 3, 14, 1),  -- XV GT | 2.0 Gasoline CVT AWD SUV
(152, 1480, 1, 149, 1, 4, 3, 14, 1),  -- XV GU | 2.0 Gasoline CVT AWD SUV
(150, 1440, 1, 150, 1, 4, 3, 14, 1),  -- Crosstrek GP | 2.0 Gasoline CVT AWD SUV
(150, 1440, 1, 151, 1, 4, 3, 14, 1),  -- Crosstrek GT | 2.0 Gasoline CVT AWD SUV
(152, 1480, 1, 152, 1, 4, 3, 14, 1),  -- Crosstrek GU | 2.0 Gasoline CVT AWD SUV
(258, 1940, 1, 153, 1, 2, 3, 27, 1),  -- Tribeca WX | 3.6 Gasoline Automatic AWD SUV,
-- Mitsubishi
(170, 1590, 1, 154, 1, 4, 3, 18, 1),  -- Outlander CU | 2.4 Gasoline CVT AWD SUV
(170, 1590, 1, 155, 1, 4, 3, 18, 1),  -- Outlander CW | 2.4 Gasoline CVT AWD SUV
(146, 1515, 1, 156, 1, 4, 3, 14, 1),  -- Outlander GF | 2.0 Gasoline CVT AWD SUV
(167, 1545, 1, 156, 1, 4, 3, 18, 1),  -- Outlander GF | 2.4 Gasoline CVT AWD SUV
(184, 1705, 1, 157, 1, 4, 3, 19, 1),  -- Outlander GN | 2.5 Gasoline CVT AWD SUV
(150, 1455, 1, 158, 1, 4, 3, 14, 1),  -- ASX GA | 2.0 Gasoline CVT AWD SUV
(158, 1540, 1, 159, 4, 3, 1, 10, 1),  -- ASX BJB | 1.6 Hybrid Robot FWD SUV
(117, 1260, 1, 160, 1, 1, 1, 10, 2),  -- Lancer CS | 1.6 Gasoline Manual FWD Sedan
(143, 1350, 1, 161, 1, 4, 1, 12, 2),  -- Lancer CY_CZ | 1.8 Gasoline CVT FWD Sedan
(295, 1570, 1, 161, 1, 3, 3, 14, 2),  -- Lancer CY_CZ | 2.0 Evolution X Robot AWD Sedan
(181, 2110, 1, 162, 1, 2, 3, 26, 1),  -- Pajero V20_V40 | 3.5 Gasoline Automatic AWD SUV
(165, 2180, 1, 163, 2, 2, 3, 24, 1),  -- Pajero V60_V70 | 3.2 Diesel Automatic AWD SUV
(178, 2110, 1, 164, 1, 2, 3, 23, 1),  -- Pajero V80_V90 | 3.0 Gasoline Automatic AWD SUV
(200, 2165, 1, 164, 2, 2, 3, 24, 1),  -- Pajero V80_V90 | 3.2 Diesel Automatic AWD SUV
(177, 1845, 1, 165, 1, 2, 3, 23, 1),  -- Pajero Sport K90 | 3.0 Gasoline Automatic AWD SUV
(222, 1965, 1, 166, 1, 2, 3, 23, 1),  -- Pajero Sport KH0 | 3.0 Gasoline Automatic AWD SUV
(178, 2040, 1, 166, 2, 2, 3, 19, 1),  -- Pajero Sport KH0 | 2.5 Diesel Automatic AWD SUV
(209, 1980, 1, 167, 1, 2, 3, 23, 1),  -- Pajero Sport KS0 | 3.0 Gasoline Automatic AWD SUV
(181, 2050, 1, 167, 2, 2, 3, 18, 1),  -- Pajero Sport KS0 | 2.4 Diesel Automatic AWD SUV
(136, 1880, 1, 168, 2, 2, 3, 19, 9),  -- L200 K70 | 2.5 Diesel Automatic AWD Pickup
(136, 1880, 1, 169, 2, 2, 3, 19, 9),  -- L200 KB0 | 2.5 Diesel Automatic AWD Pickup
(181, 1930, 1, 170, 2, 2, 3, 18, 9),  -- L200 KK0_KL0 | 2.4 Diesel Automatic AWD Pickup
(184, 1970, 1, 171, 2, 2, 3, 18, 9),  -- L200 LC | 2.4 Diesel Automatic AWD Pickup
(163, 1340, 1, 172, 1, 2, 1, 19, 2),  -- Galant / Grandis EA_EC | 2.5 Gasoline Automatic FWD Sedan
(158, 1525, 1, 173, 1, 2, 1, 18, 2),  -- Galant / Grandis DJ_DM | 2.4 Gasoline Automatic FWD Sedan
(165, 1670, 1, 174, 1, 2, 1, 18, 6),  -- Galant / Grandis NA | 2.4 Gasoline Automatic FWD Minivan,
-- Suzuki
(144, 1420, 1, 175, 1, 2, 3, 19, 1),  -- Grand Vitara FT_GT | 2.5 Gasoline Automatic AWD SUV
(140, 1530, 1, 176, 1, 2, 3, 14, 1),  -- Grand Vitara JT | 2.0 Gasoline Automatic AWD SUV
(169, 1590, 1, 176, 1, 2, 3, 18, 1),  -- Grand Vitara JT | 2.4 Gasoline Automatic AWD SUV
(103, 1165, 1, 177, 1, 1, 1, 9, 1),   -- Grand Vitara YWD | 1.5 Gasoline Manual FWD SUV
(112, 1230, 1, 178, 1, 2, 1, 10, 1),  -- SX4 GY_RW | 1.6 Gasoline Automatic FWD SUV
(117, 1185, 1, 179, 1, 4, 1, 10, 1),  -- SX4 JY | 1.6 Gasoline CVT FWD SUV
(140, 1245, 1, 180, 1, 2, 3, 8, 1),   -- SX4 Y4 | 1.4 Boosterjet Automatic AWD SUV
(85, 1075, 1, 181, 1, 2, 3, 7, 1),   -- Jimny JB23_JB43 | 1.3 Gasoline Automatic AWD SUV
(102, 1110, 1, 182, 1, 2, 3, 9, 1),   -- Jimny JB64_JB74 | 1.5 Gasoline Automatic AWD SUV
(88, 930, 1, 183, 1, 2, 1, 7, 4),    -- Swift HT | 1.3 Gasoline Automatic FWD Hatchback
(102, 1000, 1, 184, 1, 2, 1, 9, 4),   -- Swift ZA_ZC | 1.5 Gasoline Automatic FWD Hatchback
(94, 1035, 1, 185, 1, 2, 1, 6, 4),    -- Swift AZG | 1.2 Gasoline Automatic FWD Hatchback
(90, 940, 1, 186, 1, 4, 1, 6, 4),     -- Swift A2L | 1.2 Dualjet CVT FWD Hatchback
(82, 945, 1, 187, 4, 4, 1, 6, 4),     -- Swift A7G | 1.2 Hybrid CVT FWD Hatchback
(106, 1180, 1, 188, 1, 2, 1, 10, 2),  -- Liana ER | 1.6 Gasoline Automatic FWD Sedan
(136, 1290, 1, 189, 1, 2, 3, 14, 1),  -- Vitara ET_TA | 2.0 Gasoline Automatic AWD SUV
(117, 1185, 1, 190, 1, 2, 3, 10, 1),  -- Vitara LY | 1.6 Gasoline Automatic AWD SUV
-- Volkswagen
(80, 1100, 1, 191, 1, 2, 1, 8, 4),    -- Polo 6N2_9N3 | 1.4 Gasoline Automatic FWD Hatchback
(105, 1211, 1, 192, 1, 2, 1, 10, 2),  -- Polo 6R_6C | 1.6 Gasoline Automatic FWD Sedan
(110, 1185, 1, 193, 1, 2, 1, 10, 3),  -- Polo AW_CK | 1.6 Gasoline Automatic FWD Liftback
(170, 1641, 1, 194, 1, 2, 3, 14, 1),  -- Tiguan 5N | 2.0 TSI Automatic AWD SUV
(140, 1679, 1, 194, 2, 2, 3, 14, 1),  -- Tiguan 5N | 2.0 TDI Automatic AWD SUV
(150, 1543, 1, 195, 1, 3, 3, 8, 1),   -- Tiguan AD_CT | 1.4 TSI Robot AWD SUV
(180, 1645, 1, 195, 1, 3, 3, 14, 1),  -- Tiguan AD_CT | 2.0 TSI Robot AWD SUV
(150, 1350, 1, 196, 1, 1, 1, 12, 2),  -- Passat B5 | 1.8 Turbo Manual FWD Sedan
(152, 1505, 1, 197, 1, 2, 1, 12, 2),  -- Passat B6_B7 | 1.8 TSI Automatic FWD Sedan
(150, 1429, 1, 198, 1, 3, 1, 8, 2),   -- Passat B8 | 1.4 TSI Robot FWD Sedan
(150, 1510, 1, 199, 4, 3, 1, 9, 5),   -- Passat B9 | 1.5 eTSI Robot FWD Universal
(240, 2315, 1, 200, 2, 2, 3, 23, 1),  -- Touareg 7L | 3.0 TDI Automatic AWD SUV
(249, 2103, 1, 201, 1, 2, 3, 27, 1),  -- Touareg 7P | 3.6 FSI Automatic AWD SUV
(245, 2179, 1, 201, 2, 2, 3, 23, 1),  -- Touareg 7P | 3.0 TDI Automatic AWD SUV
(249, 2040, 1, 202, 2, 2, 3, 23, 1),  -- Touareg CR | 3.0 TDI Automatic AWD SUV
(102, 1180, 1, 203, 1, 2, 1, 10, 4),  -- Golf Mk4 | 1.6 Gasoline Automatic FWD Hatchback
(102, 1257, 1, 204, 1, 2, 1, 10, 4),  -- Golf Mk5_Mk6 | 1.6 MPI Automatic FWD Hatchback
(125, 1225, 1, 205, 1, 3, 1, 8, 4),   -- Golf Mk7 | 1.4 TSI Robot FWD Hatchback
(150, 1335, 1, 206, 1, 2, 1, 8, 4),   -- Golf Mk8 | 1.4 TSI Automatic FWD Hatchback
(102, 1325, 1, 207, 1, 1, 1, 10, 2),  -- Jetta A4_A5 | 1.6 Manual FWD Sedan
(110, 1325, 1, 208, 1, 2, 1, 10, 2),  -- Jetta A6 | 1.6 Automatic FWD Sedan
(150, 1390, 1, 209, 1, 2, 1, 8, 2),   -- Jetta A7 | 1.4 TSI Automatic FWD Sedan
(110, 1450, 1, 210, 1, 1, 1, 10, 8),  -- Caddy 9K_2K | 1.6 Manual FWD Commercial Van
(114, 1480, 1, 211, 1, 3, 1, 9, 8),   -- Caddy SB | 1.5 TSI Robot FWD Commercial Van
(140, 1940, 1, 212, 2, 1, 1, 14, 8),  -- Transporter T4_T5 | 2.0 TDI Manual FWD Commercial Van
(150, 1930, 1, 213, 2, 3, 1, 14, 8),  -- Transporter T6_T7 | 2.0 TDI Robot FWD Commercial Van,
-- Bmw
(192, 1565, 1, 214, 1, 2, 2, 19, 2),  -- 5 Series E39_E61 | 2.5 Gasoline Automatic RWD Sedan
(184, 1690, 1, 215, 2, 2, 2, 14, 2),  -- 5 Series F10_F11_F07 | 2.0 Diesel Automatic RWD Sedan
(245, 1735, 1, 215, 1, 2, 3, 14, 2),  -- 5 Series F10_F11_F07 | 2.0 Gasoline Automatic AWD Sedan
(190, 1695, 1, 216, 2, 2, 3, 14, 2),  -- 5 Series G30_G31 | 2.0 Diesel Automatic AWD Sedan
(249, 1750, 1, 216, 1, 2, 3, 14, 2),  -- 5 Series G30_G31 | 2.0 Gasoline Automatic AWD Sedan
(197, 1800, 1, 217, 2, 2, 3, 14, 2),  -- 5 Series G60_G61 | 2.0 Diesel Automatic AWD Sedan
(143, 1395, 1, 218, 1, 2, 2, 14, 2),  -- 3 Series E46 | 2.0 Gasoline Automatic RWD Sedan
(156, 1425, 1, 219, 1, 2, 2, 14, 2),  -- 3 Series E90_E93 | 2.0 Gasoline Automatic RWD Sedan
(184, 1495, 1, 220, 1, 2, 3, 14, 2),  -- 3 Series F30_F34 | 2.0 Gasoline Automatic AWD Sedan
(184, 1545, 1, 221, 1, 2, 3, 14, 2),  -- 3 Series G20_G21 | 2.0 Gasoline Automatic AWD Sedan
(218, 2180, 1, 222, 2, 2, 3, 23, 1),  -- X5 E53_E70 | 3.0 Diesel Automatic AWD SUV
(249, 2110, 1, 223, 2, 2, 3, 23, 1),  -- X5 F15 | 3.0 Diesel Automatic AWD SUV
(306, 2100, 1, 223, 1, 2, 3, 23, 1),  -- X5 F15 | 3.0 Gasoline Automatic AWD SUV
(249, 2185, 1, 224, 2, 2, 3, 23, 1),  -- X5 G05 | 3.0 Diesel Automatic AWD SUV
(184, 1800, 1, 225, 2, 2, 3, 14, 1),  -- X3 E83_F25 | 2.0 Diesel Automatic AWD SUV
(190, 1825, 1, 226, 2, 2, 3, 14, 1),  -- X3 G01 | 2.0 Diesel Automatic AWD SUV
(208, 1855, 1, 227, 1, 2, 3, 14, 1),  -- X3 G45 | 2.0 Mild Hybrid Automatic AWD SUV
(231, 1930, 1, 228, 1, 2, 2, 23, 2),  -- 7 Series E38_E66 | 3.0 Gasoline Automatic RWD Sedan
(258, 1915, 1, 229, 2, 2, 2, 23, 2),  -- 7 Series F01_F02 | 3.0 Diesel Automatic RWD Sedan
(249, 1900, 1, 230, 2, 2, 3, 23, 2),  -- 7 Series G11_G12 | 3.0 Diesel Automatic AWD Sedan
(286, 2150, 1, 231, 2, 2, 3, 23, 2),  -- 7 Series G70 | 3.0 Diesel Automatic AWD Sedan
(306, 2145, 1, 232, 1, 2, 3, 23, 1),  -- X6 E71 | 3.0 Gasoline Automatic AWD SUV
(249, 2140, 1, 233, 2, 2, 3, 23, 1),  -- X6 F16 | 3.0 Diesel Automatic AWD SUV
(249, 2185, 1, 234, 2, 2, 3, 23, 1),  -- X6 G06 | 3.0 Diesel Automatic AWD SUV
(136, 1375, 1, 235, 1, 2, 2, 14, 4),  -- 1 Series E81_E88 | 2.0 Gasoline Automatic RWD Hatchback
(136, 1390, 1, 236, 1, 2, 2, 10, 4),  -- 1 Series F20_F21 | 1.6 Gasoline Automatic RWD Hatchback
(150, 1420, 1, 237, 1, 3, 1, 14, 4),  -- 1 Series F40_F70 | 2.0 Gasoline Robot FWD Hatchback
(150, 1505, 1, 238, 1, 2, 2, 14, 1),  -- X1 E84 | 2.0 Gasoline Automatic RWD SUV
(150, 1625, 1, 239, 2, 2, 3, 14, 1),  -- X1 F48 | 2.0 Diesel Automatic AWD SUV
(150, 1650, 1, 240, 2, 3, 3, 14, 1),  -- X1 U11 | 2.0 Diesel Robot AWD SUV,
-- Mercedes-benz
(170, 1635, 1, 241, 1, 2, 2, 18, 2),  -- E-Class W210_W211 | 2.4 Gasoline Automatic RWD Sedan
(184, 1735, 1, 242, 1, 2, 2, 12, 2),  -- E-Class W212_C207 | 1.8 Gasoline Automatic RWD Sedan
(249, 1890, 1, 242, 1, 2, 3, 23, 2),  -- E-Class W212_C207 | 3.5 Gasoline Automatic AWD Sedan
(150, 1680, 1, 243, 2, 2, 2, 14, 2),  -- E-Class W213_C238 | 2.0 Diesel Automatic RWD Sedan
(197, 1715, 1, 243, 1, 2, 3, 14, 2),  -- E-Class W213_C238 | 2.0 Gasoline Automatic AWD Sedan
(197, 1915, 1, 244, 2, 2, 3, 14, 2),  -- E-Class W214_S214 | 2.0 Diesel Automatic AWD Sedan
(143, 1455, 1, 245, 1, 2, 2, 14, 2),  -- C-Class W202_W203 | 2.0 Gasoline Automatic RWD Sedan
(156, 1495, 1, 246, 1, 2, 2, 10, 2),  -- C-Class W204_C204 | 1.6 Gasoline Automatic RWD Sedan
(150, 1465, 1, 247, 1, 2, 2, 10, 2),  -- C-Class W205_C205 | 1.6 Gasoline Automatic RWD Sedan
(184, 1590, 1, 247, 1, 2, 3, 14, 2),  -- C-Class W205_C205 | 2.0 Gasoline Automatic AWD Sedan
(197, 1675, 1, 248, 1, 2, 3, 14, 2),  -- C-Class W206_S206 | 2.0 Gasoline Automatic AWD Sedan
(231, 1925, 1, 249, 1, 2, 2, 28, 2),  -- S-Class W220_W221 | 3.7 Gasoline Automatic RWD Sedan
(272, 1955, 1, 249, 1, 2, 2, 26, 2),  -- S-Class W220_W221 | 3.5 Gasoline Automatic RWD Sedan
(249, 2015, 1, 250, 2, 2, 3, 23, 2),  -- S-Class W222_C217 | 3.0 Diesel Automatic AWD Sedan
(333, 1995, 1, 250, 1, 2, 3, 23, 2),  -- S-Class W222_C217 | 3.0 Gasoline Automatic AWD Sedan
(249, 2095, 1, 251, 2, 2, 3, 23, 2),  -- S-Class W223_X223 | 3.0 Diesel Automatic AWD Sedan
(224, 2185, 1, 252, 2, 2, 3, 23, 1),  -- GLE W163_W164 | 3.0 Diesel Automatic AWD SUV
(249, 2175, 1, 253, 2, 2, 3, 23, 1),  -- GLE W166_C292 | 3.0 Diesel Automatic AWD SUV
(245, 2165, 1, 254, 2, 2, 3, 14, 1),  -- GLE V167_C167 | 2.0 Diesel Automatic AWD SUV
(170, 1845, 1, 255, 2, 2, 3, 15, 1),  -- GLC X204 | 2.1 Diesel Automatic AWD SUV
(197, 1845, 1, 256, 1, 2, 3, 14, 1),  -- GLC X253_C253 | 2.0 Gasoline Automatic AWD SUV
(197, 1925, 1, 257, 2, 2, 3, 14, 1),  -- GLC X254_C254 | 2.0 Diesel Automatic AWD SUV
(249, 2455, 1, 258, 2, 2, 3, 23, 1),  -- GLS X164_X166 | 3.0 Diesel Automatic AWD SUV
(330, 2445, 1, 259, 2, 2, 3, 22, 1),  -- GLS X167 | 2.9 Diesel Automatic AWD SUV
(102, 1175, 1, 260, 1, 2, 1, 9, 4),   -- A-Class W168_W169 | 1.5 Gasoline Automatic FWD Hatchback
(122, 1370, 1, 261, 1, 3, 1, 10, 4),  -- A-Class W176 | 1.6 Gasoline Robot FWD Hatchback
(150, 1385, 1, 262, 1, 3, 1, 7, 2),   -- A-Class W177_V177 | 1.3 Gasoline Robot FWD Sedan
(150, 1430, 1, 263, 1, 3, 1, 10, 2),  -- CLA C117_X117 | 1.6 Gasoline Robot FWD Sedan
(150, 1490, 1, 264, 1, 3, 1, 7, 2),   -- CLA C118_X118 | 1.3 Gasoline Robot FWD Sedan
(296, 2585, 1, 265, 2, 2, 3, 23, 1),  -- G-Class W463_Classic | 3.0 Diesel Automatic AWD SUV
(249, 2430, 1, 266, 2, 2, 3, 22, 1),  -- G-Class W463_New | 2.9 Diesel Automatic AWD SUV
(367, 2485, 1, 267, 2, 2, 3, 23, 1),  -- G-Class W465 | 3.0 Diesel Automatic AWD SUV
(150, 2075, 1, 268, 2, 2, 2, 15, 6),  -- V-Class W638_W639 | 2.1 Diesel Automatic RWD Minivan
(190, 2145, 1, 269, 2, 2, 3, 15, 6),  -- V-Class W447 | 2.1 Diesel Automatic AWD Minivan,
-- Audi
(170, 1565, 1, 270, 1, 2, 1, 18, 2),  -- A6 C5_C6 | 2.4 Gasoline Automatic FWD Sedan
(204, 1685, 1, 271, 1, 4, 1, 14, 2),  -- A6 C7 | 2.0 Gasoline CVT FWD Sedan
(245, 1855, 1, 271, 2, 3, 3, 23, 2),  -- A6 C7 | 3.0 Diesel Robot AWD Sedan
(190, 1680, 1, 272, 1, 3, 1, 14, 2),  -- A6 C8_C9 | 2.0 Gasoline Robot FWD Sedan
(245, 1825, 1, 272, 2, 3, 3, 23, 2),  -- A6 C8_C9 | 3.0 Diesel Robot AWD Sedan
(131, 1390, 1, 273, 1, 2, 1, 14, 2),  -- A4 B5_B7 | 2.0 Gasoline Automatic FWD Sedan
(170, 1545, 1, 274, 1, 4, 1, 12, 2),  -- A4 B8 | 1.8 TFSI CVT FWD Sedan
(150, 1455, 1, 275, 1, 3, 1, 8, 2),   -- A4 B9_B10 | 1.4 TFSI Robot FWD Sedan
(225, 1840, 1, 276, 1, 2, 3, 14, 1),  -- Q5 8R | 2.0 TFSI Automatic AWD SUV
(249, 1795, 1, 277, 1, 3, 3, 14, 1),  -- Q5 FY_PPC | 2.0 TFSI Robot AWD SUV
(233, 2295, 1, 278, 2, 2, 3, 23, 1),  -- Q7 4L | 3.0 TDI Automatic AWD SUV
(249, 1965, 1, 279, 2, 2, 3, 23, 1),  -- Q7 4M | 3.0 TDI Automatic AWD SUV
(335, 1780, 1, 280, 1, 2, 3, 31, 2),  -- A8 D2_D3 | 4.2 Gasoline Automatic AWD Sedan
(250, 1910, 1, 281, 2, 2, 3, 23, 2),  -- A8 D4 | 3.0 TDI Automatic AWD Sedan
(286, 2050, 1, 282, 2, 2, 3, 23, 2),  -- A8 D5 | 3.0 TDI Automatic AWD Sedan
(102, 1200, 1, 283, 1, 2, 1, 10, 4),  -- A3 8L_8P | 1.6 Gasoline Automatic FWD Hatchback
(125, 1265, 1, 284, 1, 3, 1, 8, 2),   -- A3 8V | 1.4 TFSI Robot FWD Sedan
(150, 1320, 1, 285, 1, 2, 1, 8, 2),   -- A3 8Y | 1.4 TFSI Automatic FWD Sedan
(170, 1585, 1, 286, 1, 3, 3, 14, 1),  -- Q3 8U | 2.0 TFSI Robot AWD SUV
(150, 1495, 1, 287, 1, 3, 1, 8, 1),   -- Q3 F3 | 1.4 TFSI Robot FWD SUV
(170, 1550, 1, 288, 1, 4, 1, 12, 10), -- A5 8T | 1.8 TFSI CVT FWD Coupe
(190, 1490, 1, 289, 1, 3, 1, 14, 3),  -- A5 F5 | 2.0 TFSI Robot FWD Liftback
(200, 1280, 1, 290, 1, 3, 1, 14, 10), -- TT 8N_8J | 2.0 TFSI Robot FWD Coupe
(230, 1335, 1, 291, 1, 3, 3, 14, 10), -- TT 8S | 2.0 TFSI Robot AWD Coupe
-- Porsche
(250, 2225, 1, 292, 1, 2, 3, 24, 1),   -- Cayenne 955_957 | 3.2 Gasoline Automatic AWD SUV
(245, 2160, 1, 293, 2, 2, 3, 23, 1),   -- Cayenne 958 | 3.0 Diesel Automatic AWD SUV
(340, 2060, 1, 294, 1, 2, 3, 23, 1),   -- Cayenne 9YA_9YB | 3.0 Gasoline Automatic AWD SUV
(252, 1845, 1, 295, 1, 3, 3, 14, 1),   -- Macan 95B_EV | 2.0 Gasoline Robot AWD SUV
(250, 1880, 1, 296, 2, 2, 2, 23, 3),   -- Panamera 970 | 3.0 Diesel Automatic RWD Liftback
(330, 1895, 1, 297, 1, 3, 3, 23, 3),   -- Panamera 971_972 | 3.0 Gasoline Robot AWD Liftback
(325, 1470, 1, 298, 1, 2, 2, 27, 10),  -- 911 996_997 | 3.6 Gasoline Automatic RWD Coupe
(350, 1450, 1, 299, 1, 3, 2, 25, 10),  -- 911 991 | 3.4 Gasoline Robot RWD Coupe
(385, 1580, 1, 300, 1, 3, 2, 23, 10),  -- 911 992 | 3.0 Gasoline Robot RWD Coupe
(408, 2125, 1, 301, 3, 5, 2, 1, 3),    -- Taycan J1 | Electric Reducer RWD Liftback
(245, 1375, 1, 302, 1, 2, 2, 20, 10),  -- Cayman 987c_981c | 2.7 Gasoline Automatic RWD Coupe
(300, 1440, 1, 303, 1, 3, 2, 14, 10),  -- Cayman 982 | 2.0 Gasoline Robot RWD Coupe,
-- Chery
(147, 1540, 1, 304, 1, 4, 1, 9, 1),    -- Tiggo 7 Pro T1X | 1.5 T CVT FWD SUV
(186, 1705, 1, 305, 1, 3, 1, 10, 1),   -- Tiggo 8 Pro T1X | 1.6 T Robot FWD SUV
(186, 1490, 1, 306, 1, 3, 1, 10, 2),   -- Arrizo 8 M1E | 1.6 T Robot FWD Sedan
(113, 1340, 1, 307, 1, 4, 1, 9, 1),    -- Tiggo 4 T1X | 1.5 Gasoline CVT FWD SUV
(122, 1465, 1, 308, 1, 2, 1, 14, 1),   -- Tiggo 7 T15 | 2.0 Gasoline Automatic FWD SUV
(147, 1616, 1, 309, 1, 3, 1, 9, 1),    -- Tiggo 8 T18 | 1.5 T Robot FWD SUV
(136, 1375, 1, 310, 1, 2, 1, 14, 1),   -- Tiggo T11 | 2.0 Gasoline Automatic FWD SUV
(80, 1200, 1, 311, 1, 1, 1, 9, 3),    -- Bonus A13 | 1.5 Gasoline Manual FWD Liftback
(52, 880, 1, 312, 1, 1, 1, 4, 4),     -- QQ S11 | 1.0 Gasoline Manual FWD Hatchback,
-- Geely
(150, 1415, 1, 313, 1, 3, 1, 9, 1),    -- Coolray BMA | 1.5 T Robot FWD SUV
(238, 1815, 1, 314, 1, 2, 3, 14, 1),   -- Monjaro CMA | 2.0 T Automatic AWD SUV
(139, 1645, 1, 315, 1, 1, 1, 14, 1),   -- Atlas NL3 | 2.0 Gasoline Manual FWD SUV
(177, 1705, 1, 316, 1, 3, 3, 9, 1),    -- Atlas Pro NL3 | 1.5 T Robot AWD SUV
(238, 1815, 1, 317, 1, 2, 3, 14, 1),   -- Tugella CMA | 2.0 T Automatic AWD SUV
(103, 1280, 1, 318, 1, 1, 1, 9, 2),    -- Emgrand FE3 | 1.5 Gasoline Manual FWD Sedan
(122, 1340, 1, 319, 1, 2, 1, 9, 2),    -- Emgrand BMA | 1.5 Gasoline Automatic FWD Sedan
(177, 1680, 1, 320, 1, 3, 1, 9, 1),    -- Okavango CV | 1.5 T Robot FWD SUV
(190, 1590, 1, 321, 1, 3, 1, 14, 2),   -- Preface CMA | 2.0 T Robot FWD Sedan
(204, 1665, 1, 322, 3, 5, 1, 1, 4),    -- Geometry C GE11 | Electric Reducer FWD Hatchback
(94, 1150, 1, 323, 1, 1, 1, 9, 2),     -- MK MK | 1.5 Gasoline Manual FWD Sedan,
-- Haval
(143, 1420, 1, 324, 1, 3, 1, 9, 1),    -- Jolion | 1.5 T Robot FWD SUV
(150, 1600, 1, 325, 1, 3, 1, 9, 1),    -- F7 | 1.5 T Robot FWD SUV
(192, 1690, 1, 326, 1, 3, 3, 14, 1),   -- Dargo | 2.0 T Robot AWD SUV
(190, 1720, 1, 327, 1, 3, 3, 14, 1),   -- F7x | 2.0 T Robot AWD SUV
(150, 1550, 1, 328, 1, 3, 1, 9, 1),    -- H3 | 1.5 T Robot FWD SUV
(218, 2230, 1, 329, 1, 2, 3, 14, 1),   -- H9 | 2.0 T Automatic AWD SUV
(150, 1950, 1, 330, 1, 1, 3, 14, 1),   -- H5 | 2.0 T Manual AWD SUV
(143, 1500, 1, 331, 1, 3, 1, 9, 1),    -- M6 | 1.5 T Robot FWD SUV
(150, 1580, 1, 332, 1, 3, 1, 9, 1),    -- H6 | 1.5 T Robot FWD SUV
(190, 1720, 1, 333, 1, 3, 3, 14, 1),   -- F7x | 2.0 T Robot AWD SUV
(150, 1950, 1, 334, 1, 1, 3, 14, 1),   -- H5 | 2.0 T Manual AWD SUV,
-- Lixiang
(449, 2460, 1, 335, 5, 5, 3, 9, 1),    -- L7 | Extended Range Electric Reducer AWD SUV
(449, 2520, 1, 336, 5, 5, 3, 9, 1),    -- L9 | Extended Range Electric Reducer AWD SUV
(449, 2480, 1, 337, 5, 5, 3, 9, 1),    -- L8 | Extended Range Electric Reducer AWD SUV
(408, 2345, 1, 338, 5, 5, 3, 9, 1),    -- L6 | Extended Range Electric Reducer AWD SUV
(544, 2785, 1, 339, 3, 5, 3, 1, 6),    -- MEGA | Electric Reducer AWD Minivan
(326, 2300, 1, 340, 5, 5, 3, 9, 1),    -- Li ONE | Extended Range Electric Reducer AWD SUV,
-- Xiaomi
(299, 1980, 1, 341, 3, 5, 2, 1, 2),    -- SU7 | Electric Reducer RWD Sedan
(673, 2205, 1, 341, 3, 5, 3, 1, 2),    -- SU7 | Electric Reducer AWD Sedan (Max)
(400, 2150, 1, 342, 3, 5, 3, 1, 1),    -- YU7 | Electric Reducer AWD SUV
(1548, 1900, 1, 343, 3, 5, 3, 1, 2),   -- SU7 Ultra | Electric Reducer AWD Sport Sedan,
-- Byd
(197, 1945, 1, 344, 4, 4, 1, 9, 1),    -- Song Plus | Hybrid CVT FWD SUV (DM-i)
(218, 2050, 1, 344, 3, 5, 1, 1, 1),    -- Song Plus | Electric Reducer FWD SUV (EV)
(494, 2250, 1, 345, 3, 5, 3, 1, 2),    -- Han | Electric Reducer AWD Sedan
(205, 2220, 1, 346, 4, 2, 3, 14, 1),   -- Tang | Hybrid Automatic AWD SUV
(489, 2450, 1, 347, 4, 4, 3, 9, 1),    -- Tang_Second | Hybrid CVT AWD SUV (DM-p)
(110, 1500, 1, 348, 4, 4, 1, 9, 2),    -- Qin Plus | Hybrid CVT FWD Sedan
(204, 1690, 1, 349, 3, 5, 1, 1, 1),    -- Yuan Plus | Electric Reducer FWD SUV
(75, 1160, 1, 350, 3, 5, 1, 1, 4),     -- Seagull | Electric Reducer FWD Hatchback
(95, 1405, 1, 351, 3, 5, 1, 1, 4),     -- Dolphin | Electric Reducer FWD Hatchback
(313, 2015, 1, 352, 3, 5, 2, 1, 2),    -- Seal | Electric Reducer RWD Sedan
(109, 1200, 1, 353, 1, 1, 1, 9, 2),    -- F3 | 1.5 Gasoline Manual FWD Sedan,
-- Zeekr
(272, 2200, 1, 354, 3, 5, 2, 1, 3),   -- Zeekr 001 | Electric Reducer RWD Liftback
(544, 2350, 1, 354, 3, 5, 3, 1, 3),   -- Zeekr 001 | Electric Reducer AWD Liftback
(272, 1840, 1, 355, 3, 5, 2, 1, 1),   -- Zeekr X | Electric Reducer RWD SUV
(428, 1945, 1, 355, 3, 5, 3, 1, 1),   -- Zeekr X | Electric Reducer AWD SUV
(544, 2830, 1, 356, 3, 5, 3, 1, 6),   -- Zeekr 009 | Electric Reducer AWD Minivan
(421, 2150, 1, 357, 3, 5, 2, 1, 2),   -- Zeekr 007 | Electric Reducer RWD Sedan
(646, 2280, 1, 357, 3, 5, 3, 1, 2),   -- Zeekr 007 | Electric Reducer AWD Sedan
(421, 2295, 1, 358, 3, 5, 2, 1, 1),   -- Zeekr 7X | Electric Reducer RWD SUV
(646, 2440, 1, 358, 3, 5, 3, 1, 1),   -- Zeekr 7X | Electric Reducer AWD SUV
(421, 2639, 1, 359, 3, 5, 2, 1, 6),   -- Zeekr MIX | Electric Reducer RWD Minivan,
-- Lada
(87, 1075, 1, 360, 1, 1, 1, 10, 2),   -- Granta | 1.6 Gasoline Manual FWD Sedan
(98, 1115, 1, 360, 1, 2, 1, 10, 2),   -- Granta | 1.6 Gasoline Automatic FWD Sedan
(106, 1230, 1, 361, 1, 1, 1, 10, 2),  -- Vesta | 1.6 Gasoline Manual FWD Sedan
(122, 1270, 1, 361, 1, 4, 1, 12, 2),  -- Vesta | 1.8 Gasoline CVT FWD Sedan
(83, 1285, 1, 362, 1, 1, 3, 11, 1),   -- Niva Legend | 1.7 Gasoline Manual AWD SUV
(80, 1485, 1, 363, 1, 1, 3, 11, 1),   -- Niva Travel | 1.7 Gasoline Manual AWD SUV
(106, 1260, 1, 364, 1, 1, 1, 10, 5),  -- Largus | 1.6 Gasoline Manual FWD Universal
(98, 1088, 1, 365, 1, 1, 1, 10, 2),   -- Priora | 1.6 Gasoline Manual FWD Sedan
(87, 1080, 1, 366, 1, 1, 1, 10, 4),   -- Kalina | 1.6 Gasoline Manual FWD Hatchback
(81, 970, 1, 367, 1, 1, 1, 9, 4),     -- VAZ 2114 | 1.5 Gasoline Manual FWD Hatchback
(78, 1020, 1, 368, 1, 1, 1, 9, 2),    -- VAZ 2110 | 1.5 Gasoline Manual FWD Sedan
(73, 1030, 1, 369, 1, 1, 2, 10, 2),   -- VAZ 2107 | 1.6 Gasoline Manual RWD Sedan
(122, 1250, 1, 370, 1, 3, 1, 12, 4),  -- XRAY | 1.8 Gasoline Robot FWD Hatchback,
-- Gaz
(149, 2260, 1, 371, 2, 1, 2, 21, 8),  -- Газель Next | 2.8 Diesel Manual RWD Commercial Van
(107, 1850, 1, 372, 1, 1, 2, 18, 8),  -- Газель 3302 | 2.4 Gasoline Manual RWD Commercial Van
(107, 1940, 1, 373, 1, 1, 2, 18, 8),  -- Газель Бизнес | 2.4 Gasoline Manual RWD Commercial Van
(149, 2300, 1, 374, 2, 1, 2, 21, 8),  -- Газель NN | 2.8 Diesel Manual RWD Commercial Van
(149, 2180, 1, 375, 2, 1, 3, 21, 8),  -- Соболь 2217_NN | 2.8 Diesel Manual AWD Commercial Van
(137, 1400, 1, 376, 1, 1, 2, 18, 2),  -- Волга 31105 | 2.4 Gasoline Manual RWD Sedan
(100, 1420, 1, 377, 1, 1, 2, 19, 2),  -- Волга 3110 | 2.5 Gasoline Manual RWD Sedan
(143, 1525, 1, 378, 1, 2, 1, 18, 2),  -- Volga Siber | 2.4 Gasoline Automatic FWD Sedan
(149, 4280, 1, 379, 2, 1, 2, 32, 8),  -- ГАЗон Next | 4.4 Diesel Manual RWD Commercial Van,
-- Uaz
(150, 2125, 1, 380, 1, 1, 3, 20, 1),  -- Patriot | 2.7 Gasoline Manual AWD SUV
(150, 2135, 1, 380, 1, 2, 3, 20, 1),  -- Patriot | 2.7 Gasoline Automatic AWD SUV
(135, 1845, 1, 381, 1, 1, 3, 20, 1),  -- Hunter | 2.7 Gasoline Manual AWD SUV
(112, 1905, 1, 382, 1, 1, 3, 20, 8),  -- Буханка | 2.7 Gasoline Manual AWD Commercial Van
(150, 2135, 1, 383, 1, 1, 3, 20, 9),  -- Pickup | 2.7 Gasoline Manual AWD Pickup
(150, 2060, 1, 384, 1, 1, 3, 20, 8),  -- Профи | 2.7 Gasoline Manual AWD Commercial Van
(132, 1990, 1, 385, 1, 1, 3, 20, 1),  -- Симбир | 2.7 Gasoline Manual AWD SUV,
-- Moskvich
(150, 1440, 1, 386, 1, 4, 1, 9, 1),   -- 3 | 1.5 Gasoline CVT FWD SUV
(193, 1800, 1, 387, 3, 5, 1, 1, 1),   -- 3e | Electric Reducer FWD SUV
(174, 1485, 1, 388, 1, 3, 1, 9, 3),   -- 6 | 1.5 Gasoline Robot FWD Liftback
(174, 1715, 1, 389, 1, 3, 1, 9, 1),   -- 8 | 1.5 Gasoline Robot FWD SUV
(112, 1080, 1, 390, 1, 1, 1, 14, 4),  -- Святогор | 2.0 Gasoline Manual FWD Hatchback,
-- Ford
(145, 1290, 1, 391, 1, 2, 1, 14, 2),  -- Focus | 2.0 Gasoline Automatic FWD Sedan
(199, 1550, 1, 392, 1, 2, 1, 14, 2),  -- Mondeo | 2.0 EcoBoost Automatic FWD Sedan
(150, 1580, 1, 393, 1, 2, 3, 9, 1),   -- Kuga | 1.5 EcoBoost Automatic AWD SUV
(249, 2160, 1, 394, 1, 2, 3, 26, 1),  -- Explorer | 3.5 Gasoline Automatic AWD SUV
(125, 2010, 1, 395, 2, 1, 2, 16, 8),  -- Transit | 2.2 Diesel Manual RWD Van
(105, 1125, 1, 396, 1, 2, 1, 10, 2),  -- Fiesta | 1.6 Gasoline Automatic FWD Sedan
(149, 1480, 1, 397, 1, 2, 1, 19, 2),  -- Fusion | 2.5 Gasoline Automatic FWD Sedan
(140, 1375, 1, 398, 1, 2, 3, 14, 1),  -- EcoSport | 2.0 Gasoline Automatic AWD SUV
(317, 1640, 1, 399, 1, 2, 2, 17, 10), -- Mustang | 2.3 EcoBoost Automatic RWD Coupe
(460, 1720, 1, 399, 1, 2, 2, 37, 10), -- Mustang | 5.0 V8 Automatic RWD Coupe
(125, 1390, 1, 400, 1, 1, 1, 10, 7),  -- C-MAX | 1.6 Gasoline Manual FWD Compact MPV,
-- Chevrolet
(141, 1290, 1, 401, 1, 2, 1, 12, 2),  -- Cruze | 1.8 Gasoline Automatic FWD Sedan
(109, 1180, 1, 402, 1, 2, 1, 10, 2),  -- Lacetti | 1.6 Gasoline Automatic FWD Sedan
(115, 1150, 1, 403, 1, 2, 1, 10, 2),  -- Aveo | 1.6 Gasoline Automatic FWD Sedan
(80, 1410, 1, 404, 1, 1, 3, 11, 1),   -- Niva | 1.7 Gasoline Manual AWD SUV
(167, 1830, 1, 405, 1, 2, 3, 18, 1),  -- Captiva | 2.4 Gasoline Automatic AWD SUV
(343, 2450, 1, 406, 1, 2, 3, 39, 1),  -- Tahoe | 5.3 V8 Automatic AWD SUV
(106, 1170, 1, 407, 1, 2, 1, 9, 2),   -- Cobalt | 1.5 Gasoline Automatic FWD Sedan
(85, 940, 1, 408, 1, 2, 1, 6, 4),     -- Spark | 1.2 Gasoline Automatic FWD Hatchback
(238, 1540, 1, 409, 1, 2, 2, 14, 10), -- Camaro | 2.0 Turbo Automatic RWD Coupe
(86, 1030, 1, 410, 1, 1, 1, 9, 2),    -- Lanos | 1.5 Gasoline Manual FWD Sedan
(144, 1460, 1, 411, 1, 2, 1, 14, 2),  -- Epica | 2.0 Gasoline Automatic FWD Sedan
(141, 1530, 1, 412, 1, 2, 1, 12, 6),  -- Orlando | 1.8 Gasoline Automatic FWD Minivan,
-- Cadilac
(426, 2650, 1, 413, 1, 2, 3, 44, 1),  -- Escalade | 6.2 V8 Automatic AWD SUV
(249, 2010, 1, 414, 1, 2, 3, 23, 1),  -- SRX | 3.0 V6 Automatic AWD SUV
(241, 1690, 1, 415, 1, 2, 3, 14, 2),  -- CTS | 2.0 Turbo Automatic AWD Sedan
(200, 1930, 1, 416, 1, 2, 3, 14, 1),  -- XT5 | 2.0 Turbo Automatic AWD SUV
(200, 2110, 1, 417, 1, 2, 3, 14, 1),  -- XT6 | 2.0 Turbo Automatic AWD SUV
(276, 1540, 1, 418, 1, 2, 3, 14, 2),  -- ATS | 2.0 Turbo Automatic AWD Sedan,
-- Jeep
(238, 2060, 1, 419, 1, 2, 3, 27, 1),  -- Grand Cherokee | 3.6 V6 Automatic AWD SUV
(272, 1920, 1, 420, 1, 2, 3, 14, 1),  -- Wrangler | 2.0 Turbo Automatic AWD SUV
(177, 1830, 1, 421, 1, 2, 3, 18, 1),  -- Cherokee | 2.4 Gasoline Automatic AWD SUV
(150, 1540, 1, 422, 1, 2, 3, 18, 1),  -- Compass | 2.4 Gasoline Automatic AWD SUV
(150, 1430, 1, 423, 1, 2, 3, 18, 1),  -- Renegade | 2.4 Gasoline Automatic AWD SUV
(210, 1940, 1, 424, 1, 2, 3, 28, 1),  -- Liberty | 3.7 V6 Automatic AWD SUV
(231, 1985, 1, 425, 1, 2, 3, 14, 1),  -- Commander | 2.0 Turbo Automatic AWD SUV,
-- Dodge
(156, 1360, 1, 426, 1, 4, 1, 14, 4),  -- Caliber | 2.0 Gasoline CVT FWD Hatchback
(170, 1890, 1, 427, 1, 2, 1, 18, 1),  -- Journey | 2.4 Gasoline Automatic FWD SUV
(309, 1760, 1, 428, 1, 2, 2, 27, 10), -- Challenger | 3.6 V6 Automatic RWD Coupe
(492, 1920, 1, 428, 1, 2, 2, 45, 10), -- Challenger | 6.3 V8 Automatic RWD Coupe
(296, 1810, 1, 429, 1, 2, 2, 27, 2),  -- Charger | 3.6 V6 Automatic RWD Sedan
(294, 2230, 1, 430, 1, 2, 3, 27, 1),  -- Durango | 3.6 V6 Automatic AWD SUV
(283, 2050, 1, 431, 1, 2, 1, 27, 6),  -- Caravan | 3.6 V6 Automatic FWD Minivan
(152, 1450, 1, 432, 1, 2, 1, 18, 2),  -- Stratus | 2.4 Gasoline Automatic FWD Sedan
(110, 1220, 1, 433, 1, 2, 1, 10, 2),  -- Neon | 1.6 Gasoline Automatic FWD Sedan
(349, 2450, 1, 434, 1, 2, 3, 42, 9),  -- Ram | 5.7 V8 Automatic AWD Pickup,
-- Tesla
(283, 1610, 1, 435, 3, 5, 2, 1, 2),   -- Model 3 | Electric Reducer RWD Sedan
(347, 1980, 1, 436, 3, 5, 3, 1, 1),   -- Model Y | Electric Reducer AWD SUV
(670, 2070, 1, 437, 3, 5, 3, 1, 3),   -- Model S | Electric Reducer AWD Liftback
(670, 2350, 1, 438, 3, 5, 3, 1, 1),   -- Model X | Electric Reducer AWD SUV
(600, 3000, 1, 439, 3, 5, 3, 1, 9);   -- Cybertruck | Electric Reducer AWD Pickup
