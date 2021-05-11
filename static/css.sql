--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-05-11 21:54:37 CEST

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
-- TOC entry 201 (class 1259 OID 16397)
-- Name: areas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.areas (
    "ID" smallint NOT NULL,
    "Title" text,
    "Short" text,
    "Long" text,
    "Image" text
);


ALTER TABLE public.areas OWNER TO postgres;

--
-- TOC entry 3301 (class 0 OID 0)
-- Dependencies: 201
-- Name: TABLE areas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.areas IS 'This will hold information about the 3 areas of the company
Each area will have an ID,  a Title, a Short description, a Long description and an Image';


--
-- TOC entry 200 (class 1259 OID 16395)
-- Name: Areas_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Areas_ID_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Areas_ID_seq" OWNER TO postgres;

--
-- TOC entry 3302 (class 0 OID 0)
-- Dependencies: 200
-- Name: Areas_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Areas_ID_seq" OWNED BY public.areas."ID";


--
-- TOC entry 205 (class 1259 OID 16417)
-- Name: people; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.people (
    "ID" smallint NOT NULL,
    "Name" text,
    "Role" text,
    "Bio" text,
    "Email" text,
    "Picture" text
);


ALTER TABLE public.people OWNER TO postgres;

--
-- TOC entry 3303 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE people; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.people IS 'This will hold information about the 20 people that work in the company
Each person will have an ID,  a Name, a Role, an Email, a Bio, a Picture, an Area and a list of Products';


--
-- TOC entry 204 (class 1259 OID 16415)
-- Name: People_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."People_ID_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."People_ID_seq" OWNER TO postgres;

--
-- TOC entry 3304 (class 0 OID 0)
-- Dependencies: 204
-- Name: People_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."People_ID_seq" OWNED BY public.people."ID";


--
-- TOC entry 203 (class 1259 OID 16408)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    "ID" smallint NOT NULL,
    "Title" text,
    "Short" text,
    "Long" text,
    "Image" text
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 3305 (class 0 OID 0)
-- Dependencies: 203
-- Name: TABLE products; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.products IS 'This will hold information about the 30 products of the company
Each product will have an ID,  a Title, a Short description, a Long description, and an Image';


--
-- TOC entry 202 (class 1259 OID 16406)
-- Name: Products_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Products_ID_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Products_ID_seq" OWNER TO postgres;

--
-- TOC entry 3306 (class 0 OID 0)
-- Dependencies: 202
-- Name: Products_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Products_ID_seq" OWNED BY public.products."ID";


--
-- TOC entry 207 (class 1259 OID 16449)
-- Name: development; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.development (
    "ID_Person" smallint,
    "ID_Product" smallint
);


ALTER TABLE public.development OWNER TO postgres;

--
-- TOC entry 3307 (class 0 OID 0)
-- Dependencies: 207
-- Name: TABLE development; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.development IS 'This is the relational table between People and Products, which corresponds to a N:N relationship
It holds pairs of keys from people to each product they develop';


--
-- TOC entry 208 (class 1259 OID 16459)
-- Name: offer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.offer (
    "ID_Product" smallint,
    "ID_Area" smallint
);


ALTER TABLE public.offer OWNER TO postgres;

--
-- TOC entry 3308 (class 0 OID 0)
-- Dependencies: 208
-- Name: TABLE offer; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.offer IS 'This is the relational table between Products and Areas, which corresponds to a N:1 relationship
It holds pairs of keys from products to a certain area';


--
-- TOC entry 206 (class 1259 OID 16436)
-- Name: work; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.work (
    "ID_Person" smallint,
    "ID_Area" smallint
);


ALTER TABLE public.work OWNER TO postgres;

--
-- TOC entry 3309 (class 0 OID 0)
-- Dependencies: 206
-- Name: TABLE work; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.work IS 'This is the relational table between People and Areas, which corresponds to a N:1 relationship
It holds pairs of keys from people to a certain area';


--
-- TOC entry 3142 (class 2604 OID 16400)
-- Name: areas ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areas ALTER COLUMN "ID" SET DEFAULT nextval('public."Areas_ID_seq"'::regclass);


--
-- TOC entry 3144 (class 2604 OID 16420)
-- Name: people ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people ALTER COLUMN "ID" SET DEFAULT nextval('public."People_ID_seq"'::regclass);


