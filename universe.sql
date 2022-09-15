 --
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: from_earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.from_earth (
    description text NOT NULL,
    life boolean,
    water boolean,
    name character varying(25),
    dis integer,
    depth integer,
    from_earth_id integer NOT NULL
);


ALTER TABLE public.from_earth OWNER TO freecodecamp;

--
-- Name: from_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.from_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.from_earth_id_seq OWNER TO freecodecamp;

--
-- Name: from_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.from_earth_id_seq OWNED BY public.from_earth.from_earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    no integer,
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    size integer,
    depth character varying(12)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    place numeric(3,1),
    identity text,
    more_than_one boolean,
    livable boolean,
    life boolean,
    moon_id integer NOT NULL,
    depth integer,
    size_inch integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.galaxy_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    life boolean,
    planet_id integer NOT NULL,
    depth integer,
    size_inch integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.galaxy_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    life boolean,
    star_id integer NOT NULL,
    depth integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: from_earth from_earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.from_earth ALTER COLUMN from_earth_id SET DEFAULT nextval('public.from_earth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN galaxy_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN galaxy_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: from_earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.from_earth VALUES ('red', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.from_earth VALUES ('hot', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.from_earth VALUES ('blue', NULL, NULL, NULL, NULL, NULL, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (NULL, 1, '23', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 2, '24', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 3, '43', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 4, '45', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 5, '72', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 6, '93', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 7, '82', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 8, '8', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 9, '9', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 10, '10', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 11, '11', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 12, '12', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 13, '13', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 14, '14', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 15, '15', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 16, '16', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 17, '17', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 18, '18', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 19, '19', NULL, NULL);
INSERT INTO public.galaxy VALUES (NULL, 20, '20', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (8, '8', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.moon VALUES (9, '9', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (10, '10', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (11, '11', NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES (12, '12', NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (13, '13', NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (14, '14', NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL);
INSERT INTO public.moon VALUES (15, '15', NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL);
INSERT INTO public.moon VALUES (16, '16', NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL);
INSERT INTO public.moon VALUES (17, '17', NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL);
INSERT INTO public.moon VALUES (18, '18', NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL);
INSERT INTO public.moon VALUES (19, '19', NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL);
INSERT INTO public.moon VALUES (20, '20', NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL);
INSERT INTO public.moon VALUES (1, '1', NULL, NULL, NULL, NULL, NULL, 14, NULL, NULL);
INSERT INTO public.moon VALUES (2, '2', NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL);
INSERT INTO public.moon VALUES (3, '1', NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL);
INSERT INTO public.moon VALUES (4, '1', NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL);
INSERT INTO public.moon VALUES (5, '1', NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL);
INSERT INTO public.moon VALUES (6, '2', NULL, NULL, NULL, NULL, NULL, 19, NULL, NULL);
INSERT INTO public.moon VALUES (7, '34', NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (6, '4', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (7, '6', NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (8, '8', NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES (9, '9', NULL, 4, NULL, NULL);
INSERT INTO public.planet VALUES (10, '10', NULL, 5, NULL, NULL);
INSERT INTO public.planet VALUES (11, '11', NULL, 6, NULL, NULL);
INSERT INTO public.planet VALUES (12, '12', NULL, 7, NULL, NULL);
INSERT INTO public.planet VALUES (13, '13', NULL, 8, NULL, NULL);
INSERT INTO public.planet VALUES (14, '14', NULL, 9, NULL, NULL);
INSERT INTO public.planet VALUES (15, '15', NULL, 10, NULL, NULL);
INSERT INTO public.planet VALUES (16, '16', NULL, 11, NULL, NULL);
INSERT INTO public.planet VALUES (17, '17', NULL, 12, NULL, NULL);
INSERT INTO public.planet VALUES (18, '18', NULL, 13, NULL, NULL);
INSERT INTO public.planet VALUES (19, '19', NULL, 14, NULL, NULL);
INSERT INTO public.planet VALUES (20, '20', NULL, 15, NULL, NULL);
INSERT INTO public.planet VALUES (5, '3', NULL, 16, NULL, NULL);
INSERT INTO public.planet VALUES (4, '5', NULL, 17, NULL, NULL);
INSERT INTO public.planet VALUES (3, '7', NULL, 18, NULL, NULL);
INSERT INTO public.planet VALUES (2, '79', NULL, 19, NULL, NULL);
INSERT INTO public.planet VALUES (1, '2', NULL, 20, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, '2', NULL, 1, NULL);
INSERT INTO public.star VALUES (3, '7', NULL, 3, NULL);
INSERT INTO public.star VALUES (4, '5', NULL, 4, NULL);
INSERT INTO public.star VALUES (5, '3', NULL, 5, NULL);
INSERT INTO public.star VALUES (6, '4', NULL, 6, NULL);
INSERT INTO public.star VALUES (7, '6', NULL, 7, NULL);
INSERT INTO public.star VALUES (8, '8', NULL, 8, NULL);
INSERT INTO public.star VALUES (9, '9', NULL, 9, NULL);
INSERT INTO public.star VALUES (10, '10', NULL, 10, NULL);
INSERT INTO public.star VALUES (11, '11', NULL, 11, NULL);
INSERT INTO public.star VALUES (12, '12', NULL, 12, NULL);
INSERT INTO public.star VALUES (13, '13', NULL, 13, NULL);
INSERT INTO public.star VALUES (14, '14', NULL, 14, NULL);
INSERT INTO public.star VALUES (15, '15', NULL, 15, NULL);
INSERT INTO public.star VALUES (16, '16', NULL, 16, NULL);
INSERT INTO public.star VALUES (17, '17', NULL, 17, NULL);
INSERT INTO public.star VALUES (18, '18', NULL, 18, NULL);
INSERT INTO public.star VALUES (19, '19', NULL, 19, NULL);
INSERT INTO public.star VALUES (20, '20', NULL, 20, NULL);


--
-- Name: from_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.from_earth_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 10, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 117, true);


--
-- Name: from_earth from_earth_depth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.from_earth
    ADD CONSTRAINT from_earth_depth_key UNIQUE (depth);


--
-- Name: from_earth from_earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.from_earth
    ADD CONSTRAINT from_earth_pkey PRIMARY KEY (from_earth_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_size_key UNIQUE (size);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_size_key UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_size_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_size_key UNIQUE (star_id);


--
-- Name: star id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

   