--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: flats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flats (
    address character varying(99),
    price double precision,
    area real,
    rooms integer,
    floor integer,
    condition integer,
    district integer
);


ALTER TABLE public.flats OWNER TO postgres;

--
-- Data for Name: flats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flats (address, price, area, rooms, floor, condition, district) FROM stdin;
уральская, 8/1 	2800000	81.6	3	1	4	0
Уральская, 9 	1500000	53	2	3	4	0
Вокзальная, 134/1 	2150000	41	2	2	3	0
спартаковский перулок, 10/1 	300000	34.5	1	3	2	0
Чапаева, 11 	3000000	61	2	3	2	0
Николая Шишка, 22 	5500000	74	3	2	3	0
Комарова, 31 	8750000	127	4	3	3	0
Набережная, 14 	3500000	57	2	2	3	0
Менделеева, 6 	5100000	83	3	3	3	0
Ленинградская, 32 	2290000	31	1	3	3	0
Куйбышева, 20 	8000000	136.7	4	2	4	0
Октябрьская 	4100000	74.2	3	3	3	0
Ленина пр-т, 37 	4800000	59.1	2	3	4	0
Ленина пр-т, 18 	5265000	80.6	3	3	3	0
Ленина пр-т, 25 	8200000	188	5	2	3	0
Казакова, 5 	4900000	73	3	3	4	0
Московская, 69 	2590000	41	1	2	3	0
Помяловского, 17/1 	3450000	56	3	2	3	0
Московская, 2 	2120000	45.14	2	3	3	0
Ленинградская, 5/2 	4200000	57	2	2	4	0
Горького, 25 	3750000	51.3	2	2	4	0
Куйбышева, 10 	2200000	32	1	2	3	0
Чекалина, 8 	3100000	57	3	3	3	5
Октябрьская, 30 	3230000	43	2	3	3	0
Карла Маркса, 73/1 	4900000	74	3	2	3	0
Калинина, 21 	6950000	84.9	3	3	4	0
Горького, 3 	3850000	50	2	2	3	0
Вокзальная, 116 	1920000	30	1	2	3	0
Первомайская, 26/1 	1150000	23.7	1	1	2	0
Ленина пр-т, 19/4 	2599000	52	2	2	2	0
Первомайская, 23 	2499000	37.6	1	3	3	0
Московская, 4 	3000000	65	3	2	2	0
Металлургов, 12 	3500000	49	2	3	1	0
Ленинградская, 16 	5550000	86	3	3	3	0
Клинкерная, 11 	2250000	43.2	2	1	3	0
Салтыкова-Щедрина, 1 	2300000	55	3	3	3	0
Тарасенко, 6 	1600000	45	2	2	2	0
Карла Маркса, 68 	1350000	26	2	3	1	0
Карла Маркса, 12/2 	2750000	45.3	2	3	3	0
Ленина пр-т, 55 	5800000	76	3	3	3	0
Набережная, 10 	3300000	49	2	3	3	0
Набережная, 8 	3400000	48	2	3	1	0
Вокзальная, 138 	1750000	31	1	1	2	0
Николая Шишка, 21 	3600000	58	2	3	3	0
Ленина пр-т, 15 	4000000	69	3	3	2	0
Строителей, 44 	2500000	45	2	2	2	0
Октябрьская, 19 	3800000	52	2	2	3	0
Куйбышева, 12 	2850000	57	3	1	2	0
Комсомольская, 25 	4590000	66	2	1	4	0
Металлургов, 5 	3800000	56	2	2	3	0
Ленина пр-т, 23 	3680000	65.9	3	2	2	0
Ленинградская, 13 	2300000	31.3	1	3	3	0
Советская, 24 	2300000	34.7	1	2	3	0
Уральская, 9 	1940000	34	1	3	3	0
Казакова, 1 	2650000	37.1	1	1	3	0
Октябрьская, 28 	2700000	43	2	3	3	0
Ленина пр-т, 17 	3600000	55	2	2	3	0
Московская, 47 	3060000	55.4	3	1	2	0
Ленина пр-т, 7 	3150000	55.6	2	3	3	0
Карла Маркса, 22 	3950000	75	3	3	2	0
Песчаная, 1 	1900000	41	1	3	3	0
Панькова, 2 	1380000	30.2	1	3	3	0
Карла Маркса, 72 	2050000	30.6	1	1	3	0
Ленина пр-т, 10 	3750000	77	3	2	3	0
Ленина пр-т, 45 	3350000	49	2	3	2	0
Карла Маркса, 60 	3050000	43	2	3	2	0
Герцена, 2/1 	2950000	48	1	3	3	0
Карла Маркса, 43 	6000000	90	3	3	3	0
Чапаева, 11 	4700000	68.6	3	1	3	0
Карла Маркса, 60 	2820000	41.2	2	3	1	0
Комсомольская, 2 	3250000	54.5	2	3	3	0
Тимирязева, 51 	3300000	65.5	3	1	2	0
Набережная, 10 	5082000	72.6	3	3	4	0
Панькова, 6/1 	1430000	44	2	1	3	3
Бахметьева, 6 	1700000	42	1	3	1	3
Тарасенко, 18 	1950000	42	2	3	3	3
Карла Маркса, 181 	2150000	34	1	3	2	2
Советская, 166/2 	3050000	62	4	2	2	2
Ржевского переулок, 5 	1900000	68.7	3	3	2	2
Сиреневый проезд, 10 	3100000	50	2	3	3	2
Коробова, 12 	3120000	68	3	2	1	2
Ворошилова, 26 	3400000	54	2	3	4	2
Зеленый Лог, 63 	3737000	57	2	3	1	2
Карла Маркса, 185 	3700000	66	3	3	3	2
Ленина пр-т, 135 	3850000	48.5	1	3	3	2
Карла Маркса, 231/3 	1850000	32	1	1	3	2
Советская, 187-1 	3500000	59	3	1	4	5
Советская, 199 	4680000	73.9	4	1	3	2
Советская, 176 	3950000	81.9	2	3	2	2
Ворошилова, 41 	5400000	89	3	3	3	2
Коробова, 18 	3956566	64.9	3	3	3	2
Ворошилова, 41 	2570000	42	1	3	1	2
Завенягина, 1/1 	2500000	40	2	1	3	2
Карла Маркса, 220/1 	4490000	75	2	1	3	2
Карла Маркса, 181 	2200000	35	1	3	3	2
50-летия Магнитки, 40 	3650000	66	3	3	3	2
Сиреневый проезд, 7 	3090000	53	2	2	3	2
Карла Маркса, 181 	2000000	36	1	3	1	2
Карла Маркса, 202 	3150000	50	2	3	3	2
Жукова, 13/1 	5989000	83	3	3	3	2
Труда, 59/2 	3650000	42	1	3	4	2
Ленина пр-т, 137 	3700000	58	2	1	3	2
Зеленый Лог , 25 	1750000	24	1	3	3	2
Труда, 44/2 	5900000	71.3	3	3	4	2
50-летия Магнитки, 47/1 	2300000	34	1	3	3	2
Сиреневый проезд, 12 	3200000	50	2	3	3	2
Жукова, 8 	4200000	70	3	3	3	2
Советская, 168 	3350000	50	2	3	4	2
50-летия Магнитки, 62/1 	3300000	65	3	2	3	2
Ворошилова, 35/1 	2850000	50	2	3	2	2
Зеленый Лог, 19 	3250000	54	2	1	3	2
Карла Маркса, 218 	4000000	58	2	2	3	2
Ленина пр-т, 135 	8700000	132	3	3	4	2
Коробова, 6/1 	3450000	65	2	3	3	2
Раздольная, 8 	5700000	66	3	3	4	2
Ленина пр-т, 127 	7750000	100	3	3	4	2
Карла Маркса, 204/1 	2400000	34	1	3	3	2
Сиреневый проезд, 14/1 	2200000	33	1	3	3	2
Зеленый Лог, 61 	4500000	64.1	2	2	3	2
Доменщиков, 23 	3400000	61	3	1	3	2
Калмыкова, 12 	3250000	54	2	2	4	2
Доменщиков, 20 	3100000	64	3	1	2	2
Зеленый Лог, 34 	2790000	42	1	3	3	2
Карла Маркса, 176/1 	6500000	125	5	3	4	2
Зеленый Лог, 34 	2950000	42	1	3	3	2
Ленина пр-т, 142 	2600000	33	1	3	2	2
Труда 	5500000	72	3	3	3	2
50-летия Магнитки, 48/1 	4000000	72	3	2	2	2
Завенягина, 6 	5950000	82	3	3	3	2
50-летия Магнитки, 31 	6590000	98.5	3	3	4	2
Тевосяна, 9 	3500000	65	3	1	3	2
Жукова, 7/1 	2700000	40.3	1	3	3	2
Сиреневый проезд, 26 	3500000	63	3	3	3	2
Труда, 3/3 	3740000	57	2	3	3	2
50-летия Магнитки, 48/1 	5700000	84	3	3	4	2
Зеленый Лог, 21/1 	2570000	47.2	2	1	1	2
Ленина пр-т, 154 	1500000	30	1	3	1	2
Завенягина, 1/5 	3780000	67	3	1	3	2
Зеленый Лог, 25 	1950000	27.7	1	2	3	2
Зеленый Лог, 25 	1820000	26	1	3	3	2
Советская, 219/2 	3100000	44.7	1	3	2	2
Зеленый Лог, 33 	4200000	65	3	3	3	2
Ленина пр-т, 152 	3830000	59	3	3	3	2
Зеленый Лог, 23 	1670000	24	1	3	2	2
Советская, 174 	4050000	81	4	1	3	2
Карла Маркса, 189 	2700000	33	1	3	4	2
Сиреневый проезд, 28 	3900000	65	3	3	3	2
Ворошилова, 23 	3350000	47	2	3	3	2
Советская, 182 	3200000	50	2	3	3	2
Советская, 205 	3400000	65	3	3	1	2
Тевосяна, 2 	6040000	90	3	3	3	2
Бориса Ручьева, 3 А 	1680000	31	1	3	3	2
Зеленый Лог, 52 	3350000	61	3	2	3	2
Сиреневый проезд, 10 	2690000	33	1	3	4	2
Зеленый Лог , 33/1 	3590000	50	2	3	3	2
Карла Маркса, 231/3 	2180000	32.1	1	3	3	2
Сочинская, 3 	3020000	42	1	2	4	2
Сиреневый проезд, 12/1 	3990000	64	3	3	3	2
Карла Маркса, 235 	2050000	24	1	3	3	2
Ленина пр-т, 164 	4500000	65.8	3	3	3	2
Карла Маркса, 180/3 	5100000	68.5	3	3	4	5
Доменщиков, 1 	2900000	45.2	2	3	3	2
Калмыкова, 12 	4290000	64	3	2	4	2
Труда, 55 	3290000	46	1	3	3	2
Зеленый Лог, 33/1 	3550000	50.5	2	2	4	2
Зеленый Лог, 15 	1800000	24	1	3	3	2
Жукова, 7/1 	2700000	40.3	1	3	3	2
Карла Маркса, 233 	3500000	71.5	3	3	1	2
Зеленый Лог, 21 	1700000	24	1	3	3	2
Труда, 61/1 	5300000	65.1	2	3	2	2
Ржевского переулок, 9 	2630000	68	3	3	3	4
Лесная, 2а 	2450000	47	2	2	3	4
Фадеева, 16 	1346654	42.5	2	3	3	4
Суворова, 138 	3890000	58	3	2	4	1
Лесная, 8 а 	2050000	49.5	2	3	2	4
Фрунзе, 17 	2300000	49	2	1	3	4
40-лет Октября, 55 	2000000	49	2	1	2	4
Огнеупорщиков, 25 	2700000	56	2	1	3	4
Лесная, 8а 	2050000	49.5	2	3	2	4
Маяковского, 38 	1800000	42	3	3	1	4
Чайковского, 66 	1890000	41	2	3	2	4
Пионерская, 4 	3500000	91	5	3	1	4
Чайковского, 61 а 	2400000	58	2	3	3	4
Ржевского переулок, 5 	2600000	74	3	2	3	4
Полевая, 1 	2900000	61.5	2	2	4	4
Декабристов, 77 	1600000	43	2	1	2	4
Фадеева, 16 	1870000	44	2	2	3	4
Лазника, 40 	2300000	43	1	2	3	4
Чайковского, 61а 	3800000	70.33	3	2	4	4
Завенягина, 8 	5600000	90	3	3	4	1
Грязнова, 49 	2255000	43.1	2	3	3	1
Суворова, 120/2 	2850000	57.6	3	3	3	1
Карла Маркса, 124 	2350000	41	2	1	3	1
Советский переулок, 2 	3920000	58.5	3	3	3	1
Индустриальная, 22/1 	1820000	32.1	1	1	3	1
Советской Армии, 5 	2750000	63	3	2	1	1
Советская, 149 	2050000	47.8	2	3	3	1
Ленина пр-т, 87а 	2200000	26	1	3	1	1
Дружбы, 38 	1950000	31.2	1	3	2	1
Карла Маркса, 139 	3700000	65	3	3	2	1
Советская, 129/3 	2250000	46	2	2	3	1
Им. газеты &quot;Правда&quot;, 12/1 	1420000	22	1	3	3	1
Суворова, 105 	2150000	46	2	3	1	1
Сталеваров, 15 	3700000	59	3	3	3	1
Советская, 123а/1 	4000000	58.8	2	1	3	1
Грязнова, 20 	2500000	42	2	3	2	1
Им. газеты &quot;Правда&quot;, 30/1 	2499899	43.2	2	1	3	1
Советская, 127/4 	2500000	44	2	3	3	1
Карла Маркса, 147/2 	3250000	59.1	3	3	2	1
Карла Маркса, 149 	4200000	71	3	3	3	1
Ленина пр-т, 98/1 	1310000	22	1	3	3	1
Карла Маркса, 112 	2430000	45	2	3	2	1
Вокзальная, 112 	1980000	30	1	3	3	0
Ленина пр-т, 98 	2590000	45.8	2	2	3	1
Грязнова, 10 	2400000	44.4	2	2	2	1
Ленина пр-т, 84 	3680000	64.7	3	3	3	1
Ленина пр-т, 86 	3950000	65.2	3	2	3	1
Сталеваров, 10 	3070000	61.7	3	1	3	1
Лесопарк, 36 	2500000	44	2	2	3	1
Советская, 133 	2300000	45	2	2	2	1
Сталеваров, 20 	3200000	59.2	3	1	3	1
Советская, 155/1 	3300000	59	3	2	3	1
Суворова, 127 	3190000	61	4	2	2	1
Суворова, 139 	2930000	47	2	2	4	1
Западное шоссе, 99 	2600000	37	1	1	3	1
Карла Маркса, 107 	3220000	55.4	2	3	4	1
Им. газеты &quot;Правда&quot;, 64 	3000000	61	3	2	1	1
Советская, 157 	4280000	63.9	3	3	3	1
Сталеваров, 10/1 	2600000	45	2	3	2	1
Карла Маркса, 92/1 	2900000	44.9	2	2	3	1
Индустриальная, 45 	3650000	56	3	3	4	1
Грязнова, 27 	4180000	59	4	3	3	1
Карла Маркса, 109 	3580000	64.7	3	3	3	1
Лесопарковая, 96 	2600000	44	2	2	3	1
Суворова, 99 	2750000	44.9	2	3	4	5
Сталеваров, 20 	2000000	30.7	1	1	3	1
Карла Маркса, 124/1 	3400000	64	4	1	3	1
Суворова, 126/1 	2850000	47.2	3	3	3	1
Завенягина, 14/1 	3990000	63	3	2	3	1
Карла Маркса, 104 	2720000	54.6	3	2	2	1
Карла Маркса, 164/5 	2950000	45.3	2	3	1	1
Ленина пр-т, 93 	1100000	40	1	1	1	1
Сталеваров, 20 	4500000	59.4	3	2	4	1
Ленина пр-т, 98/1 	900000	22	1	2	0	1
Карла Маркса, 115/3 	2990000	44	2	3	4	1
Карла Маркса, 102/1 	1980000	30.7	1	3	3	1
Карла Маркса, 170 	4150000	65.4	3	3	2	1
Дружбы, 22 	1950000	30	1	2	3	1
Индустриальная, 47/1 	3100000	56	3	1	3	1
Галиуллина, 7 	2380000	42	2	3	2	1
Советской Армии, 1 	2350000	44	2	2	2	1
Грязнова, 30 	2450000	45	2	3	2	1
Карла Маркса, 115/3 	4150000	62	3	2	3	1
Им. газеты &quot;Правда&quot;, 86 	3800000	64.2	3	3	4	1
Грязнова, 6 	3400000	55	3	2	4	1
Енисейская, 72 	2290000	44	2	3	1	1
Ленина пр-т, 84/2 	1950000	30	1	1	4	1
Им. газеты &quot;Правда&quot;, 12/1 	1500000	22	1	3	3	1
Советской Армии, 27 	3200000	47.4	3	3	3	1
Гагарина, 15 	2700000	42	2	3	2	1
Ленина пр-т, 98/1 	1790000	30.4	1	3	3	1
Советской Армии, 33 	1600000	30	1	3	3	1
Советская, 155/2 	3190000	55.2	3	3	3	1
Галиуллина, 7/3 	2850000	47	2	2	3	1
Суворова, 118 	2500000	44.4	2	2	3	1
Советская 	3500000	60	3	3	3	1
Ленина пр-т, 98/2 	2050000	34.3	1	3	2	1
Суворова, 120/1 	3350000	55.7	3	1	3	5
Им. газеты &quot;Правда&quot;, 26 	2710000	45.1	2	3	3	1
Зеленый Лог, 15 	3400000	58.5	3	3	2	1
Карла Маркса, 134 	4400000	65	4	2	3	1
Вознесенская, 11 	1850000	36	1	3	1	1
Сталеваров, 17/1 	8500000	160	4	3	4	1
Суворова, 132/3 	2130000	31.9	1	3	2	1
Советская, 119 	2400000	35.4	1	3	3	1
Суворова, 114/4 	2450000	45.6	2	3	2	1
Ленина пр-т, 84 	2270000	33	1	3	3	1
Суворова, 133/2 	2100000	32.7	1	2	2	1
\.


--
-- PostgreSQL database dump complete
--