--
-- TOC entry 3143 (class 2604 OID 16411)
-- Name: products ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN "ID" SET DEFAULT nextval('public."Products_ID_seq"'::regclass);


--
-- TOC entry 3288 (class 0 OID 16397)
-- Dependencies: 201
-- Data for Name: areas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.areas ("ID", "Title", "Short", "Long", "Image") FROM stdin;
1	Conversational Solutions	Voice solutions for business to increase sales and personalize marketing.	Voice solutions for business to increase sales and personalize marketing. Expand your brand presence and reach new audiences with conversational marketing.	https://i.pinimg.com/originals/62/9f/21/629f2154a091599beadf9c91ea657a70.jpg
2	Conversational Frameworks & Platforms	Conversational Frameworks and Platforms to create a conversational AI.	Conversational Frameworks and Platforms. Create your own conversational AI with our products.	https://d1iiooxwdowqwr.cloudfront.net/pub/appsubmissions/20190806153212_icon.png
3	Virtual assistants	Implement and manage a wide range of natural language applications.	Implement and manage a wide range of natural language applications. Drive your productivity, reduce costs, and deliver unprecedented level of customer insight.	https://thumbs.dreamstime.com/b/graph-dashboard-web-icons-businesses-black-background-success-data-graph-dashboard-web-icons-businesses-157034974.jpg
\.


--
-- TOC entry 3294 (class 0 OID 16449)
-- Dependencies: 207
-- Data for Name: development; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.development ("ID_Person", "ID_Product") FROM stdin;
1	1
2	1
5	1
1	2
3	2
4	2
2	3
3	3
4	3
5	3
6	4
7	4
6	5
8	5
7	6
8	6
6	7
7	7
8	7
9	8
10	8
11	8
10	9
11	9
12	9
9	10
11	10
12	10
13	11
14	11
15	11
6	12
16	12
1	13
2	13
3	14
4	14
1	15
5	15
2	16
4	16
3	17
5	17
7	18
8	19
17	18
17	19
17	20
8	21
18	20
18	21
3	22
4	22
8	23
20	23
7	24
20	24
13	25
19	25
13	26
19	26
9	27
12	27
10	28
19	28
18	29
20	29
6	30
17	30
\.


--
-- TOC entry 3295 (class 0 OID 16459)
-- Dependencies: 208
-- Data for Name: offer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.offer ("ID_Product", "ID_Area") FROM stdin;
1	1
2	1
3	1
4	2
5	2
6	2
7	2
8	3
9	3
10	3
11	3
12	2
13	1
14	1
15	1
16	1
17	1
18	2
19	2
20	2
21	2
22	1
23	2
24	2
25	3
26	3
27	3
28	3
29	2
30	2
\.


