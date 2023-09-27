--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0
--
-- Name: jobs; Type: TABLE; Schema: public; Owner: matt
--
DROP TABLE IF EXISTS jobs_volunteers;
DROP TABLE IF EXISTS volunteers;
DROP TABLE IF EXISTS jobs;
DROP SEQUENCE IF EXISTS jobs_seq;
DROP SEQUENCE IF EXISTS volunteers_seq;
DROP SEQUENCE IF EXISTS jobs_volunteers_seq;

CREATE TABLE public.jobs (
                             id bigint NOT NULL,
                             job_desc character varying(255),
                             job_name character varying(255)
);


ALTER TABLE public.jobs OWNER TO matt;

--
-- Name: jobs_seq; Type: SEQUENCE; Schema: public; Owner: matt
--

CREATE SEQUENCE public.jobs_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_seq OWNER TO matt;

--
-- Name: jobs_volunteers; Type: TABLE; Schema: public; Owner: matt
--

CREATE TABLE public.jobs_volunteers (
                                        rowid bigint NOT NULL,
                                        job_id bigint,
                                        volunteer_id bigint
);


ALTER TABLE public.jobs_volunteers OWNER TO matt;

--
-- Name: jobs_volunteers_seq; Type: SEQUENCE; Schema: public; Owner: matt
--

CREATE SEQUENCE public.jobs_volunteers_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_volunteers_seq OWNER TO matt;

--
-- Name: volunteers; Type: TABLE; Schema: public; Owner: matt
--

CREATE TABLE public.volunteers (
                                   id bigint NOT NULL,
                                   job_id bigint,
                                   first_name character varying(255),
                                   last_name character varying(255)
);


ALTER TABLE public.volunteers OWNER TO matt;

--
-- Name: volunteers_seq; Type: SEQUENCE; Schema: public; Owner: matt
--

CREATE SEQUENCE public.volunteers_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.volunteers_seq OWNER TO matt;

--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: matt
--

INSERT INTO public.jobs (id, job_desc, job_name) VALUES (1,'Manage the front desk, keep track of signed in guest and print entry badges.','Front Desk');
INSERT INTO public.jobs (id, job_desc, job_name) VALUES (2,'Organize and arrange the props on the perofrmance stage during the event.','Stage Organizer');
INSERT INTO public.jobs (id, job_desc, job_name) VALUES (3,'Provide information to the guests about events, locations & details.','Guest Coordinator');
INSERT INTO public.jobs (id, job_desc, job_name) VALUES (4,'Handle food logistics, preperation & serving.','Food Services');
INSERT INTO public.jobs (id, job_desc, job_name) VALUES (5,'Manage stationary supplies.','Stationary Services');
INSERT INTO public.jobs (id, job_desc, job_name) VALUES (6,'Manage security outside of each event space by controlling entry exits.','Security Personnel');
INSERT INTO public.jobs (id, job_desc, job_name) VALUES (7,'Act as a supervisor to the team of volunteers like. We prefer to have past history working for us in order to qualify as a supervisor.','General Supervisor');

--
-- Data for Name: jobs_volunteers; Type: TABLE DATA; Schema: public; Owner: matt
--

INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (1, 1, 6);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (2, 1, 10);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (3, 1, 12);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (4, 1, 13);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (5, 1, 16);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (6, 1, 19);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (7, 1, 20);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (8, 1, 23);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (9, 1, 24);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (10, 2, 1);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (11, 2, 7);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (12, 2, 15);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (13, 2, 17);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (14, 2, 18);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (15, 2, 22);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (16, 2, 25);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (17, 3, 2);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (18, 3, 5);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (19, 3, 8);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (20, 3, 9);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (21, 3, 10);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (22, 3, 11);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (23, 3, 13);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (24, 3, 14);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (25, 3, 18);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (26, 3, 19);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (27, 3, 20);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (28, 3, 21);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (29, 3, 22);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (30, 3, 24);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (31, 3, 27);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (32, 4, 2);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (33, 4, 3);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (34, 4, 4);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (35, 4, 6);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (36, 4, 11);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (37, 4, 16);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (38, 4, 20);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (39, 4, 21);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (40, 4, 26);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (41, 5, 3);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (42, 5, 5);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (43, 5, 14);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (44, 5, 24);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (45, 6, 5);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (46, 6, 9);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (47, 6, 11);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (48, 6, 17);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (49, 6, 21);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (50, 6, 22);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (51, 6, 25);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (52, 7, 1);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (53, 7, 3);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (54, 7, 4);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (55, 7, 7);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (56, 7, 9);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (57, 7, 10);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (58, 7, 12);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (59, 7, 16);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (60, 7, 17);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (61, 7, 23);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (62, 7, 25);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (63, 7, 26);
INSERT INTO public.jobs_volunteers (rowid, job_id, volunteer_id) VALUES (64, 7, 27);

