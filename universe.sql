--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    description text,
    number_planets integer NOT NULL,
    number_moons integer NOT NULL,
    has_sun boolean,
    has_earth boolean,
    name character varying(30),
    age numeric(4,2),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: god; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.god (
    god_id integer NOT NULL,
    name character varying(30),
    strength integer NOT NULL,
    pow integer NOT NULL,
    age numeric(30,4),
    description text,
    is_male boolean,
    is_female boolean
);


ALTER TABLE public.god OWNER TO freecodecamp;

--
-- Name: god_god_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.god_god_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.god_god_id_seq OWNER TO freecodecamp;

--
-- Name: god_god_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.god_god_id_seq OWNED BY public.god.god_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    size integer NOT NULL,
    distance_from_earth integer NOT NULL,
    age numeric(30,5),
    description text,
    is_life boolean,
    is_spherical boolean,
    planet_id integer,
    moon_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    size integer NOT NULL,
    distance_from_sun integer NOT NULL,
    description text,
    has_file boolean,
    is_spherical boolean,
    star_id integer,
    age numeric(10,4)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    distance_from_earth integer NOT NULL,
    size integer NOT NULL,
    haslife boolean,
    isspherical boolean,
    age numeric(5,4),
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: god god_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.god ALTER COLUMN god_id SET DEFAULT nextval('public.god_god_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('It is a spiral galaxy approximately 2.5 million', 1, 2, false, false, 'Andromeda', 45.00, 1);
INSERT INTO public.galaxy VALUES ('It is a galaxy which was discovered by Edward Pigott in March 1779', 5, 6, true, false, 'Black Eye Galaxy', 32.00, 2);
INSERT INTO public.galaxy VALUES ('It is a spiral galaxy about 12 million light-years away, in the constellation Ursa Major.', 65, 32, true, false, 'Bode Galaxy', 25.00, 3);
INSERT INTO public.galaxy VALUES ('blah blah blah blah', 32, 658, true, false, 'Cartwheel Galaxy', 80.00, 4);
INSERT INTO public.galaxy VALUES ('jai jdcjb duhod f ihducs ij', 68, 300, false, false, 'Comet Galaxy', 96.00, 5);
INSERT INTO public.galaxy VALUES ('one i live', 50, 30, true, true, 'Milky Way Galaxy', 36.00, 6);


--
-- Data for Name: god; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.god VALUES (1, 'shiva', 99999, 50, 23.0000, 'powerfull', true, false);
INSERT INTO public.god VALUES (2, 'odin', 99999, 50, 23.0000, 'powerfull', true, false);
INSERT INTO public.god VALUES (3, 'vishnu', 99999, 50, 23.0000, 'powerfull', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('chanda', 44, 54, 15.00000, 'jshdf df', true, true, 15, 1);
INSERT INTO public.moon VALUES ('chand', 44, 54, 15.00000, 'jshdf df', true, true, 14, 2);
INSERT INTO public.moon VALUES ('and', 44, 54, 15.00000, 'jshdf df', true, true, 13, 3);
INSERT INTO public.moon VALUES ('land', 44, 54, 15.00000, 'jshdf df', true, true, 12, 4);
INSERT INTO public.moon VALUES ('rodrigo', 44, 54, 15.00000, 'jshdf df', true, true, 11, 5);
INSERT INTO public.moon VALUES ('armante', 44, 54, 15.00000, 'jshdf df', true, true, 10, 6);
INSERT INTO public.moon VALUES ('ravi', 44, 54, 15.00000, 'jshdf df', true, true, 9, 7);
INSERT INTO public.moon VALUES ('teja', 44, 54, 15.00000, 'jshdf df', true, true, 8, 8);
INSERT INTO public.moon VALUES ('tejaji', 44, 54, 15.00000, 'jshdf df', true, true, 7, 9);
INSERT INTO public.moon VALUES ('rock', 44, 54, 15.00000, 'jshdf df', true, true, 7, 10);
INSERT INTO public.moon VALUES ('rocky', 44, 54, 15.00000, 'jshdf df', true, true, 7, 11);
INSERT INTO public.moon VALUES ('rockey', 44, 54, 15.00000, 'jshdf df', true, true, 7, 12);
INSERT INTO public.moon VALUES ('roc-key', 44, 54, 15.00000, 'jshdf df', true, true, 6, 13);
INSERT INTO public.moon VALUES ('lkha', 44, 54, 15.00000, 'jshdf df', true, true, 13, 14);
INSERT INTO public.moon VALUES ('lalala', 44, 54, 15.00000, 'jshdf df', true, true, 15, 15);
INSERT INTO public.moon VALUES ('brue', 44, 54, 15.00000, 'jshdf df', true, true, 12, 16);
INSERT INTO public.moon VALUES ('bruce', 44, 54, 15.00000, 'jshdf df', true, true, 11, 17);
INSERT INTO public.moon VALUES ('bruce wyane', 44, 54, 15.00000, 'jshdf df', true, true, 11, 18);
INSERT INTO public.moon VALUES ('bat wyane', 44, 54, 15.00000, 'jshdf df', true, true, 11, 19);
INSERT INTO public.moon VALUES ('batman', 44, 54, 15.00000, 'jshdf df', true, true, 11, 20);
INSERT INTO public.moon VALUES ('batman sigma', 44, 54, 15.00000, 'jshdf df', true, true, 11, 21);
INSERT INTO public.moon VALUES ('got', 44, 54, 15.00000, 'jshdf df', true, true, 11, 22);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'sansa', 23, 50, 'hey hey', true, true, 5, 3.0000);
INSERT INTO public.planet VALUES (4, 'dhairya', 12, 50, 'shhdi idj', false, true, 3, 4.0000);
INSERT INTO public.planet VALUES (5, 'san', 23, 50, 'hey hey', true, true, 5, 3.0000);
INSERT INTO public.planet VALUES (6, 'dhai', 12, 50, 'shhdi idj', false, true, 3, 4.0000);
INSERT INTO public.planet VALUES (7, 'RN', 23, 50, 'hey hey', true, true, 2, 3.0000);
INSERT INTO public.planet VALUES (8, 'ai', 12, 50, 'shhdi idj', false, true, 4, 4.0000);
INSERT INTO public.planet VALUES (9, 'ster', 23, 50, 'hey hey', true, true, 2, 3.0000);
INSERT INTO public.planet VALUES (10, 'bol', 12, 50, 'shhdi idj', false, true, 1, 4.0000);
INSERT INTO public.planet VALUES (11, 'BD', 23, 50, 'hey hey', true, true, 2, 3.0000);
INSERT INTO public.planet VALUES (12, 'rn kao', 12, 50, 'shhdi idj', false, true, 1, 4.0000);
INSERT INTO public.planet VALUES (13, 'cooper', 23, 50, 'hey hey', true, true, 2, 3.0000);
INSERT INTO public.planet VALUES (14, 'rd burman', 12, 50, 'shhdi idj', false, true, 1, 4.0000);
INSERT INTO public.planet VALUES (15, 'hind', 23, 50, 'hey hey', true, true, 2, 3.0000);
INSERT INTO public.planet VALUES (16, 'burman', 12, 50, 'shhdi idj', false, true, 1, 4.0000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Me', 50, 500, true, false, 0.0000, 'it aint me', 5);
INSERT INTO public.star VALUES (2, 'Logan', 80, 654, false, true, 5.0000, 'blh blah', 2);
INSERT INTO public.star VALUES (3, 'Kendall', 789, 456, true, true, 3.0000, 'nasedi', 4);
INSERT INTO public.star VALUES (4, 'Greg', 32, 12, true, true, 8.0000, 'Gregory', 1);
INSERT INTO public.star VALUES (5, 'TOM', 50, 500, true, false, 0.0000, 'it aint me', 6);
INSERT INTO public.star VALUES (6, 'Shivon', 80, 654, false, true, 5.0000, 'blh blah', 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: god_god_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.god_god_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy constraintname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT constraintname UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: god god_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.god
    ADD CONSTRAINT god_name_key UNIQUE (name);


--
-- Name: god god_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.god
    ADD CONSTRAINT god_pkey PRIMARY KEY (god_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

