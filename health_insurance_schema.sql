--
-- PostgreSQL database dump
--

\restrict t0HXjOFAivQpw1qvzS8hu0Lbggbl2p2nfrBGAgUpQTAr0JMa4IFQIlup7EHV24I

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-05-10 17:10:37

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 225 (class 1259 OID 98325)
-- Name: health_insurance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.health_insurance (
    "S_no" integer,
    age integer,
    sex text,
    weight integer,
    bmi numeric(10,1),
    hereditary_diseases text,
    no_of_dependents integer,
    smoker integer,
    city text,
    bloodpressure integer,
    diabetes integer,
    regular_ex integer,
    job_title text,
    claim numeric(10,1)
);


ALTER TABLE public.health_insurance OWNER TO postgres;

-- Completed on 2026-05-10 17:10:37

--
-- PostgreSQL database dump complete
--

\unrestrict t0HXjOFAivQpw1qvzS8hu0Lbggbl2p2nfrBGAgUpQTAr0JMa4IFQIlup7EHV24I

