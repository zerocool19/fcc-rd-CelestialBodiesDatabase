--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric(10,1),
    galaxy_types character varying(20),
    year_of_discovery integer,
    lab_number integer
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
-- Name: ids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ids (
    ids_id integer NOT NULL,
    galaxy integer,
    star integer,
    planet integer,
    moon integer,
    name character varying(50) NOT NULL
);


ALTER TABLE public.ids OWNER TO freecodecamp;

--
-- Name: ids_number_of_object_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ids_number_of_object_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ids_number_of_object_seq OWNER TO freecodecamp;

--
-- Name: ids_number_of_object_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ids_number_of_object_seq OWNED BY public.ids.ids_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric(10,1),
    moon_types character varying(20),
    planet_id integer,
    year_of_discovery integer,
    lab_number integer
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
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric(10,1),
    planet_types character varying(20),
    star_id integer,
    year_of_discovery integer,
    lab_number integer
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
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric(10,1),
    star_types character varying(20),
    galaxy_id integer,
    year_of_discovery integer,
    lab_number integer
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
-- Name: ids ids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ids ALTER COLUMN ids_id SET DEFAULT nextval('public.ids_number_of_object_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Draco II', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Tucana III', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Segue 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sagittarius Drawrf Sphr', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Hydrus I', NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: ids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ids VALUES (1, 1, 0, 0, 0, 'A');
INSERT INTO public.ids VALUES (2, 0, 1, 0, 0, 'B');
INSERT INTO public.ids VALUES (3, 0, 0, 1, 0, 'C');
INSERT INTO public.ids VALUES (4, 0, 0, 0, 1, 'D');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Deimos', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Amalthea', NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Callisto', NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Europa', NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Ganymede', NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Io', NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Dione', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Enceladus', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Hyperion', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Iapetus', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Mimas', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Phoebe', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Rhea', NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Tethys', NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Titan', NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Ariel', NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Miranda', NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Oberon', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Titania', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Umbriel', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'CoRoT-7b', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'HD209458b', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Kepler-186f', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Kepler-452b', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Lynx', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Eridanus', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Cassiopeia', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Scorpius', NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Crux', NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Cancer', NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Leo', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: ids_number_of_object_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ids_number_of_object_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: ids ids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ids
    ADD CONSTRAINT ids_name_key UNIQUE (name);


--
-- Name: ids ids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ids
    ADD CONSTRAINT ids_pkey PRIMARY KEY (ids_id);


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
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

