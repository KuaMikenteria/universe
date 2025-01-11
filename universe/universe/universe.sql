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
    name character varying(255) NOT NULL,
    size integer NOT NULL,
    distance numeric(15,2) NOT NULL,
    detail text NOT NULL
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
-- Name: info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.info (
    info_id integer NOT NULL,
    name character varying(255) NOT NULL,
    detail text NOT NULL
);


ALTER TABLE public.info OWNER TO freecodecamp;

--
-- Name: info_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.info_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.info_info_id_seq OWNER TO freecodecamp;

--
-- Name: info_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.info_info_id_seq OWNED BY public.info.info_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size integer NOT NULL,
    distance numeric(15,2) NOT NULL,
    detail text NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(255) NOT NULL,
    size integer NOT NULL,
    distance numeric(15,2) NOT NULL,
    detail text NOT NULL,
    is_inhabited boolean NOT NULL,
    is_safe boolean NOT NULL,
    star_id integer NOT NULL
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
    name character varying(255) NOT NULL,
    size integer NOT NULL,
    distance numeric(15,2) NOT NULL,
    detail text NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: info info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info ALTER COLUMN info_id SET DEFAULT nextval('public.info_info_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1000000, 0.00, 'tons of stars');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 200000, 2.54, 'cool galaxy');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 60000, 3.00, 'rare galaxy');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 75000, 10.00, 'kinda galaxy');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 120000, 28.00, 'cheezy galaxy');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 95000, 22.00, 'confusing galaxy');


--
-- Data for Name: info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.info VALUES (1, 'BlackHole', 'dark matter');
INSERT INTO public.info VALUES (2, 'SuperNova', 'boomer stars');
INSERT INTO public.info VALUES (3, 'BigBang', 'bang bang bang');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 300, 0.90, 'high tide', 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 11, 0.00, 'Largest moon of Mars', 3);
INSERT INTO public.moon VALUES (3, 'Deimos', 6, 0.02, 'Small moon of Mars', 3);
INSERT INTO public.moon VALUES (4, 'Europa', 3121, 0.67, 'Ice-covered moon of Jupiter', 4);
INSERT INTO public.moon VALUES (5, 'Io', 3643, 0.42, 'Volcanic moon of Jupiter', 4);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5268, 1.07, 'Largest moon in the solar system, of Jupiter', 4);
INSERT INTO public.moon VALUES (7, 'Callisto', 4800, 1.88, 'Icy moon of Jupiter', 4);
INSERT INTO public.moon VALUES (8, 'Titan', 5150, 1.22, 'Largest moon of Saturn, thick atmosphere', 5);
INSERT INTO public.moon VALUES (9, 'Rhea', 1528, 0.53, 'Moon of Saturn, icy surface', 5);
INSERT INTO public.moon VALUES (10, 'Iapetus', 1469, 3.56, 'Distinctive two-tone moon of Saturn', 5);
INSERT INTO public.moon VALUES (11, 'Enceladus', 504, 0.24, 'Moon of Saturn, geysers of water', 5);
INSERT INTO public.moon VALUES (12, 'Triton', 2706, 4.36, 'Largest moon of Neptune, retrograde orbit', 7);
INSERT INTO public.moon VALUES (13, 'Charon', 1212, 0.00, 'Largest moon of Pluto', 8);
INSERT INTO public.moon VALUES (14, 'Mimas', 396, 0.19, 'Moon of Saturn, resembles the Death Star', 5);
INSERT INTO public.moon VALUES (15, 'Miranda', 471, 0.00, 'Moon of Uranus, rugged terrain', 6);
INSERT INTO public.moon VALUES (16, 'Ariel', 1158, 0.00, 'Moon of Uranus, icy surface', 6);
INSERT INTO public.moon VALUES (17, 'Umbriel', 1170, 0.00, 'Moon of Uranus, dark and cratered', 6);
INSERT INTO public.moon VALUES (18, 'Titania', 1578, 0.00, 'Largest moon of Uranus', 6);
INSERT INTO public.moon VALUES (19, 'Oberon', 1523, 0.01, 'Second largest moon of Uranus', 6);
INSERT INTO public.moon VALUES (20, 'Hyperion', 270, 1.48, 'Irregular moon of Saturn', 5);
INSERT INTO public.moon VALUES (21, 'Pan', 20, 0.00, 'Small moon of Saturn, within rings', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1000, 1.10, 'corrupt world', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 3800, 0.39, 'Hot, closest to the Sun', false, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 9500, 0.72, 'Hot, thick clouds, acidic atmosphere', false, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 6800, 1.52, 'Red planet, potential for future habitation', true, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 139820, 5.20, 'Largest planet, gas giant', false, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 116460, 9.58, 'Famous for its rings', false, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 50724, 19.18, 'Gas giant, tilted axis', false, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 49528, 30.07, 'Cold, blue gas giant', false, false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 2300, 39.48, 'Dwarf planet, icy world', false, false, 1);
INSERT INTO public.planet VALUES (10, 'Ceres', 940, 2.77, 'Largest asteroid in the asteroid belt', false, false, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', 1600, 43.13, 'Dwarf planet, elongated shape', false, false, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', 1500, 45.79, 'Dwarf planet, cold and distant', false, false, 1);
INSERT INTO public.planet VALUES (13, 'Eris', 2300, 67.67, 'Distant, icy dwarf planet', false, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 200000, 3.90, 'summer star', 1);
INSERT INTO public.star VALUES (2, 'Sirius', 18328, 2.37, 'cool star', 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 119326, 2.20, 'strong star', 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 15331, 1.80, 'sad star', 4);
INSERT INTO public.star VALUES (5, 'Rigel', 168330, 2.10, 'weird star', 6);
INSERT INTO public.star VALUES (6, 'Vega', 248326, 25.50, 'Saiyan star', 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: info_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.info_info_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: info info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT info_name_key UNIQUE (name);


--
-- Name: info info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT info_pkey PRIMARY KEY (info_id);


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
-- Name: moon moon_planet_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey1 FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_star_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey1 FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