--
-- TOC entry 3292 (class 0 OID 16417)
-- Dependencies: 205
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.people ("ID", "Name", "Role", "Bio", "Email", "Picture") FROM stdin;
1	Robert Smith	Developer	A great developer, Robert has over 10 years of experience in Java development. With a PhD in Computer Science, Robert is a frequent speaker at conferences.	smith-robert@c-company.net	https://svend-8e82.kxcdn.com/wp-content/uploads/2017/08/SD_square-300x300.jpg
2	Ann Phillips	Developer	Passionate developer with over 5 years of experience in Conversational AI development.	phillips.ann@c-company.net	https://www.ndscs.edu/sites/default/files/2019-06/webdesign.jpg
3	Tom Ford	Developer	Senior developer with over 15 years of experience in the market.	ford.tom@c-company.net	https://images.ctfassets.net/gzwz56cmb3i6/2gnwYBlKDHuQhA3Z91tcoC/c2a5d8ad41b4c455f5b9e616f42df50d/squarenoman.jpg?w=512&h=512&q=75&fm=webp
4	Martha Lee	Head of Development department	Martha is a goal-oriented head of the department. An alumna of Politecnico di Milano, Martha has over 20 years of experience in development and a huge dedication to improve conversational solutions.	lee.martha@c-company.net	https://pbs.twimg.com/profile_images/1111501275722444801/xXYcW1JG.png
5	Andrew Bernard	Developer	Andrew has over 7 years of experience in development, with a very creative mind towards creating conversational solutions.	bernard.andrew@c-company.net	https://images.ctfassets.net/gzwz56cmb3i6/2l55dG8TvwoqEMLbuW1WlK/f7f63d40d94dd8e971c71d8e7617a3e3/IMG_20201130_180536__01.jpg?w=1056&h=1056&q=75&fm=webp
6	Ursula Smith	Developer	Developer with over 20 years of experience. Passionate about the design of the frameworks.	smith.ursula@c-company.net	https://usawaterpolo.org/images/2020/2/23/Nori_Gerardo_Lietz_Headshot_012220.jpg?width=1920&quality=80&format=jpg
7	Peter Kozlov	Developer	With years of experience in R&D, Peter directly contributed to the development of the Conversational platform and Java framework. Gifted with an analytical mind, he is an indispensable part of the R&D department.	kozlov.peter@c-company.net	https://developerdave.dev/static/dave_square-min-2a51c9c5b9d044a2b1e0c96ded87260d.png
8	Peter Gregory	Head of R&D department	Highly experienced developer with PhD in Computer Science (2014). Before joining our company, he managed the R&D of ABC company in the USA.	gregory.peter@c-company.net	https://images.ctfassets.net/gzwz56cmb3i6/4tAAnLug3qRDUNqZxPGv8o/347fc2e5ac5582ba0a482f9e3f2dc598/portrait.jpg?w=505&h=505&q=75&fm=webp
9	Pamela Beesly	Developer	Pamela has extensive experience in software engineering, more than 12 years of experience working within the software industry.	beesly.pamela@c-company.net	https://www.pngitem.com/pimgs/m/523-5238557_image-description-happy-woman-executive-png-transparent-png.png
10	Laurie Bream	Developer	Laurie has been key to developing multi-channel, self-service solutions and multi-channel, contact center solutions.	bream.laurie@c-company.net	http://florafountaindigital.com/2020/doerlife/wp-content/uploads/2020/10/256-2563233_business-woman-transparent-background-hd-png-download.png
11	James Halpert	Developer	James has extensive experience in areas such as language technology, voice automation, search technology, knowledge management, virtual avatars, email management, live-chat, SMS services, and analytics.	halpert.james@c-company.net	https://www.pngitem.com/pimgs/m/513-5137656_picture-businessman-with-laptop-png-transparent-png.png
12	Jared Dunn	Developer	Jared’s extensive background within AI and software engineering is a strategic asset for the company. He studied computer science at SSHL and graduated in 2015.	dunn.jared@c-company.net	https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5c33a1554bbe6f7020fb2fd2%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D865%26cropX2%3D2774%26cropY1%3D206%26cropY2%3D2115
13	Dwight Schrute	Developer	A brilliant developer, Dwight has contributed since the beginning with challenging proposals, his perspective and expertise are part of the main pillars of the company.	schrute.dwight@c-company.net	https://images.assetsdelivery.com/compings_v2/vgstudio/vgstudio1912/vgstudio191200372.jpg
14	Carla Walton	CFO	Over 10 years of experience in the IT market. Before joining our company, she worked for Stark Industries in the USA. Master of Business Administration (2012).	walton.carla@c-company.net	https://secureservercdn.net/160.153.137.40/6vk.0a1.myftpupload.com/wp-content/uploads/2017/03/Happy-smart-business-man-square-300x300.png
15	Richard Hendricks	CEO	Richard has 15 years of Business Development and Technology Leadership experience, a Master of Science in Engineering Physics at the Royal Institute of Technology, as well as Masters in Business and Economics at the Stockholm School of Economics.	hendricks.richard@c-company.net	https://secureservercdn.net/160.153.137.40/6vk.0a1.myftpupload.com/wp-content/uploads/2017/03/Happy-smart-business-man-square-300x300.png
16	Debrah Gomez	CTO	With broad international experience and technology expertise, Debrah has led the team since it was founded to achieve the most ambitious goals over the years. Graduated in Universidad de Chile in 2010.	gomez.debrah@c-company.net	https://iu35-prod.s3.amazonaws.com/images/barbarita_lara.width-1360.jpg
17	Miles Dyson	Developer	Sharp and precise, Miles has 5 years of experience but shines with high-end improvements. Studied computer science and graduated in 2014.	dyson.miles@c-company.net	https://media.monolithicpower.com/wysiwyg/employee-img1.png
18	Sarah Andersen	Developer	Sarah has more than 9 years of experience in the Natural Language automation space. Compliant and hard worker, brings action to the workspace.	andersen.sarah@c-company.net	https://media.monolithicpower.com/wysiwyg/employee-img2.png
19	Giuseppe Pacini	Developer	A veteran programmer, Giuseppe has been in technology disruption teams for more than 30 years.	pacini.giuseppe@c-company.net	https://sdtimes.com/wp-content/uploads/2017/02/vmvaughn_pic1.jpg
20	Eugene Rodenberry	Developer	With 6 years of experience and a very proactive background. Eugene formulates the best features for our platforms.	rodenberry.eugene@c-company.net	https://media.monolithicpower.com/wysiwyg/employee-img4.png
\.


