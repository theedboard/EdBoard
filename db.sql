--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-1.pgdg20.04+1)
-- Dumped by pg_dump version 12.10

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
-- Name: EdWebApp_alumni; Type: TABLE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE TABLE "public"."EdWebApp_alumni" (
    "id" integer NOT NULL,
    "profile_image" character varying(255) NOT NULL,
    "thumbnail_image" character varying(255) NOT NULL,
    "name" character varying(40) NOT NULL,
    "title" character varying(20) NOT NULL,
    "sections" character varying(25) NOT NULL,
    "tagline" character varying(100) NOT NULL,
    "information" "text" NOT NULL,
    "belt" "text" NOT NULL,
    "geek_meter" integer NOT NULL,
    "introversion" integer NOT NULL,
    "peching" integer NOT NULL,
    "paapa_meter" integer NOT NULL,
    "ability" character varying(100) NOT NULL,
    "year_of_recruitment" integer NOT NULL,
    "year_of_graduation" integer NOT NULL,
    "position" character varying(20) NOT NULL
);


ALTER TABLE public."EdWebApp_alumni" OWNER TO dgcwkoncubyteg;

--
-- Name: EdWebApp_alumni_id_seq; Type: SEQUENCE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE SEQUENCE "public"."EdWebApp_alumni_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."EdWebApp_alumni_id_seq" OWNER TO dgcwkoncubyteg;

--
-- Name: EdWebApp_alumni_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dgcwkoncubyteg
--

ALTER SEQUENCE "public"."EdWebApp_alumni_id_seq" OWNED BY "public"."EdWebApp_alumni"."id";


--
-- Name: EdWebApp_event; Type: TABLE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE TABLE "public"."EdWebApp_event" (
    "id" integer NOT NULL,
    "description" "text" NOT NULL,
    "preview_image" character varying(255) NOT NULL,
    "title" character varying(50) NOT NULL
);


ALTER TABLE public."EdWebApp_event" OWNER TO dgcwkoncubyteg;

--
-- Name: EdWebApp_event_id_seq; Type: SEQUENCE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE SEQUENCE "public"."EdWebApp_event_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."EdWebApp_event_id_seq" OWNER TO dgcwkoncubyteg;

--
-- Name: EdWebApp_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dgcwkoncubyteg
--

ALTER SEQUENCE "public"."EdWebApp_event_id_seq" OWNED BY "public"."EdWebApp_event"."id";


--
-- Name: EdWebApp_eventimage; Type: TABLE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE TABLE "public"."EdWebApp_eventimage" (
    "id" integer NOT NULL,
    "images" character varying(255) NOT NULL,
    "event_id" integer NOT NULL
);


ALTER TABLE public."EdWebApp_eventimage" OWNER TO dgcwkoncubyteg;

--
-- Name: EdWebApp_eventimage_id_seq; Type: SEQUENCE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE SEQUENCE "public"."EdWebApp_eventimage_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."EdWebApp_eventimage_id_seq" OWNER TO dgcwkoncubyteg;

--
-- Name: EdWebApp_eventimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dgcwkoncubyteg
--

ALTER SEQUENCE "public"."EdWebApp_eventimage_id_seq" OWNED BY "public"."EdWebApp_eventimage"."id";


--
-- Name: EdWebApp_faq; Type: TABLE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE TABLE "public"."EdWebApp_faq" (
    "id" integer NOT NULL,
    "question" "text" NOT NULL,
    "answer" "text" NOT NULL,
    "topics" character varying(50) NOT NULL,
    "ord" integer NOT NULL
);


ALTER TABLE public."EdWebApp_faq" OWNER TO dgcwkoncubyteg;

--
-- Name: EdWebApp_faq_id_seq; Type: SEQUENCE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE SEQUENCE "public"."EdWebApp_faq_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."EdWebApp_faq_id_seq" OWNER TO dgcwkoncubyteg;

--
-- Name: EdWebApp_faq_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dgcwkoncubyteg
--

ALTER SEQUENCE "public"."EdWebApp_faq_id_seq" OWNED BY "public"."EdWebApp_faq"."id";


--
-- Name: EdWebApp_kr_registration; Type: TABLE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE TABLE "public"."EdWebApp_kr_registration" (
    "id" integer NOT NULL,
    "event_name" character varying(50) NOT NULL,
    "time" character varying(50) NOT NULL,
    "date" character varying(50) NOT NULL,
    "phone_number" character varying(15) NOT NULL,
    "reg_form" character varying(100) NOT NULL
);


ALTER TABLE public."EdWebApp_kr_registration" OWNER TO dgcwkoncubyteg;

--
-- Name: EdWebApp_kr_registration_id_seq; Type: SEQUENCE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE SEQUENCE "public"."EdWebApp_kr_registration_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."EdWebApp_kr_registration_id_seq" OWNER TO dgcwkoncubyteg;

--
-- Name: EdWebApp_kr_registration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dgcwkoncubyteg
--

ALTER SEQUENCE "public"."EdWebApp_kr_registration_id_seq" OWNED BY "public"."EdWebApp_kr_registration"."id";


--
-- Name: EdWebApp_member; Type: TABLE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE TABLE "public"."EdWebApp_member" (
    "id" integer NOT NULL,
    "profile_image" character varying(255) NOT NULL,
    "thumbnail_image" character varying(255) NOT NULL,
    "name" character varying(40) NOT NULL,
    "title" character varying(20) NOT NULL,
    "sections" character varying(25) NOT NULL,
    "tagline" character varying(100) NOT NULL,
    "information" "text" NOT NULL,
    "belt" "text" NOT NULL,
    "geek_meter" integer NOT NULL,
    "introversion" integer NOT NULL,
    "paapa_meter" integer NOT NULL,
    "peching" integer NOT NULL,
    "year_of_recruitement" integer NOT NULL,
    "position" character varying(20) NOT NULL,
    "current_sem" integer NOT NULL,
    "ability" character varying(100) NOT NULL
);


ALTER TABLE public."EdWebApp_member" OWNER TO dgcwkoncubyteg;

--
-- Name: EdWebApp_member_id_seq; Type: SEQUENCE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE SEQUENCE "public"."EdWebApp_member_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."EdWebApp_member_id_seq" OWNER TO dgcwkoncubyteg;

--
-- Name: EdWebApp_member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dgcwkoncubyteg
--

ALTER SEQUENCE "public"."EdWebApp_member_id_seq" OWNED BY "public"."EdWebApp_member"."id";


--
-- Name: EdWebApp_news; Type: TABLE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE TABLE "public"."EdWebApp_news" (
    "id" integer NOT NULL,
    "news_title" character varying(30) NOT NULL,
    "poster" character varying(255) NOT NULL,
    "description" "text" NOT NULL,
    "display" boolean NOT NULL
);


ALTER TABLE public."EdWebApp_news" OWNER TO dgcwkoncubyteg;

--
-- Name: EdWebApp_news_id_seq; Type: SEQUENCE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE SEQUENCE "public"."EdWebApp_news_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."EdWebApp_news_id_seq" OWNER TO dgcwkoncubyteg;

--
-- Name: EdWebApp_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dgcwkoncubyteg
--

ALTER SEQUENCE "public"."EdWebApp_news_id_seq" OWNED BY "public"."EdWebApp_news"."id";


--
-- Name: EdWebApp_registration; Type: TABLE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE TABLE "public"."EdWebApp_registration" (
    "id" integer NOT NULL,
    "event_name" character varying(50) NOT NULL,
    "time" character varying(10) NOT NULL,
    "date" character varying(10) NOT NULL,
    "type" character varying(20) NOT NULL,
    "event_head" character varying(50) NOT NULL,
    "phone_number" character varying(15) NOT NULL,
    "reg_form" character varying(100) NOT NULL,
    "venue" character varying(30) NOT NULL
);


ALTER TABLE public."EdWebApp_registration" OWNER TO dgcwkoncubyteg;

--
-- Name: EdWebApp_registration_id_seq; Type: SEQUENCE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE SEQUENCE "public"."EdWebApp_registration_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."EdWebApp_registration_id_seq" OWNER TO dgcwkoncubyteg;

--
-- Name: EdWebApp_registration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dgcwkoncubyteg
--

