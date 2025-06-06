rem =======================================================
rem Paso 1: Tablespace CITY_HACKERRANK
rem =======================================================
CREATE TABLESPACE CITY_HACKERRANK
DATAFILE 'CITY_HACKERRANK.dbf' SIZE 200M
AUTOEXTEND ON NEXT 50M;

rem =======================================================
rem Paso 2: Create user
rem =======================================================
CREATE USER CITY_USR IDENTIFIED BY password123
DEFAULT TABLESPACE CITY_HACKERRANK
QUOTA UNLIMITED ON CITY_HACKERRANK;

rem =======================================================
rem Paso 3: Grant privileges
rem =======================================================
GRANT CREATE SESSION, CREATE TABLE TO CITY_USR;

CREATE TABLE IF NOT EXISTS city(
   ID          INTEGER  NOT NULL PRIMARY KEY 
  ,name        VARCHAR(17) NOT NULL
  ,countrycode VARCHAR(3) NOT NULL
  ,district    VARCHAR(20) NOT NULL
  ,population  INTEGER  NOT NULL
);

INSERT INTO city(ID,name,countrycode,district,population) VALUES (6,'Rotterdam','NLD','Zuid-Holland',593321);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (19,'Zaanstad','NLD','Noord-Holland',135621);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (214,'Porto Alegre','BRA','Rio Grande do Sul',1314032);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (397,'Lauro de Freitas','BRA','Bahia',109236);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (547,'Dobric','BGR','Varna',100399);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (552,'Bujumbura','BDI','Bujumbura',300000);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (554,'Santiago de Chile','CHL','Santiago',4703954);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (626,'al-Minya','EGY','al-Minya',201360);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (646,'Santa Ana','SLV','Santa Ana',139389);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (762,'Bahir Dar','ETH','Amhara',96140);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (796,'Baguio','PHL','CAR',252386);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (896,'Malungon','PHL','Southern Mindanao',93232);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (904,'Banjul','GMB','Banjul',42326);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (924,'Villa Nueva','GTM','Guatemala',101295);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (990,'Waru','IDN','East Java',124300);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1155,'Latur','IND','Maharashtra',197408);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1222,'Tenali','IND','Andhra Pradesh',143726);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1235,'Tirunelveli','IND','Tamil Nadu',135825);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1256,'Alandur','IND','Tamil Nadu',125244);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1279,'Neyveli','IND','Tamil Nadu',118080);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1293,'Pallavaram','IND','Tamil Nadu',111866);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1350,'Dehri','IND','Bihar',94526);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1383,'Tabriz','IRN','East Azerbaidzan',1191043);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1385,'Karaj','IRN','Teheran',940968);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1508,'Bolzano','ITA','Trentino-Alto Adige',97232);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1520,'Cesena','ITA','Emilia-Romagna',89852);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1613,'Neyagawa','JPN','Osaka',257315);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1630,'Ageo','JPN','Saitama',209442);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1661,'Sayama','JPN','Saitama',162472);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1681,'Omuta','JPN','Fukuoka',142889);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1739,'Tokuyama','JPN','Yamaguchi',107078);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1793,'Novi Sad','YUG','Vojvodina',179626);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1857,'Kelowna','CAN','British Colombia',89442);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1895,'Harbin','CHN','Heilongjiang',4289800);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1900,'Changchun','CHN','Jilin',2812000);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1913,'Lanzhou','CHN','Gansu',1565800);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (1947,'Changzhou','CHN','Jiangsu',530000);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2070,'Dezhou','CHN','Shandong',195485);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2081,'Heze','CHN','Shandong',189293);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2111,'Chenzhou','CHN','Hunan',169400);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2153,'Xianning','CHN','Hubei',136811);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2192,'Lhasa','CHN','Tibet',120000);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2193,'Lianyuan','CHN','Hunan',118858);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2227,'Xingcheng','CHN','Liaoning',102384);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2273,'Villavicencio','COL','Meta',273140);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2384,'Tong-yong','KOR','Kyongsangnam',131717);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2386,'Yongju','KOR','Kyongsangbuk',131097);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2387,'Chinhae','KOR','Kyongsangnam',125997);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2388,'Sangju','KOR','Kyongsangbuk',124116);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2406,'Herakleion','GRC','Crete',116178);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2440,'Monrovia','LBR','Montserrado',850000);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2462,'Lilongwe','MWI','Lilongwe',435964);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2505,'Taza','MAR','Taza-Al Hoceima-Taou',92700);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2555,'Xalapa','MEX','Veracruz',390058);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2602,'Ocosingo','MEX','Chiapas',171495);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2609,'Nogales','MEX','Sonora',159103);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2670,'San Pedro Cholula','MEX','Puebla',99734);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2689,'Palikir','FSM','Pohnpei',8600);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2706,'Tete','MOZ','Tete',101984);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2716,'Sittwe (Akyab)','MMR','Rakhine',137600);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2922,'Carolina','PRI','Carolina',186076);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2967,'Grudziadz','POL','Kujawsko-Pomorskie',102434);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (2972,'Malabo','GNQ','Bioko',40000);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (3073,'Essen','DEU','Nordrhein-Westfalen',599515);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (3169,'Apia','WSM','Upolu',35900);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (3198,'Dakar','SEN','Cap-Vert',785071);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (3253,'Hama','SYR','Hama',343361);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (3288,'Luchou','TWN','Taipei',160516);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (3309,'Tanga','TZA','Tanga',137400);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (3353,'Sousse','TUN','Sousse',145900);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (3377,'Kahramanmaras','TUR','Kahramanmaras',245772);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (3430,'Odesa','UKR','Odesa',1011000);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (3581,'St Petersburg','RUS','Pietari',4694000);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (3770,'Hanoi','VNM','Hanoi',1410000);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (3815,'El Paso','USA','Texas',563662);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (3878,'Scottsdale','USA','Arizona',202705);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (3965,'Corona','USA','California',124966);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (3973,'Concord','USA','California',121780);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (3977,'Cedar Rapids','USA','Iowa',120758);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (3982,'Coral Springs','USA','Florida',117549);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (4054,'Fairfield','USA','California',92256);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (4058,'Boulder','USA','Colorado',91238);
INSERT INTO city(ID,name,countrycode,district,population) VALUES (4061,'Fall River','USA','Massachusetts',90555);

SELECT * FROM CITY;