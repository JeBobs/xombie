--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0 (Debian 14.0-1.pgdg110+1)
-- Dumped by pg_dump version 14.4

-- Started on 2022-08-22 01:26:56 UTC

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
-- TOC entry 209 (class 1259 OID 16385)
-- Name: client_keys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client_keys (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    xuid text NOT NULL,
    kvno integer NOT NULL,
    key text NOT NULL,
    key_type text NOT NULL
);


ALTER TABLE public.client_keys OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16419)
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients (
    xuid text NOT NULL,
    gamertag text NOT NULL
);


ALTER TABLE public.clients OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16396)
-- Name: kdc_nodes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kdc_nodes (
    external_ip inet NOT NULL
);


ALTER TABLE public.kdc_nodes OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16401)
-- Name: machines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.machines (
    xuid text NOT NULL,
    serial text NOT NULL,
    macaddress macaddr NOT NULL
);


ALTER TABLE public.machines OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16406)
-- Name: sg_nodes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sg_nodes (
    external_ip inet NOT NULL
);


ALTER TABLE public.sg_nodes OWNER TO postgres;

--
-- TOC entry 3332 (class 0 OID 16385)
-- Dependencies: 209
-- Data for Name: client_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client_keys (id, xuid, kvno, key, key_type) FROM stdin;
af29ab1c-e87d-4b24-97f6-e2d9e3eb83c8	CC58680A63C20900	1	152C745D25D14AA6ADA4AA5A85173FF2	hdd_key
e3cf66cd-08f1-47b6-ba74-b416c60f058b	CC58680A63C20900	1	AE8E425870F93D827C3F68391A4D1CDD	online_key
6db8ea20-ef01-484e-ba6e-6e78b6654c64	CC58680A63C20900	1	BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB	client_master_key
a7f49ce6-ae00-4020-9118-07c530c22c48	CC58680A63C20900	1	BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB	tgs_client_session_key
3eae2fe7-09ce-48f5-9317-7ac8be65d40c	CC58680A63C20900	1	BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB	sg_service_session_key
af29ab1c-e87d-4b24-97f6-e2d9e3ebxxxx	2F25777309C10900	1	F743DF6A3CB351A0147011B0CB517EC2	hdd_key
e3cf66cd-08f1-47b6-ba74-b416c60fxxxx	2F25777309C10900	1	01D3CB80A81B185A7CB241BBADF9FFA8	online_key
6db8ea20-ef01-484e-ba6e-6e78b665xxxx	2F25777309C10900	1	BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB	client_master_key
a7f49ce6-ae00-4020-9118-07c530c2xxxx	2F25777309C10900	1	BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB	tgs_client_session_key
3eae2fe7-09ce-48f5-9317-7ac8be65xxxx	2F25777309C10900	1	BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB	sg_service_session_key
\.


--
-- TOC entry 3336 (class 0 OID 16419)
-- Dependencies: 213
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clients (xuid, gamertag) FROM stdin;
CC58680A63C20900	Owen2k6
2F25777309C10900	JeBobs
\.


--
-- TOC entry 3333 (class 0 OID 16396)
-- Dependencies: 210
-- Data for Name: kdc_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kdc_nodes (external_ip) FROM stdin;
192.168.5.1
54.39.192.123
\.


--
-- TOC entry 3334 (class 0 OID 16401)
-- Dependencies: 211
-- Data for Name: machines; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.machines (xuid, serial, macaddress) FROM stdin;
CC58680A63C20900	291891518087	00:50:F2:AD:80:A6
2F25777309C10900	006812641559	00:0D:3A:15:AC:B9
\.


--
-- TOC entry 3335 (class 0 OID 16406)
-- Dependencies: 212
-- Data for Name: sg_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sg_nodes (external_ip) FROM stdin;
192.168.5.1
54.39.192.123
\.


--
-- TOC entry 3184 (class 2606 OID 16412)
-- Name: client_keys client_keys_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client_keys
    ADD CONSTRAINT client_keys_pkey PRIMARY KEY (id);


--
-- TOC entry 3192 (class 2606 OID 16425)
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (xuid);


--
-- TOC entry 3186 (class 2606 OID 16414)
-- Name: kdc_nodes kdc_nodes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kdc_nodes
    ADD CONSTRAINT kdc_nodes_pkey PRIMARY KEY (external_ip);


--
-- TOC entry 3188 (class 2606 OID 16416)
-- Name: machines machines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.machines
    ADD CONSTRAINT machines_pkey PRIMARY KEY (xuid);


--
-- TOC entry 3190 (class 2606 OID 16418)
-- Name: sg_nodes sg_nodes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sg_nodes
    ADD CONSTRAINT sg_nodes_pkey PRIMARY KEY (external_ip);


-- Completed on 2022-08-22 01:26:56 UTC

--
-- PostgreSQL database dump complete
--

