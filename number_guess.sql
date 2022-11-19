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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    number_of_guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (194, 118, 0);
INSERT INTO public.games VALUES (195, 118, 0);
INSERT INTO public.games VALUES (196, 118, 0);
INSERT INTO public.games VALUES (197, 118, 0);
INSERT INTO public.games VALUES (198, 118, 0);
INSERT INTO public.games VALUES (199, 118, 0);
INSERT INTO public.games VALUES (200, 118, 10);
INSERT INTO public.games VALUES (201, 119, 924);
INSERT INTO public.games VALUES (202, 119, 105);
INSERT INTO public.games VALUES (203, 120, 928);
INSERT INTO public.games VALUES (204, 120, 5);
INSERT INTO public.games VALUES (205, 119, 521);
INSERT INTO public.games VALUES (206, 119, 917);
INSERT INTO public.games VALUES (207, 119, 699);
INSERT INTO public.games VALUES (208, 121, 603);
INSERT INTO public.games VALUES (209, 121, 839);
INSERT INTO public.games VALUES (210, 122, 875);
INSERT INTO public.games VALUES (211, 122, 444);
INSERT INTO public.games VALUES (212, 121, 888);
INSERT INTO public.games VALUES (213, 121, 304);
INSERT INTO public.games VALUES (214, 121, 46);
INSERT INTO public.games VALUES (215, 118, 10);
INSERT INTO public.games VALUES (216, 123, 856);
INSERT INTO public.games VALUES (217, 123, 966);
INSERT INTO public.games VALUES (218, 124, 177);
INSERT INTO public.games VALUES (219, 124, 525);
INSERT INTO public.games VALUES (220, 123, 727);
INSERT INTO public.games VALUES (221, 123, 484);
INSERT INTO public.games VALUES (222, 123, 114);
INSERT INTO public.games VALUES (223, 125, 642);
INSERT INTO public.games VALUES (224, 125, 190);
INSERT INTO public.games VALUES (225, 126, 615);
INSERT INTO public.games VALUES (226, 126, 41);
INSERT INTO public.games VALUES (227, 125, 1003);
INSERT INTO public.games VALUES (228, 125, 891);
INSERT INTO public.games VALUES (229, 125, 554);
INSERT INTO public.games VALUES (230, 127, 79);
INSERT INTO public.games VALUES (231, 127, 252);
INSERT INTO public.games VALUES (232, 128, 744);
INSERT INTO public.games VALUES (233, 128, 279);
INSERT INTO public.games VALUES (234, 127, 361);
INSERT INTO public.games VALUES (235, 127, 884);
INSERT INTO public.games VALUES (236, 127, 139);
INSERT INTO public.games VALUES (192, 116, 357);
INSERT INTO public.games VALUES (191, 116, 538);
INSERT INTO public.games VALUES (193, 116, 175);
INSERT INTO public.games VALUES (189, 117, 910);
INSERT INTO public.games VALUES (190, 117, 725);
INSERT INTO public.games VALUES (187, 116, 1289);
INSERT INTO public.games VALUES (188, 116, 1101);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (116, 'user_1668879021644');
INSERT INTO public.users VALUES (117, 'user_1668879021643');
INSERT INTO public.users VALUES (118, 'Artur');
INSERT INTO public.users VALUES (119, 'user_1668880537310');
INSERT INTO public.users VALUES (120, 'user_1668880537309');
INSERT INTO public.users VALUES (121, 'user_1668880819455');
INSERT INTO public.users VALUES (122, 'user_1668880819454');
INSERT INTO public.users VALUES (123, 'user_1668880993887');
INSERT INTO public.users VALUES (124, 'user_1668880993886');
INSERT INTO public.users VALUES (125, 'user_1668881053271');
INSERT INTO public.users VALUES (126, 'user_1668881053270');
INSERT INTO public.users VALUES (127, 'user_1668881114642');
INSERT INTO public.users VALUES (128, 'user_1668881114641');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 236, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 128, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

