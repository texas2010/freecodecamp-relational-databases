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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    star_id integer
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
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer
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
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    moon_id integer
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    planet_id integer
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
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, '93j6ji', 'xcli87', 4201, 1);
INSERT INTO public.galaxy VALUES (2, 'k5q1cg', '2kvt5p', 3396, 2);
INSERT INTO public.galaxy VALUES (3, 'g3fkio', '3i559t', 3177, 3);
INSERT INTO public.galaxy VALUES (4, 'l6ttus', 'ixu54f', 2719, 4);
INSERT INTO public.galaxy VALUES (5, '6i1scu', 'phfddz', 7296, 5);
INSERT INTO public.galaxy VALUES (6, '9sc989', 'h3zyp7', 4635, 6);
INSERT INTO public.galaxy VALUES (7, '1f7vnz', 'sf504u', 9042, 7);
INSERT INTO public.galaxy VALUES (8, 'glmh01', '1ecw09', 898, 8);
INSERT INTO public.galaxy VALUES (9, 'mpi56i', 'm7c2am', 1256, 9);
INSERT INTO public.galaxy VALUES (10, 'q2ur6y', '84gkmn', 430, 10);
INSERT INTO public.galaxy VALUES (11, 'bgmmwz', '75hu5s', 2075, 11);
INSERT INTO public.galaxy VALUES (12, 'le0adp', '6ghsar', 4150, 12);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'ety0k0', 'mu4rx2', false, 4627);
INSERT INTO public.moon VALUES (2, 'aurpbg', 'z02ocb', true, 9728);
INSERT INTO public.moon VALUES (3, 'e3gfst', 'rnp5hg', true, 2812);
INSERT INTO public.moon VALUES (4, 'rcelva', 'njfebp', false, 2745);
INSERT INTO public.moon VALUES (5, 'flqz1s', 'h2i6lo', false, 9729);
INSERT INTO public.moon VALUES (6, 'ro0g2g', '6kwe3x', true, 7319);
INSERT INTO public.moon VALUES (7, 'pcktop', 'qwsqfy', true, 2618);
INSERT INTO public.moon VALUES (8, 'og44la', 'ps9uph', false, 4352);
INSERT INTO public.moon VALUES (9, 'ayls9m', '609lpv', false, 3214);
INSERT INTO public.moon VALUES (10, 'bm1uy4', '6xv1rh', false, 9204);
INSERT INTO public.moon VALUES (11, 'tb0338', '7zj5ol', false, 669);
INSERT INTO public.moon VALUES (12, '6cjobt', 'ienp7k', false, 5307);
INSERT INTO public.moon VALUES (13, 'nvww26', 'w36yfn', true, 5967);
INSERT INTO public.moon VALUES (14, 'k8lsa0', 'aglxwj', false, 7792);
INSERT INTO public.moon VALUES (15, '258g7s', 'gn9log', true, 203);
INSERT INTO public.moon VALUES (16, 'qb5rdv', 'cscv3h', false, 3894);
INSERT INTO public.moon VALUES (17, 'wivzbp', '70e8ns', true, 9629);
INSERT INTO public.moon VALUES (18, '0ypoao', 'hixiho', false, 9202);
INSERT INTO public.moon VALUES (19, '3ojn6o', '5ew41t', false, 3110);
INSERT INTO public.moon VALUES (20, 'mdkbci', '4l954d', true, 5723);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'vr9w70', 'jb0cfo', false, 3389, 2411, 1);
INSERT INTO public.planet VALUES (2, '7cgke0', 'chv11c', false, 2570, 5074, 2);
INSERT INTO public.planet VALUES (3, 'wiyu1z', 'mxnqhb', false, 4911, 438, 3);
INSERT INTO public.planet VALUES (4, 're1zoh', 'pg1ud7', true, 1484, 1182, 4);
INSERT INTO public.planet VALUES (5, 'x4oa76', 'k1tsfs', false, 9483, 438, 5);
INSERT INTO public.planet VALUES (6, 'nyxt2w', 'yl5q3c', false, 3846, 8253, 6);
INSERT INTO public.planet VALUES (7, 'x8vgrk', 'bua2so', false, 5689, 2226, 7);
INSERT INTO public.planet VALUES (8, 'ek8sw4', '4hb5yr', true, 2679, 6005, 8);
INSERT INTO public.planet VALUES (9, 'xz49kb', 'wzhmwz', false, 418, 4324, 9);
INSERT INTO public.planet VALUES (10, 'jeq9bc', '749wye', true, 5477, 1991, 10);
INSERT INTO public.planet VALUES (11, 'um9ne5', 'cyql99', false, 1975, 8631, 11);
INSERT INTO public.planet VALUES (12, '3nlecj', 'lp4byt', true, 9509, 3595, 12);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'le7nde', 'l4p3re', true, 184);
INSERT INTO public.planet_types VALUES (2, 'w0zhap', 'dw53xv', true, 7123);
INSERT INTO public.planet_types VALUES (3, 'ox5qzi', '0q8k9d', false, 8564);
INSERT INTO public.planet_types VALUES (4, 'y9omhu', '0c9z6l', false, 9206);
INSERT INTO public.planet_types VALUES (5, 'qzlk5x', '0920ho', false, 618);
INSERT INTO public.planet_types VALUES (6, '347sz6', 'jpmyqg', false, 2827);
INSERT INTO public.planet_types VALUES (7, 'b8an9p', 'gevsef', false, 8332);
INSERT INTO public.planet_types VALUES (8, 'fw8zpk', '09eumh', false, 6106);
INSERT INTO public.planet_types VALUES (9, '3flupr', 'sozvsj', false, 459);
INSERT INTO public.planet_types VALUES (10, '6tnll3', 'wmqoek', false, 9686);
INSERT INTO public.planet_types VALUES (11, 'vy1t5o', 'md8dab', true, 8167);
INSERT INTO public.planet_types VALUES (12, 'gqoamw', 'z44yir', true, 759);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'lgfe6e', '5ohx9y', 7543, 1);
INSERT INTO public.star VALUES (2, '5uhbtn', 'lw854l', 6779, 2);
INSERT INTO public.star VALUES (3, 'a2od5d', 'oma4jq', 1074, 3);
INSERT INTO public.star VALUES (4, 'a3csox', 'i35j5r', 3535, 4);
INSERT INTO public.star VALUES (5, 'dir09n', 'q8hohn', 8538, 5);
INSERT INTO public.star VALUES (6, 'hcy27w', '2nlfnc', 3349, 6);
INSERT INTO public.star VALUES (7, 'tw1dy8', 'xjijtv', 7306, 7);
INSERT INTO public.star VALUES (8, 'fo42lr', 'cdr362', 9654, 8);
INSERT INTO public.star VALUES (9, 'f8q0jt', '8ehlfz', 3954, 9);
INSERT INTO public.star VALUES (10, 'mb15uv', 'kxiikg', 160, 10);
INSERT INTO public.star VALUES (11, 'a0mwi3', 'bq3mhz', 5321, 11);
INSERT INTO public.star VALUES (12, '0u2w31', 'v1rcrv', 7454, 12);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: star star_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

