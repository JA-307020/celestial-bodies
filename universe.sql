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
    name character varying(25) NOT NULL,
    age_in_millions_of_years numeric(4,2),
    description text,
    size integer
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(15) NOT NULL,
    diameter integer,
    is_spherical boolean,
    planet_id integer
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
    name character varying(25) NOT NULL,
    description text,
    has_life boolean,
    star_id integer
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
-- Name: pulsar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.pulsar (
    pulsar_id integer NOT NULL,
    name character varying(15) NOT NULL,
    distance_in_parsecs integer,
    age numeric(3,3),
    description text
);


ALTER TABLE public.pulsar OWNER TO freecodecamp;

--
-- Name: pulsar_pulsar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.pulsar_pulsar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pulsar_pulsar_id_seq OWNER TO freecodecamp;

--
-- Name: pulsar_pulsar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.pulsar_pulsar_id_seq OWNED BY public.pulsar.pulsar_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(25) NOT NULL,
    distance_from_earth numeric(4,2),
    type character varying(25),
    diameter integer,
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: pulsar pulsar_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pulsar ALTER COLUMN pulsar_id SET DEFAULT nextval('public.pulsar_pulsar_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 3.20, 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way.', 152000);
INSERT INTO public.galaxy VALUES (4, 'Backward Galaxy', 1.50, 'It appears to rotate backwards, as the tips of the spiral arms point in the direction of rotation.', 120000);
INSERT INTO public.galaxy VALUES (5, 'Bear Paw', NULL, 'It resembles the shape of a bear paw.', 53000);
INSERT INTO public.galaxy VALUES (6, 'Blinking Galaxy', 7.30, 'Its difficulty of viewing in a small telescope and tendency to go in and out of view.', 7658000);
INSERT INTO public.galaxy VALUES (7, 'Cigar Galaxy', NULL, 'Appears similar in shape to a cigar.', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 10000, true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 11, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 6, false, 4);
INSERT INTO public.moon VALUES (4, 'Metis', NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Adrastea', NULL, NULL, 4);
INSERT INTO public.moon VALUES (6, 'Amalthea', NULL, NULL, 8);
INSERT INTO public.moon VALUES (7, 'Thebe', NULL, NULL, 8);
INSERT INTO public.moon VALUES (8, 'Ganymede', NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'Callisto', NULL, NULL, 8);
INSERT INTO public.moon VALUES (10, 'Io', NULL, NULL, 8);
INSERT INTO public.moon VALUES (11, 'Europa', NULL, NULL, 8);
INSERT INTO public.moon VALUES (12, 'Mimas', NULL, NULL, 9);
INSERT INTO public.moon VALUES (13, 'Enceladus', NULL, NULL, 9);
INSERT INTO public.moon VALUES (14, 'Tethys', NULL, NULL, 9);
INSERT INTO public.moon VALUES (15, 'Dione', NULL, NULL, 9);
INSERT INTO public.moon VALUES (16, 'Rhea', NULL, NULL, 9);
INSERT INTO public.moon VALUES (17, 'Titan', NULL, NULL, 9);
INSERT INTO public.moon VALUES (18, 'Hyperion', NULL, NULL, 9);
INSERT INTO public.moon VALUES (19, 'Iapetus', NULL, NULL, 9);
INSERT INTO public.moon VALUES (20, 'Phoebe', NULL, NULL, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercury is the first planet from the Sun and the smallest in the Solar System.', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus has a reflective whitish atmosphere that is mainly composed of carbon dioxide.', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Earth is the only place in the universewhere life and surface liquid water are known to exist.', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Most of the planet is red due to iron oxide in Martian soil, and the polar regions are covered in white ice caps made of water and carbon dioxide.', false, 1);
INSERT INTO public.planet VALUES (5, 'Ceres', 'It is the only dwarf planet in the asteroid belt.', false, 1);
INSERT INTO public.planet VALUES (6, 'Vesta', 'The surface is dominated by basaltic and metamorphic material and has a denser composition than Ceres.', false, 1);
INSERT INTO public.planet VALUES (7, 'Pallas', 'Not much is known about Pallas because it has never been visited by a spacecraft, though its surface is predicted to be composed of silicates.', false, 1);
INSERT INTO public.planet VALUES (8, 'Jupiter', 'Jupiter is the biggest and most massive planet in the Solar System.', false, 1);
INSERT INTO public.planet VALUES (9, 'Saturn', 'Saturn has a distinctive visible ring system orbiting around its equator composed of small ice and rock particles. Like Jupiter, it is mostly made of hydrogen and helium.', false, 1);
INSERT INTO public.planet VALUES (10, 'Uranus', 'Uniquely among planets.', false, 1);
INSERT INTO public.planet VALUES (11, 'Neptune', 'It is the furthest planet known in the Solar System', false, 1);
INSERT INTO public.planet VALUES (12, 'Pluto', 'It is the largest known object in the Kuiper belt.', false, 1);


--
-- Data for Name: pulsar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.pulsar VALUES (1, 'J0030', 244, 0.580, NULL);
INSERT INTO public.pulsar VALUES (2, 'Vela Pulsar', NULL, NULL, 'The brightest radio pulsar.');
INSERT INTO public.pulsar VALUES (3, 'PSR J0737-3039', NULL, NULL, 'The first souble pulsar binary system.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1.00, 'Yellow Dwarf', 864600, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 4.34, 'Yellow Dwarf', NULL, 1);
INSERT INTO public.star VALUES (3, 'Alpheratz', NULL, 'Double', 2, 3);
INSERT INTO public.star VALUES (4, 'sn 2001jx', NULL, 'Supernova', 18, 4);
INSERT INTO public.star VALUES (5, 'SN 2004dk', NULL, 'Supernova', NULL, 6);
INSERT INTO public.star VALUES (6, 'SN 2014j', NULL, 'Type II Supernova', NULL, 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: pulsar_pulsar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.pulsar_pulsar_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: pulsar pulsar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pulsar
    ADD CONSTRAINT pulsar_pkey PRIMARY KEY (pulsar_id);


--
-- Name: pulsar pulsar_pulsar_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.pulsar
    ADD CONSTRAINT pulsar_pulsar_id_key UNIQUE (pulsar_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

