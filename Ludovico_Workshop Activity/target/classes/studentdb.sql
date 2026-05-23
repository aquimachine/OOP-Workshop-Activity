--
-- PostgreSQL database dump
--

\restrict 5OkNPjqcJABWjuCSxLB1OEstaeMg9jvTEH65lrIqVRkqJtl1YgpSUDveZQfmWM6

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

-- Started on 2026-05-23 18:27:26

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 219 (class 1259 OID 16396)
-- Name: studentdb; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.studentdb (
);


ALTER TABLE public.studentdb OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16400)
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id integer NOT NULL,
    name character varying(100),
    course character varying(50),
    year_level character varying(50)
);


ALTER TABLE public.students OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16399)
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_id_seq OWNER TO postgres;

--
-- TOC entry 4917 (class 0 OID 0)
-- Dependencies: 220
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- TOC entry 4759 (class 2604 OID 16403)
-- Name: students id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- TOC entry 4909 (class 0 OID 16396)
-- Dependencies: 219
-- Data for Name: studentdb; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.studentdb  FROM stdin;
\.


--
-- TOC entry 4911 (class 0 OID 16400)
-- Dependencies: 221
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (id, name, course, year_level) FROM stdin;
3	mika	bsit	1st Year
7	aaron	bsit	2nd Year
8	marc	bsit	2nd Year
\.


--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 220
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_id_seq', 9, true);


--
-- TOC entry 4761 (class 2606 OID 16406)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


-- Completed on 2026-05-23 18:27:26

--
-- PostgreSQL database dump complete
--

\unrestrict 5OkNPjqcJABWjuCSxLB1OEstaeMg9jvTEH65lrIqVRkqJtl1YgpSUDveZQfmWM6