--
-- TOC entry 3290 (class 0 OID 16408)
-- Dependencies: 203
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products ("ID", "Title", "Short", "Long", "Image") FROM stdin;
1	Paint AI	A smart bot helps customers to choose the right colour and type of paint and builds brand confidence.	A smart bot helps customers to choose the right colour and type of paint and builds brand confidence. Show product characteristics, certificates and labels. A bot serves over 100 queries during the weekends and 50 queries per night.	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1U0obCdRelryFk7GaWpYiikAFcQojxoDEdSYrulaRHEV7fQKGlHjhB6kETCLT1-PRv0I&usqp=CAU
2	Lada Navigator Skill	A skill for a navigator that provides additional values.	A skill for a navigator that provides additional values. Reacts to keystrokes, understands spoken queries and synonyms. Offers advice to car travellers along with exciting quests for children and adults.	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwHik2q40FHtXXmETqTMVM8WQ84LJHNtOGhA&usqp=CAU
3	Greate Pizza	A polite conversational robotic solution with a soft voice.	A polite conversational robotic solution with a soft voice. A voice robot recognizes natural speech, rings up customers, and gathers feedback. In 6 months robot called over 150000 clients.	https://i.pinimg.com/originals/bf/6d/b4/bf6db42975b1767c14ddbf5d89df3c0a.png
4	Conversational Java Framework	Powerful open-source Java framework that allows creating your own conversational AI.	Powerful open-source Java framework that allows creating your own conversational AI. Allows to design, build, test, connect and evaluate Java application implemented the conversational AI. Is free of charge even for commercial use.	https://media.istockphoto.com/vectors/coffee-cup-icon-on-black-background-black-flat-style-vector-vector-id1161113469?k=6&m=1161113469&s=170667a&w=0&h=VTzr25WtHmnDsUHK6sutzqkWVVfkAG67A4KssQHaFac=
5	Conversational C++ Framework	An open-source C++ framework free of charge even for commercial use.	An open-source C++ framework free of charge even for commercial use. With this framework, you can create chatbots and voice assistants in the C++ programming language. The framework has extendable architecture and expressive syntax.	https://us.123rf.com/450wm/piren/piren1703/piren170301332/74444943-the-plus-icon-on-a-black-background-.jpg?ver=6
6	Conversational Platform	Powerful Conversational AI Platform for enterprises. Allow building solutions of any complexity.	Powerful Conversational AI Platform. Ideal for enterprises. Allow building solutions of any complexity: chatbots, voice assistants, etc. Provide an intuitive visual editor to manage the scenarios easily, based on our Java and C++ frameworks. Use our state-of-the-art statistics and analytics reports to monitor project performance.	https://us.123rf.com/450wm/fokaspokas/fokaspokas1804/fokaspokas180400021/98531967-a-chat-icon-white-icon-on-black-background-.jpg?ver=6
7	LISA Conversational Bots with Tenor	Two top technologies together to build conversational bots faster.	Two top technologies together to build conversational bots faster. The seamless integration of Tenor and LISA’s APIs leverages Tenor’s powerful development environment, linguistic rules, and analytic capabilities with the LISA intent recognition engine, allowing for faster bot development.	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHsO6g5xakZ07S3wEpKiVmxdEc1M17IjuvNsKRxOxrGOTUWNOnh23-MDhAUUxTGlHjPKI&usqp=CAU
8	Sales boost assistant	Increase qualified leads and accelerate your revenue.	Increase qualified leads and accelerate your revenue by intelligently guiding customers from initial contact to qualified sales lead. Increase online conversion rates significantly, grow brand loyalty and receive in-depth business insight.	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHsO6g5xakZ07S3wEpKiVmxdEc1M17IjuvNsKRxOxrGOTUWNOnh23-MDhAUUxTGlHjPKI&usqp=CAU
9	Content marketing recommendator	Improve your content with AI.	Improve your content with AI and learn how to publicize better by intelligently guiding your team with data-driven insights. Grow your marketing power with AI.	https://us.123rf.com/450wm/honzahruby/honzahruby1605/honzahruby160500122/56751015-conceptual-vector-global-marketing-campaign-strategy-icon-with-megaphone-and-globe-modern-flat-desig.jpg?ver=6
10	Travel booker	Automate your business trips.	Organize your team with an automated travel booker. Technology will allow your company to get the best seats in schedule with simple commands.	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDulAxzDQu9q0roWGKRddxpRk18FXyJLxoLMohDIxb8jFBxBALJa9S7T-lsyFSChYHzdk&usqp=CAU
11	Invoice AI	Automate your business trips.	Save money with our smart assistant and the best AI has to offer.	https://media.istockphoto.com/vectors/money-icon-on-black-background-black-flat-style-vector-illustration-vector-id1161361100?k=6&m=1161361100&s=170667a&w=0&h=p1TVOm1Hf1tApp1ZUb9IQzLvCZZLeMP76p0KcxnaVTI=
12	Conversational Python Framework	Conversational framework for starters, build easy solutions for any problem.	Conversational framework for starters, build easy solutions for any problem. Ideal for startups. Build fast and intuitive management systems based on Python for fast reports.	https://i.pinimg.com/originals/b6/79/d2/b679d268ffeb03c2e65561c65e3f15a2.jpg
13	AI Semantic Understanding	A virtual agent that understand exactly what customers are asking for.	A virtual agent that recognizes what customers are asking for, and places importance on the context of their questions. It has the power to understand exactly if and when it should forward a customer to human support.	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7g6TKQkm_e1nGETrFVN1wLJNnMSPojW1RiqCxKpzYa0BVllQtbnppEjBkHpxX-R5m6yA&usqp=CAU
14	Bank Bot	Provide an omnichannel, personalised and self serve model.	Provide an omnichannel, personalised and self serve model. By 2030, more than a billion service tickets will be raised by customer-owned bots.	https://media.istockphoto.com/vectors/bank-icon-on-a-black-background-vector-id486816856?k=6&m=486816856&s=170667a&w=0&h=oGBEeJSCxmmdNCReEvX4vcebXoJps9JGGh15lcPbDUE=
15	HR Support	An intelligent HR support virtual assistant helping employees.	An intelligent HR support virtual assistant helping employees in HR queries and empowering HR staff to take up important tasks. Empowers human-like conversations to respond to most asked employee queries at the workplace.	https://thumbs.dreamstime.com/b/white-people-logo-group-icon-group-people-group-users-dark-background-people-logo-group-icon-group-people-group-133800107.jpg
16	IT Assistance AI	Customizable IT support virtual assistant.	An intelligent IT support virtual assistant addressing employee queries while empowering IT staff to resolve high-end issues. An intelligent IT support virtual assistant addressing employee queries while empowering IT staff to resolve high-end issues.	https://i.pinimg.com/474x/6e/8e/f2/6e8ef213f80155cd2a04c5de7fb046b8.jpg
17	Dress up pal	AI to choose the best clothes and combine outfits.	Helps customers to choose the best clothes and combine outfits to improve online shopping experience.	https://thumbs.dreamstime.com/b/shopping-bag-icon-black-background-black-flat-style-vector-illustration-shopping-bag-icon-black-background-black-flat-style-170442753.jpg
18	Conversational Android Platform	Conversational AI Platform for small businesses. Specialized phone solutions.	Conversational AI Platform for small businesses. Specialized phone solutions. Assistants and chatbots for Android with great performance.	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQniJTeHQ2BK7XOAa-de3p_-BJHD4ueQk5RPyS0qprTVHnAvsHG3u1m_XGG7Ttp8Oou3O4&usqp=CAU
19	Conversational Apple Platform	Conversational AI Platform in all devices for emerging businesses.	Conversational AI Platform for emerging businesses. Specialized Apple solutions. Improve your customer engagement with specific tools for all Apple devices.	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNOJg09aSuYSUc_AZV11MViW_3BSdPvK5lL1TolyLtUN8jNu9P1xWSRSOtn1zchbqkXss&usqp=CAU
20	Social Media Interaction Platform	Monitor social activities, provide social care, determine intent and topic, and the sentiment of posts.	SMIP leverages artificial intelligence (AI) to find meaningful social posts, prioritize by relevance, suggest responses, and gather insights. This AI platform allows companies to monitor social activities, provide social care, determine intent and topic, and the sentiment of posts.	https://i0.wp.com/socialmediaicons.biz/wp-content/uploads/2019/04/vector-white-round-social-media-icons.jpg?fit=1080%2C1080&ssl=1
21	Lifecycle Management Support	Platform to create, train, test, and host virtual assistants.	This platform provides everything you need to create, train, test, and host virtual assistants using one consistent process. Use it even across multiple teams, locations, and release dates.	http://iconsetc.com/icons-watermarks/flat-square-white-on-black/ocha/ocha_activity-humanitarian-programme-cycle/ocha_activity-humanitarian-programme-cycle_flat-square-white-on-black_512x512.png
22	Authentication AI	Virtual Assistant with Voice Biometrics.	A Virtual Assistant with Voice Biometrics to verify a customer’s identity using the unique characteristics of the human voice. Give your customers convenient access to secure information, while enabling personalization in everyday transactions.	https://i.pinimg.com/474x/95/04/01/950401d4884736b41e98726cd63aefeb.jpg
23	Smart Speaker Conversational Platform	Build an Alexa skill or a Google Home action for customer engagement.	Smart speakers are becoming a household staple. Leverage them to offer yet another convenient channel of customer engagement. Build an Alexa skill or a Google Home action that allows customers to communicate with you without losing the brand experience they know and love.	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS49Jn2LHracg8eQTJn6MWx9V39QfA9rqmZwg&usqp=CAU
24	Conversation Design Platform	Platform for enhanced conversational solution design.	CDP provides a single instance where all relevant stakeholders can interact and work together on designs, including overseeing all the possible paths covered in the conversation, commenting on portions of the project, assigning related tasks, and adding notes if needed.	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6Ud3RCU1uP6Gn_M8OyuLN1obKq2tXZvV-lYIqankW62aJ0Zq5muKnHUaaEun3zdRgiQQ&usqp=CAU
25	Enterprise Assistant	Provide a centralized conversational experience across many canvases for employees.	A master bot handles finding the right bot to handle the conversation, thus avoiding bot explosion through parent bot/skills approach. Provide a centralized conversational experience across many canvases for employees.	https://pixy.org/src/162/thumbs350/1624263.jpg
26	Hospitality Assistant	Integrated assistant for hotel guests.	Integrated assistant for hotel room devices to help guests with anything they might usually go to the hotel concierge about. It also provides additional capabilities such as getting the weather forecast or showing current news articles.	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmj_LcTBmdSIEuJWgnY3YvPweKZsWebu_UO1YthYEsMv_bRsmrfnGxNQjx5Z33un5Mt7E&usqp=CAU
27	Q&A Customer Assistant	Solve your customers doubts to the most common questions 24/7 and at any time of the day.	Solve your customers doubts to the most common questions 24/7 and at any time of the day. Chatbots will free up customer service agents to focus their efforts on claims that require human-human interaction.	https://thumbs.dreamstime.com/b/question-icon-black-background-black-flat-style-vector-illustration-question-icon-black-background-black-flat-style-vector-170442693.jpg
28	Customer Satisfaction Assistant	Make a more accurate follow up to your customer service with a survey chatbot.	Another moment where your customers will prefer to interact with a chatbot rather than with a human agent, is to provide their degree of satisfaction. You can get more accurate answers thanks to a chatbot.	https://cdn.shopify.com/s/files/1/0740/3221/products/EJ-10_Emoji_Thumbs_up.jpg?v=1488600086
29	Multi-skill Dialog Platform	Platform for creating multi-skill chatbots.	Platform for creating multi-skill chatbots. Build industrial solutions with multi-skill integration via API services.	https://t4.ftcdn.net/jpg/02/73/32/43/360_F_273324354_axQmNuKXxfzyy0WagXDYqLL1SNftwDyN.jpg
30	C# Conversational Framework	A comprehensive framework for building enterprise-grade conversational AI experiences.	A comprehensive framework for building enterprise-grade conversational AI experiences. Create a bot with the ability to speak, listen, understand, and learn from your users with this open source framework.	https://m.media-amazon.com/images/I/413dPSuyA1L._AC_SY355_.jpg
\.