--
-- Data for Name: volunteers; Type: TABLE DATA; Schema: public; Owner: matt
--

INSERT INTO public.volunteers (id, first_name, last_name) VALUES (1, 'Barry', 'Towne');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (2, 'Ethyl', 'Donnelly');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (3, 'Felipe', 'Breitenberg');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (4, 'Fred', 'Hettinger');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (5, 'Freeda', 'Koelpin');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (6, 'Guy', 'Considine');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (7, 'Gillian', 'Gerhold');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (8, 'Gloria', 'Williamson');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (9, 'Gordon', 'Kirlin');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (10, 'Isabell', 'Prosacco');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (11, 'Jacky', 'Renner');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (12, 'Kaitlyn', 'Tillman');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (13, 'Laverna', 'D''Amore');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (14, 'Lonnie', 'Kreiger');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (15, 'Maeve', 'Hahn');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (16, 'Marcia', 'Corkery');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (17, 'Melyssa', 'Boehm');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (18, 'Muriel', 'Metz');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (19, 'Nat', 'Conn');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (20, 'Orin', 'Bahringer');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (21, 'Pascale', 'Hayes');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (22, 'Phoebe', 'Collier');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (23, 'Rowena', 'Walsh');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (24, 'Sabryna', 'Schowalter');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (25, 'Sahil', 'Pacocha');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (26, 'Sanford', 'Toy');
INSERT INTO public.volunteers (id, first_name, last_name) VALUES (27, 'Viola', 'Wisozk');

--
-- Name: jobs_seq; Type: SEQUENCE SET; Schema: public; Owner: matt
--

SELECT pg_catalog.setval('public.jobs_seq', 1, false);


--
-- Name: jobs_volunteers_seq; Type: SEQUENCE SET; Schema: public; Owner: matt
--

SELECT pg_catalog.setval('public.jobs_volunteers_seq', 1, false);


--
-- Name: volunteers_seq; Type: SEQUENCE SET; Schema: public; Owner: matt
--

SELECT pg_catalog.setval('public.volunteers_seq', 1, true);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: matt
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: jobs_volunteers jobs_volunteers_pkey; Type: CONSTRAINT; Schema: public; Owner: matt
--

ALTER TABLE ONLY public.jobs_volunteers
    ADD CONSTRAINT jobs_volunteers_pkey PRIMARY KEY (rowid);


--
-- Name: volunteers volunteers_pkey; Type: CONSTRAINT; Schema: public; Owner: matt
--

ALTER TABLE ONLY public.volunteers
    ADD CONSTRAINT volunteers_pkey PRIMARY KEY (id);


--
-- Name: jobs_volunteers fkahhrjkbbuh8c7d8qxy9q57y6x; Type: FK CONSTRAINT; Schema: public; Owner: matt
--

ALTER TABLE ONLY public.jobs_volunteers
    ADD CONSTRAINT fkahhrjkbbuh8c7d8qxy9q57y6x FOREIGN KEY (job_id) REFERENCES public.jobs(id);


--
-- Name: volunteers fkb0a7bse7w9q6wwvdvp10t6nrk; Type: FK CONSTRAINT; Schema: public; Owner: matt
--

ALTER TABLE ONLY public.volunteers
    ADD CONSTRAINT fkb0a7bse7w9q6wwvdvp10t6nrk FOREIGN KEY (job_id) REFERENCES public.jobs(id);


--
-- Name: jobs_volunteers fkggvkqc597lsd2r31d1erlee8h; Type: FK CONSTRAINT; Schema: public; Owner: matt
--

ALTER TABLE ONLY public.jobs_volunteers
    ADD CONSTRAINT fkggvkqc597lsd2r31d1erlee8h FOREIGN KEY (volunteer_id) REFERENCES public.volunteers(id);


--
-- PostgreSQL database dump complete
--