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
-- Name: comment; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comment (
    comment_id integer NOT NULL,
    comment text,
    name character varying(30) NOT NULL
);


ALTER TABLE public.comment OWNER TO freecodecamp;

--
-- Name: comment_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comment_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comment_comment_id_seq OWNER TO freecodecamp;

--
-- Name: comment_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comment_comment_id_seq OWNED BY public.comment.comment_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(60) NOT NULL,
    galaxy_id integer NOT NULL,
    is_visible boolean,
    info text,
    distance integer
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
    name character varying(60) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    info text,
    size integer
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

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(60) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    info text,
    is_dwarf boolean
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

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(60) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    mag numeric(3,2),
    info text
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

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: comment comment_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comment ALTER COLUMN comment_id SET DEFAULT nextval('public.comment_comment_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comment VALUES (1, '測試', 'Derek');
INSERT INTO public.comment VALUES (2, '收到測試', 'Darlene');
INSERT INTO public.comment VALUES (3, 'Hello World!', 'Derek');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('銀河系', 1, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('仙女座星系', 2, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('大麥哲倫星系', 3, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('小麥哲倫星系', 4, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('半人馬座A', 5, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('M51', 6, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('月球', 1, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('火衛一', 2, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('火衛二', 3, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('木衛一', 4, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('木衛二', 5, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('木衛三', 6, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('木衛四', 7, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('木衛五', 8, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('木衛六', 9, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('木衛七', 10, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('木衛八', 11, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('木衛九', 12, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('木衛十', 13, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('木衛十一', 14, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('木衛十二', 15, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('木衛十三', 16, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('木衛十四', 17, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('木衛十五', 18, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('木衛十六', 19, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('木衛十七', 20, 5, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('水星', 1, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('金星', 2, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('地球', 3, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('火星', 4, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('木星', 5, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('土星', 6, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('天王星', 7, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('海王星', 8, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('冥王星', 9, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('穀神星', 10, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('創神星', 11, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('鬩神星', 12, 1, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('太陽', 1, 1, NULL, NULL);
INSERT INTO public.star VALUES ('天狼星', 2, 1, NULL, NULL);
INSERT INTO public.star VALUES ('織女星', 3, 1, NULL, NULL);
INSERT INTO public.star VALUES ('牛郎星', 4, 1, NULL, NULL);
INSERT INTO public.star VALUES ('R136a1', 5, 3, NULL, NULL);
INSERT INTO public.star VALUES ('S Doradus', 6, 3, NULL, NULL);


--
-- Name: comment_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comment_comment_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: comment comment_comment_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_comment_id_key UNIQUE (comment_id);


--
-- Name: comment comment_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (comment_id);


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