--
-- TOC entry 3293 (class 0 OID 16436)
-- Dependencies: 206
-- Data for Name: work; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.work ("ID_Person", "ID_Area") FROM stdin;
1	1
2	1
3	1
4	1
5	1
6	2
7	2
8	2
9	3
10	3
11	3
12	3
13	3
14	3
15	3
16	2
17	2
18	2
19	3
20	2
\.


--
-- TOC entry 3310 (class 0 OID 0)
-- Dependencies: 200
-- Name: Areas_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Areas_ID_seq"', 1, false);


--
-- TOC entry 3311 (class 0 OID 0)
-- Dependencies: 204
-- Name: People_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."People_ID_seq"', 1, false);


--
-- TOC entry 3312 (class 0 OID 0)
-- Dependencies: 202
-- Name: Products_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Products_ID_seq"', 1, false);


--
-- TOC entry 3146 (class 2606 OID 16405)
-- Name: areas Areas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areas
    ADD CONSTRAINT "Areas_pkey" PRIMARY KEY ("ID");


--
-- TOC entry 3150 (class 2606 OID 16425)
-- Name: people People_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT "People_pkey" PRIMARY KEY ("ID");


--
-- TOC entry 3148 (class 2606 OID 16468)
-- Name: products Products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "Products_pkey" PRIMARY KEY ("ID");


