--
-- PostgreSQL database dump
--

-- Dumped from database version 12.7
-- Dumped by pg_dump version 12.7

-- Started on 2021-07-12 16:47:11

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
-- TOC entry 222 (class 1259 OID 32939)
-- Name: Credito_credito; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Credito_credito" (
    id bigint NOT NULL,
    sbs character varying(10) NOT NULL,
    sentinel character varying(10) NOT NULL,
    puntuacion character varying(10) NOT NULL,
    monto character varying(10) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    "estadoCredito" character varying(10) NOT NULL
);


ALTER TABLE public."Credito_credito" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 32937)
-- Name: Credito_credito_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Credito_credito_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Credito_credito_id_seq" OWNER TO postgres;

--
-- TOC entry 2973 (class 0 OID 0)
-- Dependencies: 221
-- Name: Credito_credito_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Credito_credito_id_seq" OWNED BY public."Credito_credito".id;


--
-- TOC entry 209 (class 1259 OID 32800)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 32798)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 2974 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 211 (class 1259 OID 32810)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 32808)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 2975 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 207 (class 1259 OID 32792)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 32790)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 2976 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 213 (class 1259 OID 32818)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 32828)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 32826)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 2977 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 212 (class 1259 OID 32816)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 2978 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 217 (class 1259 OID 32836)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 32834)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 2979 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 219 (class 1259 OID 32896)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 32894)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 2980 (class 0 OID 0)
-- Dependencies: 218
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 205 (class 1259 OID 32782)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 32780)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 2981 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 203 (class 1259 OID 32771)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 32769)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 2982 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 220 (class 1259 OID 32927)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 2759 (class 2604 OID 32942)
-- Name: Credito_credito id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Credito_credito" ALTER COLUMN id SET DEFAULT nextval('public."Credito_credito_id_seq"'::regclass);


--
-- TOC entry 2752 (class 2604 OID 32803)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2753 (class 2604 OID 32813)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2751 (class 2604 OID 32795)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2754 (class 2604 OID 32821)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2755 (class 2604 OID 32831)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2756 (class 2604 OID 32839)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2757 (class 2604 OID 32899)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2750 (class 2604 OID 32785)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2749 (class 2604 OID 32774)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2967 (class 0 OID 32939)
-- Dependencies: 222
-- Data for Name: Credito_credito; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Credito_credito" (id, sbs, sentinel, puntuacion, monto, created, user_id, "estadoCredito") FROM stdin;
5	1000	Regular	5	20000	2021-07-09 12:05:10.811115-05	2	Pendiente
7	200000	Malo	4	60000	2021-07-09 12:05:52.431928-05	4	Pendiente
6	0	Bueno	9	50000	2021-07-09 12:05:30.894026-05	3	Aprobado
8	6000	Bueno	8	80000	2021-07-09 12:40:30.668664-05	5	Pendiente
9	5000	Malo	3	10000	2021-07-09 12:40:47.859603-05	6	Pendiente
10	0	Bueno	10	100000	2021-07-09 12:41:04.834954-05	7	Pendiente
11	5000	Regular	6	35000	2021-07-09 12:41:33.265028-05	8	Denegado
12	100	Bueno	7	60000	2021-07-09 12:42:24.612962-05	9	Aprobado
13	100	Bueno	10	15000	2021-07-09 22:27:45.495308-05	1	Pendiente
\.


--
-- TOC entry 2954 (class 0 OID 32800)
-- Dependencies: 209
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 2956 (class 0 OID 32810)
-- Dependencies: 211
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2952 (class 0 OID 32792)
-- Dependencies: 207
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
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
25	Can add Credito	7	add_credito
26	Can change Credito	7	change_credito
27	Can delete Credito	7	delete_credito
28	Can view Credito	7	view_credito
\.


