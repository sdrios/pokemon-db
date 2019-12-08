--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1 (Ubuntu 12.1-1.pgdg18.04+1)

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
-- Name: pokemon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemon (
    id integer,
    name character varying,
    type character varying,
    evolvesfromid integer
);


ALTER TABLE public.pokemon OWNER TO postgres;

--
-- Name: trainers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trainers (
    id integer,
    name character varying,
    "isGymLeader" boolean,
    "pokemonSlot1" integer,
    "pokemonSlot2" integer,
    "pokemonSlot3" integer,
    "pokemonSlot4" integer,
    "pokemonSlot5" integer,
    "pokemonSlot6" integer
);


ALTER TABLE public.trainers OWNER TO postgres;

--
-- Data for Name: pokemon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pokemon (id, name, type, evolvesfromid) FROM stdin;
1	Bulbasaur	Grass	\N
2	Ivysaur	Grass	1
3	Venusaur	Grass	2
4	Charmander	Fire	\N
5	Charmeleon	Fire	4
6	Charizard	Fire	5
7	Squirtle	Water	\N
8	Wartortle	Water	7
9	Blastoise	Water	8
10	Caterpie	Bug	\N
11	Metapod	Bug	10
12	Butterfree	Bug	11
\.


--
-- Data for Name: trainers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trainers (id, name, "isGymLeader", "pokemonSlot1", "pokemonSlot2", "pokemonSlot3", "pokemonSlot4", "pokemonSlot5", "pokemonSlot6") FROM stdin;
1	Ash	f	1	10	\N	\N	\N	\N
2	Misty	t	7	\N	\N	\N	\N	\N
3	Brock	t	3	6	9	\N	\N	\N
\.


--
-- PostgreSQL database dump complete
--

