--
-- PostgreSQL database dump
--

-- Dumped from database version 14.13 (Homebrew)
-- Dumped by pg_dump version 14.13 (Homebrew)

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

--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.ar_internal_metadata (key, value, created_at, updated_at) VALUES ('environment', 'development', '2025-03-03 16:11:05.919882', '2025-03-03 16:11:05.919883');


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.schema_migrations (version) VALUES ('20250303160934');
INSERT INTO public.schema_migrations (version) VALUES ('20250303180421');
INSERT INTO public.schema_migrations (version) VALUES ('20250305180652');


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tasks (id, title, start_time, end_time, description, created_at, updated_at, priority, required_time, reminder) VALUES (1, 'Gym', '2025-03-03 11:30:00', '2025-03-03 13:00:00', 'strenght training, chest and abs', '2025-03-03 16:55:41.252062', '2025-03-03 16:55:41.252062', NULL, NULL, NULL);
INSERT INTO public.tasks (id, title, start_time, end_time, description, created_at, updated_at, priority, required_time, reminder) VALUES (2, 'Work', '2025-03-03 13:00:00', '2025-03-03 15:00:00', 'drive school bus', '2025-03-03 17:00:22.91821', '2025-03-03 17:00:22.91821', NULL, NULL, NULL);
INSERT INTO public.tasks (id, title, start_time, end_time, description, created_at, updated_at, priority, required_time, reminder) VALUES (3, 'Study', '2025-03-03 15:00:00', '2025-03-03 17:00:00', 'apply to jobs, check emails, learn and study how to improve finances', '2025-03-03 17:02:24.784795', '2025-03-03 17:02:24.784795', NULL, NULL, NULL);
INSERT INTO public.tasks (id, title, start_time, end_time, description, created_at, updated_at, priority, required_time, reminder) VALUES (4, 'Code', '2025-03-03 17:00:00', '2025-03-03 20:00:00', 'prepare for job interviews, build projects, HackerRank/LeetCode', '2025-03-03 17:05:08.39589', '2025-03-03 17:05:08.39589', NULL, NULL, NULL);
INSERT INTO public.tasks (id, title, start_time, end_time, description, created_at, updated_at, priority, required_time, reminder) VALUES (5, 'Work', '2025-03-03 20:00:00', '2025-03-04 01:00:00', 'drive school bus', '2025-03-03 17:07:16.562412', '2025-03-03 17:07:16.562412', NULL, NULL, NULL);
INSERT INTO public.tasks (id, title, start_time, end_time, description, created_at, updated_at, priority, required_time, reminder) VALUES (6, 'Family', '2025-03-04 02:00:00', '2025-03-04 04:00:00', 'relax, eat dinner, and enjoy family time', '2025-03-03 17:09:08.347676', '2025-03-03 17:09:08.347676', NULL, NULL, NULL);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users (id, name, email, password_digest, created_at, updated_at) VALUES (1, 'bob', 'bob@hotmail.com', '$2a$12$e2z36hoWIB8GscbaqgTbcuqnG0skF.o76fBIpoojD8fbdT44CxoYi', '2025-03-03 18:17:20.419931', '2025-03-03 18:17:20.419931');


--
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tasks_id_seq', 35, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