--
-- TOC entry 2958 (class 0 OID 32818)
-- Dependencies: 213
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$260000$x4qDn0B9Xf345JOHGWbDNy$riJLNFUV1Buof1O0cpe6X1/oTmpvJEUZYCE+wYnFTYY=	\N	f	Calos				f	t	2021-07-09 10:53:03.28351-05
3	pbkdf2_sha256$260000$GBWR31apCvrnWgJkmvJEfn$by6L+8qMaZx/y+lr5pC/aZskMOMtgfVqtttRh/fFe+Y=	\N	f	Jose				f	t	2021-07-09 10:54:03.204274-05
4	pbkdf2_sha256$260000$Om5mWfnGuAu3QlPnM1PCFr$B1pG8CDwMfDuYJ3ZVOpXPfqaUuW/vTnLOWZLqRLDteM=	\N	f	Pedro				f	t	2021-07-09 10:55:17.098826-05
5	pbkdf2_sha256$260000$WsDrFiBnOKIqldoc6GJLo7$6T73W8K0IaVFscSyHVhWdqRn+1S9w5c/qkNWiqhPzOw=	\N	f	Carlos1				f	t	2021-07-09 12:39:07.077821-05
6	pbkdf2_sha256$260000$Y6N13RDYXOfWqXJpdZZm5H$h4wZtm3fOfpWIHn9Lvx7ZCB85YVHFAqFYrz/Q+HjCGg=	\N	f	Carlos2				f	t	2021-07-09 12:39:23.906951-05
7	pbkdf2_sha256$260000$PK472NaWtCfhyvXJKijQLz$cZxvuedojrRxzNqLkQ/fT2wNQjyPsqZQKjtQeXAL6nQ=	\N	f	Carlos3				f	t	2021-07-09 12:39:38.042891-05
8	pbkdf2_sha256$260000$C4S0mpvj10ZOuQ4mk6wzSC$Sn9dYut9rrhIPFeXVGbu2Xgbp8o8lOW5NqUnazvdTqg=	\N	f	Carlos4				f	t	2021-07-09 12:39:53.037007-05
9	pbkdf2_sha256$260000$SRWBHernVAsMIIpLB0vUb4$mq0OAm86pAzlbYutGOVxO6jnNkLEPUZasPOEr3kehNk=	\N	f	Carlos5				f	t	2021-07-09 12:40:07.044327-05
1	pbkdf2_sha256$260000$GCv1w9BLhf1BpLD9JMuNju$vvxQumm+zHPf46S3k+VnDID5jhi6okKOvFCGQFj4UUU=	2021-07-09 22:27:03.967886-05	t	Maria				t	t	2021-07-09 10:06:34.686829-05
\.


--
-- TOC entry 2960 (class 0 OID 32828)
-- Dependencies: 215
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 2962 (class 0 OID 32836)
-- Dependencies: 217
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2964 (class 0 OID 32896)
-- Dependencies: 219
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-07-09 10:53:03.438522-05	2	Calos	1	[{"added": {}}]	4	1
2	2021-07-09 10:54:03.357286-05	3	Jose	1	[{"added": {}}]	4	1
3	2021-07-09 10:55:17.271839-05	4	Pedro	1	[{"added": {}}]	4	1
4	2021-07-09 10:56:08.279813-05	1	credito object (1)	1	[{"added": {}}]	7	1
5	2021-07-09 10:57:58.618106-05	1	credito object (1)	3		7	1
6	2021-07-09 11:16:09.07124-05	2	credito object (2)	1	[{"added": {}}]	7	1
7	2021-07-09 11:29:08.506786-05	3	credito object (3)	1	[{"added": {}}]	7	1
8	2021-07-09 11:29:26.9291-05	4	credito object (4)	1	[{"added": {}}]	7	1
9	2021-07-09 12:00:05.472476-05	2	credito object (2)	3		7	1
10	2021-07-09 12:00:05.476476-05	3	credito object (3)	3		7	1
11	2021-07-09 12:00:05.477618-05	4	credito object (4)	3		7	1
12	2021-07-09 12:05:10.812115-05	5	credito object (5)	1	[{"added": {}}]	7	1
13	2021-07-09 12:05:30.895026-05	6	credito object (6)	1	[{"added": {}}]	7	1
14	2021-07-09 12:05:52.432929-05	7	credito object (7)	1	[{"added": {}}]	7	1
15	2021-07-09 12:06:24.508208-05	6	credito object (6)	2	[{"changed": {"fields": ["Monto de Credito"]}}]	7	1
16	2021-07-09 12:08:00.978354-05	6	credito object (6)	2	[{"changed": {"fields": ["Estado del credito"]}}]	7	1
17	2021-07-09 12:39:07.248833-05	5	Carlos1	1	[{"added": {}}]	4	1
18	2021-07-09 12:39:24.061962-05	6	Carlos2	1	[{"added": {}}]	4	1
19	2021-07-09 12:39:38.208901-05	7	Carlos3	1	[{"added": {}}]	4	1
20	2021-07-09 12:39:53.209018-05	8	Carlos4	1	[{"added": {}}]	4	1
21	2021-07-09 12:40:07.203338-05	9	Carlos5	1	[{"added": {}}]	4	1
22	2021-07-09 12:40:30.669663-05	8	credito object (8)	1	[{"added": {}}]	7	1
23	2021-07-09 12:40:47.860603-05	9	credito object (9)	1	[{"added": {}}]	7	1
24	2021-07-09 12:41:04.835956-05	10	credito object (10)	1	[{"added": {}}]	7	1
25	2021-07-09 12:41:33.26603-05	11	credito object (11)	1	[{"added": {}}]	7	1
26	2021-07-09 12:42:24.615962-05	12	credito object (12)	1	[{"added": {}}]	7	1
\.


--
-- TOC entry 2950 (class 0 OID 32782)
-- Dependencies: 205
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	Credito	credito
\.


