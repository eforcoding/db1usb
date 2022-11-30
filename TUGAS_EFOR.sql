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
-- Name: pegawai; Type: TABLE; Schema: public; Owner: ASUS
--

CREATE TABLE public.pegawai (
    nama character varying,
    alamat character varying,
    gaji integer
);


ALTER TABLE public.pegawai OWNER TO "ASUS";

--
-- Name: pekerja; Type: TABLE; Schema: public; Owner: ASUS
--

CREATE TABLE public.pekerja (
    nama character varying,
    nip integer,
    lama_kerja integer
);


ALTER TABLE public.pekerja OWNER TO "ASUS";

--
-- Name: tanggungan; Type: TABLE; Schema: public; Owner: ASUS
--

CREATE TABLE public.tanggungan (
    nama character varying,
    tanggal_lahir integer,
    jenis_kelamin character varying
);


ALTER TABLE public.tanggungan OWNER TO "ASUS";

--
-- Data for Name: pegawai; Type: TABLE DATA; Schema: public; Owner: ASUS
--

COPY public.pegawai (nama, alamat, gaji) FROM stdin;
Nina	Tutar	3000000
Edwin	Malunda	9000000
Haikal	sendana	7000000
\.


--
-- Data for Name: pekerja; Type: TABLE DATA; Schema: public; Owner: ASUS
--

COPY public.pekerja (nama, nip, lama_kerja) FROM stdin;
amel	8464748	3
Novy	87567487	7
Ryan	9675555	9
\.


--
-- Data for Name: tanggungan; Type: TABLE DATA; Schema: public; Owner: ASUS
--

COPY public.tanggungan (nama, tanggal_lahir, jenis_kelamin) FROM stdin;
efor	506	laki laki
Amel	2805	perempuan
Muayyat	709	Laki laki
\.


--
-- PostgreSQL database dump complete
--

