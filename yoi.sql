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
-- Name: mahasiswa; Type: TABLE; Schema: public; Owner: ZYREX
--

CREATE TABLE public.mahasiswa (
    nama character varying(30),
    nim integer NOT NULL,
    asal character varying(20)
);


ALTER TABLE public.mahasiswa OWNER TO "ZYREX";

--
-- Name: mahasiswa_nim_seq; Type: SEQUENCE; Schema: public; Owner: ZYREX
--

CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mahasiswa_nim_seq OWNER TO "ZYREX";

--
-- Name: mahasiswa_nim_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ZYREX
--

ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;


--
-- Name: mahasiswa nim; Type: DEFAULT; Schema: public; Owner: ZYREX
--

ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);


--
-- Data for Name: mahasiswa; Type: TABLE DATA; Schema: public; Owner: ZYREX
--

COPY public.mahasiswa (nama, nim, asal) FROM stdin;
edwin	221374	mekatta
Haikal	221376	Tubo
\.


--
-- Name: mahasiswa_nim_seq; Type: SEQUENCE SET; Schema: public; Owner: ZYREX
--

SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);


--
-- Name: mahasiswa mahasiswa_pkey; Type: CONSTRAINT; Schema: public; Owner: ZYREX
--

ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);


--
-- PostgreSQL database dump complete
--

