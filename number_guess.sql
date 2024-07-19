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
    user_id integer,
    number_guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22)
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
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 882);
INSERT INTO public.games VALUES (1, 276);
INSERT INTO public.games VALUES (2, 472);
INSERT INTO public.games VALUES (2, 522);
INSERT INTO public.games VALUES (1, 41);
INSERT INTO public.games VALUES (1, 614);
INSERT INTO public.games VALUES (1, 753);
INSERT INTO public.games VALUES (3, 361);
INSERT INTO public.games VALUES (3, 115);
INSERT INTO public.games VALUES (4, 575);
INSERT INTO public.games VALUES (4, 383);
INSERT INTO public.games VALUES (3, 508);
INSERT INTO public.games VALUES (3, 185);
INSERT INTO public.games VALUES (3, 358);
INSERT INTO public.games VALUES (5, 510);
INSERT INTO public.games VALUES (5, 150);
INSERT INTO public.games VALUES (6, 607);
INSERT INTO public.games VALUES (6, 796);
INSERT INTO public.games VALUES (5, 359);
INSERT INTO public.games VALUES (5, 194);
INSERT INTO public.games VALUES (5, 741);
INSERT INTO public.games VALUES (7, 120);
INSERT INTO public.games VALUES (7, 453);
INSERT INTO public.games VALUES (8, 604);
INSERT INTO public.games VALUES (8, 716);
INSERT INTO public.games VALUES (7, 303);
INSERT INTO public.games VALUES (7, 782);
INSERT INTO public.games VALUES (7, 124);
INSERT INTO public.games VALUES (16, 281);
INSERT INTO public.games VALUES (16, 496);
INSERT INTO public.games VALUES (17, 644);
INSERT INTO public.games VALUES (17, 895);
INSERT INTO public.games VALUES (16, 301);
INSERT INTO public.games VALUES (16, 445);
INSERT INTO public.games VALUES (16, 738);
INSERT INTO public.games VALUES (18, 24);
INSERT INTO public.games VALUES (18, 11);
INSERT INTO public.games VALUES (18, 15);
INSERT INTO public.games VALUES (19, 927);
INSERT INTO public.games VALUES (19, 413);
INSERT INTO public.games VALUES (20, 641);
INSERT INTO public.games VALUES (20, 441);
INSERT INTO public.games VALUES (19, 295);
INSERT INTO public.games VALUES (19, 102);
INSERT INTO public.games VALUES (19, 968);
INSERT INTO public.games VALUES (21, 791);
INSERT INTO public.games VALUES (21, 756);
INSERT INTO public.games VALUES (22, 840);
INSERT INTO public.games VALUES (22, 481);
INSERT INTO public.games VALUES (21, 433);
INSERT INTO public.games VALUES (21, 847);
INSERT INTO public.games VALUES (21, 884);
INSERT INTO public.games VALUES (23, 226);
INSERT INTO public.games VALUES (23, 858);
INSERT INTO public.games VALUES (24, 177);
INSERT INTO public.games VALUES (24, 212);
INSERT INTO public.games VALUES (23, 601);
INSERT INTO public.games VALUES (23, 474);
INSERT INTO public.games VALUES (23, 775);
INSERT INTO public.games VALUES (25, 39);
INSERT INTO public.games VALUES (25, 579);
INSERT INTO public.games VALUES (26, 523);
INSERT INTO public.games VALUES (26, 289);
INSERT INTO public.games VALUES (25, 269);
INSERT INTO public.games VALUES (25, 183);
INSERT INTO public.games VALUES (25, 21);
INSERT INTO public.games VALUES (27, 20);
INSERT INTO public.games VALUES (27, 104);
INSERT INTO public.games VALUES (28, 370);
INSERT INTO public.games VALUES (28, 31);
INSERT INTO public.games VALUES (27, 874);
INSERT INTO public.games VALUES (27, 103);
INSERT INTO public.games VALUES (27, 845);
INSERT INTO public.games VALUES (29, 261);
INSERT INTO public.games VALUES (29, 702);
INSERT INTO public.games VALUES (30, 766);
INSERT INTO public.games VALUES (30, 399);
INSERT INTO public.games VALUES (29, 530);
INSERT INTO public.games VALUES (29, 298);
INSERT INTO public.games VALUES (29, 333);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1721423688333');
INSERT INTO public.users VALUES (2, 'user_1721423688332');
INSERT INTO public.users VALUES (3, 'user_1721423711607');
INSERT INTO public.users VALUES (4, 'user_1721423711606');
INSERT INTO public.users VALUES (5, 'user_1721423765092');
INSERT INTO public.users VALUES (6, 'user_1721423765091');
INSERT INTO public.users VALUES (7, 'user_1721423799652');
INSERT INTO public.users VALUES (8, 'user_1721423799651');
INSERT INTO public.users VALUES (9, 'user_1721423846533');
INSERT INTO public.users VALUES (10, 'user_1721423846533');
INSERT INTO public.users VALUES (11, 'user_1721423846532');
INSERT INTO public.users VALUES (12, 'user_1721423846532');
INSERT INTO public.users VALUES (13, 'user_1721423846533');
INSERT INTO public.users VALUES (14, 'user_1721423846533');
INSERT INTO public.users VALUES (15, 'user_1721423846533');
INSERT INTO public.users VALUES (16, 'user_1721423863349');
INSERT INTO public.users VALUES (17, 'user_1721423863348');
INSERT INTO public.users VALUES (18, 'das');
INSERT INTO public.users VALUES (19, 'user_1721424069747');
INSERT INTO public.users VALUES (20, 'user_1721424069746');
INSERT INTO public.users VALUES (21, 'user_1721424192129');
INSERT INTO public.users VALUES (22, 'user_1721424192128');
INSERT INTO public.users VALUES (23, 'user_1721424226042');
INSERT INTO public.users VALUES (24, 'user_1721424226041');
INSERT INTO public.users VALUES (25, 'user_1721424323282');
INSERT INTO public.users VALUES (26, 'user_1721424323281');
INSERT INTO public.users VALUES (27, 'user_1721424339074');
INSERT INTO public.users VALUES (28, 'user_1721424339073');
INSERT INTO public.users VALUES (29, 'user_1721424362011');
INSERT INTO public.users VALUES (30, 'user_1721424362010');


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 30, true);


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

