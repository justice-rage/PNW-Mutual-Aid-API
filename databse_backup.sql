--
-- PostgreSQL database dump
--

-- Dumped from database version 12.11
-- Dumped by pg_dump version 12.11

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: roberts
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO roberts;

--
-- Name: resources; Type: TABLE; Schema: public; Owner: roberts
--

CREATE TABLE public.resources (
    id bigint NOT NULL,
    name character varying,
    website character varying,
    category character varying,
    address character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    approved boolean
);


ALTER TABLE public.resources OWNER TO roberts;

--
-- Name: resources_id_seq; Type: SEQUENCE; Schema: public; Owner: roberts
--

CREATE SEQUENCE public.resources_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resources_id_seq OWNER TO roberts;

--
-- Name: resources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: roberts
--

ALTER SEQUENCE public.resources_id_seq OWNED BY public.resources.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: roberts
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO roberts;

--
-- Name: resources id; Type: DEFAULT; Schema: public; Owner: roberts
--

ALTER TABLE ONLY public.resources ALTER COLUMN id SET DEFAULT nextval('public.resources_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: roberts
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2022-07-11 23:29:57.702754	2022-07-11 23:29:57.702754
\.


--
-- Data for Name: resources; Type: TABLE DATA; Schema: public; Owner: roberts
--

COPY public.resources (id, name, website, category, address, created_at, updated_at, approved) FROM stdin;
1	Free Fridge PDX	https://sites.google.com/view/pdx-free-fridge	food and sustenance	See website	2022-07-11 23:33:58.727901	2022-07-11 23:33:58.727901	\N
2	Don’t Shoot PDX	https://www.dontshootpdx.org/about-us/	Legal assistance	n/a	2022-07-11 23:35:42.986599	2022-07-11 23:35:42.986599	\N
3	PDX Diaper Bank	https://www.pdxdiaperbank.org/	Parental assistance	P.O. Box 22613, Portland OR 97269	2022-07-11 23:36:48.267145	2022-07-11 23:36:48.267145	\N
4	Northwest Mother’s Milk Bank	https://www.donatemilk.org/	Parental assistance, food 	15875 SW 74th Ave, Tigard, OR 97224	2022-07-11 23:37:42.578517	2022-07-11 23:37:42.578517	\N
5	Cooling centers during heatwaves	https://www.portlandoregon.gov/fire/article/407780	Unhoused/underhoused support	n/a	2022-07-11 23:38:24.762764	2022-07-11 23:38:24.762764	\N
6	Eviction Representation for All	https://www.eratenants.org/	Housing rights	n/a	2022-07-11 23:39:05.090981	2022-07-11 23:39:05.090981	\N
7	Oregon Entrepreneurs Network	https://www.oen.org/	Community	PO Box 6452 Portland, OR 97228	2022-07-11 23:39:46.751352	2022-07-11 23:39:46.751352	\N
8	P:ear	https://www.pearmentor.org/	Education	338 NW 6th Ave. Portland, OR 97209	2022-07-11 23:40:45.459343	2022-07-11 23:40:45.459343	\N
9	Critter Folks Rescuing Critters, Inc	https://critterfolks.com/	Animals	n/a	2022-07-11 23:41:20.804569	2022-07-11 23:41:20.804569	\N
10	Asha International	https://myasha.org/	Mental Health	P.O. Box 2057, Beaverton, OR 97075	2022-07-11 23:42:00.445209	2022-07-11 23:42:00.445209	\N
11	Family Meal	https://www.familymealpdx.org/	Monetary	PO BOX 12006, Portland, OR 97212	2022-07-11 23:42:50.204491	2022-07-11 23:42:50.204491	\N
12	Portland Rescue Mission	https://portlandrescuemission.org/	Food bank	111 W Burnside St, Portland, OR 97209	2022-07-11 23:44:48.151507	2022-07-11 23:44:48.151507	\N
13	Clay Street Table	https://claystreettable.org/	Food bank	1432 SW 13th Ave, Portland, OR 97201	2022-07-11 23:45:20.636383	2022-07-11 23:45:20.636383	\N
14	Lift Urban Portland Pantry	https://www.lifturbanportland.org/	Food bank	1838 SW Jefferson St, Portland, OR 97201	2022-07-11 23:45:58.380411	2022-07-11 23:45:58.380411	\N
15	Sunshine Division	https://sunshinedivision.org/	Food bank	687 N Thompson St, Portland, OR 97227	2022-07-11 23:46:29.574263	2022-07-11 23:46:29.574263	\N
16	Portland People’s Outreach Project	https://www.portlandpeoplesoutreach.org/	Harm Reduction	Mobile  - Portland, OR	2022-07-11 23:47:36.773988	2022-07-11 23:47:36.773988	\N
17	Queer Resources	https://www.pdxqcenter.org/	LGBTQIA2S+	Provided by County	2022-07-11 23:48:41.373398	2022-07-11 23:48:41.373398	\N
18	Portland Street Response	https://www.portland.gov/streetresponse	Mental & Behavioral health crisis	Portland, OR - Citywide	2022-07-11 23:49:46.032382	2022-07-11 23:49:46.032382	\N
19	Lilith Clinic	https://www.lilithclinic.com/	Health - Abortion Access	511 SW 10th Ave #904, Portland, OR 97205	2022-07-11 23:50:25.587574	2022-07-11 23:50:25.587574	\N
20	Plan C	https://www.plancpills.org/	Health - Abortion Access	Online Service	2022-07-11 23:51:07.235476	2022-07-11 23:51:07.235476	\N
21	PDX parent	pdxparent.com/feeding-families-local-free-fridges-and-pantries-address-food-insecurity/	Food Resources	Portland, OR	2022-07-11 23:52:25.83869	2022-07-11 23:52:25.83869	\N
22	PDX free fridge	https://linktr.ee/pdxfreefridge	Food Resources	Portland, OR	2022-07-11 23:52:47.207098	2022-07-11 23:52:47.207098	\N
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: roberts
--

COPY public.schema_migrations (version) FROM stdin;
20220703185742
20220710221337
\.


--
-- Name: resources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: roberts
--

SELECT pg_catalog.setval('public.resources_id_seq', 22, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: roberts
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: resources resources_pkey; Type: CONSTRAINT; Schema: public; Owner: roberts
--

ALTER TABLE ONLY public.resources
    ADD CONSTRAINT resources_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: roberts
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- PostgreSQL database dump complete
--