--
-- TOC entry 2948 (class 0 OID 32771)
-- Dependencies: 203
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-07-09 10:06:05.839995-05
2	auth	0001_initial	2021-07-09 10:06:05.953563-05
3	admin	0001_initial	2021-07-09 10:06:05.983567-05
4	admin	0002_logentry_remove_auto_add	2021-07-09 10:06:05.993567-05
5	admin	0003_logentry_add_action_flag_choices	2021-07-09 10:06:06.001566-05
6	contenttypes	0002_remove_content_type_name	2021-07-09 10:06:06.025569-05
7	auth	0002_alter_permission_name_max_length	2021-07-09 10:06:06.034568-05
8	auth	0003_alter_user_email_max_length	2021-07-09 10:06:06.044571-05
9	auth	0004_alter_user_username_opts	2021-07-09 10:06:06.053571-05
10	auth	0005_alter_user_last_login_null	2021-07-09 10:06:06.063572-05
11	auth	0006_require_contenttypes_0002	2021-07-09 10:06:06.065572-05
12	auth	0007_alter_validators_add_error_messages	2021-07-09 10:06:06.075573-05
13	auth	0008_alter_user_username_max_length	2021-07-09 10:06:06.098573-05
14	auth	0009_alter_user_last_name_max_length	2021-07-09 10:06:06.110573-05
15	auth	0010_alter_group_name_max_length	2021-07-09 10:06:06.121575-05
16	auth	0011_update_proxy_permissions	2021-07-09 10:06:06.129577-05
17	auth	0012_alter_user_first_name_max_length	2021-07-09 10:06:06.139575-05
18	sessions	0001_initial	2021-07-09 10:06:06.157578-05
19	Credito	0001_initial	2021-07-09 10:51:30.984094-05
20	Credito	0002_alter_credito_sentinel	2021-07-09 11:02:36.718948-05
21	Credito	0003_credito_estadocredito	2021-07-09 12:03:09.216052-05
\.


--
-- TOC entry 2965 (class 0 OID 32927)
-- Dependencies: 220
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
86wx5621lp4ovltlkg1kc629ap8txa0z	.eJxVjDsOwjAQBe_iGlmx449MSc8ZrLe7Dg6gRIqTCnF3iJQC2jcz76UytrXmrZUlj6LOyqjT70bgR5l2IHdMt1nzPK3LSHpX9EGbvs5SnpfD_TuoaPVbE2GAd2IBeOtLl4plSBAGYzDOEUsKfV8ikgsuBbIiPSMmioY6q94fKoE5Nw:1m23dv:frkeP-WeZ-D0xfKaWpKthSH_fDXK3lDCopy-dt0qgKc	2021-07-23 22:27:03.96949-05
\.


--
-- TOC entry 2983 (class 0 OID 0)
-- Dependencies: 221
-- Name: Credito_credito_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Credito_credito_id_seq"', 13, true);


--
-- TOC entry 2984 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 2985 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 2986 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 28, true);


--
-- TOC entry 2987 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 2988 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 9, true);


--
-- TOC entry 2989 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 2990 (class 0 OID 0)
-- Dependencies: 218
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 26, true);


--
-- TOC entry 2991 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);


--
-- TOC entry 2992 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);


--
-- TOC entry 2808 (class 2606 OID 32944)
-- Name: Credito_credito Credito_credito_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Credito_credito"
    ADD CONSTRAINT "Credito_credito_pkey" PRIMARY KEY (id);


--
-- TOC entry 2810 (class 2606 OID 32946)
-- Name: Credito_credito Credito_credito_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Credito_credito"
    ADD CONSTRAINT "Credito_credito_user_id_key" UNIQUE (user_id);


--
-- TOC entry 2773 (class 2606 OID 32925)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2778 (class 2606 OID 32852)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2781 (class 2606 OID 32815)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2775 (class 2606 OID 32805)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2768 (class 2606 OID 32843)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2770 (class 2606 OID 32797)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2789 (class 2606 OID 32833)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2792 (class 2606 OID 32867)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2783 (class 2606 OID 32823)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2795 (class 2606 OID 32841)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2798 (class 2606 OID 32881)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2786 (class 2606 OID 32919)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2801 (class 2606 OID 32905)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2763 (class 2606 OID 32789)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2765 (class 2606 OID 32787)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2761 (class 2606 OID 32779)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2805 (class 2606 OID 32934)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2771 (class 1259 OID 32926)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2776 (class 1259 OID 32863)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2779 (class 1259 OID 32864)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2766 (class 1259 OID 32849)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2787 (class 1259 OID 32879)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2790 (class 1259 OID 32878)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2793 (class 1259 OID 32893)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2796 (class 1259 OID 32892)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2784 (class 1259 OID 32920)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2799 (class 1259 OID 32916)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2802 (class 1259 OID 32917)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2803 (class 1259 OID 32936)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2806 (class 1259 OID 32935)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2820 (class 2606 OID 32947)
-- Name: Credito_credito Credito_credito_user_id_e43f2b42_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Credito_credito"
    ADD CONSTRAINT "Credito_credito_user_id_e43f2b42_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2813 (class 2606 OID 32858)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2812 (class 2606 OID 32853)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2811 (class 2606 OID 32844)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2815 (class 2606 OID 32873)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2814 (class 2606 OID 32868)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2817 (class 2606 OID 32887)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2816 (class 2606 OID 32882)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2818 (class 2606 OID 32906)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2819 (class 2606 OID 32911)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-07-12 16:47:12

--
-- PostgreSQL database dump complete
--