--
-- TOC entry 3152 (class 2606 OID 16444)
-- Name: work Area; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work
    ADD CONSTRAINT "Area" FOREIGN KEY ("ID_Area") REFERENCES public.areas("ID");


--
-- TOC entry 3313 (class 0 OID 0)
-- Dependencies: 3152
-- Name: CONSTRAINT "Area" ON work; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON CONSTRAINT "Area" ON public.work IS 'It relates the FK ID_Area to the Area''s ID';


--
-- TOC entry 3155 (class 2606 OID 16462)
-- Name: offer Area; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offer
    ADD CONSTRAINT "Area" FOREIGN KEY ("ID_Area") REFERENCES public.areas("ID");


--
-- TOC entry 3314 (class 0 OID 0)
-- Dependencies: 3155
-- Name: CONSTRAINT "Area" ON offer; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON CONSTRAINT "Area" ON public.offer IS 'It relates the FK ID_Area to the Area''s ID';


--
-- TOC entry 3151 (class 2606 OID 16439)
-- Name: work Person; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work
    ADD CONSTRAINT "Person" FOREIGN KEY ("ID_Person") REFERENCES public.people("ID");


--
-- TOC entry 3315 (class 0 OID 0)
-- Dependencies: 3151
-- Name: CONSTRAINT "Person" ON work; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON CONSTRAINT "Person" ON public.work IS 'It relates the FK ID_Person to the Person''s ID';