ALTER SEQUENCE "public"."EdWebApp_registration_id_seq" OWNED BY "public"."EdWebApp_registration"."id";


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE TABLE "public"."auth_group" (
    "id" integer NOT NULL,
    "name" character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO dgcwkoncubyteg;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE SEQUENCE "public"."auth_group_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO dgcwkoncubyteg;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dgcwkoncubyteg
--

ALTER SEQUENCE "public"."auth_group_id_seq" OWNED BY "public"."auth_group"."id";


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE TABLE "public"."auth_group_permissions" (
    "id" integer NOT NULL,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO dgcwkoncubyteg;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE SEQUENCE "public"."auth_group_permissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO dgcwkoncubyteg;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dgcwkoncubyteg
--

ALTER SEQUENCE "public"."auth_group_permissions_id_seq" OWNED BY "public"."auth_group_permissions"."id";


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE TABLE "public"."auth_permission" (
    "id" integer NOT NULL,
    "name" character varying(255) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO dgcwkoncubyteg;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE SEQUENCE "public"."auth_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO dgcwkoncubyteg;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dgcwkoncubyteg
--

ALTER SEQUENCE "public"."auth_permission_id_seq" OWNED BY "public"."auth_permission"."id";


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE TABLE "public"."auth_user" (
    "id" integer NOT NULL,
    "password" character varying(128) NOT NULL,
    "last_login" timestamp with time zone,
    "is_superuser" boolean NOT NULL,
    "username" character varying(150) NOT NULL,
    "first_name" character varying(150) NOT NULL,
    "last_name" character varying(150) NOT NULL,
    "email" character varying(254) NOT NULL,
    "is_staff" boolean NOT NULL,
    "is_active" boolean NOT NULL,
    "date_joined" timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO dgcwkoncubyteg;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE TABLE "public"."auth_user_groups" (
    "id" integer NOT NULL,
    "user_id" integer NOT NULL,
    "group_id" integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO dgcwkoncubyteg;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE SEQUENCE "public"."auth_user_groups_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO dgcwkoncubyteg;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dgcwkoncubyteg
--

ALTER SEQUENCE "public"."auth_user_groups_id_seq" OWNED BY "public"."auth_user_groups"."id";


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE SEQUENCE "public"."auth_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO dgcwkoncubyteg;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dgcwkoncubyteg
--

ALTER SEQUENCE "public"."auth_user_id_seq" OWNED BY "public"."auth_user"."id";


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE TABLE "public"."auth_user_user_permissions" (
    "id" integer NOT NULL,
    "user_id" integer NOT NULL,
    "permission_id" integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO dgcwkoncubyteg;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE SEQUENCE "public"."auth_user_user_permissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO dgcwkoncubyteg;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dgcwkoncubyteg
--

ALTER SEQUENCE "public"."auth_user_user_permissions_id_seq" OWNED BY "public"."auth_user_user_permissions"."id";


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE TABLE "public"."django_admin_log" (
    "id" integer NOT NULL,
    "action_time" timestamp with time zone NOT NULL,
    "object_id" "text",
    "object_repr" character varying(200) NOT NULL,
    "action_flag" smallint NOT NULL,
    "change_message" "text" NOT NULL,
    "content_type_id" integer,
    "user_id" integer NOT NULL,
    CONSTRAINT "django_admin_log_action_flag_check" CHECK (("action_flag" >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO dgcwkoncubyteg;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE SEQUENCE "public"."django_admin_log_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO dgcwkoncubyteg;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dgcwkoncubyteg
--

ALTER SEQUENCE "public"."django_admin_log_id_seq" OWNED BY "public"."django_admin_log"."id";


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE TABLE "public"."django_content_type" (
    "id" integer NOT NULL,
    "app_label" character varying(100) NOT NULL,
    "model" character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO dgcwkoncubyteg;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE SEQUENCE "public"."django_content_type_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO dgcwkoncubyteg;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dgcwkoncubyteg
--

ALTER SEQUENCE "public"."django_content_type_id_seq" OWNED BY "public"."django_content_type"."id";


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE TABLE "public"."django_migrations" (
    "id" integer NOT NULL,
    "app" character varying(255) NOT NULL,
    "name" character varying(255) NOT NULL,
    "applied" timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO dgcwkoncubyteg;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE SEQUENCE "public"."django_migrations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO dgcwkoncubyteg;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dgcwkoncubyteg
--

ALTER SEQUENCE "public"."django_migrations_id_seq" OWNED BY "public"."django_migrations"."id";


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: dgcwkoncubyteg
--

CREATE TABLE "public"."django_session" (
    "session_key" character varying(40) NOT NULL,
    "session_data" "text" NOT NULL,
    "expire_date" timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO dgcwkoncubyteg;

--
-- Name: EdWebApp_alumni id; Type: DEFAULT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."EdWebApp_alumni" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."EdWebApp_alumni_id_seq"'::"regclass");


--
-- Name: EdWebApp_event id; Type: DEFAULT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."EdWebApp_event" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."EdWebApp_event_id_seq"'::"regclass");


--
-- Name: EdWebApp_eventimage id; Type: DEFAULT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."EdWebApp_eventimage" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."EdWebApp_eventimage_id_seq"'::"regclass");


--
-- Name: EdWebApp_faq id; Type: DEFAULT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."EdWebApp_faq" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."EdWebApp_faq_id_seq"'::"regclass");


--
-- Name: EdWebApp_kr_registration id; Type: DEFAULT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."EdWebApp_kr_registration" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."EdWebApp_kr_registration_id_seq"'::"regclass");


--
-- Name: EdWebApp_member id; Type: DEFAULT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."EdWebApp_member" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."EdWebApp_member_id_seq"'::"regclass");


--
-- Name: EdWebApp_news id; Type: DEFAULT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."EdWebApp_news" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."EdWebApp_news_id_seq"'::"regclass");


--
-- Name: EdWebApp_registration id; Type: DEFAULT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."EdWebApp_registration" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."EdWebApp_registration_id_seq"'::"regclass");


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_group" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_group_id_seq"'::"regclass");


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_group_permissions" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_group_permissions_id_seq"'::"regclass");


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_permission" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_permission_id_seq"'::"regclass");


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_user" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_user_id_seq"'::"regclass");


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_user_groups" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_user_groups_id_seq"'::"regclass");


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_user_user_permissions" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."auth_user_user_permissions_id_seq"'::"regclass");


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."django_admin_log" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."django_admin_log_id_seq"'::"regclass");


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."django_content_type" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."django_content_type_id_seq"'::"regclass");


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."django_migrations" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."django_migrations_id_seq"'::"regclass");


--
-- Data for Name: EdWebApp_alumni; Type: TABLE DATA; Schema: public; Owner: dgcwkoncubyteg
--

COPY "public"."EdWebApp_alumni" ("id", "profile_image", "thumbnail_image", "name", "title", "sections", "tagline", "information", "belt", "geek_meter", "introversion", "peching", "paapa_meter", "ability", "year_of_recruitment", "year_of_graduation", "position") FROM stdin;
7	image/upload/v1635690704/formalshashu_lxslge.jpg	image/upload/v1635690705/funnyshashu_dqhlsu.jpg	Shashank Venkatesan	Editor - Art	Art Section	Texas Boi but now a Baby	Graduated, EIE	HOW TO BE AN AMAZING EDDIE\r\nA Guide compiled by stalking Shashank Venkatesan\r\n\r\nStep 1: Create an Air of Mystery\r\nPlenty of rumours swirl around this mysterious Eddie. It is said that footage of this man is languishing in a hard drive in the offices of Jimmy Kimmel Live. Shashu is part of an exclusive trio called Oggarane Dabbi, whose exact purpose still remains unknown to this day. A very integral part of the JSSSTU dance team, one Chiff has claimed that he was the reason everyone danced in IIT Kanpur. All of this gossip is of no importance to Shashu, who stays alert at all times. Seeing, noting, observing everything on campus.\r\n\r\nStep 2: Age is Just a Number\r\nThis esteemed Eddie, nay ajja, is the oldest member of the Board. But don’t let his wrinkles fool you! If you want to know any internet trend or need help in deciphering the latest TikTok drama, Shashu is your guy. With Youtube explainer videos, he is ever-ready to educate us plebs about stuff (what even is Gen Alpha?), in a way that Urban Dictionary could never.\r\nAfter all, who can be cooler than a dude who once had ‘Old Town Road’ as his caller tune?\r\n\r\nStep 3: Go to Texas to Find Yourself\r\nShashu has a lot of nuggets of wisdom, which according to reliable sources can be obtained only by experiencing the rich spiritual energy of Texas, USA. \r\n“Started from the top, he’s still there, looking down on us” - An anonymous junior Eddie\r\n\r\nStep 4: Race Your School Bus Every Day and Other Self-Help Tricks\r\nThe rationale behind this is beyond the scope of this guide.\r\n\r\nStep 5: Be a Super Awesome and Talented Dude\r\nNo one can accuse Shashu of being a boring dude. The very existence of this Eddie is enough to inspire strong feelings in his friends. The nature of these feelings is questionable though, as multiple people have come together to make a comprehensive list of reasons to hate him.\r\n\r\nIf you’re wowed by a mind-blowing render, chances are it's Shashu’s baby. An extremely integral part of the Board, his contributions are always very cool and awesome. Ever ready to cheer you up with a questionable GIF or sticker, it’s always fun working on installations with him, complete with wacky anime recommendations and eclectic playlists.\r\n\r\nIt’s very unfortunate that this year will be Shashu’s last one on the Board (Alas, stopping the passage of time is beyond the capabilities of this author). The Board will never be the same without this punny Eddie- he will be sorely missed.	100	60	10	25	Yee-Haw!	2018	2021	editor
5	image/upload/v1635689975/FormalVinay_bcbicf_ktz4ca.jpg	image/upload/v1635689975/FunnyVinay_musfsz_o1flkt.jpg	Vinay Vasishta	Editor - Kannada	Kannada	Vinay ಮತ್ತೊಮ್ಮೆ- ಮಗದೊಮ್ಮೆ Vasishta	Graduated, EIE	ಹೆಲ್ಲೋ... ಮೈಸೂರು. ಬೆಳಿಗ್ಗೆ ಮಿಕ್ಕಿದ್ ಉಪ್ಪಿಟ್ಟು ತಿಂದು, ಮಧ್ಯಾಹ್ನದ ಹೊತ್ತಿಗೆ ನೂಡಲ್ಸ್ ಮತ್ತೆ ಗೋಭಿ ಮಂಚೂರಿಯನ್ ತಿಂದ್ರೂನು ಹೊಟ್ಟೆ ತುಂಬ್ದೇ, ಇಲ್ಲೆ ಪಕ್ಕದಲ್ಲಿರೋ ಕಣ್ಣನ್ ಅಲ್ಲಿ ಮಸ್ತ್ ಮ್ಯಾಂಗೋ ಮಿಲ್ಕ್ಶೇಕ್ ಕುಡ್ದು, ಲೇಟಾಯ್ತು ಅಂತ ನಿಧಾನಕ್ಕೆ ಓಡ್ಕೋಂಡು ಬರ‍್ತಾ ಇರ‍್ವಾಗ, ಹಂಗೆ ಒಂದು ಪ್ಯಾಕೆಟ್ ಸೋಯಾ ಸ್ಟಿಕ್ಸ್ ಹಿಡ್ಕೊಂಡು, ಬುಲ್ಲೆಠ್ ಟ್ರೇನ್ ಸ್ಪೀಡ್‌ಗೆ ನನ್ Activa ಓಡ್ಸಿ, ಸರಿಯಾಗಿ 6 ಗಂಟೆಗೆ ನಿಮ್ ಜೊತೆ ಹರಟೆ ಹೊಡಿಯೋಕೆ ಬಂದಿರೋ ನಿಮ್ಮ ಮನೆ ಹುಡ್ಗಾ, The Real Family Man ವಿನಯ್ ಬಿ. ಸಿ. ವಸಿಷ್ಠ ಕಡೆ ಇಂದ ಎಲ್ಲರಿಗೂ 69.96FMನ “ಹೂ ಗುರು!” ಕಾರ್ಯಕ್ರಮಕ್ಕೆ ಪ್ರೀತಿಯ ಸ್ವಾಗತ. ಬ್ಯುಸಿ ಬ್ಯುಸಿ ಅಂತ ಒಬ್ಬರ ಮುಖ ನೋಡೋಕೆ ಇನ್ನೊಬ್ಬರಿಗೆ ಟೈಮ್ ಇಲ್ಲದಿರೋ ಈ ಕಾಲದಲ್ಲೂ ಪ್ರತಿ ದಿನ ಬೆಳಗ್ಗೆ ಏಳಕ್ಕೂ ಪ್ರೀತಿಯಿಂದ ಶುಭೋದಯ, ಗುಡ್ ಮಾರ‍್ನಿಂಗ್ ಮೆಸೇಜ್ ಕಳ್ಸೊ ನನ್ನೆಲ್ಲಾ ಪ್ರೀತಿಪಾತ್ರರಿಗೂ ಇವತ್ತಿನ “ಹೂ ಗುರು!” ಕಾರ್ಯಕ್ರಮವನ್ನ ಡೆಡಿಕೇಟ್ ಮಾಡ್ತಾ ಇದೀನಿ. ಇದನ್ನ ಕೇಳಿ ಮಲಗೋ ಮುನ್ನ ಶುಭರಾತ್ರಿ ಹೇಳೋರು ಬೇಜಾರಾಗ್ಬೇಡಿ, ನಿಮಗೋಸ್ಕರ ಸ್ಪೆಶಲ್ ಆಗಿ ಬರ‍್ತಾ ಇದೆ ನಾನು ಕ್ಯಾರಿಯೋಕೆಯಲ್ಲಿ ಹಾಡಿದ ಹಾಡು. ಕೇಳಿ, ನೀವುನೂ ಜೊತೆಗೆ ಹಾಡಿ. \r\n\r\n“ಯಾರಿಟ್ಟರೀ ಚುಕ್ಕಿ... ಯಾಕಿಟ್ಟರೀ ಚುಕ್ಕಿ... “ \r\n\r\nಸರಿಯಾಗಿ ಒಂದು ಕಡೆ ನಿಂತು ಮಾತಾಡೋಕೆ ಬರದೇ ಇದ್ರೂನು ಬಂಜೀ ಜಂಪಿಂಗ್ ಮಾಡೋಷ್ಟು ಧೈರ್ಯ ಬಂದಿದೆ ಈ ಕಾಲದ ಮಕ್ಕಳಿಗೆ ಅಂದ್ರೆ ಎಲ್ಲೋ ಏನೋ ಮಿಸ್ ಹೊಡಿತಿದೆ ಅನ್ಸ್ತಿದೆ ನಂಗೆ. ಈ ವಿಷಯದ ಬಗ್ಗೆ ನಿಮ್ಮ ಅಭಿಪ್ರಾಯ ಏನು ಅಂಥ ತಿಳಿಸಿ. ನಮ್ಮ ಸಂಖ್ಯೆ 6060520009. ನಿಮಗಾಗಿ ಈಗ ಬರ‍್ತಾ ಇದೆ, \r\n\r\n“ಮೇಘ ಬಂತು ಮೇಘ, ಮೇಘ ಬಂತು ಮೇಘ, ಮೇಘ ನೀಲಿಯ ಮೇಘ” \r\n\r\nಮೊದಲನೇ ಉತ್ತರನ ಕಳ್ಸಿದ್ದಾರೆ ನಂಜನಗೂಡಿನಿಂದ ಸೋಮಶೇಖರ್ ಅವರು, ಬನ್ನಿ ನೋಡಣ. “ಎಗ್ಸಾಮ್ ಅಲ್ಲಿ ಕೇಳಿರೋ ಪ್ರಶ್ನೆಗೆ ಉತ್ತರ ಗೊತ್ತಿಲ್ಲ ಅಂದ್ರುನೂ, ರೂಲ್ಡ್ ಶೀಟ್ ಅಲ್ಲಿ ಉತ್ತರ ಬರಿಬೆಕೋ, ಅನ್‌ರೂಲ್ಡ್ ಶೀಟ್ ಅಲ್ಲಿ ಬರಿಬೇಕೋ ಅಂಥಾ ಗೊತ್ತಾಗ್ದೆ, ಬೇರೆಯವರಿಗೆ ಕಾಲ್ ಮಾಡಿ ತಲೆ ತಿನ್ನೋ ಜನರಿರೋ ಕಾಲದಲ್ಲಿ, ಬಂಜೀ ಜಂಪಿಂಗ್ ಎಲ್ಲಾ ತುಂಬಾ ಹೈಟೆಕ್ ಆಯ್ತು ಗುರು”. ವಾವ್ ಸೋಮಶೇಖರ್ ಅವರೇ, ನೀವೂ ಹಿಂಗೆ ಮಾಡ್ತಿದ್ರಿ ಅನ್ಸುತ್ತೆ! ಯಾವ್ ಶೀಟ್ ಅಲ್ಲಿ ಬರಿಬೇಕು ಅನ್ನೋ ಡೌಟ್ ಬಗ್ಗೆ ನನಗೆ ಗೊತ್ತಿಲ್ಲ ಆದ್ರೆ ನಾವು ಒಂದು ಮೇಸೇಜ್ ಹಾಕಕ್ಕೂ ಊರಲ್ಲಿರೋ ನಮ್ ಫ್ಯಾನ್ಸ್ ಎಲ್ಲಾದುಕ್ಕೂ ನನಗೆ ಆನ್ಸರ್ ಕೊಡ್ಸಿಬಿಡೋರಪ್ಪ. \r\nಬನ್ನಿ ಈಗ ಒಬ್ರು ಕಾಲರ್ ರೆಡಿ ಇದಾರೆ ಮಾತಾಡ್ಸೋಣ. ಹಾಯ್... ಗುಡ್ ಈವ್ನಿಂಗ್... ಯಾರು ಮಾತಾಡ್ತಾ ಇರೋದು. “ಹೆಲ್ಲೋ ವಿನು. ಹೇಗಿದಿಯಾ? ನಾನು ಭುವನಾ. ನಾನು ನೆನಪಿಲ್ವಾ?”. ವಿನು ನಾ? ಭುವನಾ ನಾ? ಯರ‍್ರೀ ನೀವು? “ನಾನು, ಎರಡನೇ ವರ್ಷದ ಇಂಜಿನಿಯರಿಂಗ್, ‘ಒಲವಿನ ಓಲೆ’, ಕನ್ಫೆಷನ್ನು...ಅ... ಎ...” ಹೆಲೋ? ಹೆಲೋ? ಇಂಜಿನಿಯರಿಂಗ್ ಮುಗಿಯೋವರೆಗು ಹುಡ್ಕದ್ನಲ್ರೀ. ಎಲ್ರಿ ಹೋದ್ರಿ... \r\n\r\n“ಕುಹು ಕುಹೂ ಕೋಗಿಲೆ ಕೂಗಿದೆ ಯಾಕಂತೀಯಾ? ನಿನ್ನ ಕೇಳಿದೆ ಏನಂತೀಯಾ?” \r\n\r\nಆ... ಬನ್ನಿ ಮುಂದಿನ ಕರೆ ಯಾರದು ನೋಡೋಣ. ಹಲ್ಲೋ... ಯಾರು ಮಾತಡ್ತಾ ಇರೋದು? “ನಮಸ್ಕಾರ ಸರ್. ನಾನ್ ಶೇಷಾದ್ರಿ ಅಂಥ. ಇಲ್ಲೇ ಮೈಸೂರಲ್ಲಿ ಇರೋದು. ರಿಟೈರ್ಡ್ ಬ್ಯಾಂಕ್ ಎಮ್ಪ್ಲಾಯಿ. ಏನು ಕೆಲಸ ಇಲ್ದೆ ನಾನು ಖಾಲಿ ಕೂತಿರ‍್ವಾಗ ನಿಮ್ ಶೋ ನೋಡ್ತೀನಿ. ನಿಮ್ ದೊಡ್ಡು ಫ್ಯಾನ್ ಸರ್”. ಥ್ಯಾಂಕ್ಯೂ ಸರ್. ಹೇಳಿ ನಿಮ್ಮ ಅನಿಸಿಕೆ ಏನು ಬಂಜಿ ಜಂಪಿಂಗ್ ಬಗ್ಗೆ. “ಬಂಜಿ ಜಂಪಿಂಗ್ ಎಲ್ಲ ಸಣ್ಣ ಮಕ್ಕಳಿಗೆ ಸರ್. ನಾನೇನಿದ್ರು ಜಗಲಿಯಿಂದ ಜಗತ್ತಿಗೆ ಹಾರೋದು”. ಏನು ಕ್ವಾಣೆ! “ಇಲ್ಲ ಸರ್, ಮೊನ್ನೆ ಇನ್ನು ಇದುಕ್ಕೆಲ್ಲ ಸಾಕ್ಷಿ ಅನ್ನೋ ಹಾಗೆ ಒಂದು ಕನಸು ಬಿದ್ದಿತ್ತು. ರಾತ್ರಿ 10:30ಕ್ಕೆ ನಾಸಾ ಕಡೆಯಿಂದ ನಾನು ಸ್ಪೇಸ್‌ಗೆ ಹೋಗೋಕೆ ರೆಡಿ ಆಗ್ತಿದ್ದೆ. ನನ್ನ ಮಗಳು ಭುವನ ನನ್ನ ಬಟ್ಟೆ ಎಲ್ಲಾ ಪ್ಯಾಕ್ ಮಾಡ್ಕೊಡ್ತಿದ್ಲು. ಅಷ್ಟ್ರಲ್ಲಿ ಎಚ್ಚರ ಆಗೋಯ್ತು ನೋಡಿ ಸರ್”.\r\nವಾಟ್ ಮತ್ತೆ ಭುವನಾ ನಾ?... \r\n\r\nಸಂಜೆ ನನ್ ಜೊತೆ ಹರಟೆ ಹೊಡಿಯೋಕೆ ಬಂದ್ರೂನು, ಬೆಳಿಗ್ಗೆ ಏನ್ ತಿಂಡಿ ತಿಂದ್ರಿ ಅಂತಾ ಮರಿಬೇಡಿ ಅಂತಾ ಹೇಳ್ತಾ, ನನ್ನ ಜಿಮ್ ಟೈಮ್ ಆಯ್ತು. ಇವತ್ತು ಕರೆ ಮಾಡಿದ ಎಲ್ಲರಿಗೂ ಅನಂತಾನಂತ ಧನ್ಯವಾದಗಳು. ಮತ್ತೆ ನಾಳೆ ಸಿಗೋಣ ಇದೇ ಸಮಯಕ್ಕೆ. ಈಗ ನಿಮಗಾಗಿ ಬರ‍್ತಾ ಇದೆ ನನ್ನ ನೆಚ್ಚಿನ ಹಾಡು. ಕೇಳಿ, ಎಂಜಾಯ್ ಮಾಡಿ... \r\n\r\n“ಅಂಟಂಟಂ ಅಂಟಂಟಂ ಅಂಟಂಟಂಟಂಟಂಟಂಟಂ...”	75	10	30	30	Voice modulation	2018	2021	editor
6	image/upload/v1635690152/FormalPrathana_nbh0v4_oshk1m.jpg	image/upload/v1635690153/FunnyPrathana_d8whvs_aq28ol.jpg	Prarthana G. P.	Editor - Kannada	Kannada	Polio Nurse Prathana	Graduated, ECE	ಪ್ರಾರ್ಥನಾ ‘ಪ್ರತನಾ’ ಅಥವಾ ‘ಪತನಾ’ ಅಗಿ ಆಗಾಗ ಬದಲಾಗುತ್ತಾಳೆ. ಪ್ರಾರ್ಥನಾ ‘ಪತನಾ’ ಆಗಿ ಬದಲಾಗುವುದಕ್ಕೆಕಾರಣವಿದೆ (ವಿ.ಸೂ: ಕಾರಣವನ್ನು ಅವಳ ಬಳಿ ತಪ್ಪದೇ ಕೇಳಿ).\r\nಜನರನ್ನು ಭೇಟಿ ಮಾಡಿದಾಗ ಅವರ ಉಭಯಕುಶಲೋಪರಿಯನ್ನು ವಿಚಾರಿಸುವ ಬದಲು, ಅವರ ಮನೆ ಹಾಗು ಬೀದಿಯಲ್ಲಿ ವಾಸಿಸುವ ಶ್ವಾನಗಳ ಕ್ಷೇಮವನ್ನು ಮೊದಲು ವಿಚಾರಿಸುವಳು. ಇವಳು ಊಟ ಮಾಡುವುದು ಮರೆತರೂ, ನಾಯಿಗೆ ಬಿಸ್ಕತ್ ಹಾಕುವುದನ್ನು ಮರೆಯುವುದಿಲ್ಲ.\r\n\r\nನಾನು ತುಂಬಾ ತಿಂತೀನಿ ಅಂತಾ ಎಲ್ಲರ ಹತ್ತಿರಾನೂ ಹೇಳ್ತಾ ಇರ್ತಾಳೆ, ಏನ್ ತಿಂತಾಳೋ ಅವಳಿಗೇ ಗೊತ್ತು. ಇವಳ ಶರೀರದ ತೂಕಕ್ಕಿಂತ ಇವಳ ಬ್ಯಾಗ್‌ನ ತೂಕವೇ ಜಾಸ್ತಿ. ಗಾಳಿ ಬಂದಾಗ ಗಟ್ಟಿಯಾಗಿ ನಿಲ್ಲಲೇ ಬೇಕಾದ ಈಕೆಗೆ ಗಾಡಿ ಓಡಿಸೋಕೆ ಬಲು ಇಷ್ಟ. (ಎಚ್ಚರಿಕೆ: ಗಾಡಿಯೇರುವ ಮುನ್ನ ಮರೆಯದಿರಿ, ನಿಮ್ಮ ಕೈ-ಕಾಲುಗಳಿಗೆ ನೀವೇ ಜವಾಬ್ದಾರರು)\r\n\r\nಇವಳಿಗೆ ಪಾಂಡಾ ಕಂಡರೆ ತುಂಬಾ ಇಷ್ಟ. ಪಾಂಡಾ ಸ್ಟಿಕರ್ಸ್‌ಳನ್ನು ಅವಳ ಬ್ಯಾಗ್‌ನ ಮೇಲೆ ಕಾಣಬಹುದು. ಎಲ್ಲರನ್ನು ನಗಿಸುವ ಈಕೆ, ತನ್ನ ಹಿಹಿಹಿ ನಗುವಿನಿಂದಾಗಿ ಗೇಲಿಗೊಳಗಾಗುವುದಷ್ಟೇ ಅಲ್ಲದೇ, ಆ ನಗುವನ್ನು ಬೇರೊಬ್ಬರು ಅನುಕರಿಸಬಾರದೆಂದು ನಿರ್ಭಂಧಿಸಿರುವಳಂತೆ. ಅಕಸ್ಮಾತಾಗಿಯೂ ಎಲ್ಲರ ಕಣ್ಣ್ ತಪ್ಪಿಸಿ ಈಕೆಯನ್ನು ಯಾರೇ ಅಪಹರಿಸುವುದು ಅಸಾದ್ಯ. ಏಕೆಂದರೆ ಇವಳ ಪ್ರತಿಯೊಂದು ಚಲನವಲನಗಳ ಬಗ್ಗೆ ಈಕೆ ಸದಾ ತನ್ನ ಸ್ನೇಹಿತರಿಗೆ update ಮಾಡುತ್ತಿರುತ್ತಾಳೆ. ಇವಳು ಸಾಮಾನ್ಯವಾಗಿ ಕೂಗಾಡಲ್ಲಾ. ಬಹಳ ತಾಳ್ಮೆಯಿಂದ ಎಲ್ಲವನ್ನು ಕೇಳಿಸಿಕೊಂಡು ಆಮೇಲೆ ಮಾತಾಡ್ತಾಳೆ. ರಹಸ್ಯವನ್ನು ರಹಸ್ಯವಾಗಿಡುವುದರಲ್ಲಿ ನಿಪುಣೆಯಂತೆ (ವಿ.ಸೂ: ಹೆಚ್ಚಿನ ಮಾಹಿತಿಗಾಗಿ ವಿಜೇತ ವೈಷ್ಣವ್ ಡಿ ಅವರನ್ನು ಕೇಳಿ). ಸಹಾಯ ಮಾಡುವುದರಲ್ಲಿ ಎತ್ತಿದ ಕೈ. ಇವಳ ವಸತಿ ನಿಲಯದ ಕಿರಿಯ ವಿದ್ಯಾರ್ಥಿನಿಯರು ಇವಳಿಗೆ ಬಕೆಟ್ ಹಿಡಿಯುವುದು ನೋಡಿದರೆ ಗೊತ್ತಾಗುತ್ತೆ.\r\n\r\nಈ ಮಲೆನಾಡಿನ ನೀರೆಗೆ, ಸೀರೆಯೆಂದರೆ ಅದೇನೋ ಅಚ್ಚುಮೆಚ್ಚು. ಸೀರೆಯುಟ್ಟು ಮೊಬೈಲ್ ಹಿಡಿದು ಸೆಲ್ಫಿ ಕ್ಲಿಕ್ಕಿಸುತ್ತಾ ಖುಷಿಪಡುತ್ತಾಳೆ. ಕ್ಯಾಮರಾದ ಮುಂದೆ ಬಂದು ನಿಂತು ವಿಭಿನ್ನ ಹಾಗು ವಿಚಿತ್ರ ಭಂಗಿಯಲ್ಲಿ ಛಾಯಾಚಿತ್ರಗಳಿಗೆ ಪೋಸ್ ನೀಡುವವಳು ನಮ್ ಪ್ರತನಾ. ಇತ್ತೀಚೆಗೆ ವ್ಯಾಯಾಮ ಶಾಲೆಗೆ ಬೆಳ್ಳಂಬೆಳಿಗ್ಗೆ ಎದ್ದು ಹೊಗ್ತಾ ಇದ್ದಾಳೆ. ತೂಕದಲ್ಲಿ ೨ ಕೆ.ಜಿ ಏರಿಕೆಯಾಗಿದೆಯಂಬ ಸುದ್ದಿ ನಮ್ಮ ಕಿವಿಗೆ ಬಿದ್ದಿದೆ.\r\nಈಕೆ ಸಂಪೂರ್ಣವಾಗಿ ‘ವೀಗನ್’ ಆಗಿ ಬದಲಾಗಲು ಪ್ರಯತ್ನಿಸುತ್ತಿದ್ದಾಳೆ ಎಂದು ಬಲ್ಲ ಮೂಲಗಳಿಂದ ತಿಳಿದು ಬಂದಿದೆ. ಹಾಸ್ಟೆಲ್‌ನಲ್ಲಿ ತನ್ನ ಕೈಯ್ಯಾರೆ ‘ಟೋಫು’ ತಯಾರಿಸುವ ಸಾಹಸ ಮಾಡಲು ಹೊರಟು, ಇಡೀ ಕೋಣೆಯನ್ನೇ ರಸಾಯನ ಪ್ರಯೋಗಾಲಯದ ರೀತಿ ಮಾರ್ಪಾಡುಗೊಳಿಸಿದ್ದರೂ, ಅದು ಕೊನೆಗೆ ಸೇರಿದ್ದು ಡಸ್ಟ್ಬಿನ್ ರಾಯನ ಬಾಯಿಗಷ್ಟೇ. *pat pat*\r\n\r\nಇವಳು ಯಾರಿಗೂ ಬೈಯಲ್ಲಾ, ಬೈಯ್ದ್ರೂ ಗೊತ್ತಾಗಲ್ಲಾ. ‘ಮಂಗ’ ಅಂತ ಎಲ್ಲರಿಗೂ ಪ್ರೀತಿಯಿಂದ ಬೈಯ್ಯುವಳು. ಒಟ್ಟಿನಲ್ಲಿ ಇವಳು ಸಂಪಾದಕ ಮಂಡಳಿಯ ಪಾಪದ ಪ್ರಾಣಿ. ಸಂತೋಷ ಸತೀಶ್ ಅಗಾಗ ಕಿರುಚಿ ಇವಳನ್ನು ಗೋಳಾಡಿಕೊಳ್ಳುತ್ತಿರುತ್ತಾನೆ. ವಾಟ್ಸಪ್‌ನಲ್ಲಿ ಲಭ್ಯವಿರುವ ಬಿಳಿ ಚಂದ್ರಮನ ಇಮೋಜಿಯನ್ನು, ಸಂಭಾಷಣೆಯ ಮಧ್ಯೆ ಮಧ್ಯೆ ಸಮಯಕ್ಕೆ ಸರಿಯಾಗಿ ಕಳಿಸುವ ಈಕೆ, ಅದನ್ನು ಗುತ್ತಿಗೆ ಪಡೆದಿರುವಂತೆ ತೋರುತ್ತದೆ.\r\n\r\nನೋಡಲು ನೂಡಲ್ಸ್ ಅಂತೆ ಕಾಣಿಸಿದರೂ, ದಿನವಿಡೀ ಆಯಾಸವಿಲ್ಲದೇ ಕೆಲಸ ಮಾಡಬಲ್ಲ ಬಲವುಂಟು. ಎಲ್ಲಾ ಕೆಲಸವನ್ನು ಪಟಾಪಟ್‌ ಅಂತ ಮುಗಿಸುವ ಚತುರೆ. ಪ್ರತಿಯೊಂದು ಕೆಲಸಕ್ಕೂ ಫ್ಲೋ-ಚಾರ್ಟ್‌ಗಳನ್ನು ಸಿದ್ಧಪಡಿಸುವ ಈಕೆ, ಎಲ್ಲಾ ಕೆಲಸವನ್ನು ಬಹಳ ಜವಾಬ್ದಾರಿಯಿಂದ ನಿಭಾಯಿಸುತ್ತಾಳೆ. ಅದೃಷ್ಟವಶಾತ್ ನೀವು ಈಕೆಯನ್ನು ಎಂದಾದರೂ ಭೇಟಿ ಮಾಡಿದರೆ, ಈಕೆಯ ಸಮಯಪಾಲನೆಯ ಗುಟ್ಟುಗಳನ್ನು ಕೇಳಿ ತಿಳಿಯಿರಿ. ಪರಿಸರದ ಬಗ್ಗೆ ಅಪಾರ ಪ್ರೀತಿ ಹೊಂದಿರುವ ಈಕೆ, ಪರಿಸರ ಸಂಬಂಧಿ ಕೆಲಸಗಳಲ್ಲಿ ಯಾವಾಗಲೂ ತನ್ನನ್ನು ತೊಡಗಿಸಿಕೊಂಡಿರುತ್ತಾಳೆ.	50	20	0	100	Multitasking	2018	2021	editor
1	image/upload/v1635689213/normalbhavana_p6ck5n.jpg	image/upload/v1635689214/funnybhavana_j4efnu.jpg	Bhavana Tiyyagura	Editor-in-Chief	English Section	Wholesome person	Graduated, ECE	"We're getting old broooo"\r\n"You're twenty"\r\n"We'll soon be doing our taxes, you know? That's scary"\r\n\r\nThis is how Bhanana gives an unsuspecting well-put-together person an existential crisis. Bhanana can be seen zooming past people in her gaadi, wearing an intense expression, with her hair flying in the wind and her sitting dangerously close to the edge of her seat. She literally likes living on the edge. This fruit is a master kawaii sticker maker and loves going around painting hearts on random body parts of her friends during Shabd. Many Eddies tell me that they've had some of the most insane and scarring conversations with her. The subject of those conversations can range from her intellectual crushes to articles she has read on certain "rituals" that happen naturally. \r\n\r\nWhile this past year was spent playing Among Us with the Board, the Eddies have learnt that she can lie with the conviction of a politician before elections. All things become secondary once you put food in front of her. If you want to make your way into her heart, momos are the way to go. She has a very strong opinion about the taste of Karnataka sambar and how it’s not spicy enough for her. Although Bhanana enjoys food, she, unfortunately, does not possess any culinary skills. I definitely wouldn’t describe her cooking as ‘awful’ as I’m afraid that I may be subjected to her cooking all over again to prove me wrong. \r\n\r\nBhanana is definitely atypical, to say the least. If you spend an hour with her, you are sure to have the most interesting, out-of-world conversations with her. She has this urge to shave her head and believes that hair shouldn’t be given such importance in one’s life. She has a strong emotional attachment to the terrible and stale hostel food even though she does not stay at our college hostel. Go figure that one out. She loves to use the word ‘thuuuu’ in all her conversations. Worry not, she only uses the word out of love and is not condescending or violent in any way whatsoever. She overuses the word "wholesome" so much that the Eddies now instantly associate the word with our beloved fruit. \r\n\r\nBhanana is one of the most hard-working and dedicated people I’ve seen. The amount of effort she puts into making sure an event takes place seamlessly is truly amazing. She cares deeply about others and is there for us whenever we need someone to talk to. The Board couldn’t have asked for a better Chiff this year. While I am super bummed about the fact that this wholesome fruit won't be around as much as I’d like next year, I am also excited to see all the accomplishments and growth she will make in the future and am happy to have been a tiny part of her college life.	90	10	10	40	Ray of sunshine	2018	2021	editor-in-chief
4	image/upload/v1635689874/normalsantu_w9g4mn.jpg	image/upload/v1635689875/funnysantu_z75b7c.jpg	Santosh Satish	Editor-in-Chief	Art Section	No more Badava	Graduated, CSE	"ಕಿರುಬೆರಳಷ್ಟು ದಪ್ಪ, ನಡು ಬೆರಳಷ್ಟು ಉದ್ದ\r\nಸಂಪಾದಕ ಮಂಡಳಿಯೆಂಬ ಮುಷ್ಟಿಯಲ್ಲಿ,\r\nಅವನು ಆರ್ಟ್ಸ್ ಅಂಡ್ ಗ್ರಾಫಿಕ್ಸ್‌ಗೆ ಕರ್ಮ ಬದ್ಧ.\r\nದುಂಬಿಯನ್ನು (bumble bee) ತನ್ನ ವಾಹನವಾಗಿಸಿಕೊಂಡು,\r\nಬಣ್ಣದ ಕುಂಚವನ್ನು ಅಸ್ತ್ರವಾಗಿಸಿಕೊಂಡು,\r\nನಿಂತಿಹನವನೇ ಅದೊ ನಮ್ಮ ವೀರಯೋದ್ಧ.\r\nಮೊಗದಲ್ಲಿ ಒಂದು ಮುಗುಳುನಗೆಯ ಸ್ಥಾಯಿ ಭಾವ,\r\nಗಟ್ಟಿಮುಟ್ಟಾದರೂ ನೋಡಲು ಅತೀ (ಇಇಇ)... ಕೃಶಕಾಯ\r\nಇವನೇ ಶ್ರೀಮಾನ್ ಸಂತೋಷ ಸತೀಶ ಮಹರಾಯ" \r\n\r\nವ್ಯಕ್ತಿಯೊಬ್ಬ ಕಿರಾತಕನಂತೆ ಕಂಡು ಬಂದರೂ (ಒಂದೊಮ್ಮೆಯಷ್ಟೇ) ಮೊಗ್ಗಿನ ಮನಸ್ಸಿನ ಪೋರ, ಸಂತು. ತನ್ನ ಸಿಹಿಯಾದ ಮಾತುಗಳಿಂದ ಸರ್ವರ ಪ್ರೀತಿಪಾತ್ರ. ಆದರೆ ಇವನು ಸಿಹಿ ತಿನಸುಗಳಿಂದ ದೂರ ಓಡುವನಂತೆ. ಎಲ್ಲರಿಗೂ ಸಾಕಷ್ಟು ಪ್ರೀತಿಯನ್ನು ಹೃದಯದಲ್ಲಿ ಇಟ್ಟುಕೊಂಡು, ಯಾರಿಗೂ ಬೇಸರವಾಗದಂತೆ ತನ್ನ ಪಕ್ಷವನ್ನು ಪ್ರಕಟಿಸುವ ಸ್ವಭಾವವಿವನದು. ಅದೆಷ್ಟೇ ಕಷ್ಟ ಪಟ್ಟರೂ ನಿದ್ದೆ ಹತ್ತದೆಂದು ರಾತ್ರಿಯನ್ನು ತನ್ನ ಯಂತ್ರಗಳೊಂದಿಗೆ ಕೂಡಿ, ಆಡಿ ಕಳೆಯುವನು. ಗೋಧಿ ಬಣ್ಣ ಸಾಧಾರಣ ಮೈಕಟ್ಟಿನ ಇವನು, ಕನ್ನಡ, ಇಂಗ್ಲಿಷ್, ಹಾಗು ಸ್ವಲ್ಪ ತೆಲುಗು ಮಾತಾಡಬಲ್ಲ. ತನ್ನ ಕನ್ನಡಕದ ಅಂಚುಗಳ ಮೇಲೆ ದೃಷ್ಟಿ ಇರಿಸಿ, ಯಾರನ್ನಾದರೂ ಸುಲಭವಾಗಿ ಬೆದರಿಸಬಲ್ಲ. ಅಷ್ಟೋ ಇಷ್ಟೋ ಹೊಟ್ಟೆಗೆ ಹಾಕಿಕೊಂಡು ದಿನವಿಡೀ ಸಂಪೂರ್ಣ ಶಕ್ತಿಯೊಂದಿಗೆ ತನ್ನನ್ನು ಕೆಲಸಗಳಿಂದ ಕೂಡಿಸಿಕೊಂಡು, ಎಲ್ಲರ ಜೊತೆ ಹರಟೆ ಹೊಡೆಯಲು ಇವನಿಗೆ ಇಷ್ಟ. ತಿಂಡಿಗಳಲ್ಲಿನ ವಿವಿಧ ಸಂಯೋಜನೆಗಳನ್ನು ಆಸ್ವಾದಿಸುವನಾದರೂ, ದಪ್ಪ ಆಗದ ಇವನ ಗುರಿ 'ಈಗ ಹೇಗಾದರೂ ದಪ್ಪ ಆಗಬೇಕು' ಎಂದು. ಚೀಟೋಸ್ ಹಾಗು ಹಾಲಿನ ಮಿಶ್ರಣವನ್ನು ಆಸ್ವಾದಿಸುವನು. ಮಾಂಗ, ಹೈಕ್ಯೂ, ಎಮೊಬಾಯಿ, ಎಂದೆಲ್ಲ ಜಾಲತಾಣದ ಮೂಲೆ ಮೂಲೆಯಿಂದ ವಿಷಯಗಳನ್ನು ಹುಡುಕಿ ಅದರಲ್ಲಿ ಆಸಕ್ತಿಯನ್ನು ತನ್ನಲ್ಲಿಯೂ, ಪರರಲ್ಲಿಯೂ ಹೆಚ್ಚಿಸುವ ಇವನು, ಮೊಂಗೋಲಿಯನ್ ಹಾಡುಗಳನ್ನು ನಮ್ಮ ನಡುವೆ ಪರಿಚಯಿಸಿದನು. ನೆನಪು ಅಷ್ಟೊಂದು ತೀಕ್ಷ್ಣವಲ್ಲದಿದ್ದರೂ ತನ್ನವರ ಬಗ್ಗೆ ಪ್ರತಿಯೊಂದು ಮಾತನ್ನು ಅಚ್ಚುಕಟ್ಟಾಗಿ ನೆನಪಿನಲ್ಲಿ ಇಟ್ಟುಕೊಳ್ಳುವನು. ಅದೇಕೋ ಗೊತ್ತಿಲ್ಲ ನಲವತ್ತರ ನಂತರ ಜೀವಿಸುವುದು ಬೇಡವೆನ್ನುತ್ತಿರುತ್ತಾನೆ. ಏಕೆಂದು ಕೇಳಿದರೆ, 'ಜೀವನದಲ್ಲಿ ಜಿಗುಪ್ಸೆ' ಎಂಬ ನುಡಿಗಟ್ಟನ್ನು ಕಾರಣ ಎಂದು ಅಂಟಿಸಿ, ಕೈ ತೊಳೆದುಕೊಳ್ಳುವನು. ಅದಕ್ಕೆ ಈಗಲೇ ಅವನನ್ನು ಅಜ್ಜ ಎಂದು ಕರೆದು ಆ ಒಂದು ಫೀಲ್ ಅನ್ನು ಅವನು ಮಿಸ್ ಮಾಡಿಕೊಳ್ಳದಂತೆ ನಾವು ನೋಡಿಕೊಂಡಿದ್ದೇವೆ. \r\nಇವನ ಮತ್ತು ಬಣ್ಣದ ಪ್ರಸಂಗ ಒಂದು ನಿಮಗೆ ಹೇಳಲೇ? ವರ್ಣ ರಂಜಿತಾ ಪತ್ರಗಳನ್ನು ತನ್ನ ಕೈಯಲ್ಲಿ ಹಿಡಿದುಕೊಂಡು ‘ಇನ್ನ್ಯಾವ ಬಣ್ಣವು ಇದಕ್ಕೆ ಹಾಕಲಿ?’ ಎಂದು ಆಲೋಚಿಸುತ್ತಾ ಹಾಗೆಯೇ ಕೈಯಲ್ಲಿನ ಕುಂಚವನ್ನು ಬಾಯಿಯೊಳಗೆ ಹಾಕಿಕೊಂಡು ವರ್ಣದ ರುಚಿಯನ್ನು ಸವಿದ ಇವನು ನಮ್ಮ ಸಂಪಾದಕರ ಬರಹಕ್ಕೆ ಹಾಕುವ ಚಿತ್ರಗಳು-ಅದೊಂದು ಸುಂದರ ದೃಶ್ಯ.\r\nನೀರು, ಅದಕ್ಕೆ ಸಂಬಂಧಿಸಿದ ಚಿತ್ರಗಳನ್ನು ಸುಂದರವಾಗಿ ಬರೆಯುವ ಈ ವ್ಯಕ್ತಿ ಈಜಲು ಅರಿಯನು. ಆದ್ರೆ ಎಲ್ಲಿಯಾದರೂ ಹೊಡೆಯಲು ಹೊರಟಿರೋ? ಜಾಗ್ರತೆ ವಹಿಸಿ! ಕರಾಟೆಯಲ್ಲಿ ಕಪ್ಪು ಪಟ್ಟಿ ಪಡೆದ ಇವನು ತನ್ನ ಎಲುಬುಗಳ ಬಳಕೆಗೆ ಇಳಿದರೆ ಮತ್ತೆ ಆಸ್ಪತ್ರೆಯೇ ಗತಿ. ಮತ್ತೊಮ್ಮೆ ಜಾಗ್ರತೆ! ಈ ವ್ಯಕ್ತಿಯು ನಮ್ಮ ಜೆ. ಎಸ್. ಎಸ್. ಆವರಣದೊಳು ಕಂಡು ಬಂದಲ್ಲಿ ನೀವು ಭಯ ಪಡಬೇಕಾದ ಅಗತ್ಯವಿಲ್ಲ. ಏಕೆಂದರೆ ನಿಮ್ಮ ಸಹಾಯಕ್ಕೆ ತತ್ಪರನಾಗಿ ತನ್ನಿಂದಾಗುವ ಪರೋಪಕಾರಕ್ಕೆ ಇವನು ಸದಾ ಸಿಧ್ಧ. ಧೈರ್ಯವಾಗಿ ಅವನಲ್ಲಿ ಮಾತಾಡಿ. ಜೈ!	100	70	10	9	2D Man	2017	2021	editor-in-chief
3	image/upload/v1635689756/FormalSaswe_k7tsrj_zxyyxn.jpg	image/upload/v1635689756/FunnySaswe_a17ggo_wcc6cz.jpg	Sharvari S. Sosale	Art-Chief	Art	Saswe	Graduated, EIE	When you initially see Sharvari from a distance, she looks like she could take you out in a fight. Only when you talk to her do you realize what a soft fluffball she is. Saswe being angry is a rare occurrence but when she is, she could and will totally demolish you. A fellow Eddie is due to get kicked by her but has thus been saved from the wrath of Saswe due to the pandemic. According to this Eddie, she threatened to flatten this fellow Eddie's bottom with her kicks. *shudders*\r\n\r\nIf you’re a friend of Saswe or barely an acquaintance, expect a fresh batch of cookies or a cake delivered to you with a handwritten note on your birthday- made by the lovely Saswe. She cooks when she’s happy, she cooks when she’s stressed and she especially cooks when she’s sad. Her love for cooking has taken over her life- to a point where she started playing a cooking game every night as a stress buster from her internship (It’s called Cooking Dream for anyone who’s interested). You’d think this girl can do anything, and well, you’re sorta right. This gal went to three different driving classes and still doesn’t know how to drive a car. You’ll be able to do it someday, Saswe. Keep trying.\r\n\r\nSaswe is able to talk to someone as if she’d known them for a lifetime - it’s truly amazing how she does that, especially to us introverted folks. This quality makes her quite the hoot during volunteering meetings for Shabd where you’ll either see her talking excitedly to people or being engrossed while making an installation. One of the fondest memories I have with Saswe was while sitting with her and helping her with Pennywise a year or two back. I hadn’t gotten the chance to have a personal conversation with her and was worried it would be awkward. Well, the next hour or so was filled with us talking about the most mundane and random things. I remember thinking, “Damn, this lady is hella fun”. \r\n\r\nSaswe is one of those people who you can always rely on and is there for you, no matter what. She’s exceptionally talented as an artist and tries to be humble about it, but she’s extremely good. She cares deeply for everyone and will always put others first before herself - which truly shows how selfless and loving she is. It was a lovely and wholesome three years with her on the Board and I am saddened by the fact that this will be the last year of Shabd together. We will truly miss her mom-lectures, rants about our college, her speeches during meets and last but not the least - her threats to kick people, or at least, a certain someone.\r\n\r\nP.S. Always lower your volume when you call this lady if you don’t want to lose your hearing.\r\n\r\nP.P.S We will miss you, Board Mom :)	80	10	50	90	Summoning new dresses	2017	2021	section-chief
2	image/upload/v1635689580/normaladi_hxwydu.jpg	image/upload/v1635689581/funnyadi_heehs7.jpg	Aditya Rajaram Hegde	Editor - Kannada	Kannada	Arama	Graduated, CSE	ಪ್ರಕೃತಿಯನ್ನೇ ತನ್ನ ಆರಾಧ್ಯದೈವವಾಗಿಸಿಕೊಂಡು, ಬೆವರು ಸುರಿಸಿ, ದುಡಿದು, ಭೂತಾಯಿಯನ್ನು ಒಲಿಸಿಕೊಂಡು, ತನ್ನ ಅಡಿಕೆ ತೋಟದಲ್ಲಿ ಮೈಸೂರು ವೀಳ್ಳೆದೆಲೆಯನ್ನು ಬೆಳೆಸಲು ಮೈಸೂರಿಗೆ ಬಂದಿಳಿದ ಮಲ್ನಾಡಿನ ಕುವರ, ಆದಿತ್ಯ ರಾಜಾರಾಮ ಹೆಗ್ಡೆ ಉರುಫ್ ನಮ್ ಆದಿ ಭೈ. \r\nತನ್ನನ್ನು ತಾನು 'ಆರಾಮ' ಎಂದು ಕರೆದುಕೊಂಡು ಬೇಜಾನ್ ಆರಾಮ್ ಮಾಡ್ತಾನೆ. ಆದರೆ ಆರಾಮ್ ಮಾಡ್ಮಾಡ್ತಾನೆ ಯಾವ ಗ್ಯಾಪ್‌ಲ್ಲಿ ಎಲ್ಲಾ ಕೆಲಸವನ್ನು ಅಚ್ಚುಕಟ್ಟಾಗಿ ಮುಗಿಸಿ, ನಿದ್ರಾದೇವಿಗೆ ಶರಣಾಗುತ್ತಾನೆಂದು ತಿಳಿಯದು. ಆದರೆ ಕ್ರಿಕೆಟ್ ಪಂದ್ಯಗಳು ನಡೀತಿರ್ಬೇಕಾದರೆ ಮಾತ್ರ, ನಿದ್ರೆಗೆ ಟಾಟಾ ಬಾಯ್-ಬಾಯ್ ಹೇಳಿ, ಕಣ್ಣಿಗೆ ಎಣ್ಣೆ ಬಿಟ್ಕೊಂಡು ಪಂದ್ಯಗಳನ್ನು ನೋಡುತ್ತಾನೆ. ಇತ್ತೀಚಿಗಷ್ಟೇ ತನ್ನ ಸಹಸಂಪಾದಕ ಹರ್ಷನಿಂದ ಒಂದು ನಾಯಿಮರಿಯನ್ನು ಪಡೆದುಕೊಂಡ ಇವ, ಶ್ವಾನ ಪ್ರಿಯ ಮಾತ್ರವಲ್ಲದೆ, ಮಾರ್ಜಾಲ ಪ್ರಿಯನೂ ಹೌದು. \r\nಹಿರಿಯ ಸಂಪಾದಕರೊಬ್ಬರು ಸಹಜವಾಗಿ "Frustration against what maccha?" ಎಂದು ಕೇಳಿದಾಗ, "Against the society" ಎನ್ನುತ್ತಾ ಇಂದಿನ ಸಮಾಜದ ಬಗೆಗಿನ ತನ್ನ ಅಸಮಾಧಾನವನ್ನು ವ್ಯಕ್ತಪಡಿಸಿದ್ದ ಆದಿ, ನೇರ ನುಡಿಯುವ ಕಠೋರವಾದಿ. ಈ ಕಠೋರತನಕ್ಕೆ ತನ್ನ ಜೀವನದಲ್ಲಿ ಆದ ಅನುಭವಗಳೇ ಕಾರಣವಂತೆ. ಜೀವನೋತ್ಸಾಹವನ್ನು ಕುಗ್ಗದಂತೆ ನೋಡಿಕೊಳ್ಳಲು ಆದಿ ಭೈಯಿಂದ ಸಲಹೆ- "ಜೀವನದಲ್ಲಿ ಬೇಜಾರ್ ಮಾಡ್ಕೊಂಡು ಕೂತರೆ, ಬರಿ ಬೇಜಾರೇ ಇರುತ್ತೆ. ಇದಕ್ಕೆಲ್ಲ ತಲೆಗೊಡ್ಬೇಡಿ. ನಿಮ್ಮ ಅನುಭವಗಳೇ ನಿಮಗೆ ಪಾಠ ಕಲಿಸುತ್ತೆ. ಅದೆ ನಿಮ್ಮ ಭವಿಷ್ಯವನ್ನು ರೂಪಿಸುತ್ತೆ. Just go with the flow⚔️". ಇರುವ ಸಮಯವನ್ನು ವ್ಯರ್ಥಗೊಳಿಸದೆ, ಖಾಲಿ ಕೈಯಲ್ಲಿ ಕೂರುವ ವ್ಯಕ್ತಿನೇ ಅಲ್ಲ. ಸಮಯದ ಸದುಪಯೋಗ ಪಡಿಸಿಕೊಳ್ಳುತ್ತಾ, ಏನಾದರು ಹೊಸದನ್ನು ಕಲಿಯುತ್ತಾ ಇರುವುದರ ಜೊತೆಗೆ, ಬೆರೆಯವರಿಗೂ ಕಲಿಸಿಕೊಡುತ್ತಾನೆ. ತೊಗೊಳಿ, ನಮ್ ಆದಿ ಭೈಯಿಂದ ಮತ್ತೊಂದು ಟಿಪ್, "ಯಾವುದಾದರು ಹೊಸ ವಿಷಯ ಕಲಿಬೇಕೆಂದರೆ, UDemy ಅಥವಾ Coursera ಹೋಗ್ಬೇಡಿ. ಸೀದ ಯೂಟ್ಯೂಬ್‌ಗೆ ಹೋಗಿ ಕಲಿರಿ. ಬೇಜಾನ್ ವಿಡಿಯೋಸ್ ಸಿಗುತ್ತೆ". \r\nಹುಟ್ಪುಹಬ್ಬವೆಂದರೆ ಕೇಕ್ ಕತ್ತರಿಸಿ ಸಂಭ್ರಮಿಸುವುದು ಸಹಜ. ಆ ಕೇಕ್ ಬಾಯಿಗೆ ಹೋಗದೆ, ಮುಖಕ್ಕೆಲ್ಲಾ ಮೆತ್ತಿಸಿಕೊಳ್ಳುವುದೂ ಉಂಟು. ಆದರೆ ಇಲ್ಲಿ ಸನ್ನಿವೇಶ ಸ್ವಲ್ಪ ಬೇರೆನೇ ಇದೆ. ಆದಿ ಭೈ ಶರೀರಕ್ಕೆ ಕೇಕ್‌ನ ಒಂದು ಚೂರೂ ಸೋಕಿಸಬಾರದಂತೆ. ಆದರೆ ಅವನು ಮಾತ್ರ ತನ್ನ ಗೆಳೆಯರ ಮುಖ-ಮೂತಿ ಎಂದು ನೋಡದೆ, ಕೇಕ್ನ ಮೆತ್ತಿ ಮೆತ್ತಿ ಇಡ್ಬೇಕಂತೆ. \r\nಭೈನ ನೀವು  ನೋಡ್ಬೇಕಂದರೆ, ಯಾಂಪಗೆ ಬನ್ನಿ. ಬಾಳ ಪಸಂದಾಗಿದೆ ಅಂತ, ಒಂದ್ ಕೈಯಲ್ಲಿ ದಿಲ್ ಪಸಂದ್, ಮತ್ತೊಂದು ಕೈಯಲ್ಲಿ ಟೀ ಹೀರುತ್ತಾ ಸಿಗುವನು. ಆದರೆ, ಇಂಟರ್ನಲ್ಸ್ ಮುಗ್ದಿದ್ ಕೂಡಲೇ, ಇವನ ಕೈಗೆ ಸಿಕ್ಕಾಕಿಕ್ಕೊಳ್ಳಬೇಡಿ. ಎಲ್ಲಾ ಪ್ರಶ್ನೆಗಳಿಗೆ ಉತ್ತರಗಳನ್ನು ತಾಳೆ ಹಾಕಲು ಪ್ರಾರಂಭಿಸುತ್ತಾನೆ. \r\nಇವನ ಹಾಗೂ ಇವನ ಗೆಳೆಯನೊಬ್ಬನ ಜಗಳ ನೋಡೋದೆ ಒಂದು ಮಜಾ. ಅವನದ್ದು ಹರ್ಕು-ಮುರ್ಕು ಕನ್ನಡ. ಇವನದ್ದು ಹರ್ಕು-ಮುರ್ಕು ಹಿಂದಿ. ಇವರಿಬ್ಬರು ಅವರವರ ಭಾಷೆಯಲ್ಲಿ ಸ್ವಲ್ಪ ಹೊತ್ತು ಬೈದಾಡಿಕೊಂಡ ನಂತರ, ಏನು ಆಗೇ ಇಲ್ಲ ಎಂಬಂತೆ ಕ್ಲೋಜೋ ಕ್ಲೋಜು. ಅದನ್ನು ನೋಡಿದ ನಾವು ಬೆಪ್ಪೊ ಬೆಪ್ಪು. 'ಕನ್ನಡ್ ಗೊತ್ತಿಲ್ಲ' ಎಂದು ಹೇಳುವವರೆಲ್ಲರಿಗು, ಕನ್ನಡ ಕಲಿಸಿಕೊಡುವ ಛಾತಿ ಇವನದ್ದು. ಅಪ್ಪಟ ಕನ್ನಡ ಭಾಷಾಭಿಮಾನಿಯಾದ ಆರಾಮನ ಬರವಣಿಗೆಯಲ್ಲಿ, ಅವನ ಶುದ್ಧ ವ್ಯಾಕರಣದ ಪ್ರಯೋಗ ಹಾಗೂ ಭಾಷೆಯ ಮೇಲಿನ ಹಿಡಿತವನ್ನು ಕಾಣಬಹುದು. ಅವನು, ಭಾವನಾತ್ಮಕ ಜೀವಿ ಆಗದಿದ್ದರೂ, ಅವನ ಲೇಖನಗಳು, ಓದುಗರನ್ನು ಭಾವುಕರನ್ನಾಗಿಸುತ್ತದೆ. 'ಇದು ನಿಮ್ಮ ಅನುಭವದ ಲೇಖನಗಳಾ?' ಎಂದು ಪ್ರಸ್ನಿಸಿದರೆ, "ಇಲ್ಲ ಗುರು, ಎಲ್ಲಾ ಬರಿ ರೀಲು" ಎನ್ನುವನು. (ನೀವೇ ಅವರ ಲೇಖನ ಓದಿ, ನಿಮಗೇ ಗೊತ್ತಾಗುತ್ತೆ). \r\nಒಂದು ಕಾಲದಲ್ಲಿ ಭೈಗೆ ಊರ್ತುಂಬ ಫಾನ್ಸ್ ಇದ್ರಂತೆ. ಕ್ಲಾಸಿಗೆ ಅನೌನ್ಸಮೆಂಟ್ಸ್ ಮಾಡಲು ಹೋದರೆ, ಅವನು ಹೇಳುತ್ತಿದ್ದ ವಿಷಯಕ್ಕಿಂತ ಅವನನ್ನು ನೋಡೋದ್ರಲ್ಲೆ ಕಳ್ದೋಗುತ್ತಿದ್ದರಿಂದ. \r\nಭೈಗೆ ಚರ್ಚೆ ಮಾಡುವುದೆಂದರೆ ಬಹಳ ಇಷ್ಟ. ಇವನ ಖಡಕ್ ಪ್ರತ್ಯುತ್ತರಗಳನ್ನು ಕೇಳಿ, ಎದುರಾಳಿಯು ತತ್ತರಿಸುವರು. ರಸಪ್ರಶ್ನಾ ಕಾರ್ಯಕ್ರಮಗಳನ್ನು ಆಯೋಜಿಸುವುದೆಂದರೆ ಇವನಿಗೆ ತುಂಬಾ ಇಷ್ಟ. ಪ್ರಚಲಿತ ವಿದ್ಯಮಾನ ತಿಳಿದುಕೊಳ್ಳುವುದರಲ್ಲಿ ನಿಷ್ಣಾತನಾದ ಈತನು, ಪ್ರಶ್ನೆಗಳನ್ನು ಹೆಕ್ಕಿ ಹೆಕ್ಕಿ ತರ್ತಾನೆ. ಸ್ಪರ್ಧಾರ್ಥಿಗಳು ಹಂತ-ಹಂತ ದಾಟಿದಂತೆ, ಇವನ ಉತ್ಸಾಹ ಕೂಡ ಇಮ್ಮಡಿಸುತ್ತದೆ.	85	60	20	55	Straightforward	2017	2021	editor
9	image/upload/v1635690908/normalroi_hc6kz1.jpg	image/upload/v1635690909/funnyroi_drl6ms.jpg	Royina K. J.	Editor - English	English Section	"Hiiiiiii" *flaps hands like a baby seal*	Graduated, CSE	"HIIIIIIIIIIIIIII!!!!"\r\n\r\nThis is probably how most people who have crossed Royina's path remember her. The loud greeting fills the air, well, with loudness. This energy ball of a person has come a long way in the four years since I've known her. \r\n\r\nFrom being a constant nap partner in class to saving butts in countless assignments and projects, she's always got your back. Royina has the quality of convincing lecturers that whatever she's saying is right, I guess she just has one of those faces. She also has the innate quality of bullshitting, it's probably because she has a solid layer of knowledge so she can quite easily sprinkle a layer of BS on top. You can have endless conversations with her about pretty much anything. She's a walking-talking museum. \r\n\r\nHer endless list of quirks includes wearing socks throughout the year (apparently she's allergic to grass), coming up with frankly quite distasteful and concerning food combinations (ice cream and curd rice being a popular contender), being physically incapable of whispering, being obsessed with anything neon (extra points if it burns your eyes out of your skull) and endangering herself and all others around when on a two-wheeler. And good luck trying to maintain contact with her after events like treks, she has the habit of instantly forgetting all faces and names she doesn’t see every day. Her phone contacts are less name and more description + history of the person. Even after 4 years of being classmates expect to see "Y/N Class'' pop up every time you call her.  \r\n\r\nThe board without her would be quite a few decibels lower! But in all seriousness, no meet is complete without her signature greeting and constant interruptions. Royina always knows what to do to keep the conversation and brainstorming going. Her infectious energy and extremely reliable dedication will be cherished forever. I’m going to miss this goofball very very much.	100	1	100	80	Frankenstein's monster	2018	2021	editor
10	image/upload/v1635691001/normalrey_nkgm5x_vuoy3g.jpg	image/upload/v1635691002/IMG-20201114-WA0017_dabsqo_cohu74.jpg	Shreya Kanchitota	Editor - English	English	Macha	Graduated, CVE	Shreya’s actual name is Girijalakshmi. She is a photo-shy, sweet, bubbly, homely, cricket player, KTM freak and the coolest Eddie. She prides herself on her leg strength because she used to skate. She makes sure she has told everyone on this planet how strong her legs are. She loves what most people despise, Kashaya. She is our in-house pasta chef (however, I’ve never got an opportunity to eat it yet). She is a foodie and has the deepest love for marshmallows. \r\nThe royal fruit according to her is pineapples and so her nickname for herself is pineapples! She lives in a bubble (her own words) and protects herself from ‘things’ she is afraid of or doesn’t like to face. An example of this is when all the eddies were emotional about seniors graduating, our kind and gentle Rey said, ‘Don’t pop my bubble!!’. Being a national level skater, she believes she has exhausted her share of glory when she was small. If you hear anyone use ‘macha’ in every sentence, you know it’s Rey! \r\nShe did not know how to ride a bike when she bought KTM Duke. She convinced her parents she had learnt how to ride whilst she knew only what YouTube could offer as lessons/tutorials. Some eddies think the max speed she has reached on the Duke is 110 kmph. She wears sweatpants to college every day and has the softest hair. Her description of long hair is probably 4-5 inches beyond which she must cut it short. She secretly enjoys ‘non-veg’ (it’s a secret dear reader, don’t you dare mention it anywhere). She goes to Kanchitota for an internet-free weekend. \r\nShe is either too quiet or too talkative. She is so loved by everyone who meets her that her neighbours give her any special dish they prepare at home. She can do anything for biryani except going alone to the counter to order it. In fact, she can’t even go to the washroom alone. She thoroughly enjoys making memes on herself. \r\nAs a kid, Rey shaved her eyebrows once and that’s why she doesn’t have them anymore. She is the proud flag-bearer of ‘namgella yaar biltare’ but she’s got game like no one else. Her guilty pleasure is watching trash Netflix chick flicks and Bollywood movies. The kind of trash you must hide it under the trash bin. She wanted to be a strong independent woman and explore the world. If you have any last-minute plans, the only one up for it will be Reyyy!!! She is a crazy and wholesome senior on the board. We love you Reyyy!!!	70	10	35	70	2 cool 4 skool	2019	2021	editor
8	image/upload/v1635690805/normalsumi_j8hmqo_kp6brn.jpg	image/upload/v1635690805/funnysumi_fhsusa_lyujnb.jpg	Sumi Lal	Editor - English	English	Lol Sumi	Graduated, CSE	If you have ever laid eyes on a tiny kid around campus wearing a hoodie equipped with the most adorable smile and every so often teaching tiny little dogs how to drink water out of a tap, chances are you have spotted Sumi Lal. Over the years, Sumi has perfected the art of staying so still that she becomes one with the background (so much so it’d put Drax to utter shame). She spends countless hours on YouTube searching for horrible videos because she says, “They're so bad that they're good.” Sumi is a person of few words and is often very shy, but don’t be fooled by her timid looks for there are rumours of her utter badassery going around about how she uses an iron box as a substitute for hot water bags and so on.\r\n\r\nShe is such an ardent simp for Phoebe Waller-Bridge and Dan and Phil that it won’t be a surprise if I wake up one day to headlines that say she broke into one of their houses to read their grocery lists.\r\n\r\nJokes aside, Sumi has a very soothing presence which particularly comes in handy during the occasional chaos that comes with hosting Shabd. She also doubles as an emotional support backpack. She is a voice of calm and reason whenever we’re discussing serious matters related to The Board.\r\n\r\nP.S. This whole belt was just a ploy to get Sumi to re-enact “The Circle of Life” scene from The Lion King with her pet rabbit, Hachi. Summmaaay, give the jantha what they want!	90	100	0	70	Invisible above eye level	2018	2021	editor
\.


--
-- Data for Name: EdWebApp_event; Type: TABLE DATA; Schema: public; Owner: dgcwkoncubyteg
--

COPY "public"."EdWebApp_event" ("id", "description", "preview_image", "title") FROM stdin;
2	As August approaches, The Editorial Board gears up for one of its most important yearly traditions- recruiting new Eddies! Are you into frantically googling synonyms of common words? Do you find yourself critiquing the colour combination choices of book covers? Are you searching for fellow grammar nerds to discuss if a.m. should be capitalized or not? Rest assured, you will find kindred souls in The Editorial Board. You can join us in conducting literary events throughout the year, including ||SHABD||, the only literary fest in a technical university in Karnataka, and bringing out the official university magazine!\r\n\r\nWe search the university far and wide for new recruits to join our ranks- in English, Kannada, and Art Sections. An extended process, set in motion after The Pilot Episode, we search for fresh talent who want to be the new members of our Ed family. \r\n\r\nIf you’re finding it hard to choose between applying for the language sections or the Art sections, fret not, we’re no strangers to indecisiveness either. You can always try your luck at both! Every recruitment, we’re amazed by the sheer amount of talent present in JSSSTU. Don’t miss the chance to showcase how good you are with words or your brush, and have a jolly good time!\r\n\r\nOnly the worthy shall pass our top-secret rounds of recruitment (rumoured to include slam poetry battles, which we can neither confirm nor deny). We’d love to see you there!	image/upload/v1605007594/67901146_370256473671247_2895121344636517277_n_xrywbj.jpg	Recruitment
4	೧೯೫೬ ರ ನವೆಂಬರ್ ೧ ರಂದು ಮೈಸೂರು ಸಾಮ್ರಾಜ್ಯದಲ್ಲಿ ಉದಯಿಸಿದ ಸೂರ್ಯನು ಕನ್ನಡ ನಾಡಿಗೆ 'ಕರ್ನಾಟಕ'ವೆಂಬ ನವನಾಮವ ಇಟ್ಟನು. ಈ ಶುಭ ಸಂದರ್ಭವನ್ನು ಸ್ಮರಿಸುವ ಹಬ್ಬವೇ ಕನ್ನಡ ರಾಜ್ಯೋತ್ಸವ. ಪ್ರತಿ ವರ್ಷ ನವೆಂಬರ್ ೧ ರಂದು ಈ ಹಬ್ಬವನ್ನು ಕರ್ನಾಟಕ ರಾಜ್ಯಾದ್ಯಂತ ಮಹದಾನಂದ ಹಾಗೂ ವೈಭೋಗದಿಂದ ಆಚರಿಸಲಾಗುತ್ತದೆ. \r\n\r\nರಾಜ್ಯೋತ್ಸವವನ್ನು ಭವ್ಯವಾಗಿ ಆಚರಿಸುವ ಸಲುವಾಗಿ ಸಂಪಾದಕ ಮಂಡಳಿಯು ಹಲವು ದಿನ ಮುಂಚಿತವಾಗಿಯೇ ಎಲ್ಲಾ ತಯಾರಿಗಳನ್ನು ಮಾಡಿಕೊಳ್ಳಲಾರಂಭಿಸುತ್ತದೆ. ಕನ್ನಡ ರಸಿಕರಿಗಾಗಿ ವಿವಿಧ ರಚನಾತ್ಮಕ ಹಾಗೂ ಕ್ರಿಯಾತ್ಮಕ ಸ್ಪರ್ಧೆಗಳನ್ನು, ಉತ್ಸವದ ಮುಂಚಿತವಾಗಿ ಹಾಗೂ ಹಬ್ಬದ ದಿನದಂದು ಹಮ್ಮಿಕೊಳ್ಳುತ್ತದೆ. ಹಬ್ಬದ ಪೂರ್ವ ಭಾಗದಲ್ಲಿ, ಛಾಯಾಚಿತ್ರ ಸ್ಪರ್ಧೆ ಹಾಗೂ ನಿಧಿಶೋಧ ಸ್ಪರ್ಧೆಗಳನ್ನು ಆಯೋಜಿಸಲಾಗುತ್ತದೆ. ನೀಡಿರುವ ವಿಷಯಕ್ಕನುಗುಣವಾಗಿ ಮನಸೂರೆಗೊಳಿಸುವ ಛಾಯಾಚಿತ್ರವನ್ನು ತೆಗೆಯುವವರು 'ಛಾಯಾಚಿತ್ರ ಸ್ಪರ್ಧೆ'ಯ ವಿಜೇತರೆನಿಸಿಕೊಳ್ಳುವರು.  'ನಿಧಿಶೋಧ' ಸ್ಪರ್ಧೆಯಲ್ಲಿ, ನೀಡಲಾಗುವ ಸುಳಿವುಗಳ ಜಾಡು ಹಿಡಿದು, ಮುಂದಿನ ರಹಸ್ಯ ಸ್ಥಳವನ್ನು ಪತ್ತೆ ಹಚ್ಚುತ್ತಾ ಸಾಗಿ ಅಂತಿಮ ಸ್ಥಳವನ್ನು ಮುಟ್ಟುವವರು ವಿಜಯಶಾಲಿಗಳಾಗುವರು. \r\n\r\nಹಬ್ಬದ ಮುಂಜಾನೆ, \r\nನವ ಪುಷ್ಪದ, ನವ ಭಾವದ, ನವನವೀನತೆಯು ಹರಡಿರಲು,\r\nಮನದ ಭಕುತಿಯು ಕನ್ನಡಕ್ಕಾಗಿ ಮಿಡಿದಿರಲು,\r\nಕನ್ನಡಾಂಬೆಯ ಘೋಷವನ್ನು ಉದ್ಘೋಷಿಸುತ್ತ \r\nಎಲ್ಲರನ್ನು ಆಹ್ವಾನಿಸಲು, \r\nಅಲ್ಲಿ ಹೊರಡುವುದೊಂದು ಪುಟ್ಟ ಮೆರವಣಿಗೆ.\r\nವಿಶ್ವವಿದ್ಯಾಲಯದ ಪ್ರಮುಖರಾದ ಕುಲಸಚಿವರು, ಪ್ರಾಂಶುಪಾಲರು, ಪ್ರಾಧ್ಯಾಪಕರು ಹಾಗೂ ವಿದ್ಯಾರ್ಥಿಗಳ ಉಪಸ್ಥಿತಿಯಲ್ಲಿ ಕಾಲೇಜಿನ ಆವರಣದಲ್ಲಿ ಧ್ವಜಾರೋಹಣ ಕಾರ್ಯಕ್ರಮವು ನಾಡಗೀತೆಯೊಂದಿಗೆ ನೆರವೇರುವುದು. ಶೀತಲ ಪವನದ ಸಂಚಾರದ ನಡುವೆ ರಾರಾಜಿಸುವ ಕೆಂಪು ಹಳದಿ ಪಟದ ಶ್ರೀರಕ್ಷೆಯಲ್ಲಿ ಉತ್ಸವದ ಶುಭಾರಂಭವಾಗುವುದು.\r\n\r\nರಂಗುರಂಗಿನ ಪುಷ್ಪಗಳಿಂದ ಸಾಲಂಕೃತಗೊಂಡ ಸಭಾಂಗಣ.\r\nಕನ್ನಡವನ್ನು ಉಸಿರಾಗಿಸಿಕೊಂಡಿರುವ ವಿದ್ವಾಂಸರಿಂದ ಕಂಗೊಳಿಸುವ ವೇದಿಕೆ. \r\nಅವರ ವಾಕ್ಚಾತುರ್ಯವನ್ನು ಆಸ್ವಾದಿಸುತ್ತಿರುವ ಪ್ರೇಕ್ಷಕ ಗಣ. \r\nಇವೆಲ್ಲಕ್ಕೂ ನಮಗುಂಟು ಕನ್ನಡಮ್ಮನ ಹಾರೈಕೆ. \r\nಸಭಾ ಕಾರ್ಯಕ್ರಮವೆಲ್ಲಾ ಮುಗಿದ ನಂತರ, ಕೌಶಲ್ಯಕ್ಕೆ 'ಕನ್ನಡ ರಸಪ್ರಶ್ನೆ' ಹಾಗೂ ಪ್ರತಿಭಾ ಪ್ರದರ್ಶನಕ್ಕೆ 'ವೇದಿಕೆ' ಎಂಬ ಎರಡು ಸ್ಪರ್ಧೆಗಳು ಜರುಗುತ್ತವೆ. ನೃತ್ಯ, ನಾಟಕ, ಏಕಪಾತ್ರಾಭಿನಯ, ಭಾವಗೀತೆ, ಸ್ವರಚಿತ ಕವನ ವಾಚನ, ಚುಟುಕುಗಳು, ಪ್ರಹಸನ, ನಗೆಹೊನಲು ಇನ್ನೂ ಹತ್ತು ಹಲವಾರು ಪ್ರತಿಭೆಗಳನ್ನು ಪ್ರದರ್ಶಿಸಲು 'ವೇದಿಕೆ'ಯನ್ನು ನಿಮ್ಮದಾಗಿಸಿಕೊಳ್ಳಬಹುದು.\r\nಜ್ಞಾನದೊಂದಿಗೆ ಸಾಹಿತ್ಯದ ಸ್ನೇಹವನ್ನು ಕೂಡಿಸಿದರೆ ಮಾತ್ರ 'ರಸಪ್ರಶ್ನೆ'ಯ ಬಹುಮಾನವನ್ನು ನಿಮ್ಮದಾಗಿಸಿಕೊಳ್ಳಬಹುದು. \r\n\r\nನಮ್ಮವರೊಂದಿಗೆ ನಗುವನ್ನು ಹಂಚುತ್ತಾ, ಹಿರಿಯರ ಮಾರ್ಗದರ್ಶನ ಪಡೆಯುತ್ತಾ, ಸಂಜೆಯ ಸೂರ್ಯನಿಗೆ ವಿದಾಯ ಹೇಳುವ ಸಮಯಕ್ಕೆ, ಈ ಎಲ್ಲಾ ಸ್ಪರ್ಧೆಗಳ ವಿಜೇತರನ್ನು ಪುರಸ್ಕರಿಸಲಾಗುತ್ತದೆ. ಕನ್ನಡ ಮಾತೆಗೆ ನಮ್ಮೆಲ್ಲರ ಸ್ನೇಹ ಮತ್ತು ನಮನಗಳನ್ನು ಅರ್ಪಿಸಿ, ಉತ್ಸವಕ್ಕೊಂದು ಶಿಸ್ತುಬದ್ಧ ಪೂರ್ಣ ವಿರಾಮವನ್ನು ಇಡಲಾಗುವುದು.\r\n\r\nRed and yellow state flags adorn the streets, houses, and official buildings to celebrate the foundation of the state in the name of Kannada Rajyotsava. The festival is celebrated on the 1st of November every year across the state of Karnataka with great joy and pomp. The beauty of this day is that it’s enjoyed with much excitement across all age groups, religions, and gender, making it a truly wholesome and inclusive celebration.\r\n\r\nThe Editorial Board begins to prepare all day long for the grand celebration of Kannada Rajyotsava. There are various competitions for Kannada enthusiasts on the eve of and on the day of the festival. On one side, photography and fundraising events are held. In the 'Treasure Hunt' competition, various teams will follow the trail of clues to find the next secret spot. They race to decipher the clues with great enthusiasm to reach the final location.\r\n\r\nOn the day of Rajyotsava, the state flag is hoisted on campus and is accompanied by the state anthem in the presence of the university's leading dignitaries, principal, professors, and students who pay their respects to the language and the state. The hall, which is adorned with flowers and red and yellow flags, is opened for the main event. After this, there are two competitions - 'Kannada Quiz' and ‘Vedike’. Participants are encouraged to dance, perform a drama or a monologue, sing, recite poetry as part of the event. Winners of all these competitions are awarded prizes by the Chief Guest.	image/upload/v1608216544/71758020_406176306998746_8626691867916426205_n_bj6ws7.jpg	Kannada Rajyotsava
5	Have you been shunned because people think you're not old enough to express your opinions? Do you feel isolated because there is no one listening to what you have to say? Have you wished that people didn't ignore you for not agreeing with the majority? Don't worry, we've got your back! Mindspeak is just the right event for you!\r\n\r\nMindspeak, as the name suggests, is a platform to come and shout out your stance. It is the last event conducted by The Editorial Board for the academic year. There are three to four questions that are chosen. These are questions that affect us, ranging from "Is disagreement towards national sentiment anti-nationalism?" to "Immortality and life". \r\n\r\nOver the years we've witnessed many students and teachers express their opinions on the topics at Mindspeak. It's not a debate or a discussion, but a place where you can voice your opinions. It's a place where ideas and opinions are put forth without fear of judgment and hesitation. As an audience, you might explore new sides. At Mindspeak, you can speak your heart out and find people listening to it. We hope to see you there the next time we conduct this event!	image/upload/v1605007975/54800597_647659115682767_4070159037395776323_n_xgxfy9.jpg	Mindspeak
1	The start of a new academic year ushers in a horde of young, wide-eyed kids hoping to make a memorable experience out of their engineering life at the tranquil campus of JSSS&TU. The first month of college is spent shuffling to innumerable induction courses, making new friends and getting accustomed to the new environment. However, that's not all there is to college life, is it?\r\n\r\nIt is always refreshing getting together with like-minded individuals to exchange ideas and thoughts about anything and everything. One surefire way of meeting such people are at student clubs. Taking part in extracurricular activities is a guaranteed way of having fun and getting to know the awesome folks you work with is an added bonus. \r\n\r\nHaving lost seasoned warriors to graduation, almost all the clubs on campus will be looking to induct fresh talent. The Pilot Episode is one such event that calls for new recruits to join the ranks of The Editorial Board. \r\n\r\nThe Pilot Episode is the first of many events organized by The Editorial Board and it’s an introductory session organized annually to let the student community know about our recruitment process, which is conducted shortly afterward.\r\n\r\nThe event starts off with a brief glimpse into the roles and responsibilities of The Editorial Board as a student club and is followed by a series of interactive games. Finally, the current crew members introduce themselves before concluding the event. If you are someone who loves puns, caption games, and KitKats then you’ll definitely love The Pilot Episode. Do come to check us out during the pilot season!	image/upload/v1614426515/pilot_episode_poster_o4urbn.jpg	The Pilot Episode
3	The word 'Aralikatte' paints a vivid picture, redolent of camaraderie and solidarity. With the onset of a dusky sky, the people of the village gather to converse and share. Through this event, we try our best to uphold the spirit of village folk chatting away under the safe and comforting boughs of the peepal tree, albeit with contemporary finesse. \r\n\r\nAt its core, Aralikatte is an open mic event and is one of the initial few events we hold to kick off the new academic year, with the intention of exhibiting creative freedom. Weeks before the event, we decide on a fitting theme for the event. With topics ranging from 'fear' to 'mistakes', Aralikatte aims to put people with stories on a pedestal. \r\n\r\nParticipants are given carte blanche to speak or perform as they wish. They sing, share funny anecdotes, stage plays, recite poetry, and find solace in their audience knowing full well that there are people listening to them. In spite of being a relatively new event, Aralikatte never fails to bring people together, regardless of who they are and where they're from.\r\n\r\nAralikatte, as an event, lays emphasis on individuality via myriads of creative mediums. What it ultimately accomplishes is giving a voice to everyone under its canopy. Keep an eye out for the next time we decide to rendezvous. As we like to put it, a lot of things can happen under a peepal tree.	image/upload/v1608216409/aralikatte_f3apay.jpg	Aralikatte
\.


--
-- Data for Name: EdWebApp_eventimage; Type: TABLE DATA; Schema: public; Owner: dgcwkoncubyteg
--

COPY "public"."EdWebApp_eventimage" ("id", "images", "event_id") FROM stdin;
1	image/upload/v1605005656/67779593_672170646627458_4632814130857224097_n_1_yalt6f.jpg	1
3	image/upload/v1605005970/69275203_447236769333529_6390487552600038846_n_1_zx1rpr.jpg	2
4	image/upload/v1605006189/WhatsApp_Image_2020-11-04_at_12.38.40_PM_1_u76olx.jpg	3
5	image/upload/v1605006190/71894569_1263283087184206_5838606274561427621_n_1_hi7kv6.jpg	3
6	image/upload/v1605006190/70810866_137935170847236_6084060504456171405_n_1_tbummj.jpg	3
7	image/upload/v1605006831/54731849_277728649818640_4970497440598029487_n_1_lbcqhh.jpg	5
8	image/upload/v1605007771/DSC_0200_1_1_ocz4tn.jpg	4
9	image/upload/v1605007773/BeFunky-collage_1_1_p07qso.jpg	4
10	image/upload/v1605007857/DSC_1378_1_1_nnq0of.jpg	4
11	image/upload/v1614425662/Treasure_hunt_qqoi0o.jpg	1
12	image/upload/v1614425663/pilot_episode_1_pgkxn6.jpg	1
13	image/upload/v1614425663/pilot_episode_2_agbae8.jpg	1
14	image/upload/v1614425664/treasure_hunt_phviky.jpg	1
15	image/upload/v1661720806/DSC_0171_dqwald.jpg	3
\.


--
-- Data for Name: EdWebApp_faq; Type: TABLE DATA; Schema: public; Owner: dgcwkoncubyteg
--

COPY "public"."EdWebApp_faq" ("id", "question", "answer", "topics", "ord") FROM stdin;
10	What do I do if I want to participate in two events scheduled at the same time?	Inform the event heads about the events you want to participate in and we'll try our best to make sure you can participate in both.	General questions	10
11	The event has started, can I still participate from the middle?	Please contact the event head for that event and we’ll try our best to accommodate you.	General questions	11
12	Should we switch on our webcam if our event is taking place through Google Meet?	I’m sure we’re all craving some human contact right now, so yes, we’d love to see all your beautiful faces.\r\n\r\nJokes aside, it is mandatory to turn on your Webcams for events that take place through Google Meets.	General questions	12
13	Can we join to just watch as spectators for events like Debate?	Sadly, for this year, we cannot accommodate an audience.	Debate	101
14	Is Debate a team event?	You will have to participate as an individual. On the day of the event, you will be randomly allocated to teams.	Debate	102
1	What is SHABD? Who is SHABD? Why is SHABD?	SHABD is the annual literary and art fest held by The Editorial Board of JSSSTU, Mysore. Shabd 2021 is our first open-for-all online edition!	General questions	1
2	Is there an age limit for participants?	Participants of all shapes and sizes are welcome!	General questions	2
3	Is there any registration fee?	Nope! It’s all free :)	General questions	3
4	Can I participate even if I'm not from JSSSTU?	Yes! The events are open for anyone with a zeal for literature, art, or fun!	General questions	4
5	Should I call the event head for registration?	A link to our registration forms for each event is up in our Instagram bio. So, you don’t need to call the event head for registration, but please feel free to reach out to them for any queries.	General questions	5
6	Who should I contact if I have doubts about the events or the registration process?	Please feel free to contact the event heads for any doubts or additional information. You will find their contact details in the Rules List.	General questions	6
7	When and how do I register for the events?	A link to our registration forms is up in our Instagram bio. \r\n*Registrations for debate will be open till the maximum number of participants are reached. \r\n*For all other events, registrations will be open till 15 minutes after the commencement of the event.\r\n*After registration, you will be added to the main Shabd WhatsApp group. Further information about the events will be provided here.	General questions	7
8	Can we join as a team?	Unfortunately, as everything has been shifted to being online this year, all events are individual events.	General questions	8
9	What if while participating during any of the events that happen through Google Meet, I have a problem with my internet connection. What should I do then?	You’ll be provided with a number to contact if this happens and we’ll try our best to make sure you can resume from where you left off.\r\n\r\nUnfortunately for Quiz, this isn’t possible. Please make sure you have a stable internet connection while participating in Quiz.	General questions	9
15	For 'Build Your Character’, does the character have to be fictional?	Yes, it needs to be an original character that you need to build using your imagination and creativity. Character depth and consistency of the character will win you points.	Build Your Character	201
16	Is it mandatory to use Photoshop for Photobashing?	Nope, you can use any software of your choice.	Art	301
17	How do I submit my artworks/entries?	A google form link will be sent to the particular WhatsApp group of your event half an hour after the commencement of the event, simply upload all your submissions and pat yourself on the back :)	Art	302
18	Are there prizes?	Yes! Every event has a cash prize for the winners! Participate and get a chance to win that cha-ching.	Winners And Prizes	401
19	When and where will the results of the events be declared?	We will release the list of all the winners to our Instagram page and we’ll also directly contact the winners personally, shortly after the fest is over.	Winners And Prizes	402
20	Is there no registration required to participate in Bamboozled or Picture Connect?	Nope, we’ll be sharing the link when those events begin through our WhatsApp Shabd group and on our social media pages.	Bamboozled And Picture Connect	251
\.


--
-- Data for Name: EdWebApp_kr_registration; Type: TABLE DATA; Schema: public; Owner: dgcwkoncubyteg
--

COPY "public"."EdWebApp_kr_registration" ("id", "event_name", "time", "date", "phone_number", "reg_form") FROM stdin;
4	ನಿಧಿ ಶೋಧ	5:30 PM	19 ನವೆಂಬರ್	6362723573	https://bit.ly/kr-hunt
1	ಹಾಸ್ಯಪಾಕ		13-17 ನವೆಂಬರ್	6362723573	https://bit.ly/haasya
\.


--
-- Data for Name: EdWebApp_member; Type: TABLE DATA; Schema: public; Owner: dgcwkoncubyteg
--

COPY "public"."EdWebApp_member" ("id", "profile_image", "thumbnail_image", "name", "title", "sections", "tagline", "information", "belt", "geek_meter", "introversion", "paapa_meter", "peching", "year_of_recruitement", "position", "current_sem", "ability") FROM stdin;
2	image/upload/v1604993327/normalanagha_jontr2.jpg	image/upload/v1661502629/Anagha_kzx21a.jpg	Anagha P.	Editor-in-Chief	English	Not a cannibal	VII Sem, CSE	If I had to summarize Anagha in 3 of her own lines, they would have to be the following-\r\n"I've lost track of who's alive!" * giggles for 5 minutes *\r\n"Arundathi won't come and eat me, I will eat Arundhati."\r\n"Hey let's have our recruitment via Hackerrank."\r\n\r\nYup, as bizarre as that may sound, dear Anagha is a cute bundle of awkwardness, fear and intelligence interwoven together- characteristics which I will break down further.\r\n\r\nSCARED ANAGHA: Little Anagha has way too many fears. There are two subcategories:\r\nFear of poltergeists, monsters, jump scares, and the 'absolute pure terror' fear:\r\nFrom urban legends to that one scene from Arundathi, the spectrum is quite diverse. Her YouTube recommendations probably know this the best. However, she's developing strategies to overcome these hurdles. Anagha automatically pixelates the stuff she doesn't wanna see in her mind, hence escaping fear. She chants "Om Namah Shivaya" when she's scared, to summon the Gods, especially when any dogs around her start fighting. Another promising strategy Anagha follows is to start dreaming about biriyani when in distress. She even does her homework well by taking pepper spray with her before an exam. So to all the creeps who want to scare poor Anagha from the backseat of her car, BEWARE!\r\nThird world fears-\r\nAnagha is extremely hygiene-conscious and it's practically impossible for her to enter public loos. Her pollen allergy is another contributor to her fear of the world around her. Besides her surroundings, another fear that our dear Anagha harbours is the concept of commitment, and can many a time be found asking for advice on this notion.\r\n \r\nAWKWARD ANAGHA: She is a very socially awkward person and thinks a zillion times before smiling at anyone. Flustered Anagha's anecdotes can be documented to form entire books together as embarrassing incidents happen to her on a daily basis. Once when she went shopping, she gave her room key to the security guard instead of the token to get the bags back. 2020 was a big year for Anagha as her social interactions improved exponentially. The story behind her success involved googling how to interact with people as well as making a mental note of questions and conversation starters. She then practised them in front of the mirror so that she could be a good host during her sister's wedding. She felt very proud of herself since she was deemed 'graceful'. We are proud of you Anagha!\r\n\r\nSMARTY PANTS ANAGHA: A very intelligent kiddo, this wholesome human being is extremely smart and hard-working. She notes things down with a lot of dedication and maintains them adorably. Her food recommendations are top-notch and her quality of work copper-bottomed. Her intellectual exchange with the quizmaster last SHABD is something she'll truly cherish forever.\r\n\r\nAll in all, Anagha is very lively and open to talking about anything. A giggle from her during an awkward moment puts a smile on all our faces. The Board and every meet we have would be incomplete without this kiddo.	100	85	70	20	2018	editor-in-chief	7	Drifting
15	image/upload/v1605004488/FormalApoorva_ojoolu.jpg	image/upload/v1661502695/Afoofa_ggobqd.jpg	Apoorva K. C.	Editor - Art	Art	Afoofa	V Sem, CSE	If you see a lass with a hoodie outside the Girls Hostel power walking with her chocolate milk, it's definitely Apoorva. Do you want recommendations on the Chinese food in Zomato and the best K-Drama to go with it? Fret not, she has you covered. A hard-working Eddie who can whip up amazing art in seemingly no time, Apoorva is a wonderful addition to the Board.	95	40	60	40	2020	editor	5	200 K-dramas a year
14	image/upload/v1605004226/FormalAnanya_vxl91g.jpg	image/upload/v1661502705/Ananya_li5jsr.jpg	Ananya K.	Editor - Art	Art	"I love maintaining a 9.0 GPA."	V Sem, CSE	If there's one thing we agree about Ananya, it's that she's incredibly sweet. This giggly ray of sunshine is incredibly passionate about art and everything related to it! She might seem shy, but know that she's more than capable of handling awkward situations with grace. Ananya has a long list of funny quirks, which she slowly reveals as you get to know her. The Board will be incomplete without her!	20	80	100	5	2020	editor	5	Keen senses
23	image/upload/v1622051738/WhatsApp_Image_2021-05-26_at_11.08.31_AM_egympb.jpg	image/upload/v1661502739/Vadi_dmgxcn.jpg	Vadiraj B Hayagreeva	Editor - Kannada	Kannada Section	*insert beautiful melodies *	III Sem, ECE	‘ಓ ಮೇಘವೇ... ಮೇಘವೇ... ಹೋಗಿ ಬಾ’ ಎಂದು ಯಾವ ಹುಡುಗಿಯ ಧ್ಯಾನ ಮಾಡುತ್ತಿರುತ್ತಾನೋ ನಮ್ಮ ಹುಡುಗ ತಿಳಿಯದು. ಆದರೆ ಇವನ ಕಂಠಸಿರಿಗೆ ಆ ಮೇಘಗಳೇ ಧರೆಯನ್ನು ಚುಂಬಿಸಿದರೂ ಆಶ್ಚರ್ಯವಿಲ್ಲ. ತನ್ನ ಅತ್ಯುತ್ತಮ ಮಾತಿನ ಶೈಲಿ ಹಾಗೂ ಆಲೋಚನಾಲಹರಿಯಿಂದ ಎಲ್ಲರ ಮನ ಗೆದ್ದ ಈತ, ಆಧ್ಯಾತ್ಮಿಕ ವ್ಯಕ್ತಿಯೂ ಹೌದು. ಅಂತರಿಕ್ಷದ ಬಗ್ಗೆ ಅಪಾರ ಒಲವನ್ನು ಹೊಂದಿರುವ ವಾದಿಯ ಬಳಿ ಸುಂದರ ದೂರದರ್ಶಕವೊಂವಿದೆ. ಪುರಾಣಗಳ ಬಗ್ಗೆ ಅಗಾಧ ಜ್ಞಾನವನ್ನು ಹೊಂದಿರುವ ಈ ಸ್ನೇಹಿ ಎರಡನೇ ವರ್ಷದ ಇ. ಸಿ. ವಿಭಾಗದಲ್ಲಿ ಓದುತ್ತಿದ್ದಾನೆ.	78	50	88	25	2021	editor	3	To shut a room up with his amazing vocals
22	image/upload/v1622050504/WhatsApp_Image_2021-05-21_at_9.17.19_PM_xeerzp.jpg	image/upload/v1661502750/Bubu_d4ukab.jpg	Bhuvan Koduru	Editor - English	English Section	Big Boi	III Sem, ISE	Bhuvan/Bubu is a talented junior who has no qualms about taunting his seniors. Conversations with this Eddie are always hilarious. His most creative ideas come to him when he's running or cycling. He's currently obsessed with the adorable monkey emoji and has superior editing skills. Bubu is also an enthusiastic lover of puzzles, puns and rickrolling people. We can't wait to see what this fascinating Eddie has in store for us!	90	75	76	30	2021	editor	3	Talking in front of crowds
21	image/upload/v1622049249/WhatsApp_Image_2021-05-21_at_8.51.54_PM_z40cni.jpg	image/upload/v1661502759/Ana_a75olf.jpg	Anagha Honnali	Editor - English	English Section	Kk	III Sem, CSE	This incredibly sweet and adorable Eddie has managed to sweep us off our feet with her witty comebacks and amazing ideas. She is famously known for always being politically correct and is terrified of four-legged creatures that roam the college campus. Her sweet singing can bring a smile to anyone's face. The Eddies are super excited to have her on board and can't wait to hear her views on everything from Stoicism to pigeons.	95	99	98	20	2021	editor	3	As sweet as candy
3	image/upload/v1661502575/normalsanta_v8pyu1.jpg	image/upload/v1661502577/Santa_neaygh.jpg	Sanchita V. Kumar	Editor - Kannada,Art	Kannada, Art	#1 Cream of Mushroom Soup fan	V Sem, CSBS	I don't have a soul. I'm the soul.\r\nφ\r\nಲೋಕೋ ಭಿನ್ನ ರುಚಿಃ \r\n\r\nಮೇಲ್ಕಂಡ ಬಯೋ ನಿಮಗೆ ವಿಚಿತ್ರ ಅಥವಾ ವಿಭಿನ್ನ ಎನ್ನಿಸಿದಲ್ಲಿ ಅಥವಾ ನಿಮ್ಮ ತಲೆಯಲ್ಲಿ ಏನೋ ಒಂದು ಆಲೋಚನೆಯನ್ನು ಹುಟ್ಟಿಸಿದಲ್ಲಿ ಅಥವಾ ಮನುಷ್ಯರೇನಕ್ಕೆ ನೀರನ್ನು ಕುಡಿಯುತ್ತಾರೆ ಎಂದು ತಿಳಿಯಬೇಕೆಂದರೆ ಇವಳ ಇನ್ಸ್ಟಾಗ್ರಾಂ ಖಾತೆಯನ್ನು ಇಂದೇ ಅಲ್ಲ ಅಲ್ಲ ಈ ಕ್ಷಣವೇ ಹಿಂಬಾಲಿಸಿ.\r\nಕಪ್ಪು ಕೇಶರಾಶಿ, ಅದನ್ನೊಂದೆಡೆ ಹಿಡಿದಿಡಲು ಹಾವಿನಂತೆ ಸುತ್ತಿಕೊಂಡಿರುವ ಹೇರ್ ಬ್ಯಾಂಡ್, ಸುತ್ತ ನಡೆಯುತ್ತಿರುವ ಎಲ್ಲಾ ವಿಷಯಗಳನ್ನು ಯಾರಿಗೂ ತಿಳಿಯದಂತೆ ಗಮನಿಸುತ್ತಿರುವ ಕಣ್ಗಳು ಹಾಗೂ ಕೇಳಿಸಿಕೊಳ್ಳುತ್ತಿರುವ ಕಿವಿಗಳು. ಪ್ರಶ್ನಾತ್ಮಕ ಚಿಹ್ನೆಯನ್ನು ಮೊದಗಲ್ಲಿರಿಸಿಕೊಂಡು, ಯಾವುದೋ ಲೋಕದಲ್ಲಿ ಕಳೆದುಹೋದವರಂತೆ ಭಾಸವಾಗುವಂತೆ ನಿಮ್ಮೆಡೆಯೇ ಯಾರಾದರೂ ನಡೆದು ಬರುತ್ತಿದ್ದರೆ, ಅದು ಕಂಡಿತ ನಮ್ಮ ಸ್ಯಾಂಟಾನೇ. ಎಲ್ಲಾ ವಿಷಯಗಳಲ್ಲಿ ಅಭಿರುಚಿ ಹೊಂದಿರುವ ನಮ್ಮ ‘S ಗ್ರೇಡ್ ಸಂಚಿತಾ’ ಅಲ್ಲಲ್ಲ ‘ಎಟಿಮಾಲಜಿ ಸಂಚಿತಾ’ರವರು ತಿಳಿಯದಿರುವ ವಿಷಯವಿಲ್ಲ ಹಾಗೂ ಟೇಸ್ಟ್ ಮಾಡದಿರುವ ಖಾದ್ಯವಿಲ್ಲ. ಸದಾ ಕಾರ್ಯನಿರತಳಾಗಿರುವ ಈಕೆ ಅಪರೂಪಕ್ಕೇನಾದರೂ, “ಆ... ಆ... ಅದು ನಂಗೆ ಒಂದು ವಿಷಯ ಕೇಳ್ಬೇಕಿತ್ತು...” ಎಂದು ಹೇಳಿದರೆ, ಪ್ರಶ್ನೆಗಳ ಸುರಿಮಳೆಗೆ ತಯಾರಾಗಿ ಎಂದರ್ಥ. ಬಹಳ ಶಿಸ್ತಿನಿಂದ ತರಗತಿಯಲ್ಲಿ ಪಾಠ ಕೇಳುವುದಲ್ಲದೇ, ಕೈ ಮೇಲೆ ಡೂಡಲ್ ಮಾಡುವುದಲ್ಲದೇ, ಜನನ, ಮರಣ, ಆತ್ಮ, ಪುನರ್ಜನ್ಮದಿಂದ ಹಿಡಿದು ಅಂತರಿಕ್ಷದವರೆಗೆ ನಡೆವ ಎಲ್ಲಾ ವಿಷಯಗಳ ಬಗ್ಗೆ ಆಲೋಚಿಸುತ್ತಾ (+ ತಲೆ ಕೆಡಿಸಿಕೊಳ್ಳುತ್ತಾ) ಕೂರುವ ಈಕೆ, ಎಲ್ಲಾ ವಿಷಯಗಳನ್ನು ಸೀರಿಯಸ್ ಆಗಿ ತಗೊಂಡು, ಆ ಕೆಲಸ ಮುಗಿವ ತನಕ ನಿದ್ದೆ ಮಾಡದೆ ಎದ್ದಿರುವ, ನಿಶಾಚರಿ ಮಲ್ಟಿಟಾಸ್ಕರ್. ಸುಲಭವಾಗಿ ಯಾವುದೇ ವಸ್ತು ಚನ್ನಾಗಿದೆ ಎಂದು ಒಪ್ಪದ ಈಕೆಗೆ ‘ಕ್ರೀಮ್ ಆಫ್ ಮಶ್ರೂಮ್’ ಸೂಪ್ ಎಂದರೆ ಪಂಚಪ್ರಾಣವೆಂದು ಅರಿತೊಡನೆ ನನಗೆ ಮಶ್ರೂಮ್ ಮೇಲಿನ ಅಭಿಪ್ರಾಯವೇ ಬದಲಾಗಿದೆ. ಚಲನಚಿತ್ರಗಳ ವಿಮರ್ಶೆ ಕೇಳಿದರೆ ಪುಟಗಟ್ಟಲೆ ಬರೆದು ಕಳುಹಿಸುವ ಈಕೆಗೆ ಚಲನಚಿತ್ರಗಳಿಗಿಂತ ನಾಟಕಗಳನ್ನು ವೀಕ್ಷಿಸುವುದೆಂದರೆ ಬಹಳ ಇಷ್ಟ. ನಾಟಕಕ್ಕಿಂತ ಹೆಚ್ಚಾಗಿ, ವೇದಿಕೆಯನ್ನು ಸಿದ್ಧಪಡಿಸಿರುವ ರೀತಿ, ಹಿನ್ನೆಲೆ ಗಾಯನ ಹಾಗೂ ಪಾತ್ರಧಾರಿಗಳ ವೇಷಭೂಷಣ, ಅಲಂಕಾರಗಳನ್ನು ಗಮನಿಸುತ್ತಾ ಮೈ ಮರೆಯುತ್ತಾಳೆ. ಸದಾ ಕಲ್ಪನಾಲೋಕದಲ್ಲಿ ತೇಲಾಡುತ್ತಾ ಇರುವ ಈಕೆಯನ್ನು ಎಚ್ಚರಿಸಬೇಕೆಂದರೆ ಒಂದು ಶ್ವಾನವನ್ನು ಕಳುಹಿಸಿ ಸಾಕು. ಇವಳ ಕಿರಚಾಟ ಕೇಳಿ ಶ್ವಾನವೇ ಒಂದು ಕ್ಷಣಕ್ಕೆ ಗೊಂದಲಕ್ಕೊಳಗಾಗುತ್ತದೆ. ಇತ್ತೀಚೆಗೆ ತಿಳಿದುಬಂದ ವಿಷಯವೆಂದರೆ, ಈಕೆ ಕನಸುಗಳ ಬಗ್ಗೆ ಆಳವಾದ ಅಧ್ಯಯನವನ್ನು ನಡೆಸುತ್ತಿದ್ದಾಳೆಂದು. ನಿಮಗೇನಾದರು ಕನಸಿನಲ್ಲಿ ವಿಶೇಷ ಅನುಭವಗಳಾಗಿದ್ದಲ್ಲಿ ಆಥವಾ ಈ ವಿಷಯದ ಬಗ್ಗೆ ಚರ್ಚಿಸಬೇಕೆಂದೆನಿಸಿದಲ್ಲಿ, ಯಾರನ್ನು ಸಂಪರ್ಕಿಸಬೇಕೆಂದು ನೀವು ತಿಳಿದಿದ್ದೀರೆಂದು ಭಾವಿಸುತ್ತೇನೆ. ಸ್ಯಾಂಟಾಳನ್ನು ಯಾವುದೇ ಕಾರಣಕ್ಕೂ ಕೆಣಕುವ ಪ್ರಯತ್ನ ಮಾಡಬೇಡಿ, ಅವಳ ಮೇಲೆ ಸೋಮೇಶ್ವರ ಹಾಗೂ ನಾಗೇಶ್ವರ ದೇವರ ಕೃಪೆ ಇದ್ದು, ನಿಮ್ಮ ಅದೃಷ್ಟ ಕೆಟ್ಟಿದ್ದರೆ ಪಟಾಕಿ ಹಾಗೂ ಚೂಪಾದ ಎಲೆಗಳಿಂದ ಪ್ರಹರ ನಡೆಯುವ ಸಾಧ್ಯತೆಗಳಿವೆ ಎಂದು ಈಗಲೇ ಎಚ್ಚರಿಸಲಿಚ್ಚಿಸುತ್ತೇನೆ. ಸಣ್ಣ ಮಕ್ಕಳಿಗೆ ಕೆಲವೊಮ್ಮೆ ಹೆದರಿಕೆಯನ್ನುಂಟು ಮಾಡಬಹುದಾದಂತಹ, ನಿಲ್ಲುವುದಕ್ಕೆ ಸ್ವಲ್ಪ ಸಮಯ ಹಿಡಿಯುವಂತಹ ಈಕೆಯ ನಗು ಸದಾ ಹಾಗೆಯೇ ಇರಲಿ.	90	69	80	10	2019	editor	5	Attracts serial killers
4	image/upload/v1604993635/normalvij_farsew.jpg	image/upload/v1661502616/Vij_eykp7v.jpg	Vijeth Vaishnav D.	Editor-in-Chief	Kannada	#icanunderstand	VII Sem, CSE	‘ಮಗಳು ಜಾನಕಿ' ಧಾರವಾಹಿ ಶುರುವಾಯ್ತು ಅಂದ್ರೆ ಸಾಕು, ಎಲ್ಲಿದ್ದರೂ ಟಿವಿ ಮುಂದೆ ಹಾಜರಿರ್ತಾನೆ ನಮ್ಮ ವಿಜೇತ್. ಹಾಗಂತ ಇವನನ್ನ ಧಾರವಾಹಿ ಪ್ರಿಯ ಅನ್ಕೋಬೇಡಿ! ಟಿ ಎನ್ ಸೀತಾರಾಮ್ ಅವರ ಅಭಿಮಾನಿ ಅಷ್ಟೆ. ಕನ್ನಡ ಚಿತ್ರರಂಗದ ಮೇಲೆ ಬಹಳ ಗೌರವ ಇರುವ ಈತನಿಗೆ ಸರಿಸುಮಾರು ಎಲ್ಲಾ ಕನ್ನಡ ಚಿತ್ರಗೀತೆಗಳು ಕಂಠಸ್ಥವಾಗಿದೆ. ಸಂಪಾದಕ ಮಂಡಳಿಯ ಉತ್ತಮ ಹಾಡುಗಾರರಲ್ಲಿ ಈತನೂ ಒಬ್ಬ. ಆಶುಭಾಷಣ, ಚರ್ಚಾಸ್ಪರ್ಧೆ, ಅಂತ್ಯಾಕ್ಷರಿ ಹೀಗೆ ಹತ್ತು ಹಲವು ಸ್ಪರ್ಧೆಗಳಲ್ಲಿ ಭಾಗವಹಿಸಿ ವಿಜೇತನಾಗುತ್ತಾನೆ.\r\nವಿಜೇತ್ ಅನ್ನೋಕು ನೆನಪಾಗೋದು ಫೋನ್. ದಿನದಲ್ಲಿ ಏನಿಲ್ಲಾ ಅಂದ್ರು ಒಂದು ಸಾವಿರ ಫೋನ್ ಕಾಲ್ ಬರತ್ತೆ. ಫೋನ್ ಬಂದ ತಕ್ಷಣ ಮಾರು ದೂರ ಹೋಗೋ ಈತ, ಗೌಪ್ಯತೆ ಕಾಪಾಡಿಕೊಳ್ಳುವುದರಲ್ಲಿ ನಂಬರ್ ಒನ್!\r\nಗಣಕ ವಿಜ್ಞಾನ ವಿದ್ಯಾರ್ಥಿಯಾಗಿರುವುದರಿಂದ ಸಾಧ್ಯವಾಗುವ ಎಲ್ಲಾ ಕಡೆ ತಂತ್ರಜ್ಞಾನ ತೂರಿಸೋಕೆ ಟ್ರೈ ಮಾಡ್ತಾನೆ. ಸಂಪಾದಕ ಮಂಡಳಿಯಲ್ಲಿ ‘ಕ್ಯೂ ಆರ್ ಕೋಡ್ ವಿಜೇತ್ʼ ಅಂತಾನೆ ಪ್ರಸಿದ್ಧಿ ಪಡೆದಿದ್ದಾನೆ. ಸಂಪಾದಕ ಮಂಡಳಿಯ, ನಿಶಾಚರಿಗಳ ಗುಂಪಿನ ಅಧ್ಯಕ್ಷನಾಗಿರುವ ಇವನಿಗೆ ‘ಮಚ್ಚಾ ನಾಳೆ ಬೇಗ ಏಳ್ಬೇಕು ಮಲ್ಕೊಳೋ ಅಂದ್ರೆ', “NO, NO! Don't sleep to wake up tomorrow. Sleep because you are tired today” ಅಂತ ಹೇಳಿ ಕೆಲಸ ಮುಂದುವರೆಸ್ತಾನೆ. ವಿಜೇತ್ಗೆ ಸಮಯನಾ ವ್ಯರ್ಥ ಮಾಡೋದು ಅಂದ್ರೆ ಆಗಲ್ಲ. ದಿನದ ೨೪ ಗಂಟೆಗಳಲ್ಲಿ, ‘ನಿದ್ರೆ ಮಾಡಿದ್ದು ಬಿಟ್ಟುʼ ಉಳಿದೆಲ್ಲ ಸಮಯದಲ್ಲಿ ಒಂದಲ್ಲ ಒಂದು ಕೆಲಸದಲ್ಲಿ ತೊಡಗಿರುತ್ತಾನೆ. ಒಂದ್ ಕೆಲ್ಸಾ ಹಿಡ್ಕೊಂಡಾ ಅಂದ್ರೆ ಇವನ ಸಮರ್ಪಣೆ ಮತ್ತು ಬದ್ಧತೆನಾ ಮೆಚ್ಚಬೇಕಾದ್ದೆ. ಸಮಯ ಹಾಳಾಗತ್ತೆ ಅಂತ ಬೈಕ್ ಓಡಿಸುವಾಗ ಮೀಟಿಂಗ್ ಅಟೆಂಡ್ ಮಾಡಿದ್ದೂ ಉಂಟು (ವಾಹನ ಚಲಾಯಿಸುವಾಗ ಮೊಬೈಲ್ ಬಳಸುವುದು ಅಪಾಯಕಾರಿ ಹಾಗೂ ಕಾನೂನು ಬಾಹಿರ). ಆದರೆ ಜೆ ಸಿ ಕ್ಯಾಂಪಸ್‌ನಲ್ಲಿ ಈತನಿಗೆ ಸಮಯದ ನಿರ್ಬಂಧ ಇಲ್ಲ. ಯಾಕಂದ್ರೆ ಕ್ಯಾಂಪಸ್ ತುಂಬಾ ಬೆಳಕಿನ ವೇಗಕ್ಕೆ ಸಮವಾಗಿ ಓಡಾಡ್ತಾನೆ. ಈಗಷ್ಟೇ ರೆಫರೆನ್ಸ್‌ಲ್ಲಿದ್ದಾನೆ ಅಂದ್ಕೊಂಡ್ರೆ, ಯಾಂಪಾಲಿ ಪ್ರತ್ಯಕ್ಷ ಆಗಿರ್ತಾನೆ. ಹಾಗಂತ ಫೋನ್ ಮಾಡಿ ಎಲ್ಲಿದ್ದೀಯ ಅಂತ ಕೇಳಿದ್ರೆ ಈಗಷ್ಟೇ ಕ್ಲಾಸ್‌ಗೆ ಬಂದ್ನಲೋ ಅಂತ ಹೇಳ್ತಾನೆ. ರೆಫರೆನ್ಸ್ ಅಂದಾಕ್ಷಣ ನೆನಪಿಗೆ ಬಂತು, ಇವನಿಗೆ ರೆಫರೆನ್ಸ್ ಒಂತರಾ ತವರು ಮನೆ ಇದ್ದಂಗೆ. ಬೇಜಾರಾದಾಗಲೆಲ್ಲ ಇಲ್ಲಿ ಬಂದು ಕುತ್ಕೋತಾನೆ.\r\nಇವನು ಮಾತಾಡೋದೆಲ್ಲಾ ಅಡಿಬರಹಾನೇ! ಒಂದು ಸಿಂಪಲ್ಲಾಗಿರೋ ವಿಷಯಾನ ಹೇಗೆ ಕಷ್ಟ ಮಾಡ್ಬೇಕು ಅಂತ ವಿಜೇತ್‌ನ ನೋಡಿ ಕಲಿಬೇಕು. ಸಿಕ್ಕಿರೋ ವಿಷಯನಾ ಇಟ್ಕೊಂಡು ಹತ್ತ್ ರೀತೀಲಿ analyse ಮಾಡಿ, ನಂತರ ೨೦ ಪರಿಹಾರ ನೀಡ್ತಾನೆ. ಇವನಿಗೆ ಒಂದು ವಿಷಯ ಸರಿ ಅನ್ಸ್ತು ಅಂದ್ರೆ ಅದನ್ನ ಸಾಧಿಸೋವರೆಗೂ ಬಿಡಲ್ಲ. ನಂತರ ಒಂದು ತೀರ್ಮಾನಕ್ಕೆ ಬಂದ್ರೂ, ಅವನು ಅನ್ಕೊಂಡಿದ್ದು ಆಗಿಲ್ಲ ಅಂದ್ರೆ ಅವನಿಗೆ ನಿದ್ದೆ ಬರಲ್ಲ! ಆಗ ನಿಮಗೆ ಕಾಲ್ ಮಾಡಿಕೊಂಡು ತಲೆ ತಿಂತಾನೆ, ನಿಮ್ಮ ಮನ ಒಲಿಸೋಕೆ ಟ್ರೈ ಮಾಡ್ತಾನೆ. ಇದು ವಿಜೇತ್ ಸ್ಪೆಷಾಲಿಟಿ. ಚಿಕ್ಕ ವಿಷಯ ಆದ್ರೂ ತುಂಬಾ ಡೀಟೈಲ್ ಆಗಿ ನೋಡ್ತಾನೆ. ಯಾವ್ದೇ ಆಗಲಿ ಬೇಗ ಕಲಿಯೋ ಜಾಯಮಾನ ಇವಂದು. \r\nವಿಜೇತ್‌ಗೆ ಚರ್ಚಾ ಸ್ಪರ್ಧೆ ಅಂದರೆ ತುಂಬಾ ಇಷ್ಟ. ಸಂಪಾದಕ ಮಂಡಳಿಯ ವಾರ್ಷಿಕ ಪರ್ವ ‘ಶಬ್ದ್' ಸಂದರ್ಭದಲ್ಲಿನ ಚರ್ಚಾಸ್ಪರ್ಧೆಯನ್ನು ಇವನೇ ನಡೆಸಿಕೊಡ್ತಾನೆ. ಚರ್ಚಾಸ್ಪರ್ಧೆಯಲ್ಲಿನ ಅಭ್ಯಾಸ ಬಲವನ್ನು ಕಾಯ್ದುಕೊಳ್ಳೋಕೋಸ್ಕರ ‘ಸಂಚಿತಾʼ ಜೊತೆ ಯಾವಾಗಲೂ healthy argument (ಜಗಳ) ಮಾಡ್ತಿರ್ತಾನೆ.\r\nಸಹಾಯ ಬೇಕು ಅಂದಾಕ್ಷಣ ಎಲ್ಲಿದ್ದರೂ ಓಡಿ ಬರೋ ವಿಜೇತ್, ತನಗೆ ಗೊತ್ತಿಲ್ದೇ ಇರೋ ಯಾವುದಾದರೂ ವಿಷಯಾನ ಅವನ್ಹತ್ರ ಕೇಳಿದ್ರೆ, ಅದನ್ನ ಹೇಗಾದರೂ ತಿಳ್ಕೋಬಂದು ನಿಮಗೆ ಅರ್ಥ ಮಾಡಿಸ್ತಾನೆ(ವಿ. ಸೂ: ಇವನಿಗೆ ಗೊತ್ತಿಲ್ದೆ ಇರೋ ವಿಷಯಗಳು ಬಹಳ ಕಡಿಮೆ). ಕೊರೋನಾ ಸಂದರ್ಭದಲ್ಲಿ ತಂದೆ ಹಾಗೂ ತಮ್ಮನೊಟ್ಟಿಗೆ ಸೇರಿ, ಹಾಡೊಂದರ ಮೂಲಕ ಜನಜಾಗೃತಿ ಮೂಡಿಸುವ ಪ್ರಯತ್ನವನ್ನೂ ನಡೆಸಿದ್ದಾನೆ.\r\nಭಾವನೆಗಳಿಗೆ ಬಹಳ ಬೆಲೆಕೊಡುವ ವಿಜೇತ್ ಸಂಪಾದಕ ಮಂಡಳಿಯ ದೊಡ್ಡಪ್ಪಾ! ತರಗತಿಯಲ್ಲಿ ಶಿಕ್ಷಕರ ನೆಚ್ಚಿನ ವಿದ್ಯಾರ್ಥಿ ಹಾಗೂ ಸಹಪಾಠಿಗಳ ಪ್ರೀತಿಯ ಗೆಳೆಯ.	95	10	50	80	2018	editor-in-chief	7	QR Codes
20	image/upload/v1605112312/RajathRRao_f8ak6n.jpg	image/upload/v1661502641/Raju_qg4gsj.jpg	Rajath R. Rao	Editor-in-Chief	Art	Rajuuu Bhai	VII Sem, CSE	If you're ever walking around college and hear creepy sing-song voices chanting Raaajuuuuuuuuu Raaaaaaaaaajuuuuu in the usual Chhota Bheem style, chances are it's one of the Eddies trying to catch Raju Bhai's attention. Moving on to some Raju Bhai titbits! Raju Bhai is very smart, and he is rightfully called Gurugale within his various social cliques. He is super helpful, ready to teach you or give you any kind of information. He is also extremely patient and one of the nicest people you'll ever meet. You could crash his beloved white electric scooter into a pavement and not receive any hostility whatsoever. A note of caution: this has already happened once and it's not clear how many more times this has to happen for him to snap. It can only be concluded that he is a bottomless pit of patience and placidness. Raju Bhai is also proud of his terrible sleeping and eating schedule, and any statement criticising it is met with an innocent, enigmatic, I-may-be-guilty-and-I-have-no-regrets smile, so one cannot help but let it slide. Just like Michael Jackson and his moonwalk, Raju Bhai has his own 'kneecap' dance. Although it has been long since the kneecap dance was last performed, yet it remains one of Raju Bhai's most iconic moments. The amount of talent and power his kneecaps hold is a marvel to behold. Over the quarantine, Raju Bhai suddenly grew a little taller, which again, may be credited to his kneecaps, even though it doesn't make any sense in actual theory (or maybe it does?).\r\n\r\nOn any normal day, Raju Bhai walks innocently around college, silent and observant. But don't let his innocent face fool you. He's usually thinking of the right thing to say at the right time. If you're ever having a completely normal conversation with Raju Bhai in your midst, you're probably not anticipating anything out of the blue and then bam! Raju Bhai has something to say! It's a dialogue that no one predicted, one filled with the perfect amount of savagery coupled with the most exceptional sense of delivery. It completely throws your senses off, an armed weapon in fact, since no one expects someone so quiet and naive-looking to say such things. Another thing that has given away his 'I'm super paapa'-looking face is his questionable sticker collection. Tales of the *cough* stickers *cough* he possesses are popular among the Board members and only a lucky few have been (un)fortunate enough to lay their eyes on them. You may confirm all this by observing his sneaky habits. However, stay wary. Too much of looking and staring at Raju Bhai is met with a one-third disgusted, one-third awkward and one-third scared look on his face. There's nothing Raju Bhai hates more than prolonged eye contact.\r\n\r\nRaju Bhai is also extremely creative and is a brilliant artist. He is a super reliable and responsible person. One simply closes their eyes and trusts in the power of Raju Bhai. He'd gladly give you an art lesson on face perspectives any time of the day! All of us on the Board feel very lucky to have captured him.	100	100	5	0	2019	editor-in-chief	7	No sleep, No food
16	image/upload/v1605007175/FormalHarsha_w2ihxr.jpg	image/upload/v1661502660/Harsha_r25sh9.jpg	Harsha Bhat	Editor - Kannada	Kannada	Bambaiii	V Sem, CSBS	ಇಗೋ ನೋಡಿ, ಇವನೇ ನಮ್ಮ ಹರ್ಷ ಭಟ್. ಎರಡನೇ ವರ್ಷದ ಸಿ.ಎಸ್.ಬಿ.ಎಸ್‌ನ ವಿದ್ಯಾರ್ಥಿ ಎನ್ನುವುದಕ್ಕಿಂತ, ಎರಡು ಬೆಕ್ಕು, ಮೂರು ಬೆಕ್ಕಿನ ಮರಿ, ಒಂದು ನಾಯಿ, ಐದು ನಾಯಿಮರಿಗಳ ಪಾಲಕ ಎಂದು ಈತನನ್ನು ಪರಿಚಯಿಸಿದರೆ ಅವನಿಗೆ ಹೆಚ್ಚು ಇಷ್ಟವಾಗಬಹುದು. ಪ್ರಾಣಿಗಳ ಮೇಲಿನ ಪೀತಿಯ ಮೂರ್ತ ಸ್ವರೂಪವೇ ಹರ್ಷ ಎಂದರೆ ತಪ್ಪಾಗೋದಿಲ್ಲ. ಕಾಲೇಜಿನಲ್ಲಿರುವ ಶ್ವಾನಗಳೆಲ್ಲಾ ಇವನ ಒಡನಾಡಿಗಳೇ. ಈತ ಕಾಲೇಜಿನಿಂದ ಮನೆಗೆ ಹೊತ್ತೊಯ್ದಿದ್ದ 'ರೂಬಿ' ಎಂಬ ಪುಟ್ಟಮರಿ, ಇತ್ತೀಚಿಗಷ್ಟೇ ತನ್ನ ಮರಿಗಳಿಗೆ ಜನ್ಮವಿತ್ತಿದೆಯಂತೆ.\r\nಫ್ಯಾಶನ್ ಪ್ರಿಯನಂತೆ ಕಾಣುವ ಈತನಿಗೆ ಬೊಂಬಾಯಿಯ ಜೀನ್ಸ್ ಎಂದರೆ ವಿಶೇಷ ಒಲವು. ಶಿರಸಿಯ ಈ ಪೋರ, ತನ್ನ ಪಾಲಿಗೆ ಬರಬಹುದಾದ ಕೆಲಸಗಳ ಬಗ್ಗೆ ಊಹೆ ಮಾಡಿ, ಮೊದಲೇ ತಯಾರಿರುತ್ತಾನೆ. ಅಡಿಕೆ ತೋಟದಲ್ಲಿ ತನ್ನ ಅಪ್ಪನಿಗೆ ಕೆಲಸದಲ್ಲಿ ಸಹಾಯಮಾಡುವ ಈತ, ಇಟ್ಟ ಗಡುವು ಕೊಟ್ಟ ಕಾಲ ಮುಗಿಯುವುದರೊಳಗೆ ವಹಿಸಿದ್ದ ಕೆಲಸ ಮುಗಿಸಿಬಿಡುವವನು. ಆನ್‌ಲೈನ್ ತರಗತಿಗಳನ್ನು ಆಲಿಸಲು ಮನೆಯ ಹತ್ತಿರದ ಗುಡ್ಡವನ್ನೇರಿ ಸ್ಥಿರ ಇಂಟರ್ನೆಟ್‌ನ ಹುಟುಕಾಡುವ ಈತನ ಶ್ರದ್ಧೆ ಪ್ರಶಂಸಾರ್ಹ.\r\nನಾನಾರ್ಥ ವಿಷಯಗಳನ್ನು ಕ್ಷಣಾರ್ಧದಲ್ಲಿ ಗ್ರಹಿಸುವ ಈತ, ಅದನ್ನು ತನ್ನದೇ ಶೈಲಿಯಲ್ಲಿ ಓದಿ ಹೇಳಿ ಪಾಪದ ಹುಡುಗರಿಗೂ ಅರ್ಥಮಾಡಿಸಿಬಿಡುತ್ತಾನೆ. ನಿಂತ ಜಾಗದಲ್ಲೇ ತನ್ನ ಕಾಲನ್ನು ಕುತ್ತಿಗೆಯ ಮೇಲಿಸುವ ಇವನಿಗೆ ಯೋಗಾಭ್ಯಾಸವಂತೂ ನಿರಾಯಾಸವಾದ ಕಾರ್ಯ, ಈತನಿಗೆ ಅದು ಕರತಲಾಮಲಕವೂ ಹೌದು. ಆರ್‌ಸಿಬಿಯ ಕಟ್ಟಾಭಿಮಾನಿಯಾದ ಈತ, ಸ್ನೇಹಿತರೊಂದಿಗೆ ಯಾವ ಆಟೋಟಗಳಲ್ಲೂ ಜೊತೆಯಾಗುವುದಿಲ್ಲವೆಂಬ ದೂರು ಹೊತ್ತಿದ್ದಾನೆ.\r\nಕವನ ಒಂದನ್ನು ಸೃಷ್ಟಿಸಲು ಲೇಖನಿ ಹಿಡಿದನೆಂದರೆ, ಅಲ್ಲೊಂದು ಅದ್ಭುತ ಸಾಹಿತ್ಯದ ಅನಾವರಣವಾದಂತೆಯೇ. ಅಚ್ಚುಕಟ್ಟಿನ ಪರಿಸರವನ್ನು ಇಷ್ಟ ಪಡುವ ಈತ, ತನ್ನ ವಸ್ತುಗಳನ್ನು (ಮಾತ್ರವೇ) ವ್ಯವಸ್ಥಿತವಾಗಿ ಜೋಡಿಸಿಡುತ್ತಾನಂತೆ. ಅರ್ಜಿತ್ ಸಿಂಗ್‌ರ ಪ್ಯಾಥೋ ಹಾಡುಗಳೆಂದರೆ ಇವನಿಗೆ ಅಚ್ಚುಮೆಚ್ಚು. ಮೊದಲನೇ ಸೆಮಿಸ್ರ‍್ನಲ್ಲಿ “ಫುಡ್ ಬಾಕ್ಸ್” ಇಂದ ಆರ್ಡರ್ ಮಾಡೋಣ ಎನ್ನುತ್ತಿದ್ದವ, ಈಗೀಗ “ಅನ್ನಪೂರ್ಣೇಶ್ವರಿ” ರೆಸ್ಟೊರೆಂಟ್ನಿಂದ ಏನ್ ತರ‍್ಸೋಣ ಎನ್ನುತ್ತಿದ್ದಾನಂತೆ. ಆದರೆ ಅದೇಕೋ ಇವನಿಗೆ ಅಕ್ಲು ಮೆಸ್ ಅಷ್ಟೇನು ಇಷ್ಟ ಆಗಲ್ವಂತೆ. ಕಾರಣ ಕೇಳಬಯಸುವವರು ಈತನನ್ನು ಸಾಮಾಜಿಕ ಜಾಲತಾಣಗಳಲ್ಲಿ ಹಿಂಬಾಲಿಸಿ, ಬೆಂಬೀಳಬಹುದಾಗಿದೆ.\r\nಟೊರೆಂಟ್ ಇಂದ ಸೀರೀಸ್‌ಗಳನ್ನು ಡೌನ್ಲೋಡ್ ಮಾಡಿ ರಾತ್ರಿ ಇಡೀ ನೋಡುವ ಈತ, ಬೆಳಗಿನ ೭:೩೦ ತರಗತಿಗಳಿಗೆ ತಡವಾಗಿ ಬಂದು ಸೇರುವುದು ಸರ್ವೇಸಾಮಾನ್ಯ. ಹಲವು ಭಾರಿ ಗೈರಾಗಿದ್ದೂ ಒಂಟು. ಸ್ನಾನ, ಟೀ ಮತ್ತು ಪ್ರಾರ್ಥನೆಯನ್ನು ಒಂದು ದಿನವೂ ಬಿಡಲಾರನೆಂದು ಬಲ್ಲಮೂಲಗಳು ತಿಳಿಸಿವೆ.\r\nಶ್ವಾನಗಳನ್ನು ದತ್ತು ಪಡೆದು ಕುಟುಂಬ ಕಟ್ಟುವ ವಿಶೇಷ ಮಹದಾಸೆ ಹೊಂದಿರುವನು ನಮ್ಮ ಸ್ನೇಹಜೀವಿ ಹರ್ಷ.	60	25	40	55	2019	editor	5	Making torn clothes look good
11	image/upload/v1604994947/FormalPoofy_ujmpo7.jpg	image/upload/v1661502672/Poofy_kjw1yx.jpg	Poorvi Shetty	Editor - English	English	Pooooofy	V Sem, CSE	MEOW. The sound sends a cold shiver up your spine. You take a step forward to start running, but the ground beneath crumbles and you fall. Into the void. You jolt awake to find yourself in a strange room. A handsome face stares at you from the poster on the wall, with the words Wang Yibo written on it. You keep staring at his face for some reason. But your admiration is brought to an abrupt halt as a sudden sense of unfamiliarity sweeps over you. \r\n\r\nWhere are you? What is this place? The last thing you remember is chasing Her. You were so close. MEOW. You look around. The glow of an open laptop screen fills the room. You find a bunch of cans and containers all over the place. What kind of person keeps so many containers? You dart over towards the laptop. A faint but familiar TWICE song is playing in some tab. “Ah! I miss listening to Jihyo”, you think to yourself. The tab that’s open contains long paragraphs. You start reading through it and realise you’re reading a fanfic. A smile escapes your mouth. Fantasies galore!\r\n\r\nMEOW. That sound drags you back to the present. You look around to see where it came from. That’s when you notice the cat sticker on the wall. They are everywhere, on the walls, on the bed, above the door and below the table. You were into these cute cat stickers too, long back. Suddenly, a strong but disgusting smell hits you. You turn to find that it’s coming from a plate next to the bed. It contains a piece of Oregano bread and a cup of tea. You hate Oregano bread. It reminds you of the time you took that stupid Buzzfeed test to see which food item you were and it said you were Oregano Bread. You hate Buzzfeed. Just looking at the plate gives you anxiety. Haha Anxitea..geddit? You try to pick up the dustbin next to you to throw away the food, but it’s heavy. Really heavy. You open it to see it’s filled with Beans. Boiled beans. The feeling of uneasiness returns. MEOW.\r\n\r\n“Devaaaa!!” exclaims a familiar voice from behind you. “You still haven’t eaten the food I left for you!”. Adrenaline rushes in as you recognise the voice. That’s Her voice. You quickly turn around to find Her standing near the door, face hidden in the dark. Your mind starts racing, trying to come up with escape plans. Instead, all you come up with is “Slugs have four noses”. Desperately, you throw the nearest container towards her. It breaks open with beans spilling out. “Nooo!,” she screeches like a pterodactyl. “Not my precious beans!”. You look up at her to find her standing there in a very familiar pose. She’s giving you a thumbs up with both hands and an awkward smile. You’re completely baffled. Who IS She? Suddenly, beans start pouring out of every single container in the room. So many beans. The floor turns into beans. You hear that sound again. MEOW. It’s coming from Her. You realised who SHE is. “It’s YOU! YOU are PURR…” the words fade out. You don’t have a voice coming out anymore. Instead, it’s beans. Beans start engulfing you and the last thing you see is the smirking Abhijeet sticker you’ve always liked. He’s smirking at you. You sink into the beans. Into the void.\r\n\r\nYou jolt awake again. Wang Yibo’s poster looks at you from the wall. You look at the mirror next to you. You see Her again. But this time it’s different. It’s you. You are Her. You are Poorvi. A feeling of calmness washes over you. You remember that a post has to go up in 10 mins on the Board account. You start thinking of a write-up. You feel relieved.	100	90	81	10	2019	editor	5	Sticker hoarder
10	image/upload/v1604995849/IMG-20201030-WA0143_nr38gy.jpg	image/upload/v1661502682/Bee_zsxihx.jpg	Surabhi Seenivasan	Editor - English	English Section	Chanel no 7	V Sem, CSE	A tiny Chanel with glasses, student of the Computer Science branch, studying in 3rd year. Dear readers, we present to you Surabhi aka Bee, Surabully, Surbi, Surab, Subbi, SurSur, Sursurbatti and ...woah! She has many names.\r\n\r\nAnyone who meets Bee will immediately know that she likes Kawaii things, K-pop and Anime. We can find kawaii things in her bag, especially a monkey zip puller and pens. She is a huge fan of Bang Chan and Hyunjin from Stray Kids. She also loves Hyuna (that’s an understatement). It is not surprising that she has a lot of K-pop merchandise including pillows. She loves Gintama anime. Surab likes watching weird videos on YouTube like a man destroying computers, obscure anime etc. We are delighted to share that she got more than 1k likes and a friend, for her depressing comment on YouTube. She has gone to an extent that nothing on the internet truly surprises her. Quora once called her brainless otaku.\r\n\r\nSurabully is known for bullying senior eddies, of course innocuously. Do you want to know insights about any Eddie? Then SurSur is your person. Once she had conducted an MBTI test on Eddies and found most of us are introverts. Rumours are there that she writes about Eddies in her diary. Subbi’s Shrek sticker collection is amazing. Surbi has some funny wishes and stories. She wants a shirt with the words “dehydration is my kink”. Once she had proposed to tyre passionately. She makes wonderful soft chapatis and is proud of them. We all love to hear her St. Joseph school stories. Bee’s way of saying “Okay” is different and it’s the nicest thing you will ever hear. She has enough willpower to exercise every day.\r\n\r\nSurabhi is a gem that we’re lucky to have on the Board. Her expertise in English has helped the Board in all ways. Not only in English, but she also does a lot of good anime character art. She has given the best topics for various SHABD events. Surabhi is just a wonderful person who wants to enjoy life and write in peace.	80	50	70	40	2019	editor	5	Makes you love K-pop
24	image/upload/v1622052212/WhatsApp_Image_2021-05-26_at_6.52.49_PM_fczoph.jpg	image/upload/v1661502716/Ksham_lf9gia.jpg	Kshamata  Kaujalgi	Editor - Art	Art Section	*giggles nervously*	V Sem, ISE	This fresh, shy and adorable Eddie brews jealousy in the hearts of others with her neon jacket and her cool bicycle. This lover of 'The Office' has a novel way of replying to Instagram DMs- with saved posts. When faced with the tough decision of naming her doggo, she, with her uniqueness, gave four. She is a sorceress who enchants us with her aesthetic artwork. We are delighted to have her aboard!	80	99	100	20	2021	editor	5	Can cross roads safely even though she isn't paying attention.
26	image/upload/v1661503000/sudhanvanorm_av0vdc.jpg	image/upload/v1661501484/Sudhanva_vrtfzs.jpg	Sudhanva Kulkarni	Editor - Kannada	Kannada Section	RAT-A-TAT	II Sem, ECE	ತನ್ನ ನಗು ಮುಗದಿಂದ ಎಲ್ಲರ ಗಮನ ಸೆಳೆಯೋ ಈತ ಅಥಣಿಯ ಹೈದ. 'ಮಾತುಕಮ್ಮಿ ಕೆಲಸ ಜಾಸ್ತಿ' ಈ ತತ್ವದ ಹಿಂಬಾಲಕ. ಕೊಟ್ಟ ಕೆಲಸವನ್ನು ಗಡುವು ಮುಗಿಯೋದ್ರೊಳಗಡೆ ಅಚ್ಚುಕಟ್ಟಾಗಿ ಮಾಡಿ ಮುಗಿಸೋ ಇವನು ಪ್ರಥಮ ವರ್ಷದ ಇ. ಸಿ. ವಿಭಾಗದಲ್ಲಿದ್ದಾನೆ.  ಭಾರತ ಸೇನೆಯ ಮೇಲೆ ಅಪಾರ ಗೌರವ ಇವನಿಗೆ ಪ್ರಚಲಿತ ವಿದ್ಯಮಾನಗಳ ಬಗ್ಗೆಯೂ ಒಲವಿದೆ. 'ಸ್ನೇಹಪರ'ವ್ಯಕ್ತಿ (Affable one) ಅಂತ ತನ್ನ ಇನ್ಸ್ಟಾಗ್ರಾಮ್ ಬಯೋದಲ್ಲಿ ಹಾಕಿಕೊಂಡು ಓಡಾಡೋ ಈತ ಛಯಗ್ರಹಣದಲ್ಲೂ ತನ್ನ ಕೈಚಳಕ ತೋರಿಸ್ತಾನೆ.	80	85	30	28	2022	editor	2	Learns new things quickly
27	image/upload/v1661502980/pruthvinorm_rw6u0z.jpg	image/upload/v1661502980/Pruthvi_clul5s.jpg	Pruthvi K P	Editor - Kannada	Kannada Section	"Born to be awesome"	II Sem, CSE	ಆ ದೇವರು ಪ್ರತ್ಯಕ್ಷ ಆಗಿ ಏನ್ ವರ ಬೇಕು ಅಂಥ ಕೇಳಿದ್ರೆ, "ಅದ್ನ ನಂತ್ರ ನೋಡ್ಕೊಳ್ಳೋಣ ಈಗ ಕೂತ್ಕೋಳೀ ಮಾತಾಡೊಣ" ಅಂಥ ಹೇಳಿ ಮಾತು ಶುರು ಮಾಡೋ ಈಕೆ ಚಿಟಿಕೆ ಹೊಡೆಯೋದ್ರೊಳಗಡೆ  ಅಪರಿಚಿತರನ್ನೂ ಗೆಳೆಯರನ್ನಾಗಿ ಮಾಡ್ಕೊಳ್ತಾಳೆ. ವಾರಾಂತ್ಯ ಬಂತು ಅಂದ್ರೆ ಅಪ್ಪ-ಅಮ್ಮನ ಜೊತೆ ಸೇರಿ ನಾಟಕ ನೋಡೋಕೆ ಹೋಗೋ ಇವಳು ಅದೇಕೋ ಪರೀಕ್ಷೆ ಹತ್ತ್ರಾ ಬಂತು ಅಂದ್ರೆ ಇನ್ಸ್ಟಾಗ್ರಾಮ್ ಅನ್ಇನ್ಸ್ಟಾಲ್ ಮಾಡ್ತಾಳೆ. ತನ್ನ ಮಾತಿನ ಮೂಲಕ ಎಲ್ಲರ ಕಣ್ಮನ ಸೆಳೆಯೋ ಈಕೆ ಮೊದಲನೇ ವರ್ಷದ ಗಣಕಯಂತ್ರ ವಿಜ್ಞಾನದ ವಿದ್ಯಾರ್ಥಿನಿಯಾಗಿರುತ್ತಾಳೆ.	60	0	20	90	2022	editor	2	Talks one's ear off
19	image/upload/v1605006486/FormalMeghana_fecz4v.jpg	image/upload/v1661502651/Meghana_zfz7e1.jpg	Meghana Kashyap	Editor - Kannada	Kannada	Mekap	III Sem, Environmental Engg.	"ಹಾಯ್ ಭೈ, ಏ... ಭೈ..." ಎಂದು ಉದ್ಗಾರ ತೆಗೆಯುತ್ತಾ, ಮೊಗದಲ್ಲಿ ಮಂದಹಾಸವನ್ನು ಅಲಂಕರಿಸಿಕೊಂಡು, ಮುಗಿಲ ಮೇಘಗಳನ್ನೇ ತನ್ನ ಸುಶ್ರಾವ್ಯವಾದ ಹಾಡಿನಿಂದ ಕರಗಿಸಿ ಮಳೆ ಬರಿಸಬಲ್ಲ ಭಾವಜೀವಿ, ಮೇಧಾವಿ, ಸೌಮ್ಯ ಗುಣದ, ಮುದ್ದು ಮೊಗದ, ಮಂಗಳೂರಿನ ಕುವರಿ ಮೇಕಪ್ ಅಲಿಯಾಸ್ ಮೇಘನಾ ಕಶ್ಯಪ್.\r\nತುಳು ನಾಡ ಈ ಬೆಡಗಿಗೆ ಭಾರತೀಯ ಸಂಸ್ಕೃತಿ ಕಲಾಪ್ರಕಾರಗಳ ಬಗ್ಗೆ ಅತೀವ ಆಸಕ್ತಿ, ಅಪಾರ ಅಭಿಮಾನ. ತನ್ನ ಸುಮಧುರ ಕಂಠದಿಂದ ಸದಾ ಗಾನಲಹರಿಯನ್ನು ಹರಿಸುವ ಇವಳು ಸಪ್ತ ಭಾಷಾ ಗಾಯಕಿ. ಕನ್ನಡ, ಇಂಗ್ಲಿಷ್, ಹಿಂದಿ, ತಮಿಳು, ತೆಲುಗು, ಮಲಯಾಳಂ, ತುಳು ಸಿನಿಮಾಗಳನ್ನು ನೋಡುವುದರ ಜೊತೆಗೆ ಅದರ ಹಾಡುಗಳನ್ನು ಸರಾಗವಾಗಿ ಒಮ್ಮೆಲೆ ಹಾಡಬಲ್ಲಳು. ಅಷ್ಟೇ ಅಲ್ಲದೆ, ಇತ್ತೀಚಿಗೆ ತನ್ನ ಸ್ನೇಹಿತರೊಡನೆ ಮರಾಠಿಯಲ್ಲಿ ಮಾತನಾಡಲು ಪ್ರಯತ್ನಿಸುತ್ತಿರುವ ಈಕೆ ಸಪ್ತ ಭಾಷಾ ಪ್ರವೀಣ ಆಗುವುದರಲ್ಲಿ ಸಂಶಯವೇ ಇಲ್ಲ. ಇನ್ನು ಹಬ್ಬ-ಹರಿದಿನ ಬಂತೆಂದರೆ ಇನ್ಸ್ಟಾಗ್ರಾಂ, ವಾಟ್ಸಪ್ ಸ್ಟೇಟಸ್‌ನಲ್ಲಿ ಸುಮಧುರವಾಗಿ ಕವರ್ ಸಾಂಗ್ ಮಾಡಿ ಹಾಕುತ್ತಿರುತ್ತಾಳೆ. ಇನ್ನು ವೇದಿಕೆಯ ಮೇಲೆ ನಿಂತರೆ ತನ್ನ ಉಚ್ಛ ಸ್ವರದ ಶುದ್ಧ ಕನ್ನಡ ಪದಪುಂಜಗಳೊಂದಿಗೆ, ಗಾಂಭೀರ್ಯ ದನಿಯೊಂದಿಗೆ ನಿರರ್ಗಳವಾಗಿ ಮಾತನಾಡಿ ಎಲ್ಲರನ್ನು ಮನಸೂರೆಗೊಳಿಸುವಳು.\r\nಇನ್ನು ಖಾದ್ಯಗಳೆಂದರೆ ಅವಳಿಗೆ ಎಲ್ಲಿಲ್ಲದ ಪ್ರೀತಿ. ಹೊಟ್ಟೆಗೆ ಹಿಟ್ಟು ಬಿದ್ದಿದ್ದರೂ, ಮತ್ತಷ್ಟು ಹಿಟ್ಟನ್ನು ಕೊಟ್ಟರೆ ಇವಳ ಹೊಟ್ಟೆ ಎಂದಿಗೂ ಬೇಡ ಎನ್ನುವುದೇ ಇಲ್ಲವಂತೆ. ವಡಾಪಾವ್, ಕಬ್ಬಿನ ಹಾಲು, ಕೆಫೆ ಫ್ರಾಪ್ಪೆಯ ಚಹಾ ಅಂದರೆ ಇವಳಿಗೆ ಅಚ್ಚು-ಮೆಚ್ಚು. ಇತ್ತೀಚಿಗೆ ಜಲಕೃಷಿ (ಹೈಡ್ರೋಪೋನಿಕ್ಸ್) ಪ್ರಾರಂಭಿಸಿರುವ ನಮ್ಮ ಮೇಘನ, ಆ ಸಸ್ಯಗಳ ಬೆಳವಣಿಗೆಯನ್ನು ವಿಶೇಷವಾದ ರೀಲ್ಸ್ ಮಾಡಿ "ಸಾತಿಯಾ... ಉಮ್ಹು... ಸಾತಿಯ ಉಮ್ಹು..." ಎಂಬ ಬ್ಯಾಗ್ರೌಂಡ್ ಹಾಡಿನೊಂದಿಗೆ ಇನ್ಸ್ಟಾಗ್ರಾಮ್‌ನಲ್ಲಿ ನಮ್ಮೆಲ್ಲರೊಂದಿಗೆ ಹಂಚಿಕೊಳ್ಳುತ್ತಿರುತ್ತಾಳೆ.\r\n"ಶ್ರೀ" ಎಂಬ ಅಂಕಿತನಾಮದ ಮೇಲೆ ಅದೇನೋ ಒಲವನ್ನು ಹೊಂದಿರುವ ಈಕೆಯ ಹೆಸರಿನೊಂದಿಗೆ "ಶ್ರೀ" ಕಾರವನ್ನು ಸೇರಿಸಬೇಕೆಂಬ ಬಯಕೆ ಇದೆಯಂತೆ  (ಬಲ್ಲ ಮೂಲಗಳಿಂದ ಬಂದ ಮಾಹಿತಿ). ಏನೇ ಕೆಲಸವಿದ್ದರೂ ಸಂಪಾದಕ ಮಂಡಳಿಯ ಕೆಲಸಗಳಿಗೆ ಪ್ರಾಧಾನ್ಯತೆ ಕೊಟ್ಟು ಶಿಸ್ತಿನಿಂದ ಕೆಲಸ ಮುಗಿಸಿ ಬಿಡುತ್ತಾಳೆ. ಇವಳ ಸುಮಧುರ ಕಂಠ, ಪರಿಶುದ್ಧ ಮನಸ್ಸು, ಲವಲವಿಕೆ, ಮುದ್ದು ಮೊಗದ ನಗು ಎಂದಿಗೂ ಮಾಸದಿರಲಿ.	45	10	50	60	2019	editor	5	Singing
25	image/upload/v1622052994/WhatsApp_Image_2021-05-26_at_11.12.04_AM_1_utykbj.jpg	image/upload/v1661502728/Abhi_ar2ctz.jpg	Abhilash Hathwar	Editor - Art	Art Section	Picasso in the making	III Sem, CSE	ಆರಂಭದಲ್ಲಿ ಸೈಲೆಂಟ್ ಹುಡುಗ ಎಂದೆನ್ನಿಸಿದರೂ, ಪರಿಚಯವಾದ ಮೇಲೆ ಚನ್ನಾಗಿ ಮಾತನಾಡುವ ಅಭಿ ಕರಾವಳಿಯ ಕಲಾ ಮಾಂತ್ರಿಕ. ತಾನು ರಚಿಸಿದ ಚಿತ್ರಗಳಂತೆ ತನ್ನ ತರಗತಿಯ ಪುಸ್ತಕಗಳನ್ನೂ ಸುಂದರವಾಗಿ ಸಂಭಾಳಿಸುವ ಈ ಲಾಸ್ಟ್ ಬೆಂಚ್ ಹುಡುಗನ ಮೇಲೆಯೇ ಇಡೀ ತರಗತಿಯು ಅವಲಂಬಿತವಾಗಿದೆ ಎನ್ನುವುದು ಇತ್ತೀಚೆಗಷ್ಟೇ ತಿಳಿದುಬಂದ ಸುದ್ದಿ. ಈತ ಉತ್ತಮ ಛಾಯಾಗ್ರಾಹಕನೂ ಹೌದು. ಎಲಡನೇ ವರ್ಷದ ಸಿ. ಎಸ್. ವಿಭಾಗದಲ್ಲಿ ವ್ಯಾಸಂಗ ಮಾಡುತ್ತಿರುವ ಈತನ ಆಗಮನದಿಂದ ಸಂಪಾದಕ ಮಂಡಳಿಗೆ ಮತ್ತೊಂದು ಪುಸ್ತಕದ ಹುಳುವಿನ ಸೇರ್ಪಡೆಯಾಗಿದೆ ಎಂದರೆ ತಪ್ಪಾಗದು.	75	30	99	10	2021	editor	3	Perfectionist
28	image/upload/v1661502946/shreyasnorm_sv5afn.jpg	image/upload/v1661502358/Shreyas_suvweq.jpg	Shreyas S	Editor - Kannada	Kannada Section	Influenzaa	II Sem, Mech	ವಿವಿಧ ಭಂಗಿಯಲ್ಲಿ ಫೋಟೋ ತೆಗೆದುಕೊಂಡು ತನ್ನ ಇನ್ಸ್ಟಾಗ್ರಾಮ್ ಪುಟದಲ್ಲಿ ಆಗಾಗ ಪೋಸ್ಟ್ ಮಾಡುತ್ತಾ ಇರುವ ಈ ಮೈಸೂರಿನ ಕುವರ, ಅಪ್ಪಟ್ಟ ‘Royal Mech Boi’. ದೊಡ್ಡ ಗೆಳೆಯರ ಬಳಗವನ್ನೇ ಹೊಂದಿರುವ ಈತನಿಗೆ ಏನೇ ಸಮಸ್ಯೆ ಬಂದರೂ ಅವನ ‘ಬಾಯ್ಸ್’ ಸಹಾಯಕ್ಕೆ ಬಂದೇ ಬರುವರೆಂಬ ಮಾಹಿತಿ ಬಂದಿದೆ. ಅವರೊಡನೆ ಸೇರಿ, ರೀಲ್ಸ್ ಮಾಡಿ, ಕೂಳೆ ಮಜಾ ಮಾಡುವನು. ಕನ್ನಡ ಸಿನಿಮಾಗಳೆಂದೆರೆ ಹುಚ್ಚು ಪ್ರೀತಿ ಇರುವ ಇವನು, ಪುನೀತ್ ರಾಜಕುಮಾರ್‌ರ ಕಟ್ಟಾಭಿಮಾನಿ. ಸದಾ ಆತ್ಮ ವಿಶ್ವಾಸದಿಂದ ನಡೆದುಕೊಳ್ಳುವ ಶ್ರೇಯಸ್, ಏನೇ ವಿಷಯವಿದ್ದರೂ ಪಟ್ ಎಂದು ಗ್ರಹಿಸಬಲ್ಲನು. ಮಜಾ ಮಾಡಬೇಕಾದರೆ ಮಜಾ ಮಾಡಿ, ಕೆಲಸ ಬಂದಾಗ ಅಷ್ಟೇ ಗಾಂಭೀರ್ಯ ಹಾಗು ಉತ್ಸಾಹದಿಂದ ಮಾಡುವ ಸ್ನೇಹ ಜೀವಿ.	50	40	20	55	2022	editor	2	Perfect catwalk strides
30	image/upload/v1661720166/mileenorm_pwmhhx.jpg	image/upload/v1661720167/Sharmilee_iurvl3.jpg	Sharmilee Sosale	Editor - Art	Art Section	Our Millie	II Sem, EIE	Milee is an incredibly creative addition to the Board, who is just as cool as her nickname! This self-proclaimed extrovert finds immense joy in public speaking and gifting people with artistic presents that she has made. Don't let her innocent smile fool you, because this little ray of sunshine has also got(h) a few dark ideas up her sleeve. But one thing is for sure, when you're around her, you'll never get bored because she always has an interesting story or anecdote to share. We're extremely excited to have her aboard and can't wait to see where her creativity takes her!	80	5	30	60	2022	editor	2	Making friends in an instant
29	image/upload/v1661720058/shreeyanorm_pal2go.jpg	image/upload/v1661720059/Shreeya_fodlis.jpg	Shreeya Pai	Editor - English	English Section	Waku Waku	II Sem, CSE	Shreeya is an extremely sweet and shy piece to the jigsaw puzzle that is the English Section. The shy layer, however, wilts off at the mention of anime. Despite being very "paapa" in general, Shreeya manages to intimidate even the scariest person in the English Section. Eddies have spotted her perched at various spots around campus, engrossed in a book. An invaluable addition to the Board, we cannot wait to see what this Eddie has in store for us!	70	60	40	65	2022	editor	2	Speaking without stammering
\.


--
-- Data for Name: EdWebApp_news; Type: TABLE DATA; Schema: public; Owner: dgcwkoncubyteg
--

COPY "public"."EdWebApp_news" ("id", "news_title", "poster", "description", "display") FROM stdin;
4	Pilot Episode	image/upload/v1614425070/1_pryuno.jpg	With enthusiasm and excitement all over the place, we had our first offline event of the year- 'The Pilot Episode'.\r\n\r\nAs everyone sprinted out of Golden Jubilee Bhavan, trying to put their decoding skills in action, it was super heartwarming to see our campus come back to life!\r\n\r\nCongratulations to all the winners (Shamath and Anand, Devansh and Siddharth) and a huge 'Thank You' to all the participants! To all the people who've tired themselves out by running all over the campus, extra congratulations on completing your workout for the day and ashte ashte!\r\n\r\nP.S.Multiple Eddies have discovered that their passion in life is to throw T-Shirts and chocolates into a screaming crowd, and we'd like to express our gratitude for that.\r\n.\r\nಅತಿಯುತ್ಸಾಹದಿಂದ ‘Pilot Episode’ ನ ಮೆರುಗನ್ನು ಮತ್ತಷ್ಟು ಹೆಚ್ಚಿಸಿದ ಎಲ್ಲರಿಗೂ ಸಂಪಾದಕ ಮಂಡಳಿಯ ಕಡೆಯಿಂದ 'ಅಷ್ಟೇ ಅಷ್ಟೇ'. ಬೆನ್ನಿನ ಮೇಲೆ ಪರೀಕ್ಷೆಯೆಂಬ ಬೇತಾಳ ಕುಳಿತಿದ್ದರೂ, ವಿಕ್ರಮನ ತಾಳ್ಮೆಯನ್ನನುಸರಿಸುತ್ತಾ, ಮೆದುಳಿಗೆ ಸುಳಿವು ಬಿಡಿಸುವ ಕಾಯಕವನ್ನು ನೀಡಿ, ಉತ್ಸಾಹದಿಂದ ಎಲ್ಲೆಡೆ ಓಡಿದ ಸ್ಪರ್ಧಾರ್ಥಿಗಳಿಗೆ ಧನ್ಯವಾದಗಳು. ವಿಜೇತರಿಗೆ ಅಭಿನಂದನೆಗಳು! ಮುಂಬರುವ ನಮ್ಮ ಕಾರ್ಯಕ್ರಮಗಳಲ್ಲಿ ನಿಮ್ಮನ್ನು ನಿರೀಕ್ಷಿಸುತ್ತೇವೆ.	f
3	Pilot Episode - Treasure Hunt	image/upload/v1614001461/Pilot_episode-_Treasure_Hunt_ty65xw.jpg	The spring has ushered in a horde of new, doe-eyed, zealous little juniors to college and all of us are excited about it. Due to the restrictions imposed in the wake of the pandemic, we unfortunately haven’t had the chance to meet the newbies. It is high time that we right this wrong. Thus, we bring you "The Pilot Episode". It is an introductory event tailored to introduce you to our club, The Editorial Board. We have a lot of fun activities lined up for you and that includes a very intense and fun Treasure Hunt. *pst psst *A little birdy told me that there are cash prizes involved. You don’t want to miss this one.\r\n\r\nThe Treasure Hunt is a fun event that will help you know more about our campus. You can form teams of two and participate. Hurry up! Only the first fifty teams to register can join the hunt. \r\nRegistration link for Treasure Hunt: https://bit.ly/3ukCoJU\r\n\r\nJoin us at IS Seminar Hall on the 26th of February at 17:30 hours. Let’s have some fun!\r\n.\r\nಸಾವಿರಾರು ಕನಸುಗಳೊಂದಿಗೆ ನೂರಾರು ಬಯಕೆಗಳನ್ನು ಹೊತ್ತು, ಹಲವಾರು ಸುಮಧುರ ಕ್ಷಣಗಳಿಗಾಗಿ ಉತ್ಸಾಹದಿಂದ ಎದುರು ನೋಡುತ್ತಿರುವ ತಮ್ಮೆಲ್ಲರನ್ನು The Pilot Episode ಮೂಲಕ ಸಂಪಾದಕ ಮಂಡಳಿಯು ಹರುಷದ ಹಸಿರಿನೆಡೆಗೆ ಕರೆದೊಯ್ಯಲು 26-02-2021ರಂದು ಸಂಜೆ 5:30ಕ್ಕೆ ಸಜ್ಜಾಗಿದೆ. ಅಷ್ಟೇ ಅಲ್ಲದೆ, ಈ ಸುಂದರ ಸಂಜೆಯ ಸಂತಸವನ್ನು ಇಮ್ಮಡಿಸಲು ನಿಧಿ ಶೋಧ (Treasure Hunt) ಸ್ಪರ್ಧೆಯನ್ನು ಆಯೋಜಿಸಿದೆ. ಆಸಕ್ತರು ಇಬ್ಬರನ್ನೊಳಗೊಂಡ ತಂಡವನ್ನು ರಚಿಸಿಕೊಂಡು ಭಾಗವಹಿಸಿ. ಈ ಸ್ಪರ್ಧೆಗೆ ಯಾವುದೇ ಪ್ರವೇಶ ಶುಲ್ಕ ಇರುವುದಿಲ್ಲ. ಮೊದಲ 50 ತಂಡಗಳಿಗೆ ಮಾತ್ರ ಅವಕಾಶ. ಬನ್ನಿ ಕೂಳೆ ಮಾಡಿ, ಬಹುಮಾನ ಗೆಲ್ಲಿ!	f
76	Call for Articles-Jayzine '22	image/upload/v1635683400/jayzine1_hheuwe.jpg	It's time to showcase your creative work and share your stories and thoughts! We are excited to announce that The Editorial Board, JSSSTU is now accepting submissions for the 2022 edition of the university magazine, JAYZINE. Send in your articles, stories, poems, essays, photographs or artwork that you would like to get published! Literary work can be written in English or Kannada. \r\n\r\nYou can submit your work via the link given below. \r\nhttps://bit.ly/cfa2022 \r\n\r\nNOTE: Please send in your work by March 15th, 2022	f
42	Art Events	image/upload/v1622358209/Artpostr_yusfxk.jpg	We're just a week away for Shabd and we have some exciting art events planned! For more details about the events and the rules, refer back to the previous posts!	f
40	English Events	image/upload/v1622358112/3_20210526_150757_0002_ksbf9l.jpg	Hello passengers!\r\n\r\nThis is your Captain speaking! Firstly, I'd like to welcome everyone on flight ||SHABD||. The weather looks good and is perfect for some ‘Lit.Art.Ent’. Our friends over at the English section have whipped up an exciting menu for the ride! These are the English events we have on the menu tonight. Fasten your seatbelts, put your game faces on and get ready to experience the magic of ||SHABD||.\r\n\r\nPlease contact us for any further queries.\r\n\r\nThis is Captain Sir Edit-A-Lot signing off!	f
39	||Shabd|| 2021 Event List	image/upload/v1621891876/JSS_SCIENCE_AND_TECHNOLOGY_UNIVERSITY_The_Editorial_Board_SHABD_2021_Event_Details_5_lnskfk.jpg	Rules for the events will be posted soon.	f
2	Jayzine 2020 is here!	image/upload/v1609915913/jayzine_2020_gl75q0.jpg	When you go back to the campus to collect your marks card, you will be getting a copy of Jayzine 2020 as well!\r\n\r\nFrom reminiscing about the good ol'days to admiring your peers' creative talents, we hope you like the magazine as much as we do!	f
43	SHABD Invitation	image/upload/v1622840606/first-4_gjbsoq.jpg	|| SHABD ||-2021 is finally here!\r\n\r\nJoin us at 10:30 AM, on Saturday, 5th June 2021! We're beyond excited to have Dr. Nagathihalli Chandrashekhar, prominent Kannada director and screenwriter, as the chief guest.\r\nThe inauguration will be held online and will be streamed via our YouTube channel \r\nhttps://youtu.be/5XZ7OwCqqA4\r\n\r\nSee you guys there!	f
5	Recruitment	image/upload/v1615570237/recruitment_jawc1a.jpg	The Editorial Board is craving some young blood and is looking to recruit! If you are someone who loves creating art or penning down your thoughts, you should definitely come attend our recruitment test on the 16th of March at IS001, 5:30 p.m. All you need to bring in is your pen and a whole lot of creativity. \r\nArt aspirants can bring in your portfolio in a neat folder or pen drive.\r\n\r\nRegister now using the link: http://bit.ly/ed_recruitment\r\n\r\nಕೈಗೆ ಲೇಖನಿ ಸಿಕ್ಕಾಗಲೆಲ್ಲಾ ಸೃಜನಾತ್ಮಕವಾಗಿ ಏನನ್ನಾದರೂ ಗೀಚುವ ಅಥವಾ ಕುಂಚ ಹಿಡಿದು ವರ್ಣಚಿತ್ರಗಳನ್ನು ಚಿತ್ರಿಸುವ ಹವ್ಯಾಸ ನಿಮಗಿದ್ದರೆ, ಇದೋ ಇಲ್ಲಿದೆ ಸುವರ್ಣಾವಕಾಶ. ಸಂಪಾದಕ ಮಂಡಳಿಯು ತನ್ನ ಪರಿವಾರವನ್ನು ವಿಸ್ತರಿಸುವ ಸಲುವಾಗಿ ಹೊಸ ಪ್ರತಿಭೆಗಳ ಅನ್ವೇಷಣೆಯಲ್ಲಿ ತೊಡಗಿದೆ. ಇದರ ಅಂಗವಾಗಿ ಕನ್ನಡ, ಆಂಗ್ಲ ಹಾಗೂ ಕಲಾ ವಿಭಾಗದ ಪ್ರವೇಶ ಪರೀಕ್ಷೆಯು 16/03/2021 ರಂದು ಸಂಜೆ 5:30 ಕ್ಕೆ IS001 ನಲ್ಲಿ ನಡೆಯಲಿದ್ದು, ಕನ್ನಡ ಅಥವಾ ಆಂಗ್ಲ ವಿಭಾಗದ ಪರೀಕ್ಷೆ ನೀಡಬಯಸುವವರು ಒಂದು ಲೇಖನಿಯೊಂದಿಗೆ ಮತ್ತು ಕಲಾ ವಿಭಾಗಕ್ಕೆ ಸೇರಬಯಸುವವರು ತಾವು ರಚಿಸಿದ ಚಿತ್ರಗಳೊಂದಿಗೆ (ಕನಿಷ್ಠ 2) ಅಥವಾ ಅವುಗಳ ಛಾಯಚಿತ್ರಗಳೊಂದಿಗೆ ಆಗಮಿಸಿ, ಭಾಗವಹಿಸಿ, ನಮ್ಮಲ್ಲೊಬ್ಬರಾಗಿ!	f
38	||SHABD|| 2021	image/upload/v1621628489/Shabd2021_Main_Poster_t2qp1z.jpg	In these uncertain times, it can be disheartening to realise that our college experience leaves a lot to be desired.\r\n\r\nWell, fret not, for we have an exciting announcement to make- Shabd 2021 is finally here!\r\n\r\nWe're honoured to announce that Dr. Nagathihalli Chandrashekhar, the prominent Kannada director and screenwriter, will be joining us this year as the chief guest.\r\n\r\nDue to the pandemic, Shabd 2021 will be conducted online. Join us on the 5th and 6th of June, 2021 to celebrate art and literature, and most importantly, have fun!\r\n\r\nMore details regarding the events and registrations will be out soon!\r\n\r\nಬಾನಂಗಳವೆಂಬ ಹಾಳೆಯ ಮೇಲೆ, ಮೋಡಗಳೆಂಬ ಅಕ್ಷರಗಳು ಸಾಲುಗಟ್ಟಿವೆ. ಅಕ್ಷರಗಳ ಘರ್ಷಣೆಗೆ ಪದಗಳ ಮಳೆಯು ಸುರಿಯುತಿದೆ. ಸಾಹಿತ್ಯವೆಂಬ ಚಿಗುರೊಡೆದಾಗ, ರವಿವರ್ಮನ ಕುಂಚಗಳು ಮಯೂರ ನೃತ್ಯಕ್ಕೆ ಗರಿಗಳಾಗಿವೆ. ಸಂಪಾದಕ ಮಂಡಳಿ ಎಂಬ ಮಾಮರದಲ್ಲಿ, ನಮ್ಮ ಕೋಗಿಲೆ ||ಶಬ್ದ್|| ಕೂಗುವ ಹೊತ್ತಾಗಿದೆ. ||ಶಬ್ದ್||-2021ಕ್ಕೆ ಇನ್ನೇನು ಕೆಲವೇ ದಿನಗಳು ಉಳಿದಿವೆ. ಇದೇ ಜೂನ್ ತಿಂಗಳ 5 ಮತ್ತು 6ನೇ ತಾರೀಖಿನಂದು, ಸಂಪಾದಕ ಮಂಡಳಿಯು ಎಲ್ಲರೊಡಗೂಡಿ ಈ ಕಲಾ-ಸಾಹಿತ್ಯಿಕ ಪರ್ವವನ್ನು ಆಚರಿಸಲಿದೆ. ಈ ಸಂಭ್ರಮಾಚರಣೆಯ ಉದ್ಘಾಟನಾ ಕಾರ್ಯಕ್ರಮದಲ್ಲಿ ಮುಖ್ಯ ಅಭ್ಯಾಗತರಾಗಿ, ಖ್ಯಾತ ನಿರ್ದೇಶಕರಾದ ಶ್ರೀಯುತ ಡಾ. ನಾಗತಿಹಳ್ಳಿ ಚಂದ್ರಶೇಖರ್ ಅವರು ಉಪಸ್ಥಿತರಿದ್ದು, ಕಾರ್ಯಕ್ರಮದ ಮೆರುಗನ್ನು ಇನ್ನಷ್ಟು ಹೆಚ್ಚಿಸಲಿದ್ದಾರೆ. ಈ ಸಂಭ್ರಮಾಚರಣೆಗೆ ಸಂಪಾದಕ ಮಂಡಳಿಯು ನಿಮ್ಮೆಲ್ಲರನ್ನು ಸ್ವಾಗತಿಸುತ್ತದೆ.	f
77	ಹಾಸ್ಯಪಾಕ	image/upload/v1636821693/hasya_4x_ryoykm.jpg	"ಚಿಂತಿ ತಲಿ ಕೆಡಸ್ತು, ನಗು ಜಗ ಉಳುಸ್ತು", ಅಂತ ಹಳೇಮಂದಿ ಹೇಳ್ತಿದ್ರ. ಅಷ್ಟ ಯಾಕ, ನಮ್ ಬೇಂದ್ರೆ ಅಜ್ಜಾನ ಹೇಳ್ಯಾರಲ್ರಿ, "ನಕ್ಕಾವ ಗೆದ್ದಾವ" ಅಂತ. ಹಿಂದಿನ ಕಾಲ್ದಾಗ, ತೆನಾಲಿ ರಾಮನಂತೋರು ಎಂತೆಂಥಾ ಕಷ್ಟದ್ ಪರಿಸ್ಥಿತಿನೂ ನಗ ನಗತಾ ಪರಿಹರಿಸಿಲ್ಲೇನ್ರಿ? ಎಲ್ರ ಹಂಗ ನಿಮ್ಮತ್ರಾನೂ ನಗಸೋ ಒಂದಲ್ಲಾ ಒಂದ್ ಕತೆ ಇರ್ಲಿಕ್ಕಬೇಕು. ಅದಕ್ಕಂತ ನಾವು ನಿಮಗ ಈ "ಹಾಸ್ಯಪಾಕ" ಸ್ಪರ್ಧೆನ ಹೊತ್ತ್ ತಂದೀವಿ. ಲಗೂನ ಕನ್ನಡದಾಗ ಒಂದು ಹಾಸ್ಯ ಕತೆ ಹೆಣೆದು, http://edboardjssstu.in/events/kr2021/ ಇರೋ ಕೊಂಡಿ ಬಳಸಿ, ನವೆಂಬರ್ 17ರ ಒಳಗ ಸಲ್ಲಿಸ್ಬಿಡ್ರಿ. ಹೇ ಹೇ ಒಂದ್ ನಿಮಿಷ ನಿಲ್ರಿಪಾ, ಭಯಂಕರ ನಗಸ್ದವ್ರಿಗ ಬಂಪರ್ ಬಹುಮಾನ ಕಾದೈತ್ ನೋಡ್ರಿ. ಮತ್ಯಾಕ್ ತಡ ಕಳಸ್ರಲ್ಲಾ ಕಥೆನಾ ನಗಸ್ರಿ ನಮ್ಮೆಲ್ರನಾ.	f
41	Kannada Events	image/upload/v1622358173/Add_a_heading-8_kzoe10.jpg	||ಶಬ್ದ್||-2021 ಸಾಹಿತ್ಯಿಕ ಪರ್ವ ಜೋರಾಗಿ ಶಬ್ದ ಮಾಡಲು ಸಜ್ಜಾಗಿ ನಿಂತಿದೆ. ಪ್ರತಿವರ್ಷದಂತೆ ಈ ವರ್ಷವೂ ಸಾಹಿತ್ಯ-ಕಲೆಯ ಸೊಬಗು, ಮೋಜು-ಮಸ್ತಿ ಎಲ್ಲವನ್ನೂ ಹೊಂದಿರುವ ವಿವಿಧ ಸ್ಪರ್ಧೆಗಳು ತಮಗಾಗಿ ಎದುರು ನೋಡುತ್ತಿವೆ. ಚರ್ಚಾಸ್ಪರ್ಧೆಯಲ್ಲಿ ವಾಕ್ಸಮರವನ್ನು ನಡೆಸಿ, ಕವನ ರಚನೆ ಮತ್ತು ವಾಚನ ಸ್ಪರ್ಧೆಯಲ್ಲಿ ನಿಮ್ಮ ಭಾವ ಲಹರಿಯನ್ನು ಹರಿಸಿ, ಆಶುಭಾಷಣ ಸ್ಪರ್ಧೆಯಲ್ಲಿ ಮಾತಿನ ಮಿಂಚನ್ನು ಸೃಷ್ಟಿಸಿ, ಚಿತ್ರಜೋಡಣೆ ಸ್ಪರ್ಧೆಯ ಚಿತ್ರ ವ್ಯೂಹವನ್ನು ಭೇದಿಸಿ, ಸೃಜನಾತ್ಮಕ ಬರವಣಿಗೆಯಲ್ಲಿ ತಮ್ಮ ಚಿತ್ತದ ದರ್ಪಣವನ್ನು ಪ್ರದರ್ಶಿಸಿ, ಪ್ರೇಮ ಪತ್ರ ಬರವಣಿಗೆ ಸ್ಪರ್ಧೆಯ ಒಲವಿನ ಓಲೆಯಲ್ಲಿ, ಹೃದಯದ ಭಾವನೆಗಳನ್ನು ಅಕ್ಷರಗಳೆಂಬ ಮುತ್ತನ್ನಾಗಿಸಿ, ಕಾಗದದ ಮೇಲೆ ಚುಂಬಿಸಿ, ಆಕರ್ಷಕ ನಗದು ಬಹುಮಾನಗಳನ್ನು ಗೆಲ್ಲಲು ಇಲ್ಲಿದೆ ಸದವಕಾಶ. ಬನ್ನಿ, ಭಾಗವಹಿಸಿ. ನಮ್ಮೆಲ್ಲರ ಸಾಹಿತ್ಯದ ಹಬ್ಬಕ್ಕೆ ಮತ್ತಷ್ಟು ರಂಗು ತುಂಬೋಣ!	f
78	ನಿಧಿಶೋಧ	image/upload/v1637062144/Treasure_hunt_4x_kpgk95.jpg	ಓಡಿ ಓಡಿ ಬರಬೇಕೆ ಭಾಗ್ಯ?\r\nಓಡಾಡಿ ಹುಡುಕಿದರೆ 'ನಿಧಿಶೋಧ' ಸಾಧ್ಯ! \r\n\r\nಕನ್ನಡ ರಾಜ್ಯೋತ್ಸವ ಆಚರಣೆಯ ಪೂರ್ವಭಾವಿಯಾಗಿ ಸಂಪಾದಕ ಮಂಡಳಿಯು 'ನಿಧಿಶೋಧ' ಸ್ಪರ್ಧೆಯನ್ನು ಆಯೋಜಿಸಿದೆ. ಕಾಲೇಜಿನ ಮೂಲೆ-ಮೂಲೆ ನಿಮಗೆ ತಿಳಿದಿದೆ ಎಂಬ ಭರವಸೆ ನಿಮ್ಮಲ್ಲಿದೆಯೇ? ಹಾಗಿದ್ದಲ್ಲಿ ಇದೇ ನವೆಂಬರ್ 19, ಶುಕ್ರವಾರ ಸಾಯಂಕಾಲ 5:30ಕ್ಕೆ ನಿಮ್ಮ ಒಗಟು ಬಿಡಿಸುವ ಕೌಶಲ್ಯವನ್ನು ಪರೀಕ್ಷಿಸಿಕೊಳ್ಳಲು ಬನ್ನಿ. ಸಿ.ಎಸ್- ಐ.ಎಸ್. ಲಾಬಿಯಿಂದ(CS-IS Lobby) ಸ್ಪರ್ಧೆ ಆರಂಭವಾಗಲಿದೆ. ಪ್ರತಿ ತಂಡದಲ್ಲಿ ಇಬ್ಬರು ಸ್ಪರ್ಧಿಗಳು ಭಾಗವಹಿಸಬಹುದಾಗಿದ್ದು http://edboardjssstu.in/events/kr2021/ ಕೊಂಡಿಯ ಮೂಲಕ ನಿಮ್ಮ ಹೆಸರುಗಳನ್ನು ನೋಂದಾಯಿಸಿಕೊಳ್ಳಿ. ನೋಂದಾಯಿಸಿಕೊಂಡ ಮೊದಲ 50 ತಂಡಗಳಿಗೆ ಮಾತ್ರ ಅವಕಾಶವಿರುವುದು. 'ನಿಧಿ'ಯನ್ನು ಹುಡುಕಿ, ವಿಜೇತರಾಗಿ ಹೊರಹೊಮ್ಮುವ ಮೊದಲೆರಡು ಚಾಲಾಕಿ ತಂಡಗಳಿಗೆ ಆಕರ್ಷಕ ಬಹುಮಾನಗಳನ್ನು ನೀಡಲಾಗುವುದು.\r\nವಿ.ಸೂ. ನೀರಿನ ಬಾಟಲಿ ಮತ್ತು ಕೊಡೆಗಳನ್ನು ತರುವುದನ್ನು ಮರೆಯದಿರಿ.	f
79	Recruitment 2022	image/upload/v1643632754/Rec-01_cgniev.jpg	The Editorial Board is now on the search for new recruits! \r\nJoin us at IS001 on Friday, February 4th, at 5:30 PM, for the first round of recruitment.\r\nMake sure to bring a pen and endless creativity with you! Art aspirants are required to bring in their portfolios, either in a neat folder or a pen drive.\r\n\r\nRegister through the link in our Linktree (https://linktr.ee/the.edboard).\r\n.\r\nಸಂಪಾದಕ ಮಂಡಳಿಯು ತನ್ನ ಪರಿವಾರವನ್ನು ವಿಸ್ತರಿಸುವ ಸಲುವಾಗಿ ನವ ಪ್ರತಿಭೆಗಳ ಹುಡುಕಾಟದಲ್ಲಿದೆ. ಆಸಕ್ತರು ಇದೇ ಶುಕ್ರವಾರ, ಫೆಬ್ರವರಿ 4ರಂದು ಸಂಜೆ 5:30ಕ್ಕೆ ಐ. ಎಸ್. ತರಗತಿಗಳಲ್ಲಿ ನಡೆಯಲಿರುವ ಪ್ರವೇಶ ಪರೀಕ್ಷೆಯಲ್ಲಿ ಭಾಗವಹಿಸಬಹುದು. ಕನ್ನಡ, ಆಂಗ್ಲ ಹಾಗು ಕಲಾ ವಿಭಾಗಗಳಿಗೆ ಪ್ರತ್ಯೇಕ ಪರೀಕ್ಷೆಗಳಿರಲಿವೆ. ಕನ್ನಡ ಅಥವಾ ಆಂಗ್ಲ ವಿಭಾಗವನ್ನು ಸೇರಲು ಇಚ್ಛಿಸುವವರು ಕೈಯಲ್ಲಿ ಲೇಖನಿಯೊಂದನ್ನು ಹಿಡಿದು, ಮಸ್ತಕದಲ್ಲಿ ಸೃಜನಾತ್ಮಕ ಆಲೋಚನೆಗಳೊಂದಿಗೆ ಆಗಮಿಸಿ. ಕಲಾ ವಿಭಾಗದ ಭಾಗವಾಗಬಯಸುವವರು, ತಾವು ರಚಿಸಿದ ಸುಂದರ ಕಲಾಕೃತಿಗಳನ್ನು ಅಥವಾ ಅವುಗಳ ಛಾಯಾಚಿತ್ರಗಳನ್ನು ಹೊತ್ತು ತನ್ನಿ. ಈ ಮೇಲಿನ ಕೊಂಡಿಯನ್ನು ಬಳಸಿಕೊಂಡು ನೊಂದಾಯಿಸಿಕೊಳ್ಳಿ. ಬನ್ನಿ, ಭಾಗವಹಿಸಿ, ನಮ್ಮಲೊಬ್ಬರಾಗಿ!	f
80	||SHABD|| 2022 Events List	image/upload/v1653468585/IMG-20220525-WA0002_mqqwsf.jpg	Event list for ||SHABD|| - 2022.\r\nRules for the events will be posted soon.	f
\.


--
-- Data for Name: EdWebApp_registration; Type: TABLE DATA; Schema: public; Owner: dgcwkoncubyteg
--

COPY "public"."EdWebApp_registration" ("id", "event_name", "time", "date", "type", "event_head", "phone_number", "reg_form", "venue") FROM stdin;
20	Creative Writing	2:00 pm	June 4	English	Anagha H	6362419150	https://forms.gle/LxrnwcHN9c1kEc6e8	IS 102
22	Painting	2:00 pm	June 4	Art	Ananya	8152853855	https://forms.gle/6w5L6qCRGkvB2e2t8	CS-IS Lobby
21	Debate	2:00 pm	June 4	English	Poorvi	6362942135	https://forms.gle/PxDK1wWEQucGJfck9	IS Sem Hall
24	Photography	4:00 pm	June 4	Art	Apoorva	9179412469	https://forms.gle/6PgSVNZgFAAqm1us7	CS-IS Lobby
25	Collage	4:00 pm	June 4	Art	Kshamata	9886868152	https://forms.gle/E3DVb3zK3zD7MUjG9	CS-IS Lobby
26	Mask Making	4:30 pm	June 4	Art	Sanchita	7019423015	https://forms.gle/XVyS89NDMTDFgD9n7	CS-IS Lobby
27	Melo-draw-ma	10:00 am	June 5	Art	Abhilash	9483154161	https://forms.gle/Eo2ibnwuu3fQDGw56	CS-IS Lobby
28	Pencil Sketching	12:30 pm	June 4	Art	Kshamata	9886868152	https://forms.gle/UHEp4UhRi4WhyoU59	CS-IS Lobby
29	JAM	4:00 pm	June 4	English	Surabhi	7829832267	https://forms.gle/cqiU51gMuJ1P16ed7	IS Sem Hall 1
31	Pictionary	10:00 am	June 5	English	Surabhi	7829832267	https://forms.gle/AnQsCRaiAshZGyoQ8	IS 101
32	Love Letter Writing	11:00 am	June 5	English	Poorvi	6362942135	https://forms.gle/HVTbSac3kN3BUvCW9	IS 102
33	Quiz	2:30 pm	June 4	English	Bhuvan	9035043244	https://forms.gle/jtLUwa9641JynHpZ9	IS Sem Hall
30	Poetry	10:00 am	June 4	English	Shreeya	8073818709	https://forms.gle/TC9hD72nT5cVG2559	IS 102
36	Poetry	10:00 am	June 5	Kannada	Vadiraj	9611538950	https://forms.gle/Kkci2MrgohMJBFRC8	IS 103
38	Debate	11:30 am	June 5	Kannada	Sanchita	7019423015	https://forms.gle/N4qzks6qgp1XDXfj8	IS Sem Hall
37	Creative Writing	11:30 am	June 5	Kannada	Meghana	9483906910	https://forms.gle/GbCdxA74ZvKXrvEo8	IS 103
34	Quiz	5:00 pm	June 4	Kannada	Abhilash	9483154161	https://forms.gle/bVFsn5yTKuxVoo72A	IS Sem Hall
19	Pictionary	2:00 pm	June 4	Kannada	Harsha	9481487352	https://forms.gle/XNE1boE5BcuSt1dt9	IS 101
23	Love Letter Writing	4:00 pm	June 4	Kannada	Vadiraj	9611538950	https://forms.gle/hS2FgzQPrcrkpFud7	IS 102
35	Crossword	5:30 pm	June 4	Kannada	Meghana	9483906910	https://forms.gle/cxdo1zg7PRP7iwPE8	IS Sem Hall 1
39	JAM	2:30 pm	June 5	Kannada	Harsha	9481487352	https://forms.gle/2TRezfD5jN7hk7JY8	IS Sem Hall 1
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: dgcwkoncubyteg
--

COPY "public"."auth_group" ("id", "name") FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: dgcwkoncubyteg
--

COPY "public"."auth_group_permissions" ("id", "group_id", "permission_id") FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: dgcwkoncubyteg
--

COPY "public"."auth_permission" ("id", "name", "content_type_id", "codename") FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add member	7	add_member
26	Can change member	7	change_member
27	Can delete member	7	delete_member
28	Can view member	7	view_member
29	Can add news	8	add_news
30	Can change news	8	change_news
31	Can delete news	8	delete_news
32	Can view news	8	view_news
33	Can add event	9	add_event
34	Can change event	9	change_event
35	Can delete event	9	delete_event
36	Can view event	9	view_event
37	Can add eventimage	10	add_eventimage
38	Can change eventimage	10	change_eventimage
39	Can delete eventimage	10	delete_eventimage
40	Can view eventimage	10	view_eventimage
41	Can add registration	11	add_registration
42	Can change registration	11	change_registration
43	Can delete registration	11	delete_registration
44	Can view registration	11	view_registration
45	Can add faq	12	add_faq
46	Can change faq	12	change_faq
47	Can delete faq	12	delete_faq
48	Can view faq	12	view_faq
49	Can add alumni	13	add_alumni
50	Can change alumni	13	change_alumni
51	Can delete alumni	13	delete_alumni
52	Can view alumni	13	view_alumni
53	Can add kr_registration	14	add_kr_registration
54	Can change kr_registration	14	change_kr_registration
55	Can delete kr_registration	14	delete_kr_registration
56	Can view kr_registration	14	view_kr_registration
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: dgcwkoncubyteg
--

COPY "public"."auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") FROM stdin;
1	pbkdf2_sha256$216000$YimjvZG8HDlJ$HCIP/Xoz5Nl+ALx/4aPLhMeihGo3n1ATMywrm/w+cHk=	2022-09-24 08:15:10.048047+00	t	edboard			edboard.assist@gmail.com	t	t	2020-11-09 22:12:13.495154+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: dgcwkoncubyteg
--

COPY "public"."auth_user_groups" ("id", "user_id", "group_id") FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: dgcwkoncubyteg
--

COPY "public"."auth_user_user_permissions" ("id", "user_id", "permission_id") FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: dgcwkoncubyteg
--

COPY "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") FROM stdin;
1	2020-11-10 07:26:30.259973+00	1	Shreya Kanchitota	1	[{"added": {}}]	7	1
2	2020-11-10 07:28:48.92223+00	2	Anagha P	1	[{"added": {}}]	7	1
3	2020-11-10 07:31:16.308944+00	3	Sanchita V Kumar	1	[{"added": {}}]	7	1
4	2020-11-10 07:31:58.376132+00	3	Sanchita V Kumar	2	[{"changed": {"fields": ["Image"]}}]	7	1
5	2020-11-10 07:32:47.812201+00	1	Shreya Kanchitota	2	[{"changed": {"fields": ["Image"]}}]	7	1
6	2020-11-10 07:33:57.139777+00	4	Vijeth Vaishnav D.	1	[{"added": {}}]	7	1
7	2020-11-10 07:35:37.071541+00	5	Royina KJ	1	[{"added": {}}]	7	1
8	2020-11-10 07:42:16.113435+00	6	Bhavana Tiyyagura	1	[{"added": {}}]	7	1
9	2020-11-10 07:42:21.007494+00	7	Sumi Lal	1	[{"added": {}}]	7	1
10	2020-11-10 07:42:31.873103+00	5	Royina KJ	2	[{"changed": {"fields": ["Information"]}}]	7	1
11	2020-11-10 07:43:04.278417+00	6	Bhavana Tiyyagura	2	[]	7	1
12	2020-11-10 07:45:35.053847+00	8	Santosh Satish	1	[{"added": {}}]	7	1
13	2020-11-10 07:49:24.156849+00	6	Bhavana Tiyyagura	2	[{"changed": {"fields": ["Belt"]}}]	7	1
14	2020-11-10 07:49:48.950849+00	6	Bhavana Tiyyagura	2	[{"changed": {"fields": ["Information"]}}]	7	1
15	2020-11-10 07:50:05.417203+00	9	Shashank	1	[{"added": {}}]	7	1
16	2020-11-10 07:51:23.85458+00	9	Shashank	2	[{"changed": {"fields": ["Belt"]}}]	7	1
17	2020-11-10 07:54:29.269091+00	10	Surabhi	1	[{"added": {}}]	7	1
18	2020-11-10 07:55:48.321386+00	11	Poorvi Shetty	1	[{"added": {}}]	7	1
19	2020-11-10 08:02:25.142136+00	8	Santosh Satish	2	[{"changed": {"fields": ["Image"]}}]	7	1
20	2020-11-10 08:06:13.648976+00	6	Bhavana Tiyyagura	2	[{"changed": {"fields": ["Image"]}}]	7	1
21	2020-11-10 08:07:35.161487+00	5	Royina KJ	2	[{"changed": {"fields": ["Image"]}}]	7	1
22	2020-11-10 08:09:11.624595+00	9	Shashank	2	[{"changed": {"fields": ["Image"]}}]	7	1
23	2020-11-10 08:10:50.218182+00	10	Surabhi	2	[{"changed": {"fields": ["Image"]}}]	7	1
24	2020-11-10 08:11:05.557278+00	12	Prarthana G. P.	1	[{"added": {}}]	7	1
25	2020-11-10 08:13:20.689674+00	12	Prarthana G. P.	2	[{"changed": {"fields": ["Image"]}}]	7	1
26	2020-11-10 08:17:43.570722+00	13	Vinay Vasishta	1	[{"added": {}}]	7	1
27	2020-11-10 08:19:15.441201+00	13	Vinay Vasishta	2	[{"changed": {"fields": ["Image"]}}]	7	1
28	2020-11-10 08:32:48.134219+00	11	Poorvi Shetty	2	[{"changed": {"fields": ["Belt"]}}]	7	1
29	2020-11-10 10:28:45.824128+00	14	Ananya K.	1	[{"added": {}}]	7	1
30	2020-11-10 10:30:26.947312+00	14	Ananya K.	2	[{"changed": {"fields": ["Image"]}}]	7	1
31	2020-11-10 10:31:11.521234+00	13	Vinay Vasishta	2	[{"changed": {"fields": ["Image"]}}]	7	1
32	2020-11-10 10:32:28.910995+00	15	Apoorva K. C.	1	[{"added": {}}]	7	1
33	2020-11-10 10:34:49.480174+00	15	Apoorva K. C.	2	[{"changed": {"fields": ["Image", "Image"]}}]	7	1
34	2020-11-10 10:40:14.195853+00	16	Harsha Vishweshwara Bhat	1	[{"added": {}}]	7	1
35	2020-11-10 10:51:34.376054+00	1	The Pilot Episode	1	[{"added": {}}, {"added": {"name": "eventimage", "object": "The Pilot Episode"}}, {"added": {"name": "eventimage", "object": "The Pilot Episode"}}]	9	1
36	2020-11-10 10:53:16.904431+00	1	The Pilot Episode	2	[{"changed": {"fields": ["Image"]}}]	9	1
37	2020-11-10 10:54:08.536767+00	17	Sharvari S. Sosale	1	[{"added": {}}]	7	1
38	2020-11-10 10:54:18.226245+00	1	The Pilot Episode	2	[{"changed": {"name": "eventimage", "object": "The Pilot Episode", "fields": ["Image"]}}, {"changed": {"name": "eventimage", "object": "The Pilot Episode", "fields": ["Image"]}}]	9	1
39	2020-11-10 10:54:47.474137+00	17	Sharvari S. Sosale	2	[{"changed": {"fields": ["Title"]}}]	7	1
40	2020-11-10 10:59:31.079004+00	2	Recruitment	1	[{"added": {}}, {"added": {"name": "eventimage", "object": "Recruitment"}}]	9	1
41	2020-11-10 11:01:01.714489+00	18	Aditya Rajaram hegde	1	[{"added": {}}]	7	1
42	2020-11-10 11:01:52.480879+00	17	Sharvari S. Sosale	2	[{"changed": {"fields": ["Belt"]}}]	7	1
43	2020-11-10 11:02:13.501519+00	18	Aditya Rajaram Hegde	2	[{"changed": {"fields": ["Name"]}}]	7	1
44	2020-11-10 11:02:25.958575+00	10	Surabhi Seenivasan	2	[{"changed": {"fields": ["Name"]}}]	7	1
45	2020-11-10 11:02:41.459908+00	9	Shashank Venkatesan	2	[{"changed": {"fields": ["Name"]}}]	7	1
46	2020-11-10 11:03:11.111374+00	3	Aralikatte	1	[{"added": {}}, {"added": {"name": "eventimage", "object": "Aralikatte"}}, {"added": {"name": "eventimage", "object": "Aralikatte"}}, {"added": {"name": "eventimage", "object": "Aralikatte"}}]	9	1
47	2020-11-10 11:03:20.727394+00	18	Aditya Rajaram Hegde	2	[{"changed": {"fields": ["Image", "Tagline"]}}]	7	1
48	2020-11-10 11:06:06.128449+00	19	Meghana Kashyap	1	[{"added": {}}]	7	1
49	2020-11-10 11:08:07.456741+00	19	Meghana Kashyap	2	[{"changed": {"fields": ["Image"]}}]	7	1
50	2020-11-10 11:11:40.200561+00	4	Kannada Rajyotsava	1	[{"added": {}}]	9	1
51	2020-11-10 11:12:26.039371+00	20	Rajath R. Rao	1	[{"added": {}}]	7	1
52	2020-11-10 11:13:51.647088+00	5	Mindspeak	1	[{"added": {}}, {"added": {"name": "eventimage", "object": "Mindspeak"}}]	9	1
53	2020-11-10 11:17:25.292371+00	18	Aditya Rajaram Hegde	2	[{"changed": {"fields": ["Image"]}}]	7	1
54	2020-11-10 11:19:36.609624+00	16	Harsha Vishweshwara Bhat	2	[{"changed": {"fields": ["Image", "Image"]}}]	7	1
55	2020-11-10 11:21:32.565899+00	2	Recruitment	2	[{"changed": {"fields": ["Image"]}}]	9	1
56	2020-11-10 11:25:50.660808+00	1	The Pilot Episode	2	[{"changed": {"fields": ["Image"]}}]	9	1
57	2020-11-10 11:26:35.552494+00	2	Recruitment	2	[{"changed": {"fields": ["Image"]}}]	9	1
58	2020-11-10 11:27:53.612991+00	3	Aralikatte	2	[{"changed": {"fields": ["Image"]}}]	9	1
59	2020-11-10 11:29:34.9082+00	4	Kannada Rajyotsava	2	[{"added": {"name": "eventimage", "object": "Kannada Rajyotsava"}}, {"added": {"name": "eventimage", "object": "Kannada Rajyotsava"}}]	9	1
60	2020-11-10 11:30:58.957145+00	4	Kannada Rajyotsava	2	[{"added": {"name": "eventimage", "object": "Kannada Rajyotsava"}}]	9	1
61	2020-11-10 11:32:55.665542+00	5	Mindspeak	2	[{"changed": {"fields": ["Image"]}}]	9	1
62	2020-11-10 11:36:55.155235+00	17	Sharvari S. Sosale	2	[{"changed": {"fields": ["Belt"]}}]	7	1
63	2020-11-10 11:37:59.332847+00	5	Royina KJ	2	[{"changed": {"fields": ["Belt"]}}]	7	1
64	2020-11-10 11:39:52.806429+00	6	Bhavana Tiyyagura	2	[{"changed": {"fields": ["Belt"]}}]	7	1
65	2020-11-10 13:11:37.378385+00	9	Shashank Venkatesan	2	[{"changed": {"fields": ["Title"]}}]	7	1
66	2020-11-10 13:11:52.195172+00	8	Santosh Satish	2	[{"changed": {"fields": ["Title"]}}]	7	1
67	2020-11-10 13:12:03.933604+00	17	Sharvari S. Sosale	2	[{"changed": {"fields": ["Title"]}}]	7	1
68	2020-11-10 15:45:01.700588+00	11	Poorvi Shetty	2	[{"changed": {"fields": ["Image"]}}]	7	1
69	2020-11-11 15:19:11.400816+00	8	Santosh Satish	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
70	2020-11-11 15:21:52.679174+00	17	Sharvari S. Sosale	2	[{"changed": {"fields": ["Tagline", "Current sem"]}}]	7	1
71	2020-11-11 15:22:35.87878+00	18	Aditya Rajaram Hegde	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
72	2020-11-11 15:23:02.120682+00	13	Vinay Vasishta	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
73	2020-11-11 15:23:40.19772+00	13	Vinay Vasishta	2	[]	7	1
74	2020-11-11 15:24:09.957152+00	12	Prarthana G. P.	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
75	2020-11-11 15:24:35.292041+00	9	Shashank Venkatesan	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
76	2020-11-11 15:25:12.996173+00	7	Sumi Lal	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
77	2020-11-11 15:25:38.916345+00	6	Bhavana Tiyyagura	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
78	2020-11-11 15:26:06.117853+00	5	Royina KJ	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
79	2020-11-11 15:26:35.180106+00	4	Vijeth Vaishnav D.	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
80	2020-11-11 15:27:09.917915+00	2	Anagha P	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
81	2020-11-11 15:27:35.733636+00	20	Rajath R. Rao	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
82	2020-11-11 15:28:26.066359+00	1	Shreya Kanchitota	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
83	2020-11-11 15:29:03.827299+00	3	Sanchita V Kumar	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
84	2020-11-11 15:29:34.867118+00	10	Surabhi Seenivasan	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
85	2020-11-11 15:30:24.993342+00	19	Meghana Kashyap	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
86	2020-11-11 15:31:01.159252+00	11	Poorvi Shetty	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
87	2020-11-11 15:31:41.752774+00	16	Harsha Vishweshwara Bhat	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
88	2020-11-11 15:32:06.864294+00	15	Apoorva K. C.	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
89	2020-11-11 15:32:35.026074+00	14	Ananya K.	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
90	2020-11-11 16:15:29.203449+00	18	Aditya Rajaram Hegde	2	[{"changed": {"fields": ["Title"]}}]	7	1
91	2020-11-11 16:17:05.988357+00	8	Santosh Satish	2	[{"changed": {"fields": ["Position"]}}]	7	1
92	2020-11-11 16:17:30.627408+00	13	Vinay Vasishta	2	[{"changed": {"fields": ["Title"]}}]	7	1
93	2020-11-11 16:17:59.048983+00	12	Prarthana G. P.	2	[{"changed": {"fields": ["Title"]}}]	7	1
94	2020-11-11 16:18:28.868132+00	9	Shashank Venkatesan	2	[{"changed": {"fields": ["Title"]}}]	7	1
95	2020-11-11 16:18:56.390715+00	7	Sumi Lal	2	[{"changed": {"fields": ["Title"]}}]	7	1
96	2020-11-11 16:20:03.588454+00	5	Royina KJ	2	[{"changed": {"fields": ["Title"]}}]	7	1
97	2020-11-11 16:20:25.173081+00	4	Vijeth Vaishnav D.	2	[{"changed": {"fields": ["Title"]}}]	7	1
98	2020-11-11 16:20:51.266708+00	2	Anagha P	2	[{"changed": {"fields": ["Title"]}}]	7	1
99	2020-11-11 16:21:40.225472+00	1	Shreya Kanchitota	2	[{"changed": {"fields": ["Title"]}}]	7	1
100	2020-11-11 16:22:03.217004+00	20	Rajath R. Rao	2	[{"changed": {"fields": ["Title"]}}]	7	1
101	2020-11-11 16:22:29.055346+00	19	Meghana Kashyap	2	[{"changed": {"fields": ["Title"]}}]	7	1
102	2020-11-11 16:22:58.181465+00	16	Harsha Vishweshwara Bhat	2	[{"changed": {"fields": ["Title"]}}]	7	1
103	2020-11-11 16:23:55.264294+00	11	Poorvi Shetty	2	[{"changed": {"fields": ["Title"]}}]	7	1
104	2020-11-11 16:24:23.535416+00	10	Surabhi Seenivasan	2	[{"changed": {"fields": ["Title"]}}]	7	1
105	2020-11-11 16:24:56.620827+00	3	Sanchita V Kumar	2	[{"changed": {"fields": ["Title"]}}]	7	1
106	2020-11-11 16:25:20.703559+00	15	Apoorva K. C.	2	[{"changed": {"fields": ["Title"]}}]	7	1
107	2020-11-11 16:25:44.704799+00	14	Ananya K.	2	[{"changed": {"fields": ["Title"]}}]	7	1
108	2020-11-11 16:27:33.529762+00	8	Santosh Satish	2	[{"changed": {"fields": ["Tagline"]}}]	7	1
109	2020-11-11 16:31:54.785863+00	20	Rajath R. Rao	2	[{"changed": {"fields": ["Image", "Image"]}}]	7	1
110	2020-11-11 17:35:47.038297+00	4	Vijeth Vaishnav D.	2	[]	7	1
111	2020-11-11 17:37:35.240119+00	7	Sumi Lal	2	[{"changed": {"fields": ["Tagline"]}}]	7	1
112	2020-11-11 17:37:43.541048+00	12	Prarthana G. P.	2	[]	7	1
113	2020-11-11 17:39:16.224165+00	4	Vijeth Vaishnav D.	2	[{"changed": {"fields": ["Tagline"]}}]	7	1
114	2020-11-11 17:42:59.168417+00	4	Vijeth Vaishnav D.	2	[{"changed": {"fields": ["Tagline"]}}]	7	1
115	2020-11-11 17:47:58.482012+00	4	Vijeth Vaishnav D	2	[{"changed": {"fields": ["Name"]}}]	7	1
116	2020-11-11 18:23:23.223021+00	18	Aditya Rajaram Hegde	2	[{"changed": {"fields": ["Belt"]}}]	7	1
117	2020-11-11 18:23:52.899846+00	8	Santosh Satish	2	[{"changed": {"fields": ["Belt"]}}]	7	1
118	2020-11-11 18:24:29.048135+00	13	Vinay Vasishta	2	[{"changed": {"fields": ["Belt"]}}]	7	1
119	2020-11-11 18:25:17.525846+00	12	Prarthana G. P.	2	[{"changed": {"fields": ["Belt"]}}]	7	1
120	2020-11-11 18:25:55.73392+00	4	Vijeth Vaishnav D	2	[{"changed": {"fields": ["Belt"]}}]	7	1
121	2020-11-12 06:12:02.763301+00	4	Kannada Rajyotsava	2	[{"changed": {"fields": ["Description"]}}]	9	1
122	2020-11-12 06:19:55.664029+00	8	Santosh Satish	2	[{"changed": {"fields": ["Belt"]}}]	7	1
123	2020-11-12 06:33:16.99692+00	18	Aditya Rajaram Hegde	2	[{"changed": {"fields": ["Belt"]}}]	7	1
124	2020-11-12 07:26:52.780076+00	8	Santosh Satish	2	[{"changed": {"fields": ["Belt"]}}]	7	1
125	2020-11-12 07:31:39.646949+00	13	Vinay Vasishta	2	[{"changed": {"fields": ["Belt"]}}]	7	1
126	2020-11-12 07:34:31.082768+00	12	Prarthana G. P.	2	[{"changed": {"fields": ["Belt"]}}]	7	1
127	2020-11-12 07:36:38.255742+00	18	Aditya Rajaram Hegde	2	[{"changed": {"fields": ["Belt"]}}]	7	1
128	2020-11-12 07:39:46.497809+00	4	Vijeth Vaishnav D	2	[{"changed": {"fields": ["Belt"]}}]	7	1
129	2020-11-12 07:45:04.36677+00	20	Rajath R. Rao	2	[{"changed": {"fields": ["Belt"]}}]	7	1
130	2020-11-12 07:46:33.816502+00	3	Sanchita V Kumar	2	[{"changed": {"fields": ["Belt"]}}]	7	1
131	2020-11-12 07:48:20.510827+00	16	Harsha Vishweshwara Bhat	2	[{"changed": {"fields": ["Belt"]}}]	7	1
132	2020-11-12 07:49:34.821339+00	19	Meghana Kashyap	2	[{"changed": {"fields": ["Belt"]}}]	7	1
133	2020-11-12 08:40:26.403056+00	5	Royina K. J.	2	[{"changed": {"fields": ["Name"]}}]	7	1
134	2020-11-12 08:40:48.155144+00	4	Vijeth Vaishnav D.	2	[{"changed": {"fields": ["Name"]}}]	7	1
135	2020-11-12 08:40:58.586714+00	2	Anagha P.	2	[{"changed": {"fields": ["Name"]}}]	7	1
136	2020-11-12 08:41:16.927097+00	3	Sanchita V. Kumar	2	[{"changed": {"fields": ["Name"]}}]	7	1
137	2020-11-13 18:56:39.779485+00	17	Sharvari S. Sosale	2	[{"changed": {"fields": ["Title"]}}]	7	1
138	2020-11-14 06:24:17.355416+00	18	Aditya Rajaram Hegde	2	[{"changed": {"fields": ["Geek meter", "Introversion", "Peching", "Paapa meter", "Ability"]}}]	7	1
139	2020-11-14 06:25:35.582658+00	18	Aditya Rajaram Hegde	2	[{"changed": {"fields": ["Ability"]}}]	7	1
140	2020-11-14 06:36:00.111572+00	17	Sharvari S. Sosale	2	[{"changed": {"fields": ["Geek meter", "Introversion", "Peching", "Paapa meter", "Ability"]}}]	7	1
141	2020-11-14 06:38:27.588503+00	8	Santosh Satish	2	[{"changed": {"fields": ["Geek meter", "Introversion", "Peching", "Ability"]}}]	7	1
142	2020-11-14 06:42:00.910553+00	13	Vinay Vasishta	2	[{"changed": {"fields": ["Geek meter", "Introversion", "Peching", "Paapa meter", "Ability"]}}]	7	1
143	2020-11-14 06:44:38.08563+00	12	Prarthana G. P.	2	[{"changed": {"fields": ["Geek meter", "Introversion", "Paapa meter", "Ability"]}}]	7	1
144	2020-11-14 06:47:20.353395+00	9	Shashank Venkatesan	2	[{"changed": {"fields": ["Geek meter", "Introversion", "Peching", "Paapa meter", "Ability"]}}]	7	1
145	2020-11-14 06:47:48.645734+00	9	Shashank Venkatesan	2	[{"changed": {"fields": ["Ability"]}}]	7	1
146	2020-11-14 06:53:29.30348+00	7	Sumi Lal	2	[{"changed": {"fields": ["Geek meter", "Introversion", "Paapa meter", "Ability"]}}]	7	1
147	2020-11-14 06:55:49.098442+00	6	Bhavana Tiyyagura	2	[{"changed": {"fields": ["Geek meter", "Introversion", "Peching", "Paapa meter", "Ability"]}}]	7	1
148	2020-11-14 06:59:35.326551+00	5	Royina K. J.	2	[{"changed": {"fields": ["Geek meter", "Peching", "Paapa meter", "Ability"]}}]	7	1
149	2020-11-14 07:01:24.750114+00	4	Vijeth Vaishnav D.	2	[{"changed": {"fields": ["Geek meter", "Introversion", "Peching", "Paapa meter", "Ability"]}}]	7	1
150	2020-11-14 07:05:08.603062+00	2	Anagha P.	2	[{"changed": {"fields": ["Introversion", "Peching", "Paapa meter", "Ability"]}}]	7	1
151	2020-11-14 07:07:38.775607+00	1	Shreya Kanchitota	2	[{"changed": {"fields": ["Geek meter", "Introversion", "Peching", "Paapa meter", "Ability"]}}]	7	1
152	2020-11-14 07:09:23.031097+00	20	Rajath R. Rao	2	[{"changed": {"fields": ["Geek meter", "Introversion", "Paapa meter", "Ability"]}}]	7	1
153	2020-11-14 07:10:59.974707+00	19	Meghana Kashyap	2	[{"changed": {"fields": ["Geek meter", "Introversion", "Peching", "Paapa meter", "Ability"]}}]	7	1
154	2020-11-14 07:13:43.301652+00	16	Harsha Vishweshwara Bhat	2	[{"changed": {"fields": ["Geek meter", "Introversion", "Peching", "Paapa meter", "Ability"]}}]	7	1
155	2020-11-14 07:18:09.428531+00	11	Poorvi Shetty	2	[{"changed": {"fields": ["Geek meter", "Introversion", "Peching", "Paapa meter", "Ability"]}}]	7	1
156	2020-11-14 07:22:00.048087+00	10	Surabhi Seenivasan	2	[{"changed": {"fields": ["Geek meter", "Introversion", "Peching", "Paapa meter", "Ability"]}}]	7	1
157	2020-11-14 07:25:33.401248+00	3	Sanchita V. Kumar	2	[{"changed": {"fields": ["Geek meter", "Introversion", "Peching", "Paapa meter", "Ability"]}}]	7	1
158	2020-11-14 07:29:11.520632+00	15	Apoorva K. C.	2	[{"changed": {"fields": ["Geek meter", "Introversion", "Peching", "Paapa meter", "Ability"]}}]	7	1
159	2020-11-14 07:31:57.117739+00	14	Ananya K.	2	[{"changed": {"fields": ["Geek meter", "Introversion", "Peching", "Paapa meter", "Ability"]}}]	7	1
160	2020-11-14 07:33:34.883505+00	20	Rajath R. Rao	2	[{"changed": {"fields": ["Ability"]}}]	7	1
161	2020-11-14 07:34:22.867626+00	8	Santosh Satish	2	[{"changed": {"fields": ["Paapa meter"]}}]	7	1
162	2020-11-14 07:36:04.345369+00	15	Apoorva K. C.	2	[{"changed": {"fields": ["Ability"]}}]	7	1
163	2020-11-14 07:38:20.102968+00	4	Kannada Rajyotsava	2	[{"changed": {"fields": ["Description"]}}]	9	1
164	2020-11-14 10:22:36.623239+00	11	Poorvi Shetty	2	[{"changed": {"fields": ["Paapa meter"]}}]	7	1
165	2020-11-14 11:39:07.694883+00	1	Shreya Kanchitota	2	[{"changed": {"fields": ["Image"]}}]	7	1
166	2020-11-16 14:49:27.286606+00	11	Poorvi Shetty	2	[{"changed": {"fields": ["Ability"]}}]	7	1
167	2020-11-22 06:52:22.348125+00	17	Sharvari S. Sosale	2	[]	7	1
168	2020-11-22 07:01:28.745311+00	6	Bhavana Tiyyagura	2	[{"changed": {"fields": ["Belt"]}}]	7	1
169	2020-11-22 07:04:06.507647+00	9	Shashank Venkatesan	2	[{"changed": {"fields": ["Belt"]}}]	7	1
170	2020-11-22 07:07:26.757425+00	7	Sumi Lal	2	[{"changed": {"fields": ["Belt"]}}]	7	1
171	2020-11-22 07:07:51.544823+00	6	Bhavana Tiyyagura	2	[{"changed": {"fields": ["Belt"]}}]	7	1
172	2020-11-22 07:09:50.619212+00	5	Royina K. J.	2	[{"changed": {"fields": ["Belt"]}}]	7	1
173	2020-11-22 07:11:33.114718+00	2	Anagha P.	2	[{"changed": {"fields": ["Belt"]}}]	7	1
174	2020-11-22 07:16:51.170286+00	1	Shreya Kanchitota	2	[{"changed": {"fields": ["Belt"]}}]	7	1
175	2020-11-22 07:20:33.157731+00	17	Sharvari S. Sosale	2	[{"changed": {"fields": ["Belt"]}}]	7	1
176	2020-11-22 07:21:05.821077+00	9	Shashank Venkatesan	2	[{"changed": {"fields": ["Belt"]}}]	7	1
177	2020-11-22 07:21:41.877663+00	7	Sumi Lal	2	[{"changed": {"fields": ["Belt"]}}]	7	1
178	2020-11-22 07:22:09.17705+00	6	Bhavana Tiyyagura	2	[]	7	1
179	2020-11-22 07:22:57.636343+00	5	Royina K. J.	2	[{"changed": {"fields": ["Belt"]}}]	7	1
180	2020-11-22 07:23:12.825708+00	1	Shreya Kanchitota	2	[{"changed": {"fields": ["Belt"]}}]	7	1
181	2020-11-22 07:23:37.706528+00	2	Anagha P.	2	[{"changed": {"fields": ["Belt"]}}]	7	1
182	2020-11-22 07:26:39.055236+00	14	Ananya K.	2	[{"changed": {"fields": ["Tagline"]}}]	7	1
183	2020-11-22 07:27:22.878089+00	5	Royina K. J.	2	[{"changed": {"fields": ["Tagline"]}}]	7	1
184	2020-11-22 07:28:09.893752+00	9	Shashank Venkatesan	2	[{"changed": {"fields": ["Tagline"]}}]	7	1
185	2020-11-22 07:28:53.820718+00	9	Shashank Venkatesan	2	[{"changed": {"fields": ["Tagline"]}}]	7	1
186	2020-11-22 07:29:36.859296+00	20	Rajath R. Rao	2	[{"changed": {"fields": ["Tagline"]}}]	7	1
187	2020-11-22 07:30:09.546032+00	9	Shashank Venkatesan	2	[{"changed": {"fields": ["Tagline"]}}]	7	1
188	2020-11-23 06:37:58.704406+00	11	Poorvi Shetty	2	[{"changed": {"fields": ["Ability"]}}]	7	1
189	2020-11-23 13:02:33.680692+00	2	Recruitment	2	[{"changed": {"fields": ["Description"]}}]	9	1
190	2020-11-23 13:07:43.747523+00	2	Recruitment	2	[{"changed": {"fields": ["Description"]}}]	9	1
191	2020-11-23 13:32:36.911242+00	17	Sharvari S. Sosale	2	[{"changed": {"fields": ["Belt"]}}]	7	1
192	2020-11-23 13:56:39.131834+00	5	Royina K. J.	2	[{"changed": {"fields": ["Belt"]}}]	7	1
193	2020-11-23 13:56:54.499641+00	17	Sharvari S. Sosale	2	[{"changed": {"fields": ["Belt"]}}]	7	1
194	2020-11-23 13:57:12.306365+00	7	Sumi Lal	2	[{"changed": {"fields": ["Belt"]}}]	7	1
195	2020-11-23 13:57:31.534086+00	6	Bhavana Tiyyagura	2	[{"changed": {"fields": ["Belt"]}}]	7	1
196	2020-11-23 13:57:44.623175+00	5	Royina K. J.	2	[]	7	1
197	2020-11-23 13:58:01.126425+00	2	Anagha P.	2	[{"changed": {"fields": ["Belt"]}}]	7	1
198	2020-11-23 14:11:18.033635+00	18	Aditya Rajaram Hegde	2	[{"changed": {"fields": ["Title"]}}]	7	1
199	2020-11-23 14:12:27.158769+00	17	Sharvari S. Sosale	2	[{"changed": {"fields": ["Title"]}}]	7	1
200	2020-11-23 14:12:45.970824+00	13	Vinay Vasishta	2	[{"changed": {"fields": ["Title"]}}]	7	1
201	2020-11-23 14:12:57.146569+00	12	Prarthana G. P.	2	[{"changed": {"fields": ["Title"]}}]	7	1
202	2020-11-23 14:13:06.829698+00	9	Shashank Venkatesan	2	[{"changed": {"fields": ["Title"]}}]	7	1
203	2020-11-23 14:13:19.21909+00	7	Sumi Lal	2	[{"changed": {"fields": ["Title"]}}]	7	1
204	2020-11-23 14:13:42.044582+00	5	Royina K. J.	2	[{"changed": {"fields": ["Title"]}}]	7	1
205	2020-11-23 14:14:10.0512+00	4	Vijeth Vaishnav D.	2	[{"changed": {"fields": ["Title"]}}]	7	1
206	2020-11-23 14:14:22.787299+00	2	Anagha P.	2	[{"changed": {"fields": ["Title"]}}]	7	1
208	2020-11-23 14:14:50.997034+00	20	Rajath R. Rao	2	[{"changed": {"fields": ["Title"]}}]	7	1
211	2020-11-23 14:15:28.953734+00	10	Surabhi Seenivasan	2	[{"changed": {"fields": ["Title"]}}]	7	1
212	2020-11-23 14:16:11.749925+00	3	Sanchita V. Kumar	2	[{"changed": {"fields": ["Title"]}}]	7	1
214	2020-11-23 14:17:12.446842+00	14	Ananya K.	2	[{"changed": {"fields": ["Title"]}}]	7	1
215	2020-11-23 14:17:24.676914+00	11	Poorvi Shetty	2	[{"changed": {"fields": ["Title"]}}]	7	1
286	2021-05-21 15:14:09.240824+00	18	Aditya Rajaram Hegde	2	[{"changed": {"fields": ["Information"]}}]	7	1
287	2021-05-21 15:14:23.679341+00	17	Sharvari S. Sosale	2	[{"changed": {"fields": ["Information"]}}]	7	1
288	2021-05-21 15:14:36.74764+00	8	Santosh Satish	2	[{"changed": {"fields": ["Information"]}}]	7	1
289	2021-05-21 15:14:50.21344+00	13	Vinay Vasishta	2	[{"changed": {"fields": ["Information"]}}]	7	1
299	2021-05-21 15:17:38.767423+00	19	Meghana Kashyap	2	[{"changed": {"fields": ["Information"]}}]	7	1
300	2021-05-21 15:17:50.177927+00	16	Harsha Bhat	2	[{"changed": {"fields": ["Information"]}}]	7	1
301	2021-05-21 15:18:04.044652+00	11	Poorvi Shetty	2	[{"changed": {"fields": ["Information"]}}]	7	1
302	2021-05-21 15:18:16.902961+00	10	Surabhi Seenivasan	2	[{"changed": {"fields": ["Information"]}}]	7	1
303	2021-05-21 15:18:29.007818+00	3	Sanchita V. Kumar	2	[{"changed": {"fields": ["Information"]}}]	7	1
304	2021-05-21 15:18:39.376137+00	15	Apoorva K. C.	2	[{"changed": {"fields": ["Information"]}}]	7	1
306	2021-05-21 20:13:47.908481+00	5	Recruitment 2021-05-22	2	[{"changed": {"fields": ["Display"]}}]	8	1
307	2021-05-21 20:13:58.045629+00	4	Pilot Episode 2021-05-22	2	[{"changed": {"fields": ["Display"]}}]	8	1
309	2021-05-21 20:21:30.313916+00	38	||SHABD|| 2021 2021-05-22	1	[{"added": {}}]	8	1
310	2021-05-24 11:24:04.60846+00	2	Debate	1	[{"added": {}}]	11	1
312	2021-05-24 11:26:52.12086+00	4	Pick and Speak	1	[{"added": {}}]	11	1
314	2021-05-24 11:29:25.833132+00	6	Creative Writing	1	[{"added": {}}]	11	1
316	2021-05-24 11:31:34.05121+00	8	Bamboozled	1	[{"added": {}}]	11	1
318	2021-05-24 11:33:48.046711+00	10	Creative Writing	1	[{"added": {}}]	11	1
320	2021-05-24 11:36:56.086253+00	12	Debate	1	[{"added": {}}]	11	1
322	2021-05-24 11:39:00.714925+00	14	Spot Painting	1	[{"added": {}}]	11	1
324	2021-05-24 11:41:03.122982+00	16	Photography	1	[{"added": {}}]	11	1
326	2021-05-24 11:43:14.225963+00	18	Photobashing	1	[{"added": {}}]	11	1
328	2021-05-24 19:07:02.041673+00	1	What is SHABD? Who is SHABD? Why is SHABD?	2	[{"changed": {"fields": ["Question", "Answer"]}}]	12	1
330	2021-05-24 19:07:49.128846+00	3	Is there any registration fee?	1	[{"added": {}}]	12	1
332	2021-05-24 19:24:09.540874+00	5	Should I call the event head for registration?	1	[{"added": {}}]	12	1
334	2021-05-24 19:26:01.416809+00	7	When and how do I register for the events?	1	[{"added": {}}]	12	1
336	2021-05-24 19:28:06.226176+00	9	What if while participating during any of the events that happen through Google Meet, I have a problem with my internet connection. What should I do then?	1	[{"added": {}}]	12	1
338	2021-05-24 19:28:55.470885+00	11	The event has started, can I still participate from the middle?	1	[{"added": {}}]	12	1
340	2021-05-24 20:04:39.51663+00	12	Should we switch on our webcam if our event is taking place through Google Meet?	2	[{"changed": {"fields": ["Topics"]}}]	12	1
342	2021-05-24 20:37:32.885419+00	12	Should we switch on our webcam if our event is taking place through Google Meet?	2	[]	12	1
343	2021-05-24 20:37:50.379843+00	11	The event has started, can I still participate from the middle?	2	[{"changed": {"fields": ["Topics"]}}]	12	1
344	2021-05-24 20:38:04.178017+00	11	The event has started, can I still participate from the middle?	2	[{"changed": {"fields": ["Topics"]}}]	12	1
345	2021-05-24 20:38:08.161237+00	13	Can we join to just watch as spectators for events like Debate?	1	[{"added": {}}]	12	1
346	2021-05-24 20:38:11.36214+00	10	What do I do if I want to participate in two events scheduled at the same time?	2	[{"changed": {"fields": ["Topics"]}}]	12	1
347	2021-05-24 20:38:20.397851+00	13	Can we join to just watch as spectators for events like Debate?	2	[]	12	1
348	2021-05-24 20:38:28.114503+00	9	What if while participating during any of the events that happen through Google Meet, I have a problem with my internet connection. What should I do then?	2	[{"changed": {"fields": ["Topics"]}}]	12	1
349	2021-05-24 20:38:32.916004+00	14	Is Debate a team event?	1	[{"added": {}}]	12	1
350	2021-05-24 20:38:34.652184+00	8	Can we join as a team?	2	[{"changed": {"fields": ["Topics"]}}]	12	1
351	2021-05-24 20:38:40.420044+00	7	When and how do I register for the events?	2	[{"changed": {"fields": ["Topics"]}}]	12	1
352	2021-05-24 20:38:46.268713+00	6	Who should I contact if I have doubts about the events or the registration process?	2	[{"changed": {"fields": ["Topics"]}}]	12	1
353	2021-05-24 20:38:56.331996+00	5	Should I call the event head for registration?	2	[{"changed": {"fields": ["Topics"]}}]	12	1
354	2021-05-24 20:39:03.195035+00	4	Can I participate even if I'm not from JSSSTU?	2	[{"changed": {"fields": ["Topics"]}}]	12	1
355	2021-05-24 20:39:09.558007+00	3	Is there any registration fee?	2	[{"changed": {"fields": ["Topics"]}}]	12	1
356	2021-05-24 20:39:12.829007+00	15	For 'Build Your Character’, does the character have to be fictional?	1	[{"added": {}}]	12	1
357	2021-05-24 20:39:16.565019+00	2	Is there an age limit for participants?	2	[{"changed": {"fields": ["Topics"]}}]	12	1
358	2021-05-24 20:39:24.241438+00	1	What is SHABD? Who is SHABD? Why is SHABD?	2	[{"changed": {"fields": ["Topics"]}}]	12	1
359	2021-05-24 20:39:37.583814+00	16	Is it mandatory to use Photoshop for Photobashing?	1	[{"added": {}}]	12	1
360	2021-05-24 20:40:02.534451+00	17	How do I submit my artworks/entries?	1	[{"added": {}}]	12	1
361	2021-05-24 20:40:42.109631+00	18	Are there prizes?	1	[{"added": {}}]	12	1
362	2021-05-24 20:41:13.214051+00	19	When and where will the results of the events be declared?	1	[{"added": {}}]	12	1
363	2021-05-24 20:56:07.411002+00	1	What is SHABD? Who is SHABD? Why is SHABD?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
364	2021-05-24 20:56:30.448844+00	2	Is there an age limit for participants?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
365	2021-05-24 20:56:59.135762+00	3	Is there any registration fee?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
366	2021-05-24 20:57:30.288237+00	4	Can I participate even if I'm not from JSSSTU?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
367	2021-05-24 20:57:54.927843+00	5	Should I call the event head for registration?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
368	2021-05-24 20:58:21.762904+00	6	Who should I contact if I have doubts about the events or the registration process?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
207	2020-11-23 14:14:34.263575+00	1	Shreya Kanchitota	2	[{"changed": {"fields": ["Title"]}}]	7	1
209	2020-11-23 14:15:04.739172+00	19	Meghana Kashyap	2	[{"changed": {"fields": ["Title"]}}]	7	1
210	2020-11-23 14:15:17.122205+00	16	Harsha Vishweshwara Bhat	2	[{"changed": {"fields": ["Title"]}}]	7	1
213	2020-11-23 14:16:57.776107+00	15	Apoorva K. C.	2	[{"changed": {"fields": ["Title"]}}]	7	1
216	2020-11-23 14:55:04.353522+00	6	Bhavana Tiyyagura	2	[{"changed": {"fields": ["Belt"]}}]	7	1
217	2020-11-23 14:55:49.49698+00	6	Bhavana Tiyyagura	2	[{"changed": {"fields": ["Belt"]}}]	7	1
218	2020-11-23 14:56:58.333766+00	9	Shashank Venkatesan	2	[{"changed": {"fields": ["Belt"]}}]	7	1
219	2020-11-23 14:58:27.057347+00	4	Kannada Rajyotsava	2	[{"changed": {"fields": ["Description"]}}]	9	1
220	2020-11-23 23:43:28.776351+00	1	Call For Article 2020-11-24	1	[{"added": {}}]	8	1
221	2020-11-24 07:00:01.293914+00	1	Call For Article 2020-11-24	2	[{"changed": {"fields": ["Description"]}}]	8	1
222	2020-11-24 07:02:49.399226+00	1	Call For Article 2020-11-24	2	[{"changed": {"fields": ["Description"]}}]	8	1
223	2020-11-24 08:42:47.415462+00	1	Call For Article 2020-11-24	2	[{"changed": {"fields": ["Display"]}}]	8	1
224	2020-11-24 13:39:18.054249+00	16	Harsha Bhat	2	[{"changed": {"fields": ["Name"]}}]	7	1
225	2020-11-24 16:03:55.363204+00	1	Call For Articles 2020-11-24	2	[{"changed": {"fields": ["News title", "Description"]}}]	8	1
226	2020-12-16 17:14:47.654487+00	4	Vijeth Vaishnav D.	2	[{"changed": {"fields": ["Ability"]}}]	7	1
227	2020-12-17 14:41:37.787897+00	3	Kannada Rajyotsava	2	[{"changed": {"fields": ["Title", "Description", "Image"]}}]	9	1
228	2020-12-17 14:41:58.419503+00	4	Aralikatte	2	[{"changed": {"fields": ["Title", "Description", "Image"]}}]	9	1
229	2020-12-17 14:46:54.322642+00	3	Aralikatte	2	[{"changed": {"fields": ["Title", "Description", "Image"]}}]	9	1
230	2020-12-17 14:49:07.463379+00	4	Kannada Rajyotsava	2	[{"changed": {"fields": ["Title", "Description", "Image"]}}]	9	1
231	2020-12-17 14:50:35.17073+00	5	Mindspeak	2	[]	9	1
232	2021-01-06 06:42:17.065367+00	1	Call For Articles 2021-01-06	3		8	1
233	2021-01-06 06:51:54.549945+00	2	Jayzine 2020 is here! 2021-01-06	1	[{"added": {}}]	8	1
234	2021-02-22 13:44:22.082689+00	3	Pilot Episode - Treasure Hunt 2021-02-22	1	[{"added": {}}]	8	1
235	2021-02-27 11:24:30.412498+00	4	Pilot Episode 2021-02-27	1	[{"added": {}}]	8	1
236	2021-02-27 11:24:42.059379+00	3	Pilot Episode - Treasure Hunt 2021-02-27	2	[{"changed": {"fields": ["Display"]}}]	8	1
237	2021-02-27 11:28:19.925826+00	4	Pilot Episode 2021-02-27	2	[{"changed": {"fields": ["Description"]}}]	8	1
238	2021-02-27 11:28:29.700265+00	3	Pilot Episode - Treasure Hunt 2021-02-27	2	[{"changed": {"fields": ["Display"]}}]	8	1
239	2021-02-27 11:34:24.663968+00	1	The Pilot Episode	2	[{"changed": {"fields": ["Image"]}}, {"added": {"name": "eventimage", "object": "The Pilot Episode"}}, {"added": {"name": "eventimage", "object": "The Pilot Episode"}}, {"added": {"name": "eventimage", "object": "The Pilot Episode"}}, {"added": {"name": "eventimage", "object": "The Pilot Episode"}}, {"deleted": {"name": "eventimage", "object": "The Pilot Episode"}}]	9	1
240	2021-02-27 11:37:33.775826+00	1	The Pilot Episode	2	[{"changed": {"fields": ["Image"]}}]	9	1
241	2021-02-27 11:48:36.179886+00	1	The Pilot Episode	2	[{"changed": {"fields": ["Image"]}}]	9	1
242	2021-02-27 11:51:19.581572+00	2	Recruitment	2	[]	9	1
243	2021-02-27 11:52:43.673501+00	3	Aralikatte	2	[]	9	1
244	2021-02-27 11:52:55.938312+00	4	Kannada Rajyotsava	2	[]	9	1
245	2021-02-27 11:53:01.453173+00	5	Mindspeak	2	[]	9	1
246	2021-02-27 11:55:57.67433+00	1	The Pilot Episode	2	[]	9	1
247	2021-02-27 11:56:05.491869+00	2	Recruitment	2	[]	9	1
248	2021-02-27 11:56:15.812274+00	3	Aralikatte	2	[]	9	1
249	2021-02-27 11:56:23.136965+00	4	Kannada Rajyotsava	2	[]	9	1
250	2021-02-27 11:56:29.159914+00	5	Mindspeak	2	[]	9	1
251	2021-02-27 12:01:43.743027+00	2	Recruitment	2	[]	9	1
252	2021-02-27 12:04:21.840345+00	2	Recruitment	2	[]	9	1
253	2021-03-12 17:23:45.766996+00	3	Pilot Episode - Treasure Hunt 2021-03-12	2	[{"changed": {"fields": ["Display"]}}]	8	1
254	2021-03-12 17:30:38.293436+00	5	Recruitment 2021-03-12	1	[{"added": {}}]	8	1
290	2021-05-21 15:15:06.030996+00	12	Prarthana G. P.	2	[{"changed": {"fields": ["Information"]}}]	7	1
291	2021-05-21 15:16:01.100711+00	9	Shashank Venkatesan	2	[{"changed": {"fields": ["Information"]}}]	7	1
292	2021-05-21 15:16:12.7739+00	7	Sumi Lal	2	[{"changed": {"fields": ["Information"]}}]	7	1
293	2021-05-21 15:16:25.450745+00	6	Bhavana Tiyyagura	2	[{"changed": {"fields": ["Information"]}}]	7	1
294	2021-05-21 15:16:42.324445+00	5	Royina K. J.	2	[{"changed": {"fields": ["Information"]}}]	7	1
295	2021-05-21 15:16:55.267672+00	4	Vijeth Vaishnav D.	2	[{"changed": {"fields": ["Information"]}}]	7	1
296	2021-05-21 15:17:06.670991+00	2	Anagha P.	2	[{"changed": {"fields": ["Information"]}}]	7	1
297	2021-05-21 15:17:16.186042+00	1	Shreya Kanchitota	2	[{"changed": {"fields": ["Information"]}}]	7	1
298	2021-05-21 15:17:26.947508+00	20	Rajath R. Rao	2	[{"changed": {"fields": ["Information"]}}]	7	1
305	2021-05-21 15:18:50.823309+00	14	Ananya K.	2	[{"changed": {"fields": ["Information"]}}]	7	1
308	2021-05-21 20:14:06.484739+00	3	Pilot Episode - Treasure Hunt 2021-05-22	2	[]	8	1
311	2021-05-24 11:25:40.970924+00	3	Poetry	1	[{"added": {}}]	11	1
313	2021-05-24 11:28:09.664067+00	5	Picture Connect	1	[{"added": {}}]	11	1
315	2021-05-24 11:30:32.08813+00	7	Love Letter Writing	1	[{"added": {}}]	11	1
317	2021-05-24 11:32:43.7996+00	9	Poetry	1	[{"added": {}}]	11	1
319	2021-05-24 11:35:55.427816+00	11	Build Your Character	1	[{"added": {}}]	11	1
321	2021-05-24 11:37:52.985209+00	13	Quiz	1	[{"added": {}}]	11	1
323	2021-05-24 11:40:05.350861+00	15	Painting	1	[{"added": {}}]	11	1
325	2021-05-24 11:42:10.120078+00	17	Pencil Sketching	1	[{"added": {}}]	11	1
327	2021-05-24 17:16:55.194172+00	1	q1	1	[{"added": {}}]	12	1
329	2021-05-24 19:07:24.114705+00	2	Is there an age limit for participants?	1	[{"added": {}}]	12	1
331	2021-05-24 19:09:01.110296+00	4	Can I participate even if I'm not from JSSSTU?	1	[{"added": {}}]	12	1
333	2021-05-24 19:24:46.062887+00	6	Who should I contact if I have doubts about the events or the registration process?	1	[{"added": {}}]	12	1
335	2021-05-24 19:27:32.729978+00	8	Can we join as a team?	1	[{"added": {}}]	12	1
337	2021-05-24 19:28:32.704239+00	10	What do I do if I want to participate in two events scheduled at the same time?	1	[{"added": {}}]	12	1
339	2021-05-24 19:29:19.395393+00	12	Should we switch on our webcam if our event is taking place through Google Meet?	1	[{"added": {}}]	12	1
341	2021-05-24 20:37:09.034801+00	12	Should we switch on our webcam if our event is taking place through Google Meet?	2	[]	12	1
538	2021-11-13 16:26:09.53052+00	3	Vedike	3		14	1
369	2021-05-24 20:58:52.848758+00	7	When and how do I register for the events?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
370	2021-05-24 20:59:25.682812+00	8	Can we join as a team?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
371	2021-05-24 20:59:55.66122+00	9	What if while participating during any of the events that happen through Google Meet, I have a problem with my internet connection. What should I do then?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
372	2021-05-24 21:00:51.155314+00	10	What do I do if I want to participate in two events scheduled at the same time?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
373	2021-05-24 21:01:19.085439+00	11	The event has started, can I still participate from the middle?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
374	2021-05-24 21:02:02.628388+00	12	Should we switch on our webcam if our event is taking place through Google Meet?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
375	2021-05-24 21:02:28.205328+00	13	Can we join to just watch as spectators for events like Debate?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
376	2021-05-24 21:02:51.307996+00	14	Is Debate a team event?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
377	2021-05-24 21:03:19.084548+00	15	For 'Build Your Character’, does the character have to be fictional?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
378	2021-05-24 21:03:51.085174+00	16	Is it mandatory to use Photoshop for Photobashing?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
379	2021-05-24 21:04:14.762995+00	17	How do I submit my artworks/entries?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
380	2021-05-24 21:04:41.231485+00	18	Are there prizes?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
381	2021-05-24 21:05:16.842197+00	19	When and where will the results of the events be declared?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
382	2021-05-24 21:06:48.636309+00	13	Can we join to just watch as spectators for events like Debate?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
383	2021-05-24 21:07:16.841717+00	14	Is Debate a team event?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
384	2021-05-24 21:07:44.679516+00	15	For 'Build Your Character’, does the character have to be fictional?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
385	2021-05-24 21:08:14.763763+00	16	Is it mandatory to use Photoshop for Photobashing?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
386	2021-05-24 21:09:08.086708+00	13	Can we join to just watch as spectators for events like Debate?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
387	2021-05-24 21:09:30.918518+00	14	Is Debate a team event?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
388	2021-05-24 21:09:57.479696+00	15	For 'Build Your Character’, does the character have to be fictional?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
389	2021-05-24 21:10:53.035642+00	16	Is it mandatory to use Photoshop for Photobashing?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
390	2021-05-24 21:11:26.313308+00	17	How do I submit my artworks/entries?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
391	2021-05-24 21:11:48.898496+00	18	Are there prizes?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
392	2021-05-24 21:12:19.55804+00	19	When and where will the results of the events be declared?	2	[{"changed": {"fields": ["Ord"]}}]	12	1
393	2021-05-24 21:17:07.57603+00	8	Bamboozled	3		11	1
394	2021-05-24 21:17:34.434532+00	5	Picture Connect	3		11	1
395	2021-05-24 21:28:24.951397+00	39	||Shabd|| 2021 Event List 2021-05-25	1	[{"added": {}}]	8	1
396	2021-05-24 21:31:16.483228+00	39	||Shabd|| 2021 Event List 2021-05-25	2	[{"changed": {"fields": ["Image"]}}]	8	1
397	2021-05-25 08:08:11.732445+00	6	Creative Writing	2	[{"changed": {"fields": ["Reg form"]}}]	11	1
398	2021-05-25 08:20:32.364456+00	20	Is there no registration required to participate in Bamboozled or Picture Connect?	1	[{"added": {}}]	12	1
399	2021-05-26 17:14:11.4149+00	21	Anagha Honnali	1	[{"added": {}}]	7	1
400	2021-05-26 17:15:10.176427+00	21	Anagha Honnali	2	[{"changed": {"fields": ["Information"]}}]	7	1
401	2021-05-26 17:31:00.511891+00	22	Bhuvan Koduru	1	[{"added": {}}]	7	1
402	2021-05-26 17:35:04.90048+00	22	Bhuvan Koduru	2	[{"changed": {"fields": ["Image"]}}]	7	1
403	2021-05-26 17:39:54.211017+00	21	Anagha Honnali	2	[{"changed": {"fields": ["Belt"]}}]	7	1
404	2021-05-26 17:41:55.671648+00	21	Anagha Honnali	2	[{"changed": {"fields": ["Belt"]}}]	7	1
405	2021-05-26 17:43:02.267353+00	21	Anagha Honnali	2	[{"changed": {"fields": ["Belt"]}}]	7	1
406	2021-05-26 17:55:40.451479+00	23	Vadiraj B Hayagreeva	1	[{"added": {}}]	7	1
407	2021-05-26 18:03:33.736182+00	24	Kshamata  Kaujalgi	1	[{"added": {}}]	7	1
408	2021-05-26 18:16:35.896296+00	25	Abhilash Hathwar	1	[{"added": {}}]	7	1
409	2021-05-26 18:23:18.399009+00	25	Abhilash Hathwar	2	[{"changed": {"fields": ["Title"]}}]	7	1
410	2021-05-26 18:23:33.273724+00	24	Kshamata  Kaujalgi	2	[{"changed": {"fields": ["Title"]}}]	7	1
411	2021-05-26 18:26:00.611311+00	22	Bhuvan Koduru	2	[{"changed": {"fields": ["Information"]}}]	7	1
412	2021-05-26 18:26:13.058953+00	21	Anagha Honnali	2	[{"changed": {"fields": ["Information"]}}]	7	1
413	2021-05-26 18:33:42.368694+00	21	Anagha Honnali	2	[{"changed": {"fields": ["Belt"]}}]	7	1
414	2021-05-26 19:04:50.321924+00	21	Anagha Honnali	2	[{"changed": {"fields": ["Ability"]}}]	7	1
415	2021-05-27 03:58:40.020228+00	22	Bhuvan Koduru	2	[{"changed": {"fields": ["Belt"]}}]	7	1
416	2021-05-27 04:00:02.537415+00	22	Bhuvan Koduru	2	[{"changed": {"fields": ["Title"]}}]	7	1
417	2021-05-27 04:00:17.608292+00	23	Vadiraj B Hayagreeva	2	[{"changed": {"fields": ["Title"]}}]	7	1
418	2021-05-27 04:02:26.372654+00	3	Sanchita V. Kumar	2	[]	7	1
419	2021-05-27 04:02:41.89594+00	21	Anagha Honnali	2	[{"changed": {"fields": ["Title"]}}]	7	1
420	2021-05-27 04:22:42.115101+00	21	Anagha Honnali	2	[]	7	1
421	2021-05-27 04:23:00.861854+00	14	Ananya K.	2	[{"changed": {"fields": ["Belt"]}}]	7	1
422	2021-05-30 07:01:53.715241+00	40	English Events 2021-05-30	1	[{"added": {}}]	8	1
423	2021-05-30 07:02:54.537189+00	41	Kannada Events 2021-05-30	1	[{"added": {}}]	8	1
424	2021-05-30 07:03:30.858996+00	42	Art Events 2021-05-30	1	[{"added": {}}]	8	1
425	2021-06-04 21:03:27.755586+00	43	SHABD Invitation 2021-06-05	1	[{"added": {}}]	8	1
458	2021-06-29 21:54:42.126071+00	43	SHABD Invitation 2021-06-30	2	[{"changed": {"fields": ["Display"]}}]	8	1
459	2021-06-29 21:54:48.70453+00	42	Art Events 2021-06-30	2	[{"changed": {"fields": ["Display"]}}]	8	1
460	2021-06-29 21:54:54.572458+00	41	Kannada Events 2021-06-30	2	[{"changed": {"fields": ["Display"]}}]	8	1
461	2021-06-29 21:55:00.516413+00	40	English Events 2021-06-30	2	[{"changed": {"fields": ["Display"]}}]	8	1
462	2021-06-29 21:55:14.326794+00	39	||Shabd|| 2021 Event List 2021-06-30	2	[{"changed": {"fields": ["Display"]}}]	8	1
463	2021-06-29 21:55:38.700196+00	38	||SHABD|| 2021 2021-06-30	2	[{"changed": {"fields": ["Display"]}}]	8	1
464	2021-06-29 21:55:45.05635+00	2	Jayzine 2020 is here! 2021-06-30	2	[{"changed": {"fields": ["Display"]}}]	8	1
488	2021-10-31 14:06:56.704194+00	1	Bhavana Tiyyagura	1	[{"added": {}}]	13	1
465	2021-10-31 11:12:11.028102+00	43	SHABD Invitation 2021-10-31	2	[{"changed": {"fields": ["Display"]}}]	8	1
466	2021-10-31 11:12:54.141659+00	43	SHABD Invitation 2021-10-31	2	[{"changed": {"fields": ["Display"]}}]	8	1
467	2021-10-31 12:23:39.617855+00	76	Call for Artcles (Jayzine '22) 2021-10-31	1	[{"added": {}}]	8	1
468	2021-10-31 12:26:21.478107+00	76	Call for Articles (Jayzine 22) 2021-10-31	2	[{"changed": {"fields": ["News title"]}}]	8	1
469	2021-10-31 12:28:18.171563+00	76	Call for Articles (Jayzine 22) 2021-10-31	2	[{"changed": {"fields": ["Image"]}}]	8	1
470	2021-10-31 12:30:02.581034+00	76	Call for Articles (Jayzine 22) 2021-10-31	2	[{"changed": {"fields": ["Image"]}}]	8	1
471	2021-10-31 12:47:59.020604+00	2	Anagha P.	2	[{"changed": {"fields": ["Belt"]}}]	7	1
472	2021-10-31 12:49:25.060468+00	20	Rajath R. Rao	2	[{"changed": {"fields": ["Belt"]}}]	7	1
473	2021-10-31 12:51:10.300283+00	11	Poorvi Shetty	2	[{"changed": {"fields": ["Information", "Belt"]}}]	7	1
474	2021-10-31 12:51:27.577404+00	11	Poorvi Shetty	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
475	2021-10-31 12:52:10.279288+00	2	Anagha P.	2	[{"changed": {"fields": ["Information", "Current sem"]}}]	7	1
476	2021-10-31 12:53:27.428817+00	4	Vijeth Vaishnav D.	2	[{"changed": {"fields": ["Information", "Current sem"]}}]	7	1
477	2021-10-31 12:56:06.20648+00	10	Surabhi Seenivasan	2	[{"changed": {"fields": ["Information", "Belt", "Current sem"]}}]	7	1
478	2021-10-31 13:00:20.682919+00	4	Vijeth Vaishnav D.	2	[{"changed": {"fields": ["Belt"]}}]	7	1
479	2021-10-31 13:01:16.648369+00	4	Vijeth Vaishnav D.	2	[{"changed": {"fields": ["Title", "Position"]}}]	7	1
480	2021-10-31 13:01:58.929411+00	2	Anagha P.	2	[{"changed": {"fields": ["Title", "Position"]}}]	7	1
481	2021-10-31 13:02:48.082321+00	20	Rajath R. Rao	2	[{"changed": {"fields": ["Title", "Information", "Current sem", "Position"]}}]	7	1
482	2021-10-31 13:04:18.739001+00	19	Meghana Kashyap	2	[{"changed": {"fields": ["Information", "Belt", "Current sem"]}}]	7	1
483	2021-10-31 13:05:29.962724+00	16	Harsha Bhat	2	[{"changed": {"fields": ["Information", "Belt", "Current sem"]}}]	7	1
484	2021-10-31 13:07:35.725888+00	3	Sanchita V. Kumar	2	[{"changed": {"fields": ["Information", "Belt", "Current sem"]}}]	7	1
485	2021-10-31 13:17:56.090293+00	20	Rajath R. Rao	2	[{"changed": {"fields": ["Title"]}}]	7	1
486	2021-10-31 13:18:11.694465+00	4	Vijeth Vaishnav D.	2	[{"changed": {"fields": ["Title"]}}]	7	1
487	2021-10-31 13:18:27.91934+00	2	Anagha P.	2	[{"changed": {"fields": ["Title"]}}]	7	1
489	2021-10-31 14:07:13.824343+00	1	Bhavana Tiyyagura	2	[{"changed": {"fields": ["Year of graduation"]}}]	13	1
596	2022-05-25 08:32:06.149342+00	80	||SHABD|| 2022 Events List 2022-05-25	1	[{"added": {}}]	8	1
613	2022-05-25 17:07:28.338015+00	19	Pictionary	1	[{"added": {}}]	11	1
615	2022-05-25 17:12:55.348582+00	21	Debate	1	[{"added": {}}]	11	1
617	2022-05-25 17:36:34.331961+00	20	Creative Writing	2	[{"changed": {"fields": ["Venue"]}}]	11	1
619	2022-05-25 18:00:01.294118+00	22	Painting	1	[{"added": {}}]	11	1
621	2022-05-25 18:05:51.46497+00	21	Debate	2	[{"changed": {"fields": ["Venue"]}}]	11	1
623	2022-05-25 18:12:27.454424+00	24	Photography	1	[{"added": {}}]	11	1
625	2022-05-25 18:15:57.553303+00	26	Mask Making	1	[{"added": {}}]	11	1
627	2022-05-25 18:18:57.208224+00	28	Pencil Sketching	1	[{"added": {}}]	11	1
629	2022-05-25 18:22:23.365982+00	30	Poetry	1	[{"added": {}}]	11	1
631	2022-05-25 18:25:25.412906+00	32	Love Letter Writing	1	[{"added": {}}]	11	1
633	2022-05-25 18:29:58.604782+00	34	Quiz	1	[{"added": {}}]	11	1
635	2022-05-25 18:37:38.861954+00	36	Poetry	1	[{"added": {}}]	11	1
637	2022-05-25 18:45:33.282371+00	38	Debate	1	[{"added": {}}]	11	1
639	2022-05-25 18:49:31.912513+00	30	Poetry	2	[{"changed": {"fields": ["Type"]}}]	11	1
641	2022-05-25 21:29:31.390727+00	36	Poetry	2	[{"changed": {"fields": ["Reg form"]}}]	11	1
646	2022-05-25 21:31:33.636671+00	23	Love Letter Writing	2	[{"changed": {"fields": ["Reg form"]}}]	11	1
490	2021-10-31 14:13:03.647703+00	2	Aditya Rajaram Hegde	1	[{"added": {}}]	13	1
491	2021-10-31 14:15:59.350863+00	3	Sharvari S. Sosale	1	[{"added": {}}]	13	1
492	2021-10-31 14:17:57.945574+00	4	Santosh Satish	1	[{"added": {}}]	13	1
493	2021-10-31 14:19:38.338037+00	5	Vinay Vasishta	1	[{"added": {}}]	13	1
494	2021-10-31 14:22:35.968927+00	6	Prarthana G. P.	1	[{"added": {}}]	13	1
495	2021-10-31 14:31:47.649006+00	7	Shashank Venkatesan	1	[{"added": {}}]	13	1
496	2021-10-31 14:33:28.442491+00	8	Sumi Lal	1	[{"added": {}}]	13	1
497	2021-10-31 14:33:51.786571+00	15	Apoorva K. C.	2	[{"changed": {"fields": ["Information", "Belt"]}}]	7	1
498	2021-10-31 14:35:12.053333+00	9	Royina K. J.	1	[{"added": {}}]	13	1
499	2021-10-31 14:35:28.724738+00	14	Ananya K.	2	[{"changed": {"fields": ["Information", "Belt"]}}]	7	1
500	2021-10-31 14:36:45.039767+00	10	Shreya Kanchitota	1	[{"added": {}}]	13	1
501	2021-10-31 14:37:24.289495+00	24	Kshamata  Kaujalgi	2	[{"changed": {"fields": ["Information", "Belt"]}}]	7	1
502	2021-10-31 14:38:31.210959+00	18	Aditya Rajaram Hegde	3		7	1
503	2021-10-31 14:38:31.388186+00	17	Sharvari S. Sosale	3		7	1
504	2021-10-31 14:38:31.548206+00	8	Santosh Satish	3		7	1
505	2021-10-31 14:38:31.712417+00	13	Vinay Vasishta	3		7	1
506	2021-10-31 14:38:31.880518+00	12	Prarthana G. P.	3		7	1
507	2021-10-31 14:38:32.049877+00	9	Shashank Venkatesan	3		7	1
508	2021-10-31 14:38:32.221879+00	7	Sumi Lal	3		7	1
509	2021-10-31 14:38:32.394458+00	6	Bhavana Tiyyagura	3		7	1
510	2021-10-31 14:38:32.560596+00	5	Royina K. J.	3		7	1
511	2021-10-31 14:38:32.736666+00	1	Shreya Kanchitota	3		7	1
512	2021-10-31 14:39:00.949096+00	21	Anagha Honnali	2	[{"changed": {"fields": ["Information", "Belt"]}}]	7	1
513	2021-10-31 14:40:57.507303+00	22	Bhuvan Koduru	2	[{"changed": {"fields": ["Information", "Belt"]}}]	7	1
514	2021-10-31 14:45:45.636715+00	25	Abhilash Hathwar	2	[{"changed": {"fields": ["Information"]}}]	7	1
515	2021-10-31 14:46:52.228724+00	23	Vadiraj B Hayagreeva	2	[{"changed": {"fields": ["Information"]}}]	7	1
516	2021-10-31 15:09:10.922258+00	20	Rajath R. Rao	2	[{"changed": {"fields": ["Position"]}}]	7	1
517	2021-10-31 15:09:21.769094+00	2	Anagha P.	2	[]	7	1
518	2021-10-31 15:09:40.551293+00	20	Rajath R. Rao	2	[{"changed": {"fields": ["Title"]}}]	7	1
519	2021-10-31 15:10:34.415439+00	20	Rajath R. Rao	2	[]	7	1
520	2021-10-31 15:10:57.369316+00	15	Apoorva K. C.	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
521	2021-10-31 15:11:08.49104+00	14	Ananya K.	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
522	2021-10-31 15:11:16.456983+00	24	Kshamata  Kaujalgi	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
523	2021-10-31 15:11:27.837994+00	25	Abhilash Hathwar	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
524	2021-10-31 15:11:35.333994+00	23	Vadiraj B Hayagreeva	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
525	2021-10-31 15:11:42.822504+00	22	Bhuvan Koduru	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
526	2021-10-31 15:11:53.793731+00	21	Anagha Honnali	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
527	2021-10-31 15:13:10.855296+00	25	Abhilash Hathwar	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
528	2021-10-31 15:13:21.411346+00	23	Vadiraj B Hayagreeva	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
529	2021-10-31 15:13:31.057257+00	22	Bhuvan Koduru	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
530	2021-10-31 15:13:46.276879+00	22	Bhuvan Koduru	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
531	2021-10-31 15:13:59.950038+00	23	Vadiraj B Hayagreeva	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
532	2021-10-31 15:14:20.254634+00	25	Abhilash Hathwar	2	[{"changed": {"fields": ["Current sem"]}}]	7	1
533	2021-10-31 15:57:58.751552+00	6	Prarthana G. P.	2	[{"changed": {"fields": ["Belt"]}}]	13	1
534	2021-10-31 15:58:51.926267+00	11	Poorvi Shetty	2	[{"changed": {"fields": ["Tagline"]}}]	7	1
535	2021-11-05 09:37:54.559059+00	1	Haasya Kathe	1	[{"added": {}}]	14	1
536	2021-11-05 09:39:15.55129+00	2	Treasure Hunt	1	[{"added": {}}]	14	1
537	2021-11-05 09:40:14.965385+00	3	Vedike	1	[{"added": {}}]	14	1
597	2022-05-25 08:49:45.954781+00	80	||SHABD|| 2022 Events List 2022-05-25	2	[{"changed": {"fields": ["Image"]}}]	8	1
614	2022-05-25 17:11:07.507009+00	20	Creative Writing	1	[{"added": {}}]	11	1
616	2022-05-25 17:35:35.021354+00	19	Pictionary	2	[{"changed": {"fields": ["Venue"]}}]	11	1
618	2022-05-25 17:57:57.818072+00	21	Debate	2	[]	11	1
620	2022-05-25 18:05:08.085313+00	22	Painting	2	[{"changed": {"fields": ["Venue"]}}]	11	1
622	2022-05-25 18:09:17.138311+00	23	Love Letter Writing	1	[{"added": {}}]	11	1
624	2022-05-25 18:14:18.036704+00	25	Collage	1	[{"added": {}}]	11	1
626	2022-05-25 18:17:20.846307+00	27	Melo-draw-ma	1	[{"added": {}}]	11	1
628	2022-05-25 18:20:52.057518+00	29	JAM	1	[{"added": {}}]	11	1
630	2022-05-25 18:24:08.341731+00	31	Pictionary	1	[{"added": {}}]	11	1
632	2022-05-25 18:27:36.928011+00	33	Quiz	1	[{"added": {}}]	11	1
634	2022-05-25 18:34:23.176663+00	35	Crossword	1	[{"added": {}}]	11	1
636	2022-05-25 18:44:01.254219+00	37	Creative Writing	1	[{"added": {}}]	11	1
638	2022-05-25 18:46:53.657508+00	39	JAM	1	[{"added": {}}]	11	1
640	2022-05-25 20:31:51.547803+00	23	Love Letter Writing	2	[{"changed": {"fields": ["Reg form"]}}]	11	1
642	2022-05-25 21:29:52.298732+00	38	Debate	2	[{"changed": {"fields": ["Reg form"]}}]	11	1
643	2022-05-25 21:30:13.233884+00	37	Creative Writing	2	[{"changed": {"fields": ["Reg form"]}}]	11	1
644	2022-05-25 21:30:31.372222+00	34	Quiz	2	[{"changed": {"fields": ["Reg form"]}}]	11	1
645	2022-05-25 21:31:05.754064+00	19	Pictionary	2	[{"changed": {"fields": ["Reg form"]}}]	11	1
647	2022-05-25 21:32:02.15433+00	35	Crossword	2	[{"changed": {"fields": ["Reg form"]}}]	11	1
648	2022-05-25 21:32:19.12755+00	39	JAM	2	[{"changed": {"fields": ["Reg form"]}}]	11	1
539	2021-11-13 16:26:09.546318+00	2	Treasure Hunt	3		14	1
540	2021-11-13 16:31:44.871765+00	1	ಹಾಸ್ಯಪಾಕ	2	[{"changed": {"fields": ["Event name", "Time", "Phone number", "Reg form"]}}]	14	1
541	2021-11-13 16:41:35.226034+00	77	ಹಾಸ್ಯಪಾಕ 2021-11-13	1	[{"added": {}}]	8	1
542	2021-11-13 16:55:15.008423+00	1	ಹಾಸ್ಯಪಾಕ	2	[{"changed": {"fields": ["Time"]}}]	14	1
543	2021-11-13 16:55:38.373005+00	1	ಹಾಸ್ಯಪಾಕ	2	[]	14	1
544	2021-11-13 16:57:27.361219+00	1	ಹಾಸ್ಯಪಾಕ	2	[{"changed": {"fields": ["Date"]}}]	14	1
545	2021-11-13 17:02:26.911147+00	1	ಹಾಸ್ಯಪಾಕ	2	[]	14	1
546	2021-11-16 06:19:22.437394+00	4	ನಿಧಿ ಶೋಧ	1	[{"added": {}}]	14	1
547	2021-11-16 06:21:32.921511+00	4	ನಿಧಿ ಶೋಧ	2	[{"changed": {"fields": ["Reg form"]}}]	14	1
548	2021-11-16 11:29:05.396123+00	78	ನಿಧಿಶೋಧ 2021-11-16	1	[{"added": {}}]	8	1
549	2021-11-16 11:34:47.106219+00	78	ನಿಧಿಶೋಧ 2021-11-16	2	[{"changed": {"fields": ["Description"]}}]	8	1
550	2021-11-16 11:35:38.20151+00	78	ನಿಧಿಶೋಧ 2021-11-16	2	[{"changed": {"fields": ["Description"]}}]	8	1
551	2021-11-16 12:28:12.209025+00	78	ನಿಧಿಶೋಧ 2021-11-16	2	[{"changed": {"fields": ["Description"]}}]	8	1
552	2021-11-16 12:29:39.476572+00	78	ನಿಧಿಶೋಧ 2021-11-16	2	[{"changed": {"fields": ["Description"]}}]	8	1
553	2021-11-16 14:33:07.087125+00	1	ಹಾಸ್ಯಪಾಕ	2	[{"changed": {"fields": ["Reg form"]}}]	14	1
554	2021-11-22 04:19:51.065992+00	78	ನಿಧಿಶೋಧ 2021-11-22	2	[{"changed": {"fields": ["Display"]}}]	8	1
555	2021-11-22 04:19:57.092672+00	77	ಹಾಸ್ಯಪಾಕ 2021-11-22	2	[{"changed": {"fields": ["Display"]}}]	8	1
556	2021-12-04 09:31:50.833767+00	10	Shreya Kanchitota	2	[{"changed": {"fields": ["Year of graduation"]}}]	13	1
557	2021-12-04 13:34:30.762655+00	10	Shreya Kanchitota	2	[{"changed": {"fields": ["Year of graduation"]}}]	13	1
558	2021-12-04 13:34:36.37565+00	4	Santosh Satish	2	[{"changed": {"fields": ["Year of graduation"]}}]	13	1
559	2021-12-04 13:47:44.258799+00	4	Santosh Satish	2	[{"changed": {"fields": ["Year of graduation"]}}]	13	1
560	2021-12-04 13:50:33.800664+00	4	Santosh Satish	2	[{"changed": {"fields": ["Year of graduation"]}}]	13	1
561	2021-12-04 15:05:21.971894+00	4	Vijeth Vaishnav D.	2	[{"changed": {"fields": ["Belt"]}}]	7	1
562	2021-12-04 15:05:33.329854+00	4	Vijeth Vaishnav D.	2	[]	7	1
563	2021-12-04 15:06:06.378227+00	3	Sanchita V. Kumar	2	[{"changed": {"fields": ["Belt"]}}]	7	1
564	2021-12-04 15:15:55.834922+00	16	Harsha Bhat	2	[{"changed": {"fields": ["Belt"]}}]	7	1
565	2021-12-04 15:21:15.275728+00	23	Vadiraj B Hayagreeva	2	[{"changed": {"fields": ["Belt"]}}]	7	1
566	2021-12-04 15:23:28.61871+00	25	Abhilash Hathwar	2	[{"changed": {"fields": ["Belt"]}}]	7	1
567	2021-12-04 15:31:38.257925+00	4	Santosh Satish	2	[{"changed": {"fields": ["Belt"]}}]	13	1
568	2021-12-04 15:38:59.519721+00	2	Aditya Rajaram Hegde	2	[{"changed": {"fields": ["Belt"]}}]	13	1
569	2021-12-04 15:53:29.215217+00	6	Prarthana G. P.	2	[{"changed": {"fields": ["Belt"]}}]	13	1
570	2021-12-04 16:04:21.511454+00	5	Vinay Vasishta	2	[{"changed": {"fields": ["Belt"]}}]	13	1
571	2021-12-04 16:09:01.53917+00	10	Surabhi Seenivasan	2	[{"changed": {"fields": ["Belt"]}}]	7	1
572	2021-12-04 16:48:30.565233+00	19	Meghana Kashyap	2	[{"changed": {"fields": ["Belt"]}}]	7	1
573	2021-12-04 16:48:47.919964+00	19	Meghana Kashyap	2	[{"changed": {"fields": ["Information"]}}]	7	1
574	2022-01-12 16:13:53.73459+00	4	Santosh Satish	2	[{"changed": {"fields": ["Year of graduation"]}}]	13	1
575	2022-01-12 16:14:15.310271+00	3	Sharvari S. Sosale	2	[{"changed": {"fields": ["Year of graduation"]}}]	13	1
576	2022-01-12 16:14:48.087039+00	2	Aditya Rajaram Hegde	2	[{"changed": {"fields": ["Year of graduation"]}}]	13	1
577	2022-01-12 16:15:02.071743+00	9	Royina K. J.	2	[{"changed": {"fields": ["Year of graduation"]}}]	13	1
578	2022-01-12 16:15:10.439989+00	8	Sumi Lal	2	[{"changed": {"fields": ["Year of graduation"]}}]	13	1
579	2022-01-12 16:15:18.536961+00	7	Shashank Venkatesan	2	[{"changed": {"fields": ["Year of graduation"]}}]	13	1
580	2022-01-12 16:15:29.378377+00	6	Prarthana G. P.	2	[{"changed": {"fields": ["Year of graduation"]}}]	13	1
581	2022-01-12 16:15:39.022439+00	5	Vinay Vasishta	2	[{"changed": {"fields": ["Year of graduation"]}}]	13	1
582	2022-01-12 16:15:48.393238+00	6	Prarthana G. P.	2	[]	13	1
583	2022-01-12 16:16:01.355146+00	1	Bhavana Tiyyagura	2	[{"changed": {"fields": ["Year of graduation"]}}]	13	1
584	2022-01-12 16:16:11.232074+00	10	Shreya Kanchitota	2	[{"changed": {"fields": ["Year of graduation"]}}]	13	1
585	2022-01-12 16:16:41.895868+00	21	Anagha Honnali	2	[{"changed": {"fields": ["Information"]}}]	7	1
586	2022-01-12 17:17:58.144498+00	10	Shreya Kanchitota	2	[{"changed": {"fields": ["Year of graduation"]}}]	13	1
587	2022-01-12 17:18:14.2784+00	10	Shreya Kanchitota	2	[{"changed": {"fields": ["Year of graduation"]}}]	13	1
588	2022-01-21 16:14:34.370163+00	76	Call for Articles (Jayzine 22) 2022-01-21	2	[{"changed": {"fields": ["Description"]}}]	8	1
589	2022-01-31 12:39:16.340387+00	79	Recruitment 2022 2022-01-31	1	[{"added": {}}]	8	1
590	2022-01-31 13:04:57.2925+00	79	Recruitment 2022 2022-01-31	2	[{"changed": {"fields": ["Description"]}}]	8	1
591	2022-02-02 04:21:40.42999+00	76	Call for Articles-Jayzine '22 2022-02-02	2	[{"changed": {"fields": ["News title"]}}]	8	1
592	2022-02-07 07:04:55.384062+00	79	Recruitment 2022 2022-02-07	2	[{"changed": {"fields": ["Display"]}}]	8	1
593	2022-03-01 09:34:26.214658+00	76	Call for Articles-Jayzine '22 2022-03-01	2	[{"changed": {"fields": ["Display"]}}]	8	1
594	2022-03-03 20:03:45.393329+00	76	Call for Articles-Jayzine '22 2022-03-04	2	[{"changed": {"fields": ["Description", "Display"]}}]	8	1
595	2022-04-01 15:30:03.263802+00	76	Call for Articles-Jayzine '22 2022-04-01	2	[{"changed": {"fields": ["Display"]}}]	8	1
598	2022-05-25 16:58:45.570658+00	14	Spot Painting	3		11	1
599	2022-05-25 16:58:46.101903+00	15	Painting	3		11	1
600	2022-05-25 16:58:46.679151+00	9	Poetry	3		11	1
601	2022-05-25 16:58:46.997903+00	2	Debate	3		11	1
602	2022-05-25 16:58:47.932942+00	10	Creative Writing	3		11	1
603	2022-05-25 16:58:48.822593+00	16	Photography	3		11	1
604	2022-05-25 16:58:49.248449+00	3	Poetry	3		11	1
605	2022-05-25 16:58:49.561722+00	4	Pick and Speak	3		11	1
606	2022-05-25 16:58:49.846103+00	18	Photobashing	3		11	1
607	2022-05-25 16:58:50.15623+00	17	Pencil Sketching	3		11	1
608	2022-05-25 16:58:51.070657+00	11	Build Your Character	3		11	1
609	2022-05-25 16:58:51.506545+00	6	Creative Writing	3		11	1
610	2022-05-25 16:58:52.410788+00	12	Debate	3		11	1
611	2022-05-25 16:58:53.966154+00	7	Love Letter Writing	3		11	1
612	2022-05-25 16:58:54.484207+00	13	Quiz	3		11	1
649	2022-08-26 08:11:25.139201+00	26	Sudhanva Kulkarni	1	[{"added": {}}]	7	1
650	2022-08-26 08:17:38.862599+00	27	Pruthvi K P	1	[{"added": {}}]	7	1
651	2022-08-26 08:25:58.751597+00	28	Shreyas S	1	[{"added": {}}]	7	1
652	2022-08-26 08:29:38.284947+00	3	Sanchita V. Kumar	2	[{"changed": {"fields": ["Image", "Image"]}}]	7	1
653	2022-08-26 08:30:16.893714+00	4	Vijeth Vaishnav D.	2	[{"changed": {"fields": ["Image"]}}]	7	1
654	2022-08-26 08:30:29.649557+00	2	Anagha P.	2	[{"changed": {"fields": ["Image"]}}]	7	1
655	2022-08-26 08:30:42.407131+00	20	Rajath R. Rao	2	[{"changed": {"fields": ["Image"]}}]	7	1
656	2022-08-26 08:30:52.224226+00	19	Meghana Kashyap	2	[{"changed": {"fields": ["Image"]}}]	7	1
657	2022-08-26 08:31:00.973383+00	16	Harsha Bhat	2	[{"changed": {"fields": ["Image"]}}]	7	1
658	2022-08-26 08:31:13.198582+00	11	Poorvi Shetty	2	[{"changed": {"fields": ["Image"]}}]	7	1
659	2022-08-26 08:31:22.573312+00	10	Surabhi Seenivasan	2	[{"changed": {"fields": ["Image"]}}]	7	1
660	2022-08-26 08:31:35.697308+00	15	Apoorva K. C.	2	[{"changed": {"fields": ["Image"]}}]	7	1
661	2022-08-26 08:31:45.676448+00	14	Ananya K.	2	[{"changed": {"fields": ["Image"]}}]	7	1
662	2022-08-26 08:31:56.956494+00	24	Kshamata  Kaujalgi	2	[{"changed": {"fields": ["Image"]}}]	7	1
663	2022-08-26 08:32:08.64962+00	25	Abhilash Hathwar	2	[{"changed": {"fields": ["Image"]}}]	7	1
664	2022-08-26 08:32:19.586704+00	23	Vadiraj B Hayagreeva	2	[{"changed": {"fields": ["Image"]}}]	7	1
665	2022-08-26 08:32:30.659576+00	22	Bhuvan Koduru	2	[{"changed": {"fields": ["Image"]}}]	7	1
666	2022-08-26 08:32:39.843296+00	21	Anagha Honnali	2	[{"changed": {"fields": ["Image"]}}]	7	1
667	2022-08-26 08:35:47.076944+00	28	Shreyas S	2	[{"changed": {"fields": ["Image"]}}]	7	1
668	2022-08-26 08:35:58.278983+00	27	Pruthvi K P	2	[{"changed": {"fields": ["Image"]}}]	7	1
669	2022-08-26 08:36:21.319393+00	27	Pruthvi K P	2	[{"changed": {"fields": ["Image", "Image"]}}]	7	1
670	2022-08-26 08:36:40.560844+00	26	Sudhanva Kulkarni	2	[{"changed": {"fields": ["Image"]}}]	7	1
671	2022-08-28 20:54:20.058288+00	29	Shreeya Pai	1	[{"added": {}}]	7	1
672	2022-08-28 20:56:08.08218+00	30	Sharmilee Sosale	1	[{"added": {}}]	7	1
673	2022-08-28 21:01:58.836496+00	29	Shreeya Pai	2	[{"changed": {"fields": ["Ability"]}}]	7	1
674	2022-08-28 21:06:47.363316+00	3	Aralikatte	2	[{"added": {"name": "eventimage", "object": "Aralikatte"}}]	9	1
675	2022-09-24 08:16:31.656794+00	80	||SHABD|| 2022 Events List 2022-09-24	2	[{"changed": {"fields": ["Display"]}}]	8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: dgcwkoncubyteg
--

COPY "public"."django_content_type" ("id", "app_label", "model") FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	EdWebApp	member
8	EdWebApp	news
9	EdWebApp	event
10	EdWebApp	eventimage
11	EdWebApp	registration
12	EdWebApp	faq
13	EdWebApp	alumni
14	EdWebApp	kr_registration
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: dgcwkoncubyteg
--

COPY "public"."django_migrations" ("id", "app", "name", "applied") FROM stdin;
1	EdWebApp	0001_initial	2020-11-09 22:11:06.706861+00
2	EdWebApp	0002_event_eventimage	2020-11-09 22:11:06.755297+00
3	EdWebApp	0003_auto_20201031_1830	2020-11-09 22:11:06.783901+00
4	EdWebApp	0004_auto_20201031_1841	2020-11-09 22:11:06.807782+00
5	EdWebApp	0005_auto_20201031_1925	2020-11-09 22:11:06.818635+00
6	contenttypes	0001_initial	2020-11-09 22:11:06.835657+00
7	auth	0001_initial	2020-11-09 22:11:06.892776+00
8	admin	0001_initial	2020-11-09 22:11:07.006865+00
9	admin	0002_logentry_remove_auto_add	2020-11-09 22:11:07.042066+00
10	admin	0003_logentry_add_action_flag_choices	2020-11-09 22:11:07.055317+00
11	contenttypes	0002_remove_content_type_name	2020-11-09 22:11:07.086328+00
12	auth	0002_alter_permission_name_max_length	2020-11-09 22:11:07.100888+00
13	auth	0003_alter_user_email_max_length	2020-11-09 22:11:07.114291+00
14	auth	0004_alter_user_username_opts	2020-11-09 22:11:07.129157+00
15	auth	0005_alter_user_last_login_null	2020-11-09 22:11:07.144555+00
16	auth	0006_require_contenttypes_0002	2020-11-09 22:11:07.15002+00
17	auth	0007_alter_validators_add_error_messages	2020-11-09 22:11:07.162839+00
18	auth	0008_alter_user_username_max_length	2020-11-09 22:11:07.185686+00
19	auth	0009_alter_user_last_name_max_length	2020-11-09 22:11:07.200014+00
20	auth	0010_alter_group_name_max_length	2020-11-09 22:11:07.221434+00
21	auth	0011_update_proxy_permissions	2020-11-09 22:11:07.236551+00
22	auth	0012_alter_user_first_name_max_length	2020-11-09 22:11:07.249716+00
23	sessions	0001_initial	2020-11-09 22:11:07.263282+00
24	EdWebApp	0006_member_current_sem	2020-11-11 15:17:52.680897+00
25	EdWebApp	0007_auto_20201111_2049	2020-11-11 15:19:51.081458+00
26	EdWebApp	0008_auto_20201114_0020	2020-11-13 18:50:44.267196+00
27	EdWebApp	0009_auto_20201114_1149	2020-11-14 06:19:52.189+00
28	EdWebApp	0010_registration	2021-05-24 11:13:25.906585+00
29	EdWebApp	0011_faq	2021-05-24 17:14:23.195673+00
30	EdWebApp	0012_faq_topics	2021-05-24 20:01:28.252223+00
31	EdWebApp	0013_auto_20210525_0223	2021-05-24 20:53:13.774537+00
32	EdWebApp	0014_alumni	2021-10-31 13:57:21.871412+00
33	EdWebApp	0015_auto_20211031_1936	2021-10-31 14:06:32.337158+00
34	EdWebApp	0016_auto_20211031_2052	2021-10-31 15:22:13.95271+00
35	EdWebApp	0017_kr_registration	2021-11-03 17:57:24.728976+00
36	EdWebApp	0018_auto_20211113_2224	2021-11-13 16:54:41.366902+00
37	EdWebApp	0019_registration_venue	2022-05-25 17:32:58.563122+00
38	EdWebApp	0020_auto_20220525_2333	2022-05-25 18:03:35.948886+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: dgcwkoncubyteg
--

COPY "public"."django_session" ("session_key", "session_data", "expire_date") FROM stdin;
10jh1wc1xlg216gcvzzvqwjlxos3fl86	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1lk6q8:vO6vlwdnq5oL6rT2q1-Z7D2E_qGD7XC1zcUf-Ho57LM	2021-06-04 15:13:28.411597+00
cff3b5a29m5x6rfnswgty73i5ej5crzr	.eJxVjMsOwiAQRf-FtSHA8HTpvt9AgBmlaiAp7cr479qkC93ec859sZi2tcZt0BJnZGcm2el3y6k8qO0A76ndOi-9rcuc-a7wgw4-daTn5XD_Dmoa9Vt7QV4oyhh0BipGKQnWIfksUYtrCFACWQ02kA8yoaTiAQwY4dAl79j7A9kBN1k:1kcNwy:R3OtC9N8ZeGUflswwB8FF6m_mc3s0g31JKN53ve7-FU	2020-11-24 07:20:20.672368+00
4nehdv48alu7b82zq6hvktc490hqoeaj	.eJxVjMsOwiAQRf-FtSHA8HTpvt9AgBmlaiAp7cr479qkC93ec859sZi2tcZt0BJnZGcm2el3y6k8qO0A76ndOi-9rcuc-a7wgw4-daTn5XD_Dmoa9Vt7QV4oyhh0BipGKQnWIfksUYtrCFACWQ02kA8yoaTiAQwY4dAl79j7A9kBN1k:1kcNz6:GSJOJhpKrZNiDuwCai07J2pIVp1v2ltUIlsTRnGSc9Y	2020-11-24 07:22:32.215916+00
qywpggvowfq34871ahkxhh3gd9czj68t	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1mh9pw:XG4WmC8eDg63B0J2gYdmNzV0VNTLagkoNLL6ebthl5g	2021-11-14 12:21:20.859341+00
zx36pdg95qoq4gelv0vfre1uz6xrfmv2	.eJxVjMsOwiAQRf-FtSHA8HTpvt9AgBmlaiAp7cr479qkC93ec859sZi2tcZt0BJnZGcm2el3y6k8qO0A76ndOi-9rcuc-a7wgw4-daTn5XD_Dmoa9Vt7QV4oyhh0BipGKQnWIfksUYtrCFACWQ02kA8yoaTiAQwY4dAl79j7A9kBN1k:1kcQig:dUvWQH7dsJconwnP7KR702Xf7z_73LtKKsa5WFjt3Uk	2020-11-24 10:17:46.57049+00
viocir335j7vfu814o5z903opb3dd0cg	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1mhBNS:opbTKWvyB12-P8BX0v7W8dnyLBErjWg53THyl60Gpm8	2021-11-14 14:00:02.984946+00
cw9g5xphyevla09tfgow3u98qzfv9l72	.eJxVjMsOwiAQRf-FtSHA8HTpvt9AgBmlaiAp7cr479qkC93ec859sZi2tcZt0BJnZGcm2el3y6k8qO0A76ndOi-9rcuc-a7wgw4-daTn5XD_Dmoa9Vt7QV4oyhh0BipGKQnWIfksUYtrCFACWQ02kA8yoaTiAQwY4dAl79j7A9kBN1k:1kcu0i:KtRA-s-Q-Bw4qvMWUrctdM1pll7sErK6lx6KAn16pBs	2020-11-25 17:34:20.403107+00
qajitnqlnabqqxej0xeixcg5nb3s2mkk	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1llGv6:C9ebqnR55f7jKDHa4fH08eA5b5qU8xc3PmvaRpULvBw	2021-06-07 20:11:24.079041+00
5uddeok8gfjlg7vlevlyzn77kv01993i	.eJxVjMsOwiAQRf-FtSHA8HTpvt9AgBmlaiAp7cr479qkC93ec859sZi2tcZt0BJnZGcm2el3y6k8qO0A76ndOi-9rcuc-a7wgw4-daTn5XD_Dmoa9Vt7QV4oyhh0BipGKQnWIfksUYtrCFACWQ02kA8yoaTiAQwY4dAl79j7A9kBN1k:1kdeEW:8zwna_owOcJuVPjSBdfzNUZIAVVxrryYUd5qPCLmjVA	2020-11-27 18:55:40.830287+00
3doovu1a74bvrrlff1jn5vwi90p0a4xe	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1llGwB:pl1efA3CoHbRAH2Vx0_eAHce9jnu-opMNGXkpauxpCU	2021-06-07 20:12:31.913105+00
def7amvp4nqyoe6i78ajnmbu8q6qdjq3	.eJxVjMsOwiAQRf-FtSHA8HTpvt9AgBmlaiAp7cr479qkC93ec859sZi2tcZt0BJnZGcm2el3y6k8qO0A76ndOi-9rcuc-a7wgw4-daTn5XD_Dmoa9Vt7QV4oyhh0BipGKQnWIfksUYtrCFACWQ02kA8yoaTiAQwY4dAl79j7A9kBN1k:1kdolV:gmv7tpk3rczHmQb1NTvJXGNZ4ecP7i_n3GD1zs1YBPM	2020-11-28 06:10:25.030932+00
z1p4bcpkz1pjdxsooqt3rvmuy9autviz	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1miGQD:y1nOvVfGjwh-eACuxnDsSI-AZM-anjNQPZFEO1wf1rY	2021-11-17 13:35:21.82318+00
ycokojn2wl3f4u7oqrol4m5winbjac1m	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1llI9r:Mw3FlRheD8JSJ38E4ha_NWJKc_VxhEjYNqkBaCMsaR4	2021-06-07 21:30:43.181661+00
i8lv4go07o5inyonfhcl26me37zv8xds	.eJxVjMsOwiAQRf-FtSHA8HTpvt9AgBmlaiAp7cr479qkC93ec859sZi2tcZt0BJnZGcm2el3y6k8qO0A76ndOi-9rcuc-a7wgw4-daTn5XD_Dmoa9Vt7QV4oyhh0BipGKQnWIfksUYtrCFACWQ02kA8yoaTiAQwY4dAl79j7A9kBN1k:1khBJ9:Un4P8M6X9bzU4_CiuN3Yt7nEeq0EA5Xgzq5ZVvJHT8Q	2020-12-07 12:51:03.240508+00
e9x5b8q2t658k8cd4rdigpchi1vkkqzw	.eJxVjMsOwiAQRf-FtSHA8HTpvt9AgBmlaiAp7cr479qkC93ec859sZi2tcZt0BJnZGcm2el3y6k8qO0A76ndOi-9rcuc-a7wgw4-daTn5XD_Dmoa9Vt7QV4oyhh0BipGKQnWIfksUYtrCFACWQ02kA8yoaTiAQwY4dAl79j7A9kBN1k:1khBMM:YVzw2ZUyiHLBnOe4rqA2uIgnkbIyAzzGFmaf72P1pHA	2020-12-07 12:54:22.707289+00
1zglx7c8ykr8axuc3lwfgcq6vdq0kmc7	.eJxVjMsOwiAQRf-FtSHA8HTpvt9AgBmlaiAp7cr479qkC93ec859sZi2tcZt0BJnZGcm2el3y6k8qO0A76ndOi-9rcuc-a7wgw4-daTn5XD_Dmoa9Vt7QV4oyhh0BipGKQnWIfksUYtrCFACWQ02kA8yoaTiAQwY4dAl79j7A9kBN1k:1khYX3:fhQR_xGkGuD-TCHpYOZ6jMhj3TVCJo7b75yF1bD0ryI	2020-12-08 13:38:57.623744+00
df4jeluqkpdv6mnpml7cu6bzajf5vmem	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1llyBD:iRoZtA0lV-4DJMbg6znOY8q_EQYviSfIyYUfx7tIxzE	2021-06-09 18:22:55.956065+00
xrj7dijfow45hcwr59thod744hsjjs32	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1khamQ:0bhMRBu8Q6x37jHkkwOhwxEx2-an2BqAE6ZaEWz_ZqQ	2020-12-08 16:02:58.58055+00
4x7y9xs8yysml3rfxywv6cwnapydqy65	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1kpaLG:8rfpO0ZTg3W18C-6hVNHcqs5GQdkT20Y0iUIWaqCUig	2020-12-30 17:11:58.437626+00
f4nvyxu5baq6dafsaaal9zajn62cdusd	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1kpaMp:FeBWc4_wDGe7BixpdCLLaZzcGsll-ZjDf8aeClrvO9s	2020-12-30 17:13:35.303203+00
9wws9lm6tf1l3en7pwb57zbbairvm6kj	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1miKII:zGxzGZb6zyjeKHlERBRvReeJJfH00BSKouSBt25Hz9M	2021-11-17 17:43:26.503532+00
yecz42o8xd3ryoedjjl263tkwnc4ogt1	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1kpuAA:MwkoZatG1dwJinMIDzrgMAWvV1OH9RIFTGByh8Kt_k0	2020-12-31 14:21:50.696397+00
k6g39glhg0tbcqsfvadaj70z5nxruea4	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1kx2VH:G9vTDVkvwrGnZSCk8jn7mzL50ecyrRz4nJ3PmdMAFeo	2021-01-20 06:41:07.77431+00
qig1u7bj14zuxvqfgq48ep6gxyapm8n7	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1lEBNF:9kH4_D_inbZuUl6Uvt5LgcHfMPUQ9WDMI3DI7H6ZLSw	2021-03-08 13:35:41.462445+00
vsbnk6nu0fyvkk7skxm5uga2q6v8wxhw	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1lKlVI:4i1j5ZfFkH7M_v-I0O2vqOwFs615k8Sm-WH28xQ9QtU	2021-03-26 17:23:12.896916+00
g2r1hqlmtslhcb4or9ccfbo01juwa00y	.eJxVjEEOwiAQRe_C2hAoA7Qu3XsGMgyDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3EWWpx-t4j04LqDdMd6a5JaXZc5yl2RB-3y2hI_L4f7d1Cwl2_Ng41gKJEiQm-zJqfQo4HBsnIwZrA5j2ABCB04o3nS0WVwnnRUE4r3B-xxN8c:1ntlJb:Kg5RTkjLq1vL-WkvrDFjLX8OOHEuOkagGKcueg8bKBE	2022-06-08 07:20:19.971978+00
d5p49441ysq7alwh95ux7ztt9e8yiuat	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1mlwPs:lsKUGkGteEbpDuYJw8iP5_ianVuiEmH78dvN681_Vgg	2021-11-27 17:02:12.076649+00
h0bjm07d9jt4zke6zon70eed89ub6mab	.eJxVjEEOwiAQRe_C2hAoA7Qu3XsGMgyDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3EWWpx-t4j04LqDdMd6a5JaXZc5yl2RB-3y2hI_L4f7d1Cwl2_Ng41gKJEiQm-zJqfQo4HBsnIwZrA5j2ABCB04o3nS0WVwnnRUE4r3B-xxN8c:1ntmPT:GUTzhhH9M4C6Sa4ENX1cpYBCwyP-aoZVFDAIamlvOZE	2022-06-08 08:30:27.170236+00
18579tcidthd8eu7ri7bhdmj4warqsp5	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1mmqzS:b-Nl_S5KoVoWeC4qjQ7EFDX2YDn07ps9_WII8IwCXHc	2021-11-30 05:26:42.478954+00
5zww4c7njngoyt3cctcfkq3b09r2nt2b	.eJxVjEEOwiAQRe_C2hAoA7Qu3XsGMgyDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3EWWpx-t4j04LqDdMd6a5JaXZc5yl2RB-3y2hI_L4f7d1Cwl2_Ng41gKJEiQm-zJqfQo4HBsnIwZrA5j2ABCB04o3nS0WVwnnRUE4r3B-xxN8c:1ntuHl:wz3g41qqAk4Xn6PCmDSgxhAvRiqMy5f2JXQ9pKfAfu0	2022-06-08 16:55:01.684067+00
pps6s08cdao5kr7z17ciofyoa77uj8yk	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1mmwda:RbFXuFi39g4dWXS-9zEW4SdtVlOLO4Syh_ogWwI1nIo	2021-11-30 11:28:30.213451+00
1xffwwgilef89bv1mrnpkaupgytrol6p	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1mtQYS:Kv6bbtDqW2hacm7o7_Z4LjBubzS1CWhoerqoAPpEAqo	2021-12-18 08:38:00.654718+00
639s1hj737sbozx8w2j07gbq7jhloau7	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1mtXaM:tgz2eahA9q-Qgkj4V48DGskphI5eXA9JuxVs-VD4t_o	2021-12-18 16:08:26.415607+00
ie3fizczn3tz5oa7tmi9gv2lcyr2grew	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1n8IXd:ICw2G7aSDWLvVOZFrAC5Iy_eCjuoePYopiUm0W1NUvM	2022-01-28 09:06:37.900125+00
i7fpdikrng8gkd6s2crqjkyvmzfvujt5	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1nAwcN:siDehBR2c9kI5JpkpH85QGwGkqoeWuOWENk_N4LYddI	2022-02-04 16:18:27.954438+00
oy9c9z8ejz1imtctq63xwxkftosbzvbs	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1nEVqW:7xvi7HC1vcpGUMLLvnJUkMqM0YxnUAVGGt8gnEjqZLc	2022-02-14 12:31:48.758033+00
co7hr4wh1ppw08be7ya0fqmz55tr2xun	.eJxVjEEOgjAQRe_StWlKW2DGpXvOQGamo6CmTSisjHdXEha6_e-9_zIjbes0blWXcU7mbBpz-t2Y5KF5B-lO-VaslLwuM9tdsQetdihJn5fD_TuYqE7fugvgnbIGVJQoGFxLwXu9Qt93EcVF1yojCUXsAIATC3oODbaQWMW8P9QgN-k:1nEuTD:tqr3FuCGnqG4uISPiAw27JJjxA9Qq9cWMHDwdI_fVHg	2022-02-15 14:49:23.236418+00
q0trqyv1jt5inn6ah4hbe9c1esdb4c7x	.eJxVjEEOwiAQRe_C2hAoA7Qu3XsGMgyDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwJ3EWWpx-t4j04LqDdMd6a5JaXZc5yl2RB-3y2hI_L4f7d1Cwl2_Ng41gKJEiQm-zJqfQo4HBsnIwZrA5j2ABCB04o3nS0WVwnnRUE4r3B-xxN8c:1oFBBs:pvvMPsIit5YqocTYsKD6MB_v0BLQK99unRphUXpcm2U	2022-08-06 09:12:52.302302+00
\.


--
-- Name: EdWebApp_alumni_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dgcwkoncubyteg
--

SELECT pg_catalog.setval('"public"."EdWebApp_alumni_id_seq"', 10, true);


--
-- Name: EdWebApp_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dgcwkoncubyteg
--

SELECT pg_catalog.setval('"public"."EdWebApp_event_id_seq"', 5, true);


--
-- Name: EdWebApp_eventimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dgcwkoncubyteg
--

SELECT pg_catalog.setval('"public"."EdWebApp_eventimage_id_seq"', 15, true);


--
-- Name: EdWebApp_faq_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dgcwkoncubyteg
--

SELECT pg_catalog.setval('"public"."EdWebApp_faq_id_seq"', 20, true);


--
-- Name: EdWebApp_kr_registration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dgcwkoncubyteg
--

SELECT pg_catalog.setval('"public"."EdWebApp_kr_registration_id_seq"', 4, true);


--
-- Name: EdWebApp_member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dgcwkoncubyteg
--

SELECT pg_catalog.setval('"public"."EdWebApp_member_id_seq"', 30, true);


--
-- Name: EdWebApp_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dgcwkoncubyteg
--

SELECT pg_catalog.setval('"public"."EdWebApp_news_id_seq"', 80, true);


--
-- Name: EdWebApp_registration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dgcwkoncubyteg
--

SELECT pg_catalog.setval('"public"."EdWebApp_registration_id_seq"', 39, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dgcwkoncubyteg
--

SELECT pg_catalog.setval('"public"."auth_group_id_seq"', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dgcwkoncubyteg
--

SELECT pg_catalog.setval('"public"."auth_group_permissions_id_seq"', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dgcwkoncubyteg
--

SELECT pg_catalog.setval('"public"."auth_permission_id_seq"', 56, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dgcwkoncubyteg
--

SELECT pg_catalog.setval('"public"."auth_user_groups_id_seq"', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dgcwkoncubyteg
--

SELECT pg_catalog.setval('"public"."auth_user_id_seq"', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dgcwkoncubyteg
--

SELECT pg_catalog.setval('"public"."auth_user_user_permissions_id_seq"', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dgcwkoncubyteg
--

SELECT pg_catalog.setval('"public"."django_admin_log_id_seq"', 675, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dgcwkoncubyteg
--

SELECT pg_catalog.setval('"public"."django_content_type_id_seq"', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dgcwkoncubyteg
--

SELECT pg_catalog.setval('"public"."django_migrations_id_seq"', 38, true);


--
-- Name: EdWebApp_alumni EdWebApp_alumni_pkey; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."EdWebApp_alumni"
    ADD CONSTRAINT "EdWebApp_alumni_pkey" PRIMARY KEY ("id");


--
-- Name: EdWebApp_event EdWebApp_event_pkey; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."EdWebApp_event"
    ADD CONSTRAINT "EdWebApp_event_pkey" PRIMARY KEY ("id");


--
-- Name: EdWebApp_eventimage EdWebApp_eventimage_pkey; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."EdWebApp_eventimage"
    ADD CONSTRAINT "EdWebApp_eventimage_pkey" PRIMARY KEY ("id");


--
-- Name: EdWebApp_faq EdWebApp_faq_pkey; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."EdWebApp_faq"
    ADD CONSTRAINT "EdWebApp_faq_pkey" PRIMARY KEY ("id");


--
-- Name: EdWebApp_kr_registration EdWebApp_kr_registration_pkey; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."EdWebApp_kr_registration"
    ADD CONSTRAINT "EdWebApp_kr_registration_pkey" PRIMARY KEY ("id");


--
-- Name: EdWebApp_member EdWebApp_member_pkey; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."EdWebApp_member"
    ADD CONSTRAINT "EdWebApp_member_pkey" PRIMARY KEY ("id");


--
-- Name: EdWebApp_news EdWebApp_news_pkey; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."EdWebApp_news"
    ADD CONSTRAINT "EdWebApp_news_pkey" PRIMARY KEY ("id");


--
-- Name: EdWebApp_registration EdWebApp_registration_pkey; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."EdWebApp_registration"
    ADD CONSTRAINT "EdWebApp_registration_pkey" PRIMARY KEY ("id");


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_group"
    ADD CONSTRAINT "auth_group_name_key" UNIQUE ("name");


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" UNIQUE ("group_id", "permission_id");


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id");


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_group"
    ADD CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id");


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_permission"
    ADD CONSTRAINT "auth_permission_content_type_id_codename_01ab375a_uniq" UNIQUE ("content_type_id", "codename");


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_permission"
    ADD CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id");


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_pkey" PRIMARY KEY ("id");


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_user_id_group_id_94350c0c_uniq" UNIQUE ("user_id", "group_id");


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_user"
    ADD CONSTRAINT "auth_user_pkey" PRIMARY KEY ("id");


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permissions_pkey" PRIMARY KEY ("id");


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" UNIQUE ("user_id", "permission_id");


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_user"
    ADD CONSTRAINT "auth_user_username_key" UNIQUE ("username");


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."django_admin_log"
    ADD CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id");


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."django_content_type"
    ADD CONSTRAINT "django_content_type_app_label_model_76bd3d3b_uniq" UNIQUE ("app_label", "model");


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."django_content_type"
    ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id");


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."django_migrations"
    ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id");


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."django_session"
    ADD CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key");


--
-- Name: EdWebApp_eventimage_event_id_f5f1c5da; Type: INDEX; Schema: public; Owner: dgcwkoncubyteg
--

CREATE INDEX "EdWebApp_eventimage_event_id_f5f1c5da" ON "public"."EdWebApp_eventimage" USING "btree" ("event_id");


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: dgcwkoncubyteg
--

CREATE INDEX "auth_group_name_a6ea08ec_like" ON "public"."auth_group" USING "btree" ("name" "varchar_pattern_ops");


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: dgcwkoncubyteg
--

CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "public"."auth_group_permissions" USING "btree" ("group_id");


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: dgcwkoncubyteg
--

CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "public"."auth_group_permissions" USING "btree" ("permission_id");


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: dgcwkoncubyteg
--

CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "public"."auth_permission" USING "btree" ("content_type_id");


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: dgcwkoncubyteg
--

CREATE INDEX "auth_user_groups_group_id_97559544" ON "public"."auth_user_groups" USING "btree" ("group_id");


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: dgcwkoncubyteg
--

CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "public"."auth_user_groups" USING "btree" ("user_id");


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: dgcwkoncubyteg
--

CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "public"."auth_user_user_permissions" USING "btree" ("permission_id");


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: dgcwkoncubyteg
--

CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "public"."auth_user_user_permissions" USING "btree" ("user_id");


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: dgcwkoncubyteg
--

CREATE INDEX "auth_user_username_6821ab7c_like" ON "public"."auth_user" USING "btree" ("username" "varchar_pattern_ops");


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: dgcwkoncubyteg
--

CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "public"."django_admin_log" USING "btree" ("content_type_id");


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: dgcwkoncubyteg
--

CREATE INDEX "django_admin_log_user_id_c564eba6" ON "public"."django_admin_log" USING "btree" ("user_id");


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: dgcwkoncubyteg
--

CREATE INDEX "django_session_expire_date_a5c62663" ON "public"."django_session" USING "btree" ("expire_date");


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: dgcwkoncubyteg
--

CREATE INDEX "django_session_session_key_c0390e0f_like" ON "public"."django_session" USING "btree" ("session_key" "varchar_pattern_ops");


--
-- Name: EdWebApp_eventimage EdWebApp_eventimage_event_id_f5f1c5da_fk_EdWebApp_event_id; Type: FK CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."EdWebApp_eventimage"
    ADD CONSTRAINT "EdWebApp_eventimage_event_id_f5f1c5da_fk_EdWebApp_event_id" FOREIGN KEY ("event_id") REFERENCES "public"."EdWebApp_event"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_permission"
    ADD CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_group_id_97559544_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_user_groups"
    ADD CONSTRAINT "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."auth_user_user_permissions"
    ADD CONSTRAINT "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."django_admin_log"
    ADD CONSTRAINT "django_admin_log_content_type_id_c4bce8eb_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dgcwkoncubyteg
--

ALTER TABLE ONLY "public"."django_admin_log"
    ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

