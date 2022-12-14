--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

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
-- Name: bahan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bahan (
    nama character varying,
    serialnumber integer NOT NULL,
    kode character varying
);


ALTER TABLE public.bahan OWNER TO postgres;

--
-- Name: bahan_serialnumber_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bahan_serialnumber_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bahan_serialnumber_seq OWNER TO postgres;

--
-- Name: bahan_serialnumber_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bahan_serialnumber_seq OWNED BY public.bahan.serialnumber;


--
-- Name: barang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.barang (
    nama_barang character varying,
    warna character varying,
    ukuran character varying
);


ALTER TABLE public.barang OWNER TO postgres;

--
-- Name: harga; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.harga (
    harganasional integer,
    hargapasar integer NOT NULL,
    hargaeceran integer
);


ALTER TABLE public.harga OWNER TO postgres;

--
-- Name: harga_hargapasar_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.harga_hargapasar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.harga_hargapasar_seq OWNER TO postgres;

--
-- Name: harga_hargapasar_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.harga_hargapasar_seq OWNED BY public.harga.hargapasar;


--
-- Name: bahan serialnumber; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bahan ALTER COLUMN serialnumber SET DEFAULT nextval('public.bahan_serialnumber_seq'::regclass);


--
-- Name: harga hargapasar; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.harga ALTER COLUMN hargapasar SET DEFAULT nextval('public.harga_hargapasar_seq'::regclass);


--
-- Data for Name: bahan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bahan (nama, serialnumber, kode) FROM stdin;
ayu	123321	qwerk
karet_sintesis	567345	tytok
nilon	908789	yuiji
benang	556231	ewwaa
sutra	898776	truot
cokelat	678333	ewrtt
susu	999675	xiokk
tepung	324675	bnghj
besi	550098	kjklm
kapas	576890	ftghyu
kulit	550031	ekjha
kacang	556111	nhfka
kopi	598701	eydhda
beras	999999	oploo
woll	765432	ouijuu
\.


--
-- Data for Name: barang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.barang (nama_barang, warna, ukuran) FROM stdin;
Sabun	biru	kecil
Sampo	merah	besar
setrika	biru	kecil
Sarung	merah	sedang
piring	putih	sedang
gelas	bening	sedang
kursi	hitam	sedang
karpet	biru	besar
baju	ungu	xl
celana	kuning	kecil
sendal	hitam	sedang
Sepatu	putih	sedang
kipas	hijau	sedang
koper	hitam	besar
mangkok	putih	sedang
helm	hitam	sedang
\.


--
-- Data for Name: harga; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.harga (harganasional, hargapasar, hargaeceran) FROM stdin;
75000	80000	95000
79000	89000	79000
49000	39000	38000
37000	36000	35000
34000	33000	32000
31000	30000	29000
28000	27000	26000
25000	24000	23000
22000	21000	20000
19000	18000	17000
16000	15000	14000
13000	11000	10000
9000	7000	3000
5000	4000	1000
91000	150000	151000
\.


--
-- Name: bahan_serialnumber_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bahan_serialnumber_seq', 1, false);


--
-- Name: harga_hargapasar_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.harga_hargapasar_seq', 1, false);


--
-- Name: bahan bahan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bahan
    ADD CONSTRAINT bahan_pkey PRIMARY KEY (serialnumber);


--
-- Name: harga harga_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.harga
    ADD CONSTRAINT harga_pkey PRIMARY KEY (hargapasar);


--
-- PostgreSQL database dump complete
--

