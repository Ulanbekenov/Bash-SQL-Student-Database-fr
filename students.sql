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

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

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
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (50, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (51, 'Web Programming');
INSERT INTO public.courses VALUES (52, 'Database Systems');
INSERT INTO public.courses VALUES (53, 'Computer Networks');
INSERT INTO public.courses VALUES (54, 'SQL');
INSERT INTO public.courses VALUES (55, 'Machine Learning');
INSERT INTO public.courses VALUES (56, 'Computer Systems');
INSERT INTO public.courses VALUES (57, 'Web Applications');
INSERT INTO public.courses VALUES (58, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (59, 'Python');
INSERT INTO public.courses VALUES (60, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (61, 'Calculus');
INSERT INTO public.courses VALUES (62, 'Game Architecture');
INSERT INTO public.courses VALUES (63, 'Algorithms');
INSERT INTO public.courses VALUES (64, 'UNIX');
INSERT INTO public.courses VALUES (65, 'Server Administration');
INSERT INTO public.courses VALUES (66, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (63, 'Database Administration');
INSERT INTO public.majors VALUES (64, 'Web Development');
INSERT INTO public.majors VALUES (65, 'Data Science');
INSERT INTO public.majors VALUES (66, 'Network Engineering');
INSERT INTO public.majors VALUES (67, 'Computer Programming');
INSERT INTO public.majors VALUES (68, 'Game Design');
INSERT INTO public.majors VALUES (69, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (63, 50);
INSERT INTO public.majors_courses VALUES (64, 51);
INSERT INTO public.majors_courses VALUES (63, 52);
INSERT INTO public.majors_courses VALUES (65, 50);
INSERT INTO public.majors_courses VALUES (66, 53);
INSERT INTO public.majors_courses VALUES (63, 54);
INSERT INTO public.majors_courses VALUES (65, 55);
INSERT INTO public.majors_courses VALUES (66, 56);
INSERT INTO public.majors_courses VALUES (67, 53);
INSERT INTO public.majors_courses VALUES (63, 57);
INSERT INTO public.majors_courses VALUES (68, 58);
INSERT INTO public.majors_courses VALUES (65, 59);
INSERT INTO public.majors_courses VALUES (67, 60);
INSERT INTO public.majors_courses VALUES (69, 56);
INSERT INTO public.majors_courses VALUES (68, 61);
INSERT INTO public.majors_courses VALUES (64, 50);
INSERT INTO public.majors_courses VALUES (65, 61);
INSERT INTO public.majors_courses VALUES (64, 60);
INSERT INTO public.majors_courses VALUES (68, 62);
INSERT INTO public.majors_courses VALUES (69, 53);
INSERT INTO public.majors_courses VALUES (68, 63);
INSERT INTO public.majors_courses VALUES (69, 64);
INSERT INTO public.majors_courses VALUES (69, 65);
INSERT INTO public.majors_courses VALUES (67, 56);
INSERT INTO public.majors_courses VALUES (67, 59);
INSERT INTO public.majors_courses VALUES (66, 66);
INSERT INTO public.majors_courses VALUES (64, 57);
INSERT INTO public.majors_courses VALUES (66, 63);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (33, 'Rhea', 'Kellems', 63, 2.5);
INSERT INTO public.students VALUES (34, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (35, 'Kimberly', 'Whitley', 64, 3.8);
INSERT INTO public.students VALUES (36, 'Jimmy', 'Felipe', 63, 3.7);
INSERT INTO public.students VALUES (37, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (38, 'Casares', 'Hijo', 68, 4.0);
INSERT INTO public.students VALUES (39, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (40, 'Sterling', 'Boss', 68, 3.9);
INSERT INTO public.students VALUES (41, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (42, 'Kaija', 'Uronen', 68, 3.7);
INSERT INTO public.students VALUES (43, 'Faye', 'Conn', 68, 2.1);
INSERT INTO public.students VALUES (44, 'Efren', 'Reilly', 64, 3.9);
INSERT INTO public.students VALUES (45, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (46, 'Maxine', 'Hagenes', 63, 2.9);
INSERT INTO public.students VALUES (47, 'Larry', 'Saunders', 65, 2.2);
INSERT INTO public.students VALUES (48, 'Karl', 'Kuhar', 64, NULL);
INSERT INTO public.students VALUES (49, 'Lieke', 'Hazenveld', 68, 3.5);
INSERT INTO public.students VALUES (50, 'Obie', 'Hilpert', 64, NULL);
INSERT INTO public.students VALUES (51, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (52, 'Nathan', 'Turner', 63, 3.3);
INSERT INTO public.students VALUES (53, 'Gerald', 'Osiki', 65, 2.2);
INSERT INTO public.students VALUES (54, 'Vanya', 'Hassanah', 68, 4.0);
INSERT INTO public.students VALUES (55, 'Roxelana', 'Florescu', 63, 3.2);
INSERT INTO public.students VALUES (56, 'Helene', 'Parker', 65, 3.4);
INSERT INTO public.students VALUES (57, 'Mariana', 'Russel', 64, 1.8);
INSERT INTO public.students VALUES (58, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (59, 'Mehdi', 'Vandenberghe', 63, 1.9);
INSERT INTO public.students VALUES (60, 'Dejon', 'Howell', 64, 4.0);
INSERT INTO public.students VALUES (61, 'Aliya', 'Gulgowski', 69, 2.6);
INSERT INTO public.students VALUES (62, 'Ana', 'Tupajic', 65, 3.1);
INSERT INTO public.students VALUES (63, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 66, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 69, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 63, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