--
-- TOC entry 3153 (class 2606 OID 16452)
-- Name: development Person; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.development
    ADD CONSTRAINT "Person" FOREIGN KEY ("ID_Person") REFERENCES public.people("ID");


--
-- TOC entry 3316 (class 0 OID 0)
-- Dependencies: 3153
-- Name: CONSTRAINT "Person" ON development; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON CONSTRAINT "Person" ON public.development IS 'It relates the FK ID_Person to the Person''s ID';


--
-- TOC entry 3156 (class 2606 OID 16469)
-- Name: offer Product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offer
    ADD CONSTRAINT "Product" FOREIGN KEY ("ID_Product") REFERENCES public.products("ID") NOT VALID;


--
-- TOC entry 3317 (class 0 OID 0)
-- Dependencies: 3156
-- Name: CONSTRAINT "Product" ON offer; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON CONSTRAINT "Product" ON public.offer IS 'It relates the FK ID_Product to the Product''s ID';


--
-- TOC entry 3154 (class 2606 OID 16474)
-- Name: development Product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.development
    ADD CONSTRAINT "Product" FOREIGN KEY ("ID_Product") REFERENCES public.products("ID") NOT VALID;


--
-- TOC entry 3318 (class 0 OID 0)
-- Dependencies: 3154
-- Name: CONSTRAINT "Product" ON development; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON CONSTRAINT "Product" ON public.development IS 'It relates the FK ID_Product to the Product''s ID';


-- Completed on 2021-05-11 21:54:37 CEST

--
-- PostgreSQL database dump complete
--

