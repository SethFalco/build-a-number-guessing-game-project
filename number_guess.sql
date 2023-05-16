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

DROP DATABASE number_guessing;
--
-- Name: number_guessing; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guessing WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guessing OWNER TO freecodecamp;

\connect number_guessing

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
    guesses integer NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (81, 56, 242);
INSERT INTO public.games VALUES (82, 58, 749);
INSERT INTO public.games VALUES (83, 58, 18);
INSERT INTO public.games VALUES (84, 56, 124);
INSERT INTO public.games VALUES (85, 56, 860);
INSERT INTO public.games VALUES (86, 56, 998);
INSERT INTO public.games VALUES (87, 59, 446);
INSERT INTO public.games VALUES (88, 59, 711);
INSERT INTO public.games VALUES (89, 61, 108);
INSERT INTO public.games VALUES (90, 61, 95);
INSERT INTO public.games VALUES (91, 59, 512);
INSERT INTO public.games VALUES (92, 59, 127);
INSERT INTO public.games VALUES (93, 59, 665);
INSERT INTO public.games VALUES (94, 62, 254);
INSERT INTO public.games VALUES (95, 62, 592);
INSERT INTO public.games VALUES (96, 63, 675);
INSERT INTO public.games VALUES (97, 63, 406);
INSERT INTO public.games VALUES (98, 62, 752);
INSERT INTO public.games VALUES (99, 62, 19);
INSERT INTO public.games VALUES (100, 62, 610);
INSERT INTO public.games VALUES (101, 64, 986);
INSERT INTO public.games VALUES (102, 64, 206);
INSERT INTO public.games VALUES (103, 65, 156);
INSERT INTO public.games VALUES (104, 65, 261);
INSERT INTO public.games VALUES (105, 64, 835);
INSERT INTO public.games VALUES (106, 64, 294);
INSERT INTO public.games VALUES (107, 64, 244);
INSERT INTO public.games VALUES (108, 66, 176);
INSERT INTO public.games VALUES (109, 66, 871);
INSERT INTO public.games VALUES (110, 67, 42);
INSERT INTO public.games VALUES (111, 67, 341);
INSERT INTO public.games VALUES (112, 66, 138);
INSERT INTO public.games VALUES (113, 66, 95);
INSERT INTO public.games VALUES (114, 66, 403);
INSERT INTO public.games VALUES (115, 68, 687);
INSERT INTO public.games VALUES (116, 68, 58);
INSERT INTO public.games VALUES (117, 69, 390);
INSERT INTO public.games VALUES (118, 69, 854);
INSERT INTO public.games VALUES (119, 68, 152);
INSERT INTO public.games VALUES (120, 68, 105);
INSERT INTO public.games VALUES (121, 68, 406);
INSERT INTO public.games VALUES (122, 70, 510);
INSERT INTO public.games VALUES (123, 70, 677);
INSERT INTO public.games VALUES (124, 71, 24);
INSERT INTO public.games VALUES (125, 71, 192);
INSERT INTO public.games VALUES (126, 70, 994);
INSERT INTO public.games VALUES (127, 70, 116);
INSERT INTO public.games VALUES (128, 70, 474);
INSERT INTO public.games VALUES (129, 72, 890);
INSERT INTO public.games VALUES (130, 72, 146);
INSERT INTO public.games VALUES (131, 73, 734);
INSERT INTO public.games VALUES (132, 73, 77);
INSERT INTO public.games VALUES (133, 72, 497);
INSERT INTO public.games VALUES (134, 72, 727);
INSERT INTO public.games VALUES (135, 72, 966);
INSERT INTO public.games VALUES (136, 74, 21);
INSERT INTO public.games VALUES (137, 74, 923);
INSERT INTO public.games VALUES (138, 75, 933);
INSERT INTO public.games VALUES (139, 75, 277);
INSERT INTO public.games VALUES (140, 74, 481);
INSERT INTO public.games VALUES (141, 74, 121);
INSERT INTO public.games VALUES (142, 74, 991);
INSERT INTO public.games VALUES (143, 76, 142);
INSERT INTO public.games VALUES (144, 76, 445);
INSERT INTO public.games VALUES (145, 77, 836);
INSERT INTO public.games VALUES (146, 77, 546);
INSERT INTO public.games VALUES (147, 76, 869);
INSERT INTO public.games VALUES (148, 76, 879);
INSERT INTO public.games VALUES (149, 76, 923);
INSERT INTO public.games VALUES (150, 78, 953);
INSERT INTO public.games VALUES (151, 78, 181);
INSERT INTO public.games VALUES (152, 79, 885);
INSERT INTO public.games VALUES (153, 79, 580);
INSERT INTO public.games VALUES (154, 78, 789);
INSERT INTO public.games VALUES (155, 78, 917);
INSERT INTO public.games VALUES (156, 78, 689);
INSERT INTO public.games VALUES (157, 81, 68);
INSERT INTO public.games VALUES (158, 81, 446);
INSERT INTO public.games VALUES (159, 82, 747);
INSERT INTO public.games VALUES (160, 82, 937);
INSERT INTO public.games VALUES (161, 81, 196);
INSERT INTO public.games VALUES (162, 81, 924);
INSERT INTO public.games VALUES (163, 81, 899);
INSERT INTO public.games VALUES (164, 83, 679);
INSERT INTO public.games VALUES (165, 84, 906);
INSERT INTO public.games VALUES (166, 84, 349);
INSERT INTO public.games VALUES (167, 83, 798);
INSERT INTO public.games VALUES (168, 83, 339);
INSERT INTO public.games VALUES (169, 83, 502);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (56, 'user_1684263376182');
INSERT INTO public.users VALUES (58, 'user_1684263376181');
INSERT INTO public.users VALUES (59, 'user_1684263416347');
INSERT INTO public.users VALUES (61, 'user_1684263416346');
INSERT INTO public.users VALUES (62, 'user_1684263461345');
INSERT INTO public.users VALUES (63, 'user_1684263461344');
INSERT INTO public.users VALUES (64, 'user_1684263473330');
INSERT INTO public.users VALUES (65, 'user_1684263473329');
INSERT INTO public.users VALUES (66, 'user_1684263481420');
INSERT INTO public.users VALUES (67, 'user_1684263481419');
INSERT INTO public.users VALUES (68, 'user_1684263508197');
INSERT INTO public.users VALUES (69, 'user_1684263508196');
INSERT INTO public.users VALUES (70, 'user_1684263517173');
INSERT INTO public.users VALUES (71, 'user_1684263517172');
INSERT INTO public.users VALUES (72, 'user_1684263525547');
INSERT INTO public.users VALUES (73, 'user_1684263525546');
INSERT INTO public.users VALUES (74, 'user_1684263542567');
INSERT INTO public.users VALUES (75, 'user_1684263542566');
INSERT INTO public.users VALUES (76, 'user_1684263551236');
INSERT INTO public.users VALUES (77, 'user_1684263551235');
INSERT INTO public.users VALUES (78, 'user_1684263619480');
INSERT INTO public.users VALUES (79, 'user_1684263619479');
INSERT INTO public.users VALUES (81, 'user_1684263645983');
INSERT INTO public.users VALUES (82, 'user_1684263645982');
INSERT INTO public.users VALUES (83, 'user_1684263769728');
INSERT INTO public.users VALUES (84, 'user_1684263769727');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 169, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 84, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--
