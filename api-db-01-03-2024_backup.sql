--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2 (Debian 15.2-1.pgdg110+1)
-- Dumped by pg_dump version 15.2 (Debian 15.2-1.pgdg110+1)

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
-- Name: descricao_tabelas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.descricao_tabelas (
    id bigint NOT NULL,
    codigo integer,
    nome character varying(20),
    descricao character varying(200),
    regra_de_calculo integer,
    observacao text,
    indexador character varying(10)
);


ALTER TABLE public.descricao_tabelas OWNER TO postgres;

--
-- Name: descricao_tabelas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.descricao_tabelas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.descricao_tabelas_id_seq OWNER TO postgres;

--
-- Name: descricao_tabelas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.descricao_tabelas_id_seq OWNED BY public.descricao_tabelas.id;


--
-- Name: ipca15; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ipca15 (
    id bigint NOT NULL,
    data timestamp with time zone,
    valor numeric
);


ALTER TABLE public.ipca15 OWNER TO postgres;

--
-- Name: ipca15_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ipca15_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ipca15_id_seq OWNER TO postgres;

--
-- Name: ipca15_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ipca15_id_seq OWNED BY public.ipca15.id;


--
-- Name: igpm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.igpm (
    id bigint DEFAULT nextval('public.ipca15_id_seq'::regclass) NOT NULL,
    data timestamp with time zone,
    valor numeric
);


ALTER TABLE public.igpm OWNER TO postgres;

--
-- Name: indexadores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.indexadores (
    id bigint NOT NULL,
    codigo integer,
    nome character varying(20),
    descricao character varying(100)
);


ALTER TABLE public.indexadores OWNER TO postgres;

--
-- Name: indexadores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.indexadores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.indexadores_id_seq OWNER TO postgres;

--
-- Name: indexadores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.indexadores_id_seq OWNED BY public.indexadores.id;


--
-- Name: inpc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inpc (
    id bigint NOT NULL,
    data timestamp with time zone,
    valor numeric
);


ALTER TABLE public.inpc OWNER TO postgres;

--
-- Name: inpc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inpc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inpc_id_seq OWNER TO postgres;

--
-- Name: inpc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inpc_id_seq OWNED BY public.inpc.id;


--
-- Name: ipca; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ipca (
    id bigint NOT NULL,
    data timestamp with time zone,
    valor numeric
);


ALTER TABLE public.ipca OWNER TO postgres;

--
-- Name: ipca_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ipca_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ipca_id_seq OWNER TO postgres;

--
-- Name: ipca_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ipca_id_seq OWNED BY public.ipca.id;


--
-- Name: logatualizacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logatualizacao (
    id bigint NOT NULL,
    codigo_tabela integer,
    indexador integer,
    data_atualizacao timestamp with time zone,
    processar integer
);


ALTER TABLE public.logatualizacao OWNER TO postgres;

--
-- Name: logatualizacao_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logatualizacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.logatualizacao_id_seq OWNER TO postgres;

--
-- Name: logatualizacao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logatualizacao_id_seq OWNED BY public.logatualizacao.id;


--
-- Name: regra_atualizacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.regra_atualizacao (
    id bigint NOT NULL,
    tipo integer,
    nome character varying(20),
    descricao text
);


ALTER TABLE public.regra_atualizacao OWNER TO postgres;

--
-- Name: regra_atualizacao_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.regra_atualizacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.regra_atualizacao_id_seq OWNER TO postgres;

--
-- Name: regra_atualizacao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.regra_atualizacao_id_seq OWNED BY public.regra_atualizacao.id;


--
-- Name: selic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.selic (
    id bigint NOT NULL,
    data timestamp with time zone,
    valor numeric
);


ALTER TABLE public.selic OWNER TO postgres;

--
-- Name: selic_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.selic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.selic_id_seq OWNER TO postgres;

--
-- Name: selic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.selic_id_seq OWNED BY public.selic.id;


--
-- Name: seliccopom; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seliccopom (
    id bigint NOT NULL,
    data timestamp with time zone,
    valor numeric
);


ALTER TABLE public.seliccopom OWNER TO postgres;

--
-- Name: seliccopom_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seliccopom_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seliccopom_id_seq OWNER TO postgres;

--
-- Name: seliccopom_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.seliccopom_id_seq OWNED BY public.seliccopom.id;


--
-- Name: serie_historica_moedas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.serie_historica_moedas (
    id bigint NOT NULL,
    vigencia character varying(20),
    moeda character varying(20),
    alteracao character varying(150),
    legislacao text
);


ALTER TABLE public.serie_historica_moedas OWNER TO postgres;

--
-- Name: serie_historica_moedas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.serie_historica_moedas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.serie_historica_moedas_id_seq OWNER TO postgres;

--
-- Name: serie_historica_moedas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.serie_historica_moedas_id_seq OWNED BY public.serie_historica_moedas.id;


--
-- Name: t200_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t200_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    indexador character varying(20),
    variacao_mensal numeric,
    numero_indice numeric,
    fator_vigente numeric,
    indice_correcao numeric
);


ALTER TABLE public.t200_tabela_pnep OWNER TO postgres;

--
-- Name: t200_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t200_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t200_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t200_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t200_tabela_pnep_id_seq OWNED BY public.t200_tabela_pnep.id;


--
-- Name: t202_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t202_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    indexador character varying(20),
    variacao_mensal numeric,
    numero_indice numeric,
    fator_vigente numeric,
    indice_correcao numeric
);


ALTER TABLE public.t202_tabela_pnep OWNER TO postgres;

--
-- Name: t202_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t202_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t202_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t202_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t202_tabela_pnep_id_seq OWNED BY public.t202_tabela_pnep.id;


--
-- Name: t204_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t204_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    indexador character varying(20),
    variacao_mensal numeric,
    numero_indice numeric,
    fator_vigente numeric,
    indice_correcao numeric
);


ALTER TABLE public.t204_tabela_pnep OWNER TO postgres;

--
-- Name: t204_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t204_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t204_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t204_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t204_tabela_pnep_id_seq OWNED BY public.t204_tabela_pnep.id;


--
-- Name: t206_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t206_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    indexador character varying(20),
    variacao_mensal numeric,
    numero_indice numeric,
    fator_vigente numeric,
    indice_correcao numeric
);


ALTER TABLE public.t206_tabela_pnep OWNER TO postgres;

--
-- Name: t206_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t206_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t206_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t206_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t206_tabela_pnep_id_seq OWNED BY public.t206_tabela_pnep.id;


--
-- Name: t208_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t208_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    indexador character varying(20),
    variacao_mensal numeric,
    numero_indice numeric,
    fator_vigente numeric,
    indice_correcao numeric
);


ALTER TABLE public.t208_tabela_pnep OWNER TO postgres;

--
-- Name: t208_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t208_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t208_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t208_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t208_tabela_pnep_id_seq OWNED BY public.t208_tabela_pnep.id;


--
-- Name: t210_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t210_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    indexador character varying(20),
    variacao_mensal numeric,
    numero_indice numeric,
    fator_vigente numeric,
    indice_correcao numeric
);


ALTER TABLE public.t210_tabela_pnep OWNER TO postgres;

--
-- Name: t210_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t210_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t210_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t210_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t210_tabela_pnep_id_seq OWNED BY public.t210_tabela_pnep.id;


--
-- Name: t212_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t212_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    indexador character varying(20),
    variacao_mensal numeric,
    numero_indice numeric,
    fator_vigente numeric,
    indice_correcao numeric
);


ALTER TABLE public.t212_tabela_pnep OWNER TO postgres;

--
-- Name: t212_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t212_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t212_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t212_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t212_tabela_pnep_id_seq OWNED BY public.t212_tabela_pnep.id;


--
-- Name: t214_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t214_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    indexador character varying(20),
    variacao_mensal numeric,
    numero_indice numeric,
    fator_vigente numeric,
    indice_correcao numeric
);


ALTER TABLE public.t214_tabela_pnep OWNER TO postgres;

--
-- Name: t214_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t214_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t214_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t214_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t214_tabela_pnep_id_seq OWNED BY public.t214_tabela_pnep.id;


--
-- Name: t216_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t216_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    indexador character varying(20),
    variacao_mensal numeric,
    numero_indice numeric,
    fator_vigente numeric,
    indice_correcao numeric
);


ALTER TABLE public.t216_tabela_pnep OWNER TO postgres;

--
-- Name: t216_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t216_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t216_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t216_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t216_tabela_pnep_id_seq OWNED BY public.t216_tabela_pnep.id;


--
-- Name: t218_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t218_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    indexador character varying(20),
    variacao_mensal numeric,
    numero_indice numeric,
    fator_vigente numeric,
    indice_correcao numeric
);


ALTER TABLE public.t218_tabela_pnep OWNER TO postgres;

--
-- Name: t218_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t218_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t218_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t218_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t218_tabela_pnep_id_seq OWNED BY public.t218_tabela_pnep.id;


--
-- Name: t220_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t220_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    indexador character varying(20),
    variacao_mensal numeric,
    numero_indice numeric,
    fator_vigente numeric,
    indice_correcao numeric
);


ALTER TABLE public.t220_tabela_pnep OWNER TO postgres;

--
-- Name: t220_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t220_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t220_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t220_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t220_tabela_pnep_id_seq OWNED BY public.t220_tabela_pnep.id;


--
-- Name: t222_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t222_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    indexador character varying(20),
    variacao_mensal numeric,
    numero_indice numeric,
    fator_vigente numeric,
    indice_correcao numeric
);


ALTER TABLE public.t222_tabela_pnep OWNER TO postgres;

--
-- Name: t222_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t222_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t222_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t222_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t222_tabela_pnep_id_seq OWNED BY public.t222_tabela_pnep.id;


--
-- Name: t224_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t224_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    indexador character varying(20),
    variacao_mensal numeric,
    numero_indice numeric,
    fator_vigente numeric,
    indice_correcao numeric
);


ALTER TABLE public.t224_tabela_pnep OWNER TO postgres;

--
-- Name: t224_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t224_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t224_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t224_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t224_tabela_pnep_id_seq OWNED BY public.t224_tabela_pnep.id;


--
-- Name: t226_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t226_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    indexador character varying(20),
    variacao_mensal numeric,
    numero_indice numeric,
    fator_vigente numeric,
    indice_correcao numeric
);


ALTER TABLE public.t226_tabela_pnep OWNER TO postgres;

--
-- Name: t226_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t226_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t226_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t226_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t226_tabela_pnep_id_seq OWNED BY public.t226_tabela_pnep.id;


--
-- Name: t228_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t228_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    indexador character varying(20),
    variacao_mensal numeric,
    numero_indice numeric,
    fator_vigente numeric,
    indice_correcao numeric
);


ALTER TABLE public.t228_tabela_pnep OWNER TO postgres;

--
-- Name: t228_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t228_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t228_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t228_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t228_tabela_pnep_id_seq OWNED BY public.t228_tabela_pnep.id;


--
-- Name: t230_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t230_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    indexador character varying(20),
    variacao_mensal numeric,
    numero_indice numeric,
    fator_vigente numeric,
    indice_correcao numeric
);


ALTER TABLE public.t230_tabela_pnep OWNER TO postgres;

--
-- Name: t230_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t230_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t230_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t230_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t230_tabela_pnep_id_seq OWNED BY public.t230_tabela_pnep.id;


--
-- Name: t232_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t232_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    indexador character varying(20),
    variacao_mensal numeric,
    numero_indice numeric,
    fator_vigente numeric,
    indice_correcao numeric
);


ALTER TABLE public.t232_tabela_pnep OWNER TO postgres;

--
-- Name: t232_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t232_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t232_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t232_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t232_tabela_pnep_id_seq OWNED BY public.t232_tabela_pnep.id;


--
-- Name: t234_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t234_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    indexador character varying(20),
    variacao_mensal numeric,
    numero_indice numeric,
    fator_vigente numeric,
    indice_correcao numeric
);


ALTER TABLE public.t234_tabela_pnep OWNER TO postgres;

--
-- Name: t234_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t234_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t234_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t234_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t234_tabela_pnep_id_seq OWNED BY public.t234_tabela_pnep.id;


--
-- Name: t236_tabela_pnep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t236_tabela_pnep (
    id bigint NOT NULL,
    data timestamp with time zone,
    selic numeric,
    selic_ac_mes_atualiza numeric,
    selic_ac_mensal numeric
);


ALTER TABLE public.t236_tabela_pnep OWNER TO postgres;

--
-- Name: t236_tabela_pnep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t236_tabela_pnep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t236_tabela_pnep_id_seq OWNER TO postgres;

--
-- Name: t236_tabela_pnep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t236_tabela_pnep_id_seq OWNED BY public.t236_tabela_pnep.id;


--
-- Name: t300_juros_poupanca; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t300_juros_poupanca (
    id bigint NOT NULL,
    data timestamp with time zone,
    meta_selic_copom numeric,
    taxa_mensal numeric
);


ALTER TABLE public.t300_juros_poupanca OWNER TO postgres;

--
-- Name: t300_juros_poupanca_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t300_juros_poupanca_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t300_juros_poupanca_id_seq OWNER TO postgres;

--
-- Name: t300_juros_poupanca_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t300_juros_poupanca_id_seq OWNED BY public.t300_juros_poupanca.id;


--
-- Name: t302_juros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t302_juros (
    id bigint NOT NULL,
    data timestamp with time zone,
    juros_mensal numeric,
    juros_acumulados numeric
);


ALTER TABLE public.t302_juros OWNER TO postgres;

--
-- Name: t302_juros_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t302_juros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t302_juros_id_seq OWNER TO postgres;

--
-- Name: t302_juros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t302_juros_id_seq OWNED BY public.t302_juros.id;


--
-- Name: t304_juros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t304_juros (
    id bigint NOT NULL,
    data timestamp with time zone,
    juros_mensal numeric,
    juros_acumulados numeric
);


ALTER TABLE public.t304_juros OWNER TO postgres;

--
-- Name: t304_juros_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t304_juros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t304_juros_id_seq OWNER TO postgres;

--
-- Name: t304_juros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t304_juros_id_seq OWNED BY public.t304_juros.id;


--
-- Name: t306_juros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t306_juros (
    id bigint NOT NULL,
    data timestamp with time zone,
    juros_mensal numeric,
    juros_acumulados numeric
);


ALTER TABLE public.t306_juros OWNER TO postgres;

--
-- Name: t306_juros_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t306_juros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t306_juros_id_seq OWNER TO postgres;

--
-- Name: t306_juros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t306_juros_id_seq OWNED BY public.t306_juros.id;


--
-- Name: t308_juros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t308_juros (
    id bigint NOT NULL,
    data timestamp with time zone,
    juros_mensal numeric,
    juros_acumulados numeric
);


ALTER TABLE public.t308_juros OWNER TO postgres;

--
-- Name: t308_juros_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t308_juros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t308_juros_id_seq OWNER TO postgres;

--
-- Name: t308_juros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t308_juros_id_seq OWNED BY public.t308_juros.id;


--
-- Name: t310_juros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t310_juros (
    id bigint NOT NULL,
    data timestamp with time zone,
    juros_mensal numeric,
    juros_acumulados numeric
);


ALTER TABLE public.t310_juros OWNER TO postgres;

--
-- Name: t310_juros_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t310_juros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t310_juros_id_seq OWNER TO postgres;

--
-- Name: t310_juros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t310_juros_id_seq OWNED BY public.t310_juros.id;


--
-- Name: tr; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tr (
    id bigint NOT NULL,
    data timestamp with time zone,
    valor numeric
);


ALTER TABLE public.tr OWNER TO postgres;

--
-- Name: tr_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tr_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tr_id_seq OWNER TO postgres;

--
-- Name: tr_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tr_id_seq OWNED BY public.tr.id;


--
-- Name: descricao_tabelas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.descricao_tabelas ALTER COLUMN id SET DEFAULT nextval('public.descricao_tabelas_id_seq'::regclass);


--
-- Name: indexadores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indexadores ALTER COLUMN id SET DEFAULT nextval('public.indexadores_id_seq'::regclass);


--
-- Name: inpc id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inpc ALTER COLUMN id SET DEFAULT nextval('public.inpc_id_seq'::regclass);


--
-- Name: ipca id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ipca ALTER COLUMN id SET DEFAULT nextval('public.ipca_id_seq'::regclass);


--
-- Name: ipca15 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ipca15 ALTER COLUMN id SET DEFAULT nextval('public.ipca15_id_seq'::regclass);


--
-- Name: logatualizacao id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logatualizacao ALTER COLUMN id SET DEFAULT nextval('public.logatualizacao_id_seq'::regclass);


--
-- Name: regra_atualizacao id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regra_atualizacao ALTER COLUMN id SET DEFAULT nextval('public.regra_atualizacao_id_seq'::regclass);


--
-- Name: selic id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.selic ALTER COLUMN id SET DEFAULT nextval('public.selic_id_seq'::regclass);


--
-- Name: seliccopom id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seliccopom ALTER COLUMN id SET DEFAULT nextval('public.seliccopom_id_seq'::regclass);


--
-- Name: serie_historica_moedas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.serie_historica_moedas ALTER COLUMN id SET DEFAULT nextval('public.serie_historica_moedas_id_seq'::regclass);


--
-- Name: t200_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t200_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t200_tabela_pnep_id_seq'::regclass);


--
-- Name: t202_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t202_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t202_tabela_pnep_id_seq'::regclass);


--
-- Name: t204_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t204_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t204_tabela_pnep_id_seq'::regclass);


--
-- Name: t206_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t206_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t206_tabela_pnep_id_seq'::regclass);


--
-- Name: t208_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t208_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t208_tabela_pnep_id_seq'::regclass);


--
-- Name: t210_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t210_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t210_tabela_pnep_id_seq'::regclass);


--
-- Name: t212_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t212_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t212_tabela_pnep_id_seq'::regclass);


--
-- Name: t214_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t214_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t214_tabela_pnep_id_seq'::regclass);


--
-- Name: t216_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t216_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t216_tabela_pnep_id_seq'::regclass);


--
-- Name: t218_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t218_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t218_tabela_pnep_id_seq'::regclass);


--
-- Name: t220_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t220_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t220_tabela_pnep_id_seq'::regclass);


--
-- Name: t222_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t222_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t222_tabela_pnep_id_seq'::regclass);


--
-- Name: t224_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t224_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t224_tabela_pnep_id_seq'::regclass);


--
-- Name: t226_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t226_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t226_tabela_pnep_id_seq'::regclass);


--
-- Name: t228_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t228_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t228_tabela_pnep_id_seq'::regclass);


--
-- Name: t230_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t230_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t230_tabela_pnep_id_seq'::regclass);


--
-- Name: t232_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t232_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t232_tabela_pnep_id_seq'::regclass);


--
-- Name: t234_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t234_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t234_tabela_pnep_id_seq'::regclass);


--
-- Name: t236_tabela_pnep id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t236_tabela_pnep ALTER COLUMN id SET DEFAULT nextval('public.t236_tabela_pnep_id_seq'::regclass);


--
-- Name: t300_juros_poupanca id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t300_juros_poupanca ALTER COLUMN id SET DEFAULT nextval('public.t300_juros_poupanca_id_seq'::regclass);


--
-- Name: t302_juros id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t302_juros ALTER COLUMN id SET DEFAULT nextval('public.t302_juros_id_seq'::regclass);


--
-- Name: t304_juros id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t304_juros ALTER COLUMN id SET DEFAULT nextval('public.t304_juros_id_seq'::regclass);


--
-- Name: t306_juros id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t306_juros ALTER COLUMN id SET DEFAULT nextval('public.t306_juros_id_seq'::regclass);


--
-- Name: t308_juros id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t308_juros ALTER COLUMN id SET DEFAULT nextval('public.t308_juros_id_seq'::regclass);


--
-- Name: t310_juros id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t310_juros ALTER COLUMN id SET DEFAULT nextval('public.t310_juros_id_seq'::regclass);


--
-- Name: tr id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tr ALTER COLUMN id SET DEFAULT nextval('public.tr_id_seq'::regclass);


--
-- Data for Name: descricao_tabelas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.descricao_tabelas (id, codigo, nome, descricao, regra_de_calculo, observacao, indexador) FROM stdin;
1	100	inpc	Tabela INPC	0	Índice nacional de preços ao consumidor	7
2	102	ipca	Tabela IPCA	0	Índice nacional de preços ao consumidor amplo	6
4	104	tr	Tabela TR	0	Taxa Referencial	8
8	202	t202_tabela_pnep	IPCA-E EC 113-2021-Nova-CJF	1	OBS: Se o valor original for de jan/89, observar: se for anterior ao dia 16 (até 15.01) estará expresso em cruzado (Cz$), \t\t\t\t\t\nentão o índice discriminado na tabela deverá ser dividido por mil. E for um valor posterior a 15.01 (a partir de 16.01), \t\t\t\t\t\nestará em cruzado novo (NCz$), já dividido por 1.000, portanto o índice já está correto.\t\t\t\t\t\n\t\t\t\t\t\nIndexadores:\t\t\t\t\t\n- ORTN de 10/1964 a 02/1986;\t\t\t\t\t\n- OTN (6,17019) de 03/1986 a 01/1989;\t\t\t\t\t\n- IPC (IBGE) de 01/1989 a 02/1989;\t\t\t\t\t\n- BTN de 03/1989 a 03/1990;\t\t\t\t\t\n- IPC (IBGE) de 03/1990 a 02/1991;\t\t\t\t\t\n- INPC  03/1991 a 11/1991;\t\t\t\t\t\n- IPCA série especial 12/1991;\t\t\t\t\t\n- UFIR de 01/1992 a 12/2000;\t\t\t\t\t\n- IPCA-E do ano de 2000 em 12/2000;\t\t\t\t\t\n- IPCA-E de 01/2001 até novembro/2021, visto que a partir de dez/2021 é pela taxa  Selic, conforme Emenda Constitucional nº 113/2021.\t\t\t\t\t\n	0
13	210	t210_tabela_pnep	TR DEZ/2013 IPCA-E JAN/2014 - SELIC	1	OBS: Se o valor original for de jan/89, observar: se for anterior ao dia 16 (até 15.01) estará expresso em cruzado (Cz$), \t\t\t\t\t\nentão o índice discriminado na tabela deverá ser dividido por mil. E for um valor posterior a 15.01 (a partir de 16.01), \t\t\t\t\t\nestará em cruzado novo (NCz$), já dividido por 1.000, portanto o índice já está correto.\t\t\t\t\t\n\t\t\t\t\t\n Indexadores:\t\t\t\t\t\n- ORTN de 10/1964 a 02/1986;\t\t\t\t\t\n- OTN (6,17019) de 03/1986 a 01/1989;\t\t\t\t\t\n- IPC (IBGE) de 01/1989 a 02/1989;\t\t\t\t\t\n- BTN de 03/1989 a 03/1990;\t\t\t\t\t\n- IPC (IBGE) de 03/1990 a 02/1991;\t\t\t\t\t\n- INPC  03/1991 a 11/1991;\t\t\t\t\t\n- IPCA série especial 12/1991;\t\t\t\t\t\n- UFIR de 01/1992 a 12/2000;\t\t\t\t\t\n- IPCA-E do ano de 2000 em 12/2000;\t\t\t\t\t\n- IPCA-e de jan/2001 a dez/2002;\t\t\t\t\t\n- SELIC de 01/2003 a 06/2009;\t\t\t\t\t\n- TR de jul/2009 a dez/20103;\t\t\t\t\t\n- IPCA-E de 01/2014 em diante.\t\t\t\t\t\n	0
16	112	igpm	Tabela IGP-M	0	 Índice geral de preços do mercado (IGP-M)	12
15	110	ipca15	Tabela IPCA-15	0	Índice nacional de preços ao consumidor-amplo (IPCA) - 15	11
10	204	t204_tabela_pnep	IPCA-E + SELIC 2003-2009	1	OBS: Se o valor original for de jan/89, observar: se for anterior ao dia 16 (até 15.01) estará expresso em cruzado (Cz$), \t\t\t\t\t\nentão o índice discriminado na tabela deverá ser dividido por mil. E for um valor posterior a 15.01 (a partir de 16.01), \t\t\t\t\t\nestará em cruzado novo (NCz$), já dividido por 1.000, portanto o índice já está correto.\t\t\t\t\t\n\t\t\t\t\t\n- ORTN de 10/1964 a 02/1986;\t\t\t\t\t\n- OTN (6,17019) de 03/1986 a 01/1989;\t\t\t\t\t\n- IPC (IBGE) de 01/1989 a 02/1989;\t\t\t\t\t\n- BTN de 03/1989 a 03/1990;\t\t\t\t\t\n- IPC (IBGE) de 03/1990 a 02/1991;\t\t\t\t\t\n- INPC  03/1991 a 11/1991;\t\t\t\t\t\n- IPCA série especial 12/1991;\t\t\t\t\t\n- UFIR de 01/1992 a 12/2000;\t\t\t\t\t\n- IPCA-E do ano de 2000 em 12/2000;\t\t\t\t\t\n- IPCA-E de 01/2001 a dez/2002;\t\t\t\t\t\n-SELIC de jan /2003 a jun/2009;\t\t\t\t\t\n- IPCA-E de jul/2009 em diante.\t\t\t\t\t\n	0
11	206	t206_tabela_pnep	TR DEZ/2013 - IPCA-E JAN/2014	1	OBS: Se o valor original for de jan/89, observar: se for anterior ao dia 16 (até 15.01) estará expresso em cruzado (Cz$), \t\t\t\t\t\nentão o índice discriminado na tabela deverá ser dividido por mil. E for um valor posterior a 15.01 (a partir de 16.01), \t\t\t\t\t\nestará em cruzado novo (NCz$), já dividido por 1.000, portanto o índice já está correto.\t\t\t\t\t\n\t\t\t\t\t\n Indexadores:\t\t\t\t\t\n- ORTN de 10/1964 a 02/1986;\t\t\t\t\t\n- OTN (6,17019) de 03/1986 a 01/1989;\t\t\t\t\t\n- IPC (IBGE) de 01/1989 a 02/1989;\t\t\t\t\t\n- BTN de 03/1989 a 03/1990;\t\t\t\t\t\n- IPC (IBGE) de 03/1990 a 02/1991;\t\t\t\t\t\n- INPC  03/1991 a 11/1991;\t\t\t\t\t\n- IPCA série especial 12/1991;\t\t\t\t\t\n- UFIR de 01/1992 a 12/2000;\t\t\t\t\t\n- IPCA-E do ano de 2000 em 12/2000;\t\t\t\t\t\n- IPCA-e de jan/2001 a jun/2009;\t\t\t\t\t\n- TR de jul/2009 a dez/20103;\t\t\t\t\t\n- IPCA-E de 01/2014 em diante.	0
12	208	t208_tabela_pnep	IPCA-E + SELIC 2003-2009 - EC113	1	OBS: Se o valor original for de jan/89, observar: se for anterior ao dia 16 (até 15.01) estará expresso em cruzado (Cz$), \t\t\t\t\t\nentão o índice discriminado na tabela deverá ser dividido por mil. E for um valor posterior a 15.01 (a partir de 16.01), \t\t\t\t\t\nestará em cruzado novo (NCz$), já dividido por 1.000, portanto o índice já está correto.\t\t\t\t\t\n\t\t\t\t\t\n- ORTN de 10/1964 a 02/1986;\t\t\t\t\t\n- OTN (6,17019) de 03/1986 a 01/1989;\t\t\t\t\t\n- IPC (IBGE) de 01/1989 a 02/1989;\t\t\t\t\t\n- BTN de 03/1989 a 03/1990;\t\t\t\t\t\n- IPC (IBGE) de 03/1990 a 02/1991;\t\t\t\t\t\n- INPC  03/1991 a 11/1991;\t\t\t\t\t\n- IPCA série especial 12/1991;\t\t\t\t\t\n- UFIR de 01/1992 a 12/2000;\t\t\t\t\t\n- IPCA-E do ano de 2000 em 12/2000;\t\t\t\t\t\n- IPCA-E de 01/2001 a dez/2002;\t\t\t\t\t\n-SELIC de jan /2003 a jun/2009;\t\t\t\t\t\n- IPCA-E de 07/2009 até novembro/2021, visto que a partir de dez/2021 é pela taxa  Selic, conforme Emenda Constitucional nº 113/2021.\t\t\t\t\t\n	0
9	236	t236_tabela_pnep	SELIC A PARTIR DE JAN/2022 - EC 113/2021	2	OBS: Apenas para devedora Fazenda Pública não será aplicado 1% no mês corrente e a Selic de dez/21 \t\t\t\nserá computada no mês de jan/22 e assim sucessivamente, conforme Manual de Cálculos do CJF.\t\t\t\n	0
14	212	t212_tabela_pnep	Tabela c.m. desapropriação	1	OBS: Se o valor original for de jan/89, observar: se for anterior ao dia 16 (até 15.01) estará expresso em cruzado (Cz$), \t\t\t\t\t\nentão o índice discriminado na tabela deverá ser dividido por mil. E for um valor posterior a 15.01 (a partir de 16.01), \t\t\t\t\t\nestará em cruzado novo (NCz$), já dividido por 1.000, portanto o índice já está correto.\t\t\t\t\t\n\t\t\t\t\t\nObservações\t\t\t\t\t\na) Indexadores\t\t\t\t\t\n- ORTN de 10/1964 a 02/1986\t\t\t\t\t\n- OTN (6,17019) de 03/1986 a 01/1989\t\t\t\t\t\n- IPC (IBGE) de 01/1989 a 02/1989\t\t\t\t\t\n- BTN de 03/1989 a 03/1990\t\t\t\t\t\n- IPC (IBGE) de 03/1990 a 02/1991\t\t\t\t\t\n- IPC (FGV) de 03/1991 a 12/1991\t\t\t\t\t\n- UFIR de 01/1992 a 12/2000\t\t\t\t\t\n- IPCA-E do ano de 2000 em 12/2000\t\t\t\t\t\n- IPCA-e de jan/2001 a jun/2009;\t\t\t\t\t\n- IPCA-E de 01/2001 a 02/2018\t\t\t\t\t\n	0
5	106	selic	Tabela SELIC	0	Taxa de juros Selic	9
6	108	seliccopom	Tabela SELIC Copom	0	Taxa de juros - Meta Selic definida pelo Copom	10
7	200	t200_tabela_pnep	Tabela c.m. cond. geral IPCA-E	1	OBS: Se o valor original for de jan/89, observar: se for anterior ao dia 16 (até 15.01) estará expresso em cruzado (Cz$), \t\t\t\t\t\nentão o índice discriminado na tabela deverá ser dividido por mil. E for um valor posterior a 15.01 (a partir de 16.01), \t\t\t\t\t\nestará em cruzado novo (NCz$), já dividido por 1.000, portanto o índice já está correto.\t\t\t\t\t\n\t\t\t\t\t\nIndexadores:\t\t\t\t\t\n- ORTN de 10/1964 a 02/1986;\t\t\t\t\t\n- OTN (6,17019) de 03/1986 a 01/1989;\t\t\t\t\t\n- IPC (IBGE) de 01/1989 a 02/1989;\t\t\t\t\t\n- BTN de 03/1989 a 03/1990;\t\t\t\t\t\n- IPC (IBGE) de 03/1990 a 02/1991;\t\t\t\t\t\n- INPC  03/1991 a 11/1991;\t\t\t\t\t\n- IPCA série especial 12/1991;\t\t\t\t\t\n- UFIR de 01/1992 a 12/2000;\t\t\t\t\t\n- IPCA-E do ano de 2000 em 12/2000;\t\t\t\t\t\n- IPCA-E de 01/2001 em diante.\t	0
\.


--
-- Data for Name: igpm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.igpm (id, data, valor) FROM stdin;
281	2024-02-01 00:00:00+00	0.789
\.


--
-- Data for Name: indexadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.indexadores (id, codigo, nome, descricao) FROM stdin;
1	1	ORTN	\N
2	2	OTN	\N
3	3	IPC	\N
4	4	BTN	\N
5	5	UFIR	\N
11	6	IPCA	433
13	11	IPCA-15	7478
12	10	SELIC-COPOM	432
9	9	SELIC	4390
8	8	TR	226
7	7	INPC	188
14	12	IGP-M	189
\.


--
-- Data for Name: inpc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inpc (id, data, valor) FROM stdin;
1	1979-04-01 00:00:00+00	3.45
2	1979-05-01 00:00:00+00	1.76
3	1979-06-01 00:00:00+00	3.0
4	1979-07-01 00:00:00+00	5.36
5	1979-08-01 00:00:00+00	5.79
6	1979-09-01 00:00:00+00	6.61
7	1979-10-01 00:00:00+00	5.06
8	1979-11-01 00:00:00+00	6.1
9	1979-12-01 00:00:00+00	4.51
10	1980-01-01 00:00:00+00	6.56
11	1980-02-01 00:00:00+00	4.15
12	1980-03-01 00:00:00+00	5.12
13	1980-04-01 00:00:00+00	4.85
14	1980-05-01 00:00:00+00	5.53
15	1980-06-01 00:00:00+00	5.52
16	1980-07-01 00:00:00+00	5.51
17	1980-08-01 00:00:00+00	5.15
18	1980-09-01 00:00:00+00	4.45
19	1980-10-01 00:00:00+00	9.65
20	1980-11-01 00:00:00+00	8.03
21	1980-12-01 00:00:00+00	6.8
22	1981-01-01 00:00:00+00	6.21
23	1981-02-01 00:00:00+00	6.05
24	1981-03-01 00:00:00+00	5.35
25	1981-04-01 00:00:00+00	6.54
26	1981-05-01 00:00:00+00	5.51
27	1981-06-01 00:00:00+00	5.07
28	1981-07-01 00:00:00+00	6.2
29	1981-08-01 00:00:00+00	6.12
30	1981-09-01 00:00:00+00	5.28
31	1981-10-01 00:00:00+00	4.62
32	1981-11-01 00:00:00+00	5.23
33	1981-12-01 00:00:00+00	5.69
34	1982-01-01 00:00:00+00	6.71
35	1982-02-01 00:00:00+00	6.58
36	1982-03-01 00:00:00+00	5.24
37	1982-04-01 00:00:00+00	5.65
38	1982-05-01 00:00:00+00	6.66
39	1982-06-01 00:00:00+00	7.14
40	1982-07-01 00:00:00+00	6.39
41	1982-08-01 00:00:00+00	5.57
42	1982-09-01 00:00:00+00	4.3
43	1982-10-01 00:00:00+00	3.91
44	1982-11-01 00:00:00+00	5.26
45	1982-12-01 00:00:00+00	8.19
46	1983-01-01 00:00:00+00	9.14
47	1983-02-01 00:00:00+00	8.04
48	1983-03-01 00:00:00+00	7.22
49	1983-04-01 00:00:00+00	6.57
50	1983-05-01 00:00:00+00	6.71
51	1983-06-01 00:00:00+00	10.83
52	1983-07-01 00:00:00+00	11.43
53	1983-08-01 00:00:00+00	9.85
54	1983-09-01 00:00:00+00	11.27
55	1983-10-01 00:00:00+00	10.1
56	1983-11-01 00:00:00+00	7.37
57	1983-12-01 00:00:00+00	8.34
58	1984-01-01 00:00:00+00	9.39
59	1984-02-01 00:00:00+00	9.74
60	1984-03-01 00:00:00+00	9.83
61	1984-04-01 00:00:00+00	9.52
62	1984-05-01 00:00:00+00	8.71
63	1984-06-01 00:00:00+00	9.96
64	1984-07-01 00:00:00+00	9.11
65	1984-08-01 00:00:00+00	8.57
66	1984-09-01 00:00:00+00	11.1
67	1984-10-01 00:00:00+00	10.49
68	1984-11-01 00:00:00+00	10.33
69	1984-12-01 00:00:00+00	11.62
70	1985-01-01 00:00:00+00	11.84
71	1985-02-01 00:00:00+00	10.95
72	1985-03-01 00:00:00+00	9.94
73	1985-04-01 00:00:00+00	8.58
74	1985-05-01 00:00:00+00	7.2
75	1985-06-01 00:00:00+00	8.33
76	1985-07-01 00:00:00+00	10.08
77	1985-08-01 00:00:00+00	11.61
78	1985-09-01 00:00:00+00	10.09
79	1985-10-01 00:00:00+00	10.25
80	1985-11-01 00:00:00+00	14.18
81	1985-12-01 00:00:00+00	15.75
82	1986-01-01 00:00:00+00	15.01
83	1986-02-01 00:00:00+00	12.46
84	1986-03-01 00:00:00+00	3.18
85	1986-04-01 00:00:00+00	0.43
86	1986-05-01 00:00:00+00	1.08
87	1986-06-01 00:00:00+00	0.97
88	1986-07-01 00:00:00+00	0.91
89	1986-08-01 00:00:00+00	1.43
90	1986-09-01 00:00:00+00	1.19
91	1986-10-01 00:00:00+00	1.43
92	1986-11-01 00:00:00+00	3.29
93	1986-12-01 00:00:00+00	7.27
94	1987-01-01 00:00:00+00	16.82
95	1987-02-01 00:00:00+00	13.94
96	1987-03-01 00:00:00+00	14.4
97	1987-04-01 00:00:00+00	20.96
98	1987-05-01 00:00:00+00	23.14
99	1987-06-01 00:00:00+00	21.3
100	1987-07-01 00:00:00+00	9.93
101	1987-08-01 00:00:00+00	5.09
102	1987-09-01 00:00:00+00	7.15
103	1987-10-01 00:00:00+00	10.88
104	1987-11-01 00:00:00+00	14.93
105	1987-12-01 00:00:00+00	13.97
106	1988-01-01 00:00:00+00	18.97
107	1988-02-01 00:00:00+00	15.81
108	1988-03-01 00:00:00+00	18.09
109	1988-04-01 00:00:00+00	18.33
110	1988-05-01 00:00:00+00	18.24
111	1988-06-01 00:00:00+00	22.28
112	1988-07-01 00:00:00+00	23.02
113	1988-08-01 00:00:00+00	20.63
114	1988-09-01 00:00:00+00	26.93
115	1988-10-01 00:00:00+00	26.69
116	1988-11-01 00:00:00+00	28.15
117	1988-12-01 00:00:00+00	28.43
118	1989-01-01 00:00:00+00	35.48
119	1989-02-01 00:00:00+00	16.35
120	1989-03-01 00:00:00+00	5.9
121	1989-04-01 00:00:00+00	8.06
122	1989-05-01 00:00:00+00	16.67
123	1989-06-01 00:00:00+00	29.4
124	1989-07-01 00:00:00+00	27.4
125	1989-08-01 00:00:00+00	33.18
126	1989-09-01 00:00:00+00	36.35
127	1989-10-01 00:00:00+00	38.76
128	1989-11-01 00:00:00+00	48.47
129	1989-12-01 00:00:00+00	51.28
130	1990-01-01 00:00:00+00	68.19
131	1990-02-01 00:00:00+00	73.99
132	1990-03-01 00:00:00+00	82.18
133	1990-04-01 00:00:00+00	14.67
134	1990-05-01 00:00:00+00	7.31
135	1990-06-01 00:00:00+00	11.64
136	1990-07-01 00:00:00+00	12.62
137	1990-08-01 00:00:00+00	12.18
138	1990-09-01 00:00:00+00	14.26
139	1990-10-01 00:00:00+00	14.43
140	1990-11-01 00:00:00+00	16.92
141	1990-12-01 00:00:00+00	19.14
142	1991-01-01 00:00:00+00	20.95
143	1991-02-01 00:00:00+00	20.2
144	1991-03-01 00:00:00+00	11.79
145	1991-04-01 00:00:00+00	5.01
146	1991-05-01 00:00:00+00	6.68
147	1991-06-01 00:00:00+00	10.83
148	1991-07-01 00:00:00+00	12.14
149	1991-08-01 00:00:00+00	15.62
150	1991-09-01 00:00:00+00	15.62
151	1991-10-01 00:00:00+00	21.08
152	1991-11-01 00:00:00+00	26.48
153	1991-12-01 00:00:00+00	24.15
154	1992-01-01 00:00:00+00	25.92
155	1992-02-01 00:00:00+00	24.48
156	1992-03-01 00:00:00+00	21.62
157	1992-04-01 00:00:00+00	20.84
158	1992-05-01 00:00:00+00	24.5
159	1992-06-01 00:00:00+00	20.85
160	1992-07-01 00:00:00+00	22.08
161	1992-08-01 00:00:00+00	22.38
162	1992-09-01 00:00:00+00	23.98
163	1992-10-01 00:00:00+00	26.07
164	1992-11-01 00:00:00+00	22.89
165	1992-12-01 00:00:00+00	25.58
166	1993-01-01 00:00:00+00	28.77
167	1993-02-01 00:00:00+00	24.79
168	1993-03-01 00:00:00+00	27.58
169	1993-04-01 00:00:00+00	28.37
170	1993-05-01 00:00:00+00	26.78
171	1993-06-01 00:00:00+00	30.37
172	1993-07-01 00:00:00+00	31.01
173	1993-08-01 00:00:00+00	33.34
174	1993-09-01 00:00:00+00	35.63
175	1993-10-01 00:00:00+00	34.12
176	1993-11-01 00:00:00+00	36.0
177	1993-12-01 00:00:00+00	37.73
178	1994-01-01 00:00:00+00	41.32
179	1994-02-01 00:00:00+00	40.57
180	1994-03-01 00:00:00+00	43.08
181	1994-04-01 00:00:00+00	42.86
182	1994-05-01 00:00:00+00	42.73
183	1994-06-01 00:00:00+00	48.24
184	1994-07-01 00:00:00+00	7.75
185	1994-08-01 00:00:00+00	1.85
186	1994-09-01 00:00:00+00	1.4
187	1994-10-01 00:00:00+00	2.82
188	1994-11-01 00:00:00+00	2.96
189	1994-12-01 00:00:00+00	1.7
190	1995-01-01 00:00:00+00	1.44
191	1995-02-01 00:00:00+00	1.01
192	1995-03-01 00:00:00+00	1.62
193	1995-04-01 00:00:00+00	2.49
194	1995-05-01 00:00:00+00	2.1
195	1995-06-01 00:00:00+00	2.18
196	1995-07-01 00:00:00+00	2.46
197	1995-08-01 00:00:00+00	1.02
198	1995-09-01 00:00:00+00	1.17
199	1995-10-01 00:00:00+00	1.4
200	1995-11-01 00:00:00+00	1.51
201	1995-12-01 00:00:00+00	1.65
202	1996-01-01 00:00:00+00	1.46
203	1996-02-01 00:00:00+00	0.71
204	1996-03-01 00:00:00+00	0.29
205	1996-04-01 00:00:00+00	0.93
206	1996-05-01 00:00:00+00	1.28
207	1996-06-01 00:00:00+00	1.33
208	1996-07-01 00:00:00+00	1.2
209	1996-08-01 00:00:00+00	0.5
210	1996-09-01 00:00:00+00	0.02
211	1996-10-01 00:00:00+00	0.38
212	1996-11-01 00:00:00+00	0.34
213	1996-12-01 00:00:00+00	0.33
214	1997-01-01 00:00:00+00	0.81
215	1997-02-01 00:00:00+00	0.45
216	1997-03-01 00:00:00+00	0.68
217	1997-04-01 00:00:00+00	0.6
218	1997-05-01 00:00:00+00	0.11
219	1997-06-01 00:00:00+00	0.35
220	1997-07-01 00:00:00+00	0.18
221	1997-08-01 00:00:00+00	-0.03
222	1997-09-01 00:00:00+00	0.1
223	1997-10-01 00:00:00+00	0.29
224	1997-11-01 00:00:00+00	0.15
225	1997-12-01 00:00:00+00	0.57
226	1998-01-01 00:00:00+00	0.85
227	1998-02-01 00:00:00+00	0.54
228	1998-03-01 00:00:00+00	0.49
229	1998-04-01 00:00:00+00	0.45
230	1998-05-01 00:00:00+00	0.72
231	1998-06-01 00:00:00+00	0.15
232	1998-07-01 00:00:00+00	-0.28
233	1998-08-01 00:00:00+00	-0.49
234	1998-09-01 00:00:00+00	-0.31
235	1998-10-01 00:00:00+00	0.11
236	1998-11-01 00:00:00+00	-0.18
237	1998-12-01 00:00:00+00	0.42
238	1999-01-01 00:00:00+00	0.65
239	1999-02-01 00:00:00+00	1.29
240	1999-03-01 00:00:00+00	1.28
241	1999-04-01 00:00:00+00	0.47
242	1999-05-01 00:00:00+00	0.05
243	1999-06-01 00:00:00+00	0.07
244	1999-07-01 00:00:00+00	0.74
245	1999-08-01 00:00:00+00	0.55
246	1999-09-01 00:00:00+00	0.39
247	1999-10-01 00:00:00+00	0.96
248	1999-11-01 00:00:00+00	0.94
249	1999-12-01 00:00:00+00	0.74
250	2000-01-01 00:00:00+00	0.61
251	2000-02-01 00:00:00+00	0.05
252	2000-03-01 00:00:00+00	0.13
253	2000-04-01 00:00:00+00	0.09
254	2000-05-01 00:00:00+00	-0.05
255	2000-06-01 00:00:00+00	0.3
256	2000-07-01 00:00:00+00	1.39
257	2000-08-01 00:00:00+00	1.21
258	2000-09-01 00:00:00+00	0.43
259	2000-10-01 00:00:00+00	0.16
260	2000-11-01 00:00:00+00	0.29
261	2000-12-01 00:00:00+00	0.55
262	2001-01-01 00:00:00+00	0.77
263	2001-02-01 00:00:00+00	0.49
264	2001-03-01 00:00:00+00	0.48
265	2001-04-01 00:00:00+00	0.84
266	2001-05-01 00:00:00+00	0.57
267	2001-06-01 00:00:00+00	0.6
268	2001-07-01 00:00:00+00	1.11
269	2001-08-01 00:00:00+00	0.79
270	2001-09-01 00:00:00+00	0.44
271	2001-10-01 00:00:00+00	0.94
272	2001-11-01 00:00:00+00	1.29
273	2001-12-01 00:00:00+00	0.74
274	2002-01-01 00:00:00+00	1.07
275	2002-02-01 00:00:00+00	0.31
276	2002-03-01 00:00:00+00	0.62
277	2002-04-01 00:00:00+00	0.68
278	2002-05-01 00:00:00+00	0.09
279	2002-06-01 00:00:00+00	0.61
280	2002-07-01 00:00:00+00	1.15
281	2002-08-01 00:00:00+00	0.86
282	2002-09-01 00:00:00+00	0.83
283	2002-10-01 00:00:00+00	1.57
284	2002-11-01 00:00:00+00	3.39
285	2002-12-01 00:00:00+00	2.7
286	2003-01-01 00:00:00+00	2.47
287	2003-02-01 00:00:00+00	1.46
288	2003-03-01 00:00:00+00	1.37
289	2003-04-01 00:00:00+00	1.38
290	2003-05-01 00:00:00+00	0.99
291	2003-06-01 00:00:00+00	-0.06
292	2003-07-01 00:00:00+00	0.04
293	2003-08-01 00:00:00+00	0.18
294	2003-09-01 00:00:00+00	0.82
295	2003-10-01 00:00:00+00	0.39
296	2003-11-01 00:00:00+00	0.37
297	2003-12-01 00:00:00+00	0.54
298	2004-01-01 00:00:00+00	0.83
299	2004-02-01 00:00:00+00	0.39
300	2004-03-01 00:00:00+00	0.57
301	2004-04-01 00:00:00+00	0.41
302	2004-05-01 00:00:00+00	0.4
303	2004-06-01 00:00:00+00	0.5
304	2004-07-01 00:00:00+00	0.73
305	2004-08-01 00:00:00+00	0.5
306	2004-09-01 00:00:00+00	0.17
307	2004-10-01 00:00:00+00	0.17
308	2004-11-01 00:00:00+00	0.44
309	2004-12-01 00:00:00+00	0.86
310	2005-01-01 00:00:00+00	0.57
311	2005-02-01 00:00:00+00	0.44
312	2005-03-01 00:00:00+00	0.73
313	2005-04-01 00:00:00+00	0.91
314	2005-05-01 00:00:00+00	0.7
315	2005-06-01 00:00:00+00	-0.11
316	2005-07-01 00:00:00+00	0.03
317	2005-08-01 00:00:00+00	0.0
318	2005-09-01 00:00:00+00	0.15
319	2005-10-01 00:00:00+00	0.58
320	2005-11-01 00:00:00+00	0.54
321	2005-12-01 00:00:00+00	0.4
322	2006-01-01 00:00:00+00	0.38
323	2006-02-01 00:00:00+00	0.23
324	2006-03-01 00:00:00+00	0.27
325	2006-04-01 00:00:00+00	0.12
326	2006-05-01 00:00:00+00	0.13
327	2006-06-01 00:00:00+00	-0.07
328	2006-07-01 00:00:00+00	0.11
329	2006-08-01 00:00:00+00	-0.02
330	2006-09-01 00:00:00+00	0.16
331	2006-10-01 00:00:00+00	0.43
332	2006-11-01 00:00:00+00	0.42
333	2006-12-01 00:00:00+00	0.62
334	2007-01-01 00:00:00+00	0.49
335	2007-02-01 00:00:00+00	0.42
336	2007-03-01 00:00:00+00	0.44
337	2007-04-01 00:00:00+00	0.26
338	2007-05-01 00:00:00+00	0.26
339	2007-06-01 00:00:00+00	0.31
340	2007-07-01 00:00:00+00	0.32
341	2007-08-01 00:00:00+00	0.59
342	2007-09-01 00:00:00+00	0.25
343	2007-10-01 00:00:00+00	0.3
344	2007-11-01 00:00:00+00	0.43
345	2007-12-01 00:00:00+00	0.97
346	2008-01-01 00:00:00+00	0.69
347	2008-02-01 00:00:00+00	0.48
348	2008-03-01 00:00:00+00	0.51
349	2008-04-01 00:00:00+00	0.64
350	2008-05-01 00:00:00+00	0.96
351	2008-06-01 00:00:00+00	0.91
352	2008-07-01 00:00:00+00	0.58
353	2008-08-01 00:00:00+00	0.21
354	2008-09-01 00:00:00+00	0.15
355	2008-10-01 00:00:00+00	0.5
356	2008-11-01 00:00:00+00	0.38
357	2008-12-01 00:00:00+00	0.29
358	2009-01-01 00:00:00+00	0.64
359	2009-02-01 00:00:00+00	0.31
360	2009-03-01 00:00:00+00	0.2
361	2009-04-01 00:00:00+00	0.55
362	2009-05-01 00:00:00+00	0.6
363	2009-06-01 00:00:00+00	0.42
364	2009-07-01 00:00:00+00	0.23
365	2009-08-01 00:00:00+00	0.08
366	2009-09-01 00:00:00+00	0.16
367	2009-10-01 00:00:00+00	0.24
368	2009-11-01 00:00:00+00	0.37
369	2009-12-01 00:00:00+00	0.24
370	2010-01-01 00:00:00+00	0.88
371	2010-02-01 00:00:00+00	0.7
372	2010-03-01 00:00:00+00	0.71
373	2010-04-01 00:00:00+00	0.73
374	2010-05-01 00:00:00+00	0.43
375	2010-06-01 00:00:00+00	-0.11
376	2010-07-01 00:00:00+00	-0.07
377	2010-08-01 00:00:00+00	-0.07
378	2010-09-01 00:00:00+00	0.54
379	2010-10-01 00:00:00+00	0.92
380	2010-11-01 00:00:00+00	1.03
381	2010-12-01 00:00:00+00	0.6
382	2011-01-01 00:00:00+00	0.94
383	2011-02-01 00:00:00+00	0.54
384	2011-03-01 00:00:00+00	0.66
385	2011-04-01 00:00:00+00	0.72
386	2011-05-01 00:00:00+00	0.57
387	2011-06-01 00:00:00+00	0.22
388	2011-07-01 00:00:00+00	0.0
389	2011-08-01 00:00:00+00	0.42
390	2011-09-01 00:00:00+00	0.45
391	2011-10-01 00:00:00+00	0.32
392	2011-11-01 00:00:00+00	0.57
393	2011-12-01 00:00:00+00	0.51
394	2012-01-01 00:00:00+00	0.51
395	2012-02-01 00:00:00+00	0.39
396	2012-03-01 00:00:00+00	0.18
397	2012-04-01 00:00:00+00	0.64
398	2012-05-01 00:00:00+00	0.55
399	2012-06-01 00:00:00+00	0.26
400	2012-07-01 00:00:00+00	0.43
401	2012-08-01 00:00:00+00	0.45
402	2012-09-01 00:00:00+00	0.63
403	2012-10-01 00:00:00+00	0.71
404	2012-11-01 00:00:00+00	0.54
405	2012-12-01 00:00:00+00	0.74
406	2013-01-01 00:00:00+00	0.92
407	2013-02-01 00:00:00+00	0.52
408	2013-03-01 00:00:00+00	0.6
409	2013-04-01 00:00:00+00	0.59
410	2013-05-01 00:00:00+00	0.35
411	2013-06-01 00:00:00+00	0.28
412	2013-07-01 00:00:00+00	-0.13
413	2013-08-01 00:00:00+00	0.16
414	2013-09-01 00:00:00+00	0.27
415	2013-10-01 00:00:00+00	0.61
416	2013-11-01 00:00:00+00	0.54
417	2013-12-01 00:00:00+00	0.72
418	2014-01-01 00:00:00+00	0.63
419	2014-02-01 00:00:00+00	0.64
420	2014-03-01 00:00:00+00	0.82
421	2014-04-01 00:00:00+00	0.78
422	2014-05-01 00:00:00+00	0.6
423	2014-06-01 00:00:00+00	0.26
424	2014-07-01 00:00:00+00	0.13
425	2014-08-01 00:00:00+00	0.18
426	2014-09-01 00:00:00+00	0.49
427	2014-10-01 00:00:00+00	0.38
428	2014-11-01 00:00:00+00	0.53
429	2014-12-01 00:00:00+00	0.62
430	2015-01-01 00:00:00+00	1.48
431	2015-02-01 00:00:00+00	1.16
432	2015-03-01 00:00:00+00	1.51
433	2015-04-01 00:00:00+00	0.71
434	2015-05-01 00:00:00+00	0.99
435	2015-06-01 00:00:00+00	0.77
436	2015-07-01 00:00:00+00	0.58
437	2015-08-01 00:00:00+00	0.25
438	2015-09-01 00:00:00+00	0.51
439	2015-10-01 00:00:00+00	0.77
440	2015-11-01 00:00:00+00	1.11
441	2015-12-01 00:00:00+00	0.9
442	2016-01-01 00:00:00+00	1.51
443	2016-02-01 00:00:00+00	0.95
444	2016-03-01 00:00:00+00	0.44
445	2016-04-01 00:00:00+00	0.64
446	2016-05-01 00:00:00+00	0.98
447	2016-06-01 00:00:00+00	0.47
448	2016-07-01 00:00:00+00	0.64
449	2016-08-01 00:00:00+00	0.31
450	2016-09-01 00:00:00+00	0.08
451	2016-10-01 00:00:00+00	0.17
452	2016-11-01 00:00:00+00	0.07
453	2016-12-01 00:00:00+00	0.14
454	2017-01-01 00:00:00+00	0.42
455	2017-02-01 00:00:00+00	0.24
456	2017-03-01 00:00:00+00	0.32
457	2017-04-01 00:00:00+00	0.08
458	2017-05-01 00:00:00+00	0.36
459	2017-06-01 00:00:00+00	-0.3
460	2017-07-01 00:00:00+00	0.17
461	2017-08-01 00:00:00+00	-0.03
462	2017-09-01 00:00:00+00	-0.02
463	2017-10-01 00:00:00+00	0.37
464	2017-11-01 00:00:00+00	0.18
465	2017-12-01 00:00:00+00	0.26
466	2018-01-01 00:00:00+00	0.23
467	2018-02-01 00:00:00+00	0.18
468	2018-03-01 00:00:00+00	0.07
469	2018-04-01 00:00:00+00	0.21
470	2018-05-01 00:00:00+00	0.43
471	2018-06-01 00:00:00+00	1.43
472	2018-07-01 00:00:00+00	0.25
473	2018-08-01 00:00:00+00	0.0
474	2018-09-01 00:00:00+00	0.3
475	2018-10-01 00:00:00+00	0.4
476	2018-11-01 00:00:00+00	-0.25
477	2018-12-01 00:00:00+00	0.14
478	2019-01-01 00:00:00+00	0.36
479	2019-02-01 00:00:00+00	0.54
480	2019-03-01 00:00:00+00	0.77
481	2019-04-01 00:00:00+00	0.6
482	2019-05-01 00:00:00+00	0.15
483	2019-06-01 00:00:00+00	0.01
484	2019-07-01 00:00:00+00	0.1
485	2019-08-01 00:00:00+00	0.12
486	2019-09-01 00:00:00+00	-0.05
487	2019-10-01 00:00:00+00	0.04
488	2019-11-01 00:00:00+00	0.54
489	2019-12-01 00:00:00+00	1.22
490	2020-01-01 00:00:00+00	0.19
491	2020-02-01 00:00:00+00	0.17
492	2020-03-01 00:00:00+00	0.18
493	2020-04-01 00:00:00+00	-0.23
494	2020-05-01 00:00:00+00	-0.25
495	2020-06-01 00:00:00+00	0.3
496	2020-07-01 00:00:00+00	0.44
497	2020-08-01 00:00:00+00	0.36
498	2020-09-01 00:00:00+00	0.87
499	2020-10-01 00:00:00+00	0.89
500	2020-11-01 00:00:00+00	0.95
501	2020-12-01 00:00:00+00	1.46
502	2021-01-01 00:00:00+00	0.27
503	2021-02-01 00:00:00+00	0.82
504	2021-03-01 00:00:00+00	0.86
505	2021-04-01 00:00:00+00	0.38
506	2021-05-01 00:00:00+00	0.96
507	2021-06-01 00:00:00+00	0.6
508	2021-07-01 00:00:00+00	1.02
509	2021-08-01 00:00:00+00	0.88
510	2021-09-01 00:00:00+00	1.2
511	2021-10-01 00:00:00+00	1.16
512	2021-11-01 00:00:00+00	0.84
513	2021-12-01 00:00:00+00	0.73
514	2022-01-01 00:00:00+00	0.67
515	2022-02-01 00:00:00+00	1.0
516	2022-03-01 00:00:00+00	1.71
517	2022-04-01 00:00:00+00	1.04
518	2022-05-01 00:00:00+00	0.45
519	2022-06-01 00:00:00+00	0.62
520	2022-07-01 00:00:00+00	-0.6
521	2022-08-01 00:00:00+00	-0.31
522	2022-09-01 00:00:00+00	-0.32
523	2022-10-01 00:00:00+00	0.47
524	2022-11-01 00:00:00+00	0.38
525	2022-12-01 00:00:00+00	0.69
526	2023-01-01 00:00:00+00	0.46
527	2023-02-01 00:00:00+00	0.77
528	2023-03-01 00:00:00+00	0.64
529	2023-04-01 00:00:00+00	0.53
530	2023-05-01 00:00:00+00	0.36
531	2023-06-01 00:00:00+00	-0.1
536	2023-07-01 00:00:00+00	-0.09
537	2023-08-01 00:00:00+00	0.20
538	2023-09-01 00:00:00+00	0.11
539	2023-10-01 00:00:00+00	0.12
540	2023-11-01 00:00:00+00	0.10
541	2023-12-01 00:00:00+00	0.55
542	2024-01-01 00:00:00+00	0.57
543	2024-01-01 00:00:00+00	0.57
544	2024-01-01 00:00:00+00	0.57
\.


--
-- Data for Name: ipca; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ipca (id, data, valor) FROM stdin;
1	1980-01-01 00:00:00+00	6.62
2	1980-02-01 00:00:00+00	4.62
3	1980-03-01 00:00:00+00	6.04
4	1980-04-01 00:00:00+00	5.29
5	1980-05-01 00:00:00+00	5.7
6	1980-06-01 00:00:00+00	5.31
7	1980-07-01 00:00:00+00	5.55
8	1980-08-01 00:00:00+00	4.95
9	1980-09-01 00:00:00+00	4.23
10	1980-10-01 00:00:00+00	9.48
11	1980-11-01 00:00:00+00	6.67
12	1980-12-01 00:00:00+00	6.61
13	1981-01-01 00:00:00+00	6.84
14	1981-02-01 00:00:00+00	6.4
15	1981-03-01 00:00:00+00	4.97
16	1981-04-01 00:00:00+00	6.46
17	1981-05-01 00:00:00+00	5.56
18	1981-06-01 00:00:00+00	5.52
19	1981-07-01 00:00:00+00	6.26
20	1981-08-01 00:00:00+00	5.5
21	1981-09-01 00:00:00+00	5.26
22	1981-10-01 00:00:00+00	5.08
23	1981-11-01 00:00:00+00	5.27
24	1981-12-01 00:00:00+00	5.93
25	1982-01-01 00:00:00+00	6.97
26	1982-02-01 00:00:00+00	6.64
27	1982-03-01 00:00:00+00	5.71
28	1982-04-01 00:00:00+00	5.89
29	1982-05-01 00:00:00+00	6.66
30	1982-06-01 00:00:00+00	7.1
31	1982-07-01 00:00:00+00	6.36
32	1982-08-01 00:00:00+00	5.97
33	1982-09-01 00:00:00+00	5.08
34	1982-10-01 00:00:00+00	4.44
35	1982-11-01 00:00:00+00	5.29
36	1982-12-01 00:00:00+00	7.81
37	1983-01-01 00:00:00+00	8.64
38	1983-02-01 00:00:00+00	7.86
39	1983-03-01 00:00:00+00	7.34
40	1983-04-01 00:00:00+00	6.58
41	1983-05-01 00:00:00+00	6.48
42	1983-06-01 00:00:00+00	9.88
43	1983-07-01 00:00:00+00	10.08
44	1983-08-01 00:00:00+00	9.11
45	1983-09-01 00:00:00+00	10.3
46	1983-10-01 00:00:00+00	8.87
47	1983-11-01 00:00:00+00	7.38
48	1983-12-01 00:00:00+00	8.68
49	1984-01-01 00:00:00+00	9.67
50	1984-02-01 00:00:00+00	9.5
51	1984-03-01 00:00:00+00	8.94
52	1984-04-01 00:00:00+00	9.54
53	1984-05-01 00:00:00+00	9.05
54	1984-06-01 00:00:00+00	10.08
55	1984-07-01 00:00:00+00	9.72
56	1984-08-01 00:00:00+00	9.35
57	1984-09-01 00:00:00+00	11.75
58	1984-10-01 00:00:00+00	10.44
59	1984-11-01 00:00:00+00	10.53
60	1984-12-01 00:00:00+00	11.98
61	1985-01-01 00:00:00+00	11.76
62	1985-02-01 00:00:00+00	10.87
63	1985-03-01 00:00:00+00	10.16
64	1985-04-01 00:00:00+00	8.2
65	1985-05-01 00:00:00+00	7.2
66	1985-06-01 00:00:00+00	8.49
67	1985-07-01 00:00:00+00	10.31
68	1985-08-01 00:00:00+00	12.05
69	1985-09-01 00:00:00+00	11.12
70	1985-10-01 00:00:00+00	10.62
71	1985-11-01 00:00:00+00	13.97
72	1985-12-01 00:00:00+00	15.07
73	1986-01-01 00:00:00+00	14.37
74	1986-02-01 00:00:00+00	12.72
75	1986-03-01 00:00:00+00	4.77
76	1986-04-01 00:00:00+00	0.78
77	1986-05-01 00:00:00+00	1.4
78	1986-06-01 00:00:00+00	1.27
79	1986-07-01 00:00:00+00	1.71
80	1986-08-01 00:00:00+00	3.55
81	1986-09-01 00:00:00+00	1.72
82	1986-10-01 00:00:00+00	1.9
83	1986-11-01 00:00:00+00	5.45
84	1986-12-01 00:00:00+00	11.65
85	1987-01-01 00:00:00+00	13.21
86	1987-02-01 00:00:00+00	12.64
87	1987-03-01 00:00:00+00	16.37
88	1987-04-01 00:00:00+00	19.1
89	1987-05-01 00:00:00+00	21.45
90	1987-06-01 00:00:00+00	19.71
91	1987-07-01 00:00:00+00	9.21
92	1987-08-01 00:00:00+00	4.87
93	1987-09-01 00:00:00+00	7.78
94	1987-10-01 00:00:00+00	11.22
95	1987-11-01 00:00:00+00	15.08
96	1987-12-01 00:00:00+00	14.15
97	1988-01-01 00:00:00+00	18.89
98	1988-02-01 00:00:00+00	15.7
99	1988-03-01 00:00:00+00	17.6
100	1988-04-01 00:00:00+00	19.29
101	1988-05-01 00:00:00+00	17.42
102	1988-06-01 00:00:00+00	22.0
103	1988-07-01 00:00:00+00	21.91
104	1988-08-01 00:00:00+00	21.59
105	1988-09-01 00:00:00+00	27.45
106	1988-10-01 00:00:00+00	25.62
107	1988-11-01 00:00:00+00	27.94
108	1988-12-01 00:00:00+00	28.7
109	1989-01-01 00:00:00+00	37.49
110	1989-02-01 00:00:00+00	16.78
111	1989-03-01 00:00:00+00	6.82
112	1989-04-01 00:00:00+00	8.33
113	1989-05-01 00:00:00+00	17.92
114	1989-06-01 00:00:00+00	28.65
115	1989-07-01 00:00:00+00	27.74
116	1989-08-01 00:00:00+00	33.71
117	1989-09-01 00:00:00+00	37.56
118	1989-10-01 00:00:00+00	39.77
119	1989-11-01 00:00:00+00	47.82
120	1989-12-01 00:00:00+00	51.5
121	1990-01-01 00:00:00+00	67.55
122	1990-02-01 00:00:00+00	75.73
123	1990-03-01 00:00:00+00	82.39
124	1990-04-01 00:00:00+00	15.52
125	1990-05-01 00:00:00+00	7.59
126	1990-06-01 00:00:00+00	11.75
127	1990-07-01 00:00:00+00	12.92
128	1990-08-01 00:00:00+00	12.88
129	1990-09-01 00:00:00+00	14.41
130	1990-10-01 00:00:00+00	14.36
131	1990-11-01 00:00:00+00	16.81
132	1990-12-01 00:00:00+00	18.44
133	1991-01-01 00:00:00+00	20.75
134	1991-02-01 00:00:00+00	20.72
135	1991-03-01 00:00:00+00	11.92
136	1991-04-01 00:00:00+00	4.99
137	1991-05-01 00:00:00+00	7.43
138	1991-06-01 00:00:00+00	11.19
139	1991-07-01 00:00:00+00	12.41
140	1991-08-01 00:00:00+00	15.63
141	1991-09-01 00:00:00+00	15.63
142	1991-10-01 00:00:00+00	20.23
143	1991-11-01 00:00:00+00	25.21
144	1991-12-01 00:00:00+00	23.71
145	1992-01-01 00:00:00+00	25.94
146	1992-02-01 00:00:00+00	24.32
147	1992-03-01 00:00:00+00	21.4
148	1992-04-01 00:00:00+00	19.93
149	1992-05-01 00:00:00+00	24.86
150	1992-06-01 00:00:00+00	20.21
151	1992-07-01 00:00:00+00	21.83
152	1992-08-01 00:00:00+00	22.14
153	1992-09-01 00:00:00+00	24.63
154	1992-10-01 00:00:00+00	25.24
155	1992-11-01 00:00:00+00	22.49
156	1992-12-01 00:00:00+00	25.24
157	1993-01-01 00:00:00+00	30.35
158	1993-02-01 00:00:00+00	24.98
159	1993-03-01 00:00:00+00	27.26
160	1993-04-01 00:00:00+00	27.75
161	1993-05-01 00:00:00+00	27.69
162	1993-06-01 00:00:00+00	30.07
163	1993-07-01 00:00:00+00	30.72
164	1993-08-01 00:00:00+00	32.96
165	1993-09-01 00:00:00+00	35.69
166	1993-10-01 00:00:00+00	33.92
167	1993-11-01 00:00:00+00	35.56
168	1993-12-01 00:00:00+00	36.84
169	1994-01-01 00:00:00+00	41.31
170	1994-02-01 00:00:00+00	40.27
171	1994-03-01 00:00:00+00	42.75
172	1994-04-01 00:00:00+00	42.68
173	1994-05-01 00:00:00+00	44.03
174	1994-06-01 00:00:00+00	47.43
175	1994-07-01 00:00:00+00	6.84
176	1994-08-01 00:00:00+00	1.86
177	1994-09-01 00:00:00+00	1.53
178	1994-10-01 00:00:00+00	2.62
179	1994-11-01 00:00:00+00	2.81
180	1994-12-01 00:00:00+00	1.71
181	1995-01-01 00:00:00+00	1.7
182	1995-02-01 00:00:00+00	1.02
183	1995-03-01 00:00:00+00	1.55
184	1995-04-01 00:00:00+00	2.43
185	1995-05-01 00:00:00+00	2.67
186	1995-06-01 00:00:00+00	2.26
187	1995-07-01 00:00:00+00	2.36
188	1995-08-01 00:00:00+00	0.99
189	1995-09-01 00:00:00+00	0.99
190	1995-10-01 00:00:00+00	1.41
191	1995-11-01 00:00:00+00	1.47
192	1995-12-01 00:00:00+00	1.56
193	1996-01-01 00:00:00+00	1.34
194	1996-02-01 00:00:00+00	1.03
195	1996-03-01 00:00:00+00	0.35
196	1996-04-01 00:00:00+00	1.26
197	1996-05-01 00:00:00+00	1.22
198	1996-06-01 00:00:00+00	1.19
199	1996-07-01 00:00:00+00	1.11
200	1996-08-01 00:00:00+00	0.44
201	1996-09-01 00:00:00+00	0.15
202	1996-10-01 00:00:00+00	0.3
203	1996-11-01 00:00:00+00	0.32
204	1996-12-01 00:00:00+00	0.47
205	1997-01-01 00:00:00+00	1.18
206	1997-02-01 00:00:00+00	0.5
207	1997-03-01 00:00:00+00	0.51
208	1997-04-01 00:00:00+00	0.88
209	1997-05-01 00:00:00+00	0.41
210	1997-06-01 00:00:00+00	0.54
211	1997-07-01 00:00:00+00	0.22
212	1997-08-01 00:00:00+00	-0.02
213	1997-09-01 00:00:00+00	0.06
214	1997-10-01 00:00:00+00	0.23
215	1997-11-01 00:00:00+00	0.17
216	1997-12-01 00:00:00+00	0.43
217	1998-01-01 00:00:00+00	0.71
218	1998-02-01 00:00:00+00	0.46
219	1998-03-01 00:00:00+00	0.34
220	1998-04-01 00:00:00+00	0.24
221	1998-05-01 00:00:00+00	0.5
222	1998-06-01 00:00:00+00	0.02
223	1998-07-01 00:00:00+00	-0.12
224	1998-08-01 00:00:00+00	-0.51
225	1998-09-01 00:00:00+00	-0.22
226	1998-10-01 00:00:00+00	0.02
227	1998-11-01 00:00:00+00	-0.12
228	1998-12-01 00:00:00+00	0.33
229	1999-01-01 00:00:00+00	0.7
230	1999-02-01 00:00:00+00	1.05
231	1999-03-01 00:00:00+00	1.1
232	1999-04-01 00:00:00+00	0.56
233	1999-05-01 00:00:00+00	0.3
234	1999-06-01 00:00:00+00	0.19
235	1999-07-01 00:00:00+00	1.09
236	1999-08-01 00:00:00+00	0.56
237	1999-09-01 00:00:00+00	0.31
238	1999-10-01 00:00:00+00	1.19
239	1999-11-01 00:00:00+00	0.95
240	1999-12-01 00:00:00+00	0.6
241	2000-01-01 00:00:00+00	0.62
242	2000-02-01 00:00:00+00	0.13
243	2000-03-01 00:00:00+00	0.22
244	2000-04-01 00:00:00+00	0.42
245	2000-05-01 00:00:00+00	0.01
246	2000-06-01 00:00:00+00	0.23
247	2000-07-01 00:00:00+00	1.61
248	2000-08-01 00:00:00+00	1.31
249	2000-09-01 00:00:00+00	0.23
250	2000-10-01 00:00:00+00	0.14
251	2000-11-01 00:00:00+00	0.32
252	2000-12-01 00:00:00+00	0.59
253	2001-01-01 00:00:00+00	0.57
254	2001-02-01 00:00:00+00	0.46
255	2001-03-01 00:00:00+00	0.38
256	2001-04-01 00:00:00+00	0.58
257	2001-05-01 00:00:00+00	0.41
258	2001-06-01 00:00:00+00	0.52
259	2001-07-01 00:00:00+00	1.33
260	2001-08-01 00:00:00+00	0.7
261	2001-09-01 00:00:00+00	0.28
262	2001-10-01 00:00:00+00	0.83
263	2001-11-01 00:00:00+00	0.71
264	2001-12-01 00:00:00+00	0.65
265	2002-01-01 00:00:00+00	0.52
266	2002-02-01 00:00:00+00	0.36
267	2002-03-01 00:00:00+00	0.6
268	2002-04-01 00:00:00+00	0.8
269	2002-05-01 00:00:00+00	0.21
270	2002-06-01 00:00:00+00	0.42
271	2002-07-01 00:00:00+00	1.19
272	2002-08-01 00:00:00+00	0.65
273	2002-09-01 00:00:00+00	0.72
274	2002-10-01 00:00:00+00	1.31
275	2002-11-01 00:00:00+00	3.02
276	2002-12-01 00:00:00+00	2.1
277	2003-01-01 00:00:00+00	2.25
278	2003-02-01 00:00:00+00	1.57
279	2003-03-01 00:00:00+00	1.23
280	2003-04-01 00:00:00+00	0.97
281	2003-05-01 00:00:00+00	0.61
282	2003-06-01 00:00:00+00	-0.15
283	2003-07-01 00:00:00+00	0.2
284	2003-08-01 00:00:00+00	0.34
285	2003-09-01 00:00:00+00	0.78
286	2003-10-01 00:00:00+00	0.29
287	2003-11-01 00:00:00+00	0.34
288	2003-12-01 00:00:00+00	0.52
289	2004-01-01 00:00:00+00	0.76
290	2004-02-01 00:00:00+00	0.61
291	2004-03-01 00:00:00+00	0.47
292	2004-04-01 00:00:00+00	0.37
293	2004-05-01 00:00:00+00	0.51
294	2004-06-01 00:00:00+00	0.71
295	2004-07-01 00:00:00+00	0.91
296	2004-08-01 00:00:00+00	0.69
297	2004-09-01 00:00:00+00	0.33
298	2004-10-01 00:00:00+00	0.44
299	2004-11-01 00:00:00+00	0.69
300	2004-12-01 00:00:00+00	0.86
301	2005-01-01 00:00:00+00	0.58
302	2005-02-01 00:00:00+00	0.59
303	2005-03-01 00:00:00+00	0.61
304	2005-04-01 00:00:00+00	0.87
305	2005-05-01 00:00:00+00	0.49
306	2005-06-01 00:00:00+00	-0.02
307	2005-07-01 00:00:00+00	0.25
308	2005-08-01 00:00:00+00	0.17
309	2005-09-01 00:00:00+00	0.35
310	2005-10-01 00:00:00+00	0.75
311	2005-11-01 00:00:00+00	0.55
312	2005-12-01 00:00:00+00	0.36
313	2006-01-01 00:00:00+00	0.59
314	2006-02-01 00:00:00+00	0.41
315	2006-03-01 00:00:00+00	0.43
316	2006-04-01 00:00:00+00	0.21
317	2006-05-01 00:00:00+00	0.1
318	2006-06-01 00:00:00+00	-0.21
319	2006-07-01 00:00:00+00	0.19
320	2006-08-01 00:00:00+00	0.05
321	2006-09-01 00:00:00+00	0.21
322	2006-10-01 00:00:00+00	0.33
323	2006-11-01 00:00:00+00	0.31
324	2006-12-01 00:00:00+00	0.48
325	2007-01-01 00:00:00+00	0.44
326	2007-02-01 00:00:00+00	0.44
327	2007-03-01 00:00:00+00	0.37
328	2007-04-01 00:00:00+00	0.25
329	2007-05-01 00:00:00+00	0.28
330	2007-06-01 00:00:00+00	0.28
331	2007-07-01 00:00:00+00	0.24
332	2007-08-01 00:00:00+00	0.47
333	2007-09-01 00:00:00+00	0.18
334	2007-10-01 00:00:00+00	0.3
335	2007-11-01 00:00:00+00	0.38
336	2007-12-01 00:00:00+00	0.74
337	2008-01-01 00:00:00+00	0.54
338	2008-02-01 00:00:00+00	0.49
339	2008-03-01 00:00:00+00	0.48
340	2008-04-01 00:00:00+00	0.55
341	2008-05-01 00:00:00+00	0.79
342	2008-06-01 00:00:00+00	0.74
343	2008-07-01 00:00:00+00	0.53
344	2008-08-01 00:00:00+00	0.28
345	2008-09-01 00:00:00+00	0.26
346	2008-10-01 00:00:00+00	0.45
347	2008-11-01 00:00:00+00	0.36
348	2008-12-01 00:00:00+00	0.28
349	2009-01-01 00:00:00+00	0.48
350	2009-02-01 00:00:00+00	0.55
351	2009-03-01 00:00:00+00	0.2
352	2009-04-01 00:00:00+00	0.48
353	2009-05-01 00:00:00+00	0.47
354	2009-06-01 00:00:00+00	0.36
355	2009-07-01 00:00:00+00	0.24
356	2009-08-01 00:00:00+00	0.15
357	2009-09-01 00:00:00+00	0.24
358	2009-10-01 00:00:00+00	0.28
359	2009-11-01 00:00:00+00	0.41
360	2009-12-01 00:00:00+00	0.37
361	2010-01-01 00:00:00+00	0.75
362	2010-02-01 00:00:00+00	0.78
363	2010-03-01 00:00:00+00	0.52
364	2010-04-01 00:00:00+00	0.57
365	2010-05-01 00:00:00+00	0.43
366	2010-06-01 00:00:00+00	0.0
367	2010-07-01 00:00:00+00	0.01
368	2010-08-01 00:00:00+00	0.04
369	2010-09-01 00:00:00+00	0.45
370	2010-10-01 00:00:00+00	0.75
371	2010-11-01 00:00:00+00	0.83
372	2010-12-01 00:00:00+00	0.63
373	2011-01-01 00:00:00+00	0.83
374	2011-02-01 00:00:00+00	0.8
375	2011-03-01 00:00:00+00	0.79
376	2011-04-01 00:00:00+00	0.77
377	2011-05-01 00:00:00+00	0.47
378	2011-06-01 00:00:00+00	0.15
379	2011-07-01 00:00:00+00	0.16
380	2011-08-01 00:00:00+00	0.37
381	2011-09-01 00:00:00+00	0.53
382	2011-10-01 00:00:00+00	0.43
383	2011-11-01 00:00:00+00	0.52
384	2011-12-01 00:00:00+00	0.5
385	2012-01-01 00:00:00+00	0.56
386	2012-02-01 00:00:00+00	0.45
387	2012-03-01 00:00:00+00	0.21
388	2012-04-01 00:00:00+00	0.64
389	2012-05-01 00:00:00+00	0.36
390	2012-06-01 00:00:00+00	0.08
391	2012-07-01 00:00:00+00	0.43
392	2012-08-01 00:00:00+00	0.41
393	2012-09-01 00:00:00+00	0.57
394	2012-10-01 00:00:00+00	0.59
395	2012-11-01 00:00:00+00	0.6
396	2012-12-01 00:00:00+00	0.79
397	2013-01-01 00:00:00+00	0.86
398	2013-02-01 00:00:00+00	0.6
399	2013-03-01 00:00:00+00	0.47
400	2013-04-01 00:00:00+00	0.55
401	2013-05-01 00:00:00+00	0.37
402	2013-06-01 00:00:00+00	0.26
403	2013-07-01 00:00:00+00	0.03
404	2013-08-01 00:00:00+00	0.24
405	2013-09-01 00:00:00+00	0.35
406	2013-10-01 00:00:00+00	0.57
407	2013-11-01 00:00:00+00	0.54
408	2013-12-01 00:00:00+00	0.92
409	2014-01-01 00:00:00+00	0.55
410	2014-02-01 00:00:00+00	0.69
411	2014-03-01 00:00:00+00	0.92
412	2014-04-01 00:00:00+00	0.67
413	2014-05-01 00:00:00+00	0.46
414	2014-06-01 00:00:00+00	0.4
415	2014-07-01 00:00:00+00	0.01
416	2014-08-01 00:00:00+00	0.25
417	2014-09-01 00:00:00+00	0.57
418	2014-10-01 00:00:00+00	0.42
419	2014-11-01 00:00:00+00	0.51
420	2014-12-01 00:00:00+00	0.78
421	2015-01-01 00:00:00+00	1.24
422	2015-02-01 00:00:00+00	1.22
423	2015-03-01 00:00:00+00	1.32
424	2015-04-01 00:00:00+00	0.71
425	2015-05-01 00:00:00+00	0.74
426	2015-06-01 00:00:00+00	0.79
427	2015-07-01 00:00:00+00	0.62
428	2015-08-01 00:00:00+00	0.22
429	2015-09-01 00:00:00+00	0.54
430	2015-10-01 00:00:00+00	0.82
431	2015-11-01 00:00:00+00	1.01
432	2015-12-01 00:00:00+00	0.96
433	2016-01-01 00:00:00+00	1.27
434	2016-02-01 00:00:00+00	0.9
435	2016-03-01 00:00:00+00	0.43
436	2016-04-01 00:00:00+00	0.61
437	2016-05-01 00:00:00+00	0.78
438	2016-06-01 00:00:00+00	0.35
439	2016-07-01 00:00:00+00	0.52
440	2016-08-01 00:00:00+00	0.44
441	2016-09-01 00:00:00+00	0.08
442	2016-10-01 00:00:00+00	0.26
443	2016-11-01 00:00:00+00	0.18
444	2016-12-01 00:00:00+00	0.3
445	2017-01-01 00:00:00+00	0.38
446	2017-02-01 00:00:00+00	0.33
447	2017-03-01 00:00:00+00	0.25
448	2017-04-01 00:00:00+00	0.14
449	2017-05-01 00:00:00+00	0.31
450	2017-06-01 00:00:00+00	-0.23
451	2017-07-01 00:00:00+00	0.24
452	2017-08-01 00:00:00+00	0.19
453	2017-09-01 00:00:00+00	0.16
454	2017-10-01 00:00:00+00	0.42
455	2017-11-01 00:00:00+00	0.28
456	2017-12-01 00:00:00+00	0.44
457	2018-01-01 00:00:00+00	0.29
458	2018-02-01 00:00:00+00	0.32
459	2018-03-01 00:00:00+00	0.09
460	2018-04-01 00:00:00+00	0.22
461	2018-05-01 00:00:00+00	0.4
462	2018-06-01 00:00:00+00	1.26
463	2018-07-01 00:00:00+00	0.33
464	2018-08-01 00:00:00+00	-0.09
465	2018-09-01 00:00:00+00	0.48
466	2018-10-01 00:00:00+00	0.45
467	2018-11-01 00:00:00+00	-0.21
468	2018-12-01 00:00:00+00	0.15
469	2019-01-01 00:00:00+00	0.32
470	2019-02-01 00:00:00+00	0.43
471	2019-03-01 00:00:00+00	0.75
472	2019-04-01 00:00:00+00	0.57
473	2019-05-01 00:00:00+00	0.13
474	2019-06-01 00:00:00+00	0.01
475	2019-07-01 00:00:00+00	0.19
476	2019-08-01 00:00:00+00	0.11
477	2019-09-01 00:00:00+00	-0.04
478	2019-10-01 00:00:00+00	0.1
479	2019-11-01 00:00:00+00	0.51
480	2019-12-01 00:00:00+00	1.15
481	2020-01-01 00:00:00+00	0.21
482	2020-02-01 00:00:00+00	0.25
483	2020-03-01 00:00:00+00	0.07
484	2020-04-01 00:00:00+00	-0.31
485	2020-05-01 00:00:00+00	-0.38
486	2020-06-01 00:00:00+00	0.26
487	2020-07-01 00:00:00+00	0.36
488	2020-08-01 00:00:00+00	0.24
489	2020-09-01 00:00:00+00	0.64
490	2020-10-01 00:00:00+00	0.86
491	2020-11-01 00:00:00+00	0.89
492	2020-12-01 00:00:00+00	1.35
493	2021-01-01 00:00:00+00	0.25
494	2021-02-01 00:00:00+00	0.86
495	2021-03-01 00:00:00+00	0.93
496	2021-04-01 00:00:00+00	0.31
497	2021-05-01 00:00:00+00	0.83
498	2021-06-01 00:00:00+00	0.53
499	2021-07-01 00:00:00+00	0.96
500	2021-08-01 00:00:00+00	0.87
501	2021-09-01 00:00:00+00	1.16
502	2021-10-01 00:00:00+00	1.25
503	2021-11-01 00:00:00+00	0.95
504	2021-12-01 00:00:00+00	0.73
505	2022-01-01 00:00:00+00	0.54
506	2022-02-01 00:00:00+00	1.01
507	2022-03-01 00:00:00+00	1.62
508	2022-04-01 00:00:00+00	1.06
509	2022-05-01 00:00:00+00	0.47
510	2022-06-01 00:00:00+00	0.67
511	2022-07-01 00:00:00+00	-0.68
512	2022-08-01 00:00:00+00	-0.36
513	2022-09-01 00:00:00+00	-0.29
514	2022-10-01 00:00:00+00	0.59
515	2022-11-01 00:00:00+00	0.41
516	2022-12-01 00:00:00+00	0.62
517	2023-01-01 00:00:00+00	0.53
518	2023-02-01 00:00:00+00	0.84
519	2023-03-01 00:00:00+00	0.71
520	2023-04-01 00:00:00+00	0.61
521	2023-05-01 00:00:00+00	0.23
522	2023-06-01 00:00:00+00	-0.08
526	2023-07-01 00:00:00+00	0.12
527	2023-08-01 00:00:00+00	0.23
528	2023-09-01 00:00:00+00	0.26
529	2023-10-01 00:00:00+00	0.24
530	2023-11-01 00:00:00+00	0.28
531	2023-12-01 00:00:00+00	0.56
532	2024-01-01 00:00:00+00	0.42
533	2024-01-01 00:00:00+00	0.42
534	2024-01-01 00:00:00+00	0.42
\.


--
-- Data for Name: ipca15; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ipca15 (id, data, valor) FROM stdin;
1	2000-05-01 00:00:00+00	0.09
2	2000-06-01 00:00:00+00	0.08
3	2000-07-01 00:00:00+00	0.78
4	2000-08-01 00:00:00+00	1.99
5	2000-09-01 00:00:00+00	0.45
6	2000-10-01 00:00:00+00	0.18
7	2000-11-01 00:00:00+00	0.17
8	2000-12-01 00:00:00+00	0.6
9	2001-01-01 00:00:00+00	0.63
10	2001-02-01 00:00:00+00	0.5
11	2001-03-01 00:00:00+00	0.36
12	2001-04-01 00:00:00+00	0.5
13	2001-05-01 00:00:00+00	0.49
14	2001-06-01 00:00:00+00	0.38
15	2001-07-01 00:00:00+00	0.94
16	2001-08-01 00:00:00+00	1.18
17	2001-09-01 00:00:00+00	0.38
18	2001-10-01 00:00:00+00	0.37
19	2001-11-01 00:00:00+00	0.99
20	2001-12-01 00:00:00+00	0.55
21	2002-01-01 00:00:00+00	0.62
22	2002-02-01 00:00:00+00	0.44
23	2002-03-01 00:00:00+00	0.4
24	2002-04-01 00:00:00+00	0.78
25	2002-05-01 00:00:00+00	0.42
26	2002-06-01 00:00:00+00	0.33
27	2002-07-01 00:00:00+00	0.77
28	2002-08-01 00:00:00+00	1.0
29	2002-09-01 00:00:00+00	0.62
30	2002-10-01 00:00:00+00	0.9
31	2002-11-01 00:00:00+00	2.08
32	2002-12-01 00:00:00+00	3.05
33	2003-01-01 00:00:00+00	1.98
34	2003-02-01 00:00:00+00	2.19
35	2003-03-01 00:00:00+00	1.14
36	2003-04-01 00:00:00+00	1.14
37	2003-05-01 00:00:00+00	0.85
38	2003-06-01 00:00:00+00	0.22
39	2003-07-01 00:00:00+00	-0.18
40	2003-08-01 00:00:00+00	0.27
41	2003-09-01 00:00:00+00	0.57
42	2003-10-01 00:00:00+00	0.66
43	2003-11-01 00:00:00+00	0.17
44	2003-12-01 00:00:00+00	0.46
45	2004-01-01 00:00:00+00	0.68
46	2004-02-01 00:00:00+00	0.9
47	2004-03-01 00:00:00+00	0.4
48	2004-04-01 00:00:00+00	0.21
49	2004-05-01 00:00:00+00	0.54
50	2004-06-01 00:00:00+00	0.56
51	2004-07-01 00:00:00+00	0.93
52	2004-08-01 00:00:00+00	0.79
53	2004-09-01 00:00:00+00	0.49
54	2004-10-01 00:00:00+00	0.32
55	2004-11-01 00:00:00+00	0.63
56	2004-12-01 00:00:00+00	0.84
57	2005-01-01 00:00:00+00	0.68
58	2005-02-01 00:00:00+00	0.74
59	2005-03-01 00:00:00+00	0.35
60	2005-04-01 00:00:00+00	0.74
61	2005-05-01 00:00:00+00	0.83
62	2005-06-01 00:00:00+00	0.12
63	2005-07-01 00:00:00+00	0.11
64	2005-08-01 00:00:00+00	0.28
65	2005-09-01 00:00:00+00	0.16
66	2005-10-01 00:00:00+00	0.56
67	2005-11-01 00:00:00+00	0.78
68	2005-12-01 00:00:00+00	0.38
69	2006-01-01 00:00:00+00	0.51
70	2006-02-01 00:00:00+00	0.52
71	2006-03-01 00:00:00+00	0.37
72	2006-04-01 00:00:00+00	0.17
73	2006-05-01 00:00:00+00	0.27
74	2006-06-01 00:00:00+00	-0.15
75	2006-07-01 00:00:00+00	-0.02
76	2006-08-01 00:00:00+00	0.19
77	2006-09-01 00:00:00+00	0.05
78	2006-10-01 00:00:00+00	0.29
79	2006-11-01 00:00:00+00	0.37
80	2006-12-01 00:00:00+00	0.35
81	2007-01-01 00:00:00+00	0.52
82	2007-02-01 00:00:00+00	0.46
83	2007-03-01 00:00:00+00	0.41
84	2007-04-01 00:00:00+00	0.22
85	2007-05-01 00:00:00+00	0.26
86	2007-06-01 00:00:00+00	0.29
87	2007-07-01 00:00:00+00	0.24
88	2007-08-01 00:00:00+00	0.42
89	2007-09-01 00:00:00+00	0.29
90	2007-10-01 00:00:00+00	0.24
91	2007-11-01 00:00:00+00	0.23
92	2007-12-01 00:00:00+00	0.7
93	2008-01-01 00:00:00+00	0.7
94	2008-02-01 00:00:00+00	0.64
95	2008-03-01 00:00:00+00	0.23
96	2008-04-01 00:00:00+00	0.59
97	2008-05-01 00:00:00+00	0.56
98	2008-06-01 00:00:00+00	0.9
99	2008-07-01 00:00:00+00	0.63
100	2008-08-01 00:00:00+00	0.35
101	2008-09-01 00:00:00+00	0.26
102	2008-10-01 00:00:00+00	0.3
103	2008-11-01 00:00:00+00	0.49
104	2008-12-01 00:00:00+00	0.29
105	2009-01-01 00:00:00+00	0.4
106	2009-02-01 00:00:00+00	0.63
107	2009-03-01 00:00:00+00	0.11
108	2009-04-01 00:00:00+00	0.36
109	2009-05-01 00:00:00+00	0.59
110	2009-06-01 00:00:00+00	0.38
111	2009-07-01 00:00:00+00	0.22
112	2009-08-01 00:00:00+00	0.23
113	2009-09-01 00:00:00+00	0.19
114	2009-10-01 00:00:00+00	0.18
115	2009-11-01 00:00:00+00	0.44
116	2009-12-01 00:00:00+00	0.38
117	2010-01-01 00:00:00+00	0.52
118	2010-02-01 00:00:00+00	0.94
119	2010-03-01 00:00:00+00	0.55
120	2010-04-01 00:00:00+00	0.48
121	2010-05-01 00:00:00+00	0.63
122	2010-06-01 00:00:00+00	0.19
123	2010-07-01 00:00:00+00	-0.09
124	2010-08-01 00:00:00+00	-0.05
125	2010-09-01 00:00:00+00	0.31
126	2010-10-01 00:00:00+00	0.62
127	2010-11-01 00:00:00+00	0.86
128	2010-12-01 00:00:00+00	0.69
129	2011-01-01 00:00:00+00	0.76
130	2011-02-01 00:00:00+00	0.97
131	2011-03-01 00:00:00+00	0.6
132	2011-04-01 00:00:00+00	0.77
133	2011-05-01 00:00:00+00	0.7
134	2011-06-01 00:00:00+00	0.23
135	2011-07-01 00:00:00+00	0.1
136	2011-08-01 00:00:00+00	0.27
137	2011-09-01 00:00:00+00	0.53
138	2011-10-01 00:00:00+00	0.42
139	2011-11-01 00:00:00+00	0.46
140	2011-12-01 00:00:00+00	0.56
141	2012-01-01 00:00:00+00	0.65
142	2012-02-01 00:00:00+00	0.53
143	2012-03-01 00:00:00+00	0.25
144	2012-04-01 00:00:00+00	0.43
145	2012-05-01 00:00:00+00	0.51
146	2012-06-01 00:00:00+00	0.18
147	2012-07-01 00:00:00+00	0.33
148	2012-08-01 00:00:00+00	0.39
149	2012-09-01 00:00:00+00	0.48
150	2012-10-01 00:00:00+00	0.65
151	2012-11-01 00:00:00+00	0.54
152	2012-12-01 00:00:00+00	0.69
153	2013-01-01 00:00:00+00	0.88
154	2013-02-01 00:00:00+00	0.68
155	2013-03-01 00:00:00+00	0.49
156	2013-04-01 00:00:00+00	0.51
157	2013-05-01 00:00:00+00	0.46
158	2013-06-01 00:00:00+00	0.38
159	2013-07-01 00:00:00+00	0.07
160	2013-08-01 00:00:00+00	0.16
161	2013-09-01 00:00:00+00	0.27
162	2013-10-01 00:00:00+00	0.48
163	2013-11-01 00:00:00+00	0.57
164	2013-12-01 00:00:00+00	0.75
165	2014-01-01 00:00:00+00	0.67
166	2014-02-01 00:00:00+00	0.7
167	2014-03-01 00:00:00+00	0.73
168	2014-04-01 00:00:00+00	0.78
169	2014-05-01 00:00:00+00	0.58
170	2014-06-01 00:00:00+00	0.47
171	2014-07-01 00:00:00+00	0.17
172	2014-08-01 00:00:00+00	0.14
173	2014-09-01 00:00:00+00	0.39
174	2014-10-01 00:00:00+00	0.48
175	2014-11-01 00:00:00+00	0.38
176	2014-12-01 00:00:00+00	0.79
177	2015-01-01 00:00:00+00	0.89
178	2015-02-01 00:00:00+00	1.33
179	2015-03-01 00:00:00+00	1.24
180	2015-04-01 00:00:00+00	1.07
181	2015-05-01 00:00:00+00	0.6
182	2015-06-01 00:00:00+00	0.99
183	2015-07-01 00:00:00+00	0.59
184	2015-08-01 00:00:00+00	0.43
185	2015-09-01 00:00:00+00	0.39
186	2015-10-01 00:00:00+00	0.66
187	2015-11-01 00:00:00+00	0.85
188	2015-12-01 00:00:00+00	1.18
189	2016-01-01 00:00:00+00	0.92
190	2016-02-01 00:00:00+00	1.42
191	2016-03-01 00:00:00+00	0.43
192	2016-04-01 00:00:00+00	0.51
193	2016-05-01 00:00:00+00	0.86
194	2016-06-01 00:00:00+00	0.4
195	2016-07-01 00:00:00+00	0.54
196	2016-08-01 00:00:00+00	0.45
197	2016-09-01 00:00:00+00	0.23
198	2016-10-01 00:00:00+00	0.19
199	2016-11-01 00:00:00+00	0.26
200	2016-12-01 00:00:00+00	0.19
201	2017-01-01 00:00:00+00	0.31
202	2017-02-01 00:00:00+00	0.54
203	2017-03-01 00:00:00+00	0.15
204	2017-04-01 00:00:00+00	0.21
205	2017-05-01 00:00:00+00	0.24
206	2017-06-01 00:00:00+00	0.16
207	2017-07-01 00:00:00+00	-0.18
208	2017-08-01 00:00:00+00	0.35
209	2017-09-01 00:00:00+00	0.11
210	2017-10-01 00:00:00+00	0.34
211	2017-11-01 00:00:00+00	0.32
212	2017-12-01 00:00:00+00	0.35
213	2018-01-01 00:00:00+00	0.39
214	2018-02-01 00:00:00+00	0.38
215	2018-03-01 00:00:00+00	0.1
216	2018-04-01 00:00:00+00	0.21
217	2018-05-01 00:00:00+00	0.14
218	2018-06-01 00:00:00+00	1.11
219	2018-07-01 00:00:00+00	0.64
220	2018-08-01 00:00:00+00	0.13
221	2018-09-01 00:00:00+00	0.09
222	2018-10-01 00:00:00+00	0.58
223	2018-11-01 00:00:00+00	0.19
224	2018-12-01 00:00:00+00	-0.16
225	2019-01-01 00:00:00+00	0.3
226	2019-02-01 00:00:00+00	0.34
227	2019-03-01 00:00:00+00	0.54
228	2019-04-01 00:00:00+00	0.72
229	2019-05-01 00:00:00+00	0.35
230	2019-06-01 00:00:00+00	0.06
231	2019-07-01 00:00:00+00	0.09
232	2019-08-01 00:00:00+00	0.08
233	2019-09-01 00:00:00+00	0.09
234	2019-10-01 00:00:00+00	0.09
235	2019-11-01 00:00:00+00	0.14
236	2019-12-01 00:00:00+00	1.05
237	2020-01-01 00:00:00+00	0.71
238	2020-02-01 00:00:00+00	0.22
239	2020-03-01 00:00:00+00	0.02
240	2020-04-01 00:00:00+00	-0.01
241	2020-05-01 00:00:00+00	-0.59
242	2020-06-01 00:00:00+00	0.02
243	2020-07-01 00:00:00+00	0.3
244	2020-08-01 00:00:00+00	0.23
245	2020-09-01 00:00:00+00	0.45
246	2020-10-01 00:00:00+00	0.94
247	2020-11-01 00:00:00+00	0.81
248	2020-12-01 00:00:00+00	1.06
249	2021-01-01 00:00:00+00	0.78
250	2021-02-01 00:00:00+00	0.48
251	2021-03-01 00:00:00+00	0.93
252	2021-04-01 00:00:00+00	0.6
253	2021-05-01 00:00:00+00	0.44
254	2021-06-01 00:00:00+00	0.83
255	2021-07-01 00:00:00+00	0.72
256	2021-08-01 00:00:00+00	0.89
257	2021-09-01 00:00:00+00	1.14
258	2021-10-01 00:00:00+00	1.2
259	2021-11-01 00:00:00+00	1.17
260	2021-12-01 00:00:00+00	0.78
261	2022-01-01 00:00:00+00	0.58
262	2022-02-01 00:00:00+00	0.99
263	2022-03-01 00:00:00+00	0.95
264	2022-04-01 00:00:00+00	1.73
265	2022-05-01 00:00:00+00	0.59
266	2022-06-01 00:00:00+00	0.69
267	2022-07-01 00:00:00+00	0.13
268	2022-08-01 00:00:00+00	-0.73
269	2022-09-01 00:00:00+00	-0.37
270	2022-10-01 00:00:00+00	0.16
271	2022-11-01 00:00:00+00	0.53
272	2022-12-01 00:00:00+00	0.52
273	2023-01-01 00:00:00+00	0.55
274	2023-02-01 00:00:00+00	0.76
275	2023-03-01 00:00:00+00	0.69
276	2023-04-01 00:00:00+00	0.57
277	2023-05-01 00:00:00+00	0.51
278	2023-06-01 00:00:00+00	0.04
279	2023-07-01 00:00:00+00	-0.07
280	2023-08-01 00:00:00+00	0.28
282	2023-09-01 00:00:00+00	0.35
283	2023-10-01 00:00:00+00	0.21
284	2023-11-01 00:00:00+00	0.33
285	2023-12-01 00:00:00+00	0.40
286	2024-01-01 00:00:00+00	0.31
287	2024-02-01 00:00:00+00	0.78
\.


--
-- Data for Name: logatualizacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.logatualizacao (id, codigo_tabela, indexador, data_atualizacao, processar) FROM stdin;
3	104	8	2024-02-01 00:00:00+00	0
7	112	12	2024-02-01 00:00:00+00	0
4	106	9	2024-02-01 00:00:00+00	0
5	108	10	2024-02-01 00:00:00+00	0
2	102	6	2024-01-01 00:00:00+00	0
6	110	11	2024-02-01 00:00:00+00	0
1	100	7	2024-01-01 00:00:00+00	0
\.


--
-- Data for Name: regra_atualizacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.regra_atualizacao (id, tipo, nome, descricao) FROM stdin;
\.


--
-- Data for Name: selic; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.selic (id, data, valor) FROM stdin;
1	1986-06-01 00:00:00+00	1.27
2	1986-07-01 00:00:00+00	1.95
3	1986-08-01 00:00:00+00	2.57
4	1986-09-01 00:00:00+00	2.94
5	1986-10-01 00:00:00+00	1.96
6	1986-11-01 00:00:00+00	2.37
7	1986-12-01 00:00:00+00	5.47
8	1987-01-01 00:00:00+00	11.0
9	1987-02-01 00:00:00+00	19.61
10	1987-03-01 00:00:00+00	11.95
11	1987-04-01 00:00:00+00	15.3
12	1987-05-01 00:00:00+00	24.63
13	1987-06-01 00:00:00+00	18.02
14	1987-07-01 00:00:00+00	8.91
15	1987-08-01 00:00:00+00	8.09
16	1987-09-01 00:00:00+00	7.99
17	1987-10-01 00:00:00+00	9.45
18	1987-11-01 00:00:00+00	12.92
19	1987-12-01 00:00:00+00	14.38
20	1988-01-01 00:00:00+00	16.78
21	1988-02-01 00:00:00+00	18.35
22	1988-03-01 00:00:00+00	16.59
23	1988-04-01 00:00:00+00	20.25
24	1988-05-01 00:00:00+00	18.65
25	1988-06-01 00:00:00+00	20.17
26	1988-07-01 00:00:00+00	24.69
27	1988-08-01 00:00:00+00	22.63
28	1988-09-01 00:00:00+00	26.25
29	1988-10-01 00:00:00+00	29.79
30	1988-11-01 00:00:00+00	28.41
31	1988-12-01 00:00:00+00	30.24
32	1989-01-01 00:00:00+00	22.97
33	1989-02-01 00:00:00+00	18.95
34	1989-03-01 00:00:00+00	20.41
35	1989-04-01 00:00:00+00	11.52
36	1989-05-01 00:00:00+00	11.43
37	1989-06-01 00:00:00+00	27.29
38	1989-07-01 00:00:00+00	33.15
39	1989-08-01 00:00:00+00	35.49
40	1989-09-01 00:00:00+00	38.58
41	1989-10-01 00:00:00+00	47.7
42	1989-11-01 00:00:00+00	48.41
43	1989-12-01 00:00:00+00	64.21
44	1990-01-01 00:00:00+00	67.6
45	1990-02-01 00:00:00+00	82.04
46	1990-03-01 00:00:00+00	36.76
47	1990-04-01 00:00:00+00	4.23
48	1990-05-01 00:00:00+00	5.69
49	1990-06-01 00:00:00+00	8.73
50	1990-07-01 00:00:00+00	13.79
51	1990-08-01 00:00:00+00	11.53
52	1990-09-01 00:00:00+00	15.21
53	1990-10-01 00:00:00+00	16.49
54	1990-11-01 00:00:00+00	19.83
55	1990-12-01 00:00:00+00	22.86
56	1991-01-01 00:00:00+00	21.02
57	1991-02-01 00:00:00+00	6.85
58	1991-03-01 00:00:00+00	8.99
59	1991-04-01 00:00:00+00	9.67
60	1991-05-01 00:00:00+00	9.56
61	1991-06-01 00:00:00+00	10.32
62	1991-07-01 00:00:00+00	12.39
63	1991-08-01 00:00:00+00	15.75
64	1991-09-01 00:00:00+00	19.78
65	1991-10-01 00:00:00+00	25.95
66	1991-11-01 00:00:00+00	32.43
67	1991-12-01 00:00:00+00	31.17
68	1992-01-01 00:00:00+00	29.06
69	1992-02-01 00:00:00+00	28.76
70	1992-03-01 00:00:00+00	26.86
71	1992-04-01 00:00:00+00	23.92
72	1992-05-01 00:00:00+00	23.0
73	1992-06-01 00:00:00+00	24.28
74	1992-07-01 00:00:00+00	26.21
75	1992-08-01 00:00:00+00	25.65
76	1992-09-01 00:00:00+00	27.66
77	1992-10-01 00:00:00+00	28.18
78	1992-11-01 00:00:00+00	26.4
79	1992-12-01 00:00:00+00	25.92
80	1993-01-01 00:00:00+00	28.52
81	1993-02-01 00:00:00+00	28.9
82	1993-03-01 00:00:00+00	28.36
83	1993-04-01 00:00:00+00	30.53
84	1993-05-01 00:00:00+00	30.9
85	1993-06-01 00:00:00+00	31.91
86	1993-07-01 00:00:00+00	32.73
87	1993-08-01 00:00:00+00	34.64
88	1993-09-01 00:00:00+00	37.23
89	1993-10-01 00:00:00+00	38.4
90	1993-11-01 00:00:00+00	38.38
91	1993-12-01 00:00:00+00	40.38
92	1994-01-01 00:00:00+00	42.76
93	1994-02-01 00:00:00+00	41.99
94	1994-03-01 00:00:00+00	46.42
95	1994-04-01 00:00:00+00	46.49
96	1994-05-01 00:00:00+00	47.95
97	1994-06-01 00:00:00+00	50.62
98	1994-07-01 00:00:00+00	6.87
99	1994-08-01 00:00:00+00	4.17
100	1994-09-01 00:00:00+00	3.83
101	1994-10-01 00:00:00+00	3.62
102	1994-11-01 00:00:00+00	4.07
103	1994-12-01 00:00:00+00	3.8
104	1995-01-01 00:00:00+00	3.37
105	1995-02-01 00:00:00+00	3.25
106	1995-03-01 00:00:00+00	4.26
107	1995-04-01 00:00:00+00	4.26
108	1995-05-01 00:00:00+00	4.25
109	1995-06-01 00:00:00+00	4.04
110	1995-07-01 00:00:00+00	4.02
111	1995-08-01 00:00:00+00	3.84
112	1995-09-01 00:00:00+00	3.32
113	1995-10-01 00:00:00+00	3.09
114	1995-11-01 00:00:00+00	2.88
115	1995-12-01 00:00:00+00	2.78
116	1996-01-01 00:00:00+00	2.58
117	1996-02-01 00:00:00+00	2.35
118	1996-03-01 00:00:00+00	2.22
119	1996-04-01 00:00:00+00	2.07
120	1996-05-01 00:00:00+00	2.01
121	1996-06-01 00:00:00+00	1.98
122	1996-07-01 00:00:00+00	1.93
123	1996-08-01 00:00:00+00	1.97
124	1996-09-01 00:00:00+00	1.9
125	1996-10-01 00:00:00+00	1.86
126	1996-11-01 00:00:00+00	1.8
127	1996-12-01 00:00:00+00	1.8
128	1997-01-01 00:00:00+00	1.73
129	1997-02-01 00:00:00+00	1.67
130	1997-03-01 00:00:00+00	1.64
131	1997-04-01 00:00:00+00	1.66
132	1997-05-01 00:00:00+00	1.58
133	1997-06-01 00:00:00+00	1.61
134	1997-07-01 00:00:00+00	1.6
135	1997-08-01 00:00:00+00	1.59
136	1997-09-01 00:00:00+00	1.59
137	1997-10-01 00:00:00+00	1.67
138	1997-11-01 00:00:00+00	3.04
139	1997-12-01 00:00:00+00	2.97
140	1998-01-01 00:00:00+00	2.67
141	1998-02-01 00:00:00+00	2.13
142	1998-03-01 00:00:00+00	2.2
143	1998-04-01 00:00:00+00	1.71
144	1998-05-01 00:00:00+00	1.63
145	1998-06-01 00:00:00+00	1.6
146	1998-07-01 00:00:00+00	1.7
147	1998-08-01 00:00:00+00	1.48
148	1998-09-01 00:00:00+00	2.49
149	1998-10-01 00:00:00+00	2.94
150	1998-11-01 00:00:00+00	2.63
151	1998-12-01 00:00:00+00	2.4
152	1999-01-01 00:00:00+00	2.18
153	1999-02-01 00:00:00+00	2.38
154	1999-03-01 00:00:00+00	3.33
155	1999-04-01 00:00:00+00	2.35
156	1999-05-01 00:00:00+00	2.02
157	1999-06-01 00:00:00+00	1.67
158	1999-07-01 00:00:00+00	1.66
159	1999-08-01 00:00:00+00	1.57
160	1999-09-01 00:00:00+00	1.49
161	1999-10-01 00:00:00+00	1.38
162	1999-11-01 00:00:00+00	1.39
163	1999-12-01 00:00:00+00	1.6
164	2000-01-01 00:00:00+00	1.46
165	2000-02-01 00:00:00+00	1.45
166	2000-03-01 00:00:00+00	1.45
167	2000-04-01 00:00:00+00	1.3
168	2000-05-01 00:00:00+00	1.49
169	2000-06-01 00:00:00+00	1.39
170	2000-07-01 00:00:00+00	1.31
171	2000-08-01 00:00:00+00	1.41
172	2000-09-01 00:00:00+00	1.22
173	2000-10-01 00:00:00+00	1.29
174	2000-11-01 00:00:00+00	1.22
175	2000-12-01 00:00:00+00	1.2
176	2001-01-01 00:00:00+00	1.27
177	2001-02-01 00:00:00+00	1.02
178	2001-03-01 00:00:00+00	1.26
179	2001-04-01 00:00:00+00	1.19
180	2001-05-01 00:00:00+00	1.34
181	2001-06-01 00:00:00+00	1.27
182	2001-07-01 00:00:00+00	1.5
183	2001-08-01 00:00:00+00	1.6
184	2001-09-01 00:00:00+00	1.32
185	2001-10-01 00:00:00+00	1.53
186	2001-11-01 00:00:00+00	1.39
187	2001-12-01 00:00:00+00	1.39
188	2002-01-01 00:00:00+00	1.53
189	2002-02-01 00:00:00+00	1.25
190	2002-03-01 00:00:00+00	1.37
191	2002-04-01 00:00:00+00	1.48
192	2002-05-01 00:00:00+00	1.41
193	2002-06-01 00:00:00+00	1.33
194	2002-07-01 00:00:00+00	1.54
195	2002-08-01 00:00:00+00	1.44
196	2002-09-01 00:00:00+00	1.38
197	2002-10-01 00:00:00+00	1.65
198	2002-11-01 00:00:00+00	1.54
199	2002-12-01 00:00:00+00	1.74
200	2003-01-01 00:00:00+00	1.97
201	2003-02-01 00:00:00+00	1.83
202	2003-03-01 00:00:00+00	1.78
203	2003-04-01 00:00:00+00	1.87
204	2003-05-01 00:00:00+00	1.97
205	2003-06-01 00:00:00+00	1.86
206	2003-07-01 00:00:00+00	2.08
207	2003-08-01 00:00:00+00	1.77
208	2003-09-01 00:00:00+00	1.68
209	2003-10-01 00:00:00+00	1.64
210	2003-11-01 00:00:00+00	1.34
211	2003-12-01 00:00:00+00	1.37
212	2004-01-01 00:00:00+00	1.27
213	2004-02-01 00:00:00+00	1.08
214	2004-03-01 00:00:00+00	1.38
215	2004-04-01 00:00:00+00	1.18
216	2004-05-01 00:00:00+00	1.23
217	2004-06-01 00:00:00+00	1.23
218	2004-07-01 00:00:00+00	1.29
219	2004-08-01 00:00:00+00	1.29
220	2004-09-01 00:00:00+00	1.25
221	2004-10-01 00:00:00+00	1.21
222	2004-11-01 00:00:00+00	1.25
223	2004-12-01 00:00:00+00	1.48
224	2005-01-01 00:00:00+00	1.38
225	2005-02-01 00:00:00+00	1.22
226	2005-03-01 00:00:00+00	1.53
227	2005-04-01 00:00:00+00	1.41
228	2005-05-01 00:00:00+00	1.5
229	2005-06-01 00:00:00+00	1.59
230	2005-07-01 00:00:00+00	1.51
231	2005-08-01 00:00:00+00	1.66
232	2005-09-01 00:00:00+00	1.5
233	2005-10-01 00:00:00+00	1.41
234	2005-11-01 00:00:00+00	1.38
235	2005-12-01 00:00:00+00	1.47
236	2006-01-01 00:00:00+00	1.43
237	2006-02-01 00:00:00+00	1.15
238	2006-03-01 00:00:00+00	1.42
239	2006-04-01 00:00:00+00	1.08
240	2006-05-01 00:00:00+00	1.28
241	2006-06-01 00:00:00+00	1.18
242	2006-07-01 00:00:00+00	1.17
243	2006-08-01 00:00:00+00	1.26
244	2006-09-01 00:00:00+00	1.06
245	2006-10-01 00:00:00+00	1.09
246	2006-11-01 00:00:00+00	1.02
247	2006-12-01 00:00:00+00	0.99
248	2007-01-01 00:00:00+00	1.08
249	2007-02-01 00:00:00+00	0.87
250	2007-03-01 00:00:00+00	1.05
251	2007-04-01 00:00:00+00	0.94
252	2007-05-01 00:00:00+00	1.03
253	2007-06-01 00:00:00+00	0.91
254	2007-07-01 00:00:00+00	0.97
255	2007-08-01 00:00:00+00	0.99
256	2007-09-01 00:00:00+00	0.8
257	2007-10-01 00:00:00+00	0.93
258	2007-11-01 00:00:00+00	0.84
259	2007-12-01 00:00:00+00	0.84
260	2008-01-01 00:00:00+00	0.93
261	2008-02-01 00:00:00+00	0.8
262	2008-03-01 00:00:00+00	0.84
263	2008-04-01 00:00:00+00	0.9
264	2008-05-01 00:00:00+00	0.88
265	2008-06-01 00:00:00+00	0.96
266	2008-07-01 00:00:00+00	1.07
267	2008-08-01 00:00:00+00	1.02
268	2008-09-01 00:00:00+00	1.1
269	2008-10-01 00:00:00+00	1.18
270	2008-11-01 00:00:00+00	1.02
271	2008-12-01 00:00:00+00	1.12
272	2009-01-01 00:00:00+00	1.05
273	2009-02-01 00:00:00+00	0.86
274	2009-03-01 00:00:00+00	0.97
275	2009-04-01 00:00:00+00	0.84
276	2009-05-01 00:00:00+00	0.77
277	2009-06-01 00:00:00+00	0.76
278	2009-07-01 00:00:00+00	0.79
279	2009-08-01 00:00:00+00	0.69
280	2009-09-01 00:00:00+00	0.69
281	2009-10-01 00:00:00+00	0.69
282	2009-11-01 00:00:00+00	0.66
283	2009-12-01 00:00:00+00	0.73
284	2010-01-01 00:00:00+00	0.66
285	2010-02-01 00:00:00+00	0.59
286	2010-03-01 00:00:00+00	0.76
287	2010-04-01 00:00:00+00	0.67
288	2010-05-01 00:00:00+00	0.75
289	2010-06-01 00:00:00+00	0.79
290	2010-07-01 00:00:00+00	0.86
291	2010-08-01 00:00:00+00	0.89
292	2010-09-01 00:00:00+00	0.85
293	2010-10-01 00:00:00+00	0.81
294	2010-11-01 00:00:00+00	0.81
295	2010-12-01 00:00:00+00	0.93
296	2011-01-01 00:00:00+00	0.86
297	2011-02-01 00:00:00+00	0.84
298	2011-03-01 00:00:00+00	0.92
299	2011-04-01 00:00:00+00	0.84
300	2011-05-01 00:00:00+00	0.99
301	2011-06-01 00:00:00+00	0.96
302	2011-07-01 00:00:00+00	0.97
303	2011-08-01 00:00:00+00	1.07
304	2011-09-01 00:00:00+00	0.94
305	2011-10-01 00:00:00+00	0.88
306	2011-11-01 00:00:00+00	0.86
307	2011-12-01 00:00:00+00	0.91
308	2012-01-01 00:00:00+00	0.89
309	2012-02-01 00:00:00+00	0.75
310	2012-03-01 00:00:00+00	0.82
311	2012-04-01 00:00:00+00	0.71
312	2012-05-01 00:00:00+00	0.74
313	2012-06-01 00:00:00+00	0.64
314	2012-07-01 00:00:00+00	0.68
315	2012-08-01 00:00:00+00	0.69
316	2012-09-01 00:00:00+00	0.54
317	2012-10-01 00:00:00+00	0.61
318	2012-11-01 00:00:00+00	0.55
319	2012-12-01 00:00:00+00	0.55
320	2013-01-01 00:00:00+00	0.6
321	2013-02-01 00:00:00+00	0.49
322	2013-03-01 00:00:00+00	0.55
323	2013-04-01 00:00:00+00	0.61
324	2013-05-01 00:00:00+00	0.6
325	2013-06-01 00:00:00+00	0.61
326	2013-07-01 00:00:00+00	0.72
327	2013-08-01 00:00:00+00	0.71
328	2013-09-01 00:00:00+00	0.71
329	2013-10-01 00:00:00+00	0.81
330	2013-11-01 00:00:00+00	0.72
331	2013-12-01 00:00:00+00	0.79
332	2014-01-01 00:00:00+00	0.85
333	2014-02-01 00:00:00+00	0.79
334	2014-03-01 00:00:00+00	0.77
335	2014-04-01 00:00:00+00	0.82
336	2014-05-01 00:00:00+00	0.87
337	2014-06-01 00:00:00+00	0.82
338	2014-07-01 00:00:00+00	0.95
339	2014-08-01 00:00:00+00	0.87
340	2014-09-01 00:00:00+00	0.91
341	2014-10-01 00:00:00+00	0.95
342	2014-11-01 00:00:00+00	0.84
343	2014-12-01 00:00:00+00	0.96
344	2015-01-01 00:00:00+00	0.94
345	2015-02-01 00:00:00+00	0.82
346	2015-03-01 00:00:00+00	1.04
347	2015-04-01 00:00:00+00	0.95
348	2015-05-01 00:00:00+00	0.99
349	2015-06-01 00:00:00+00	1.07
350	2015-07-01 00:00:00+00	1.18
351	2015-08-01 00:00:00+00	1.11
352	2015-09-01 00:00:00+00	1.11
353	2015-10-01 00:00:00+00	1.11
354	2015-11-01 00:00:00+00	1.06
355	2015-12-01 00:00:00+00	1.16
356	2016-01-01 00:00:00+00	1.06
357	2016-02-01 00:00:00+00	1.0
358	2016-03-01 00:00:00+00	1.16
359	2016-04-01 00:00:00+00	1.06
360	2016-05-01 00:00:00+00	1.11
361	2016-06-01 00:00:00+00	1.16
362	2016-07-01 00:00:00+00	1.11
363	2016-08-01 00:00:00+00	1.22
364	2016-09-01 00:00:00+00	1.11
365	2016-10-01 00:00:00+00	1.05
366	2016-11-01 00:00:00+00	1.04
367	2016-12-01 00:00:00+00	1.12
368	2017-01-01 00:00:00+00	1.09
369	2017-02-01 00:00:00+00	0.87
370	2017-03-01 00:00:00+00	1.05
371	2017-04-01 00:00:00+00	0.79
372	2017-05-01 00:00:00+00	0.93
373	2017-06-01 00:00:00+00	0.81
374	2017-07-01 00:00:00+00	0.8
375	2017-08-01 00:00:00+00	0.8
376	2017-09-01 00:00:00+00	0.64
377	2017-10-01 00:00:00+00	0.64
378	2017-11-01 00:00:00+00	0.57
379	2017-12-01 00:00:00+00	0.54
380	2018-01-01 00:00:00+00	0.58
381	2018-02-01 00:00:00+00	0.47
382	2018-03-01 00:00:00+00	0.53
383	2018-04-01 00:00:00+00	0.52
384	2018-05-01 00:00:00+00	0.52
385	2018-06-01 00:00:00+00	0.52
386	2018-07-01 00:00:00+00	0.54
387	2018-08-01 00:00:00+00	0.57
388	2018-09-01 00:00:00+00	0.47
389	2018-10-01 00:00:00+00	0.54
390	2018-11-01 00:00:00+00	0.49
391	2018-12-01 00:00:00+00	0.49
392	2019-01-01 00:00:00+00	0.54
393	2019-02-01 00:00:00+00	0.49
394	2019-03-01 00:00:00+00	0.47
395	2019-04-01 00:00:00+00	0.52
396	2019-05-01 00:00:00+00	0.54
397	2019-06-01 00:00:00+00	0.47
398	2019-07-01 00:00:00+00	0.57
399	2019-08-01 00:00:00+00	0.5
400	2019-09-01 00:00:00+00	0.46
401	2019-10-01 00:00:00+00	0.48
402	2019-11-01 00:00:00+00	0.38
403	2019-12-01 00:00:00+00	0.37
404	2020-01-01 00:00:00+00	0.38
405	2020-02-01 00:00:00+00	0.29
406	2020-03-01 00:00:00+00	0.34
407	2020-04-01 00:00:00+00	0.28
408	2020-05-01 00:00:00+00	0.24
409	2020-06-01 00:00:00+00	0.21
410	2020-07-01 00:00:00+00	0.19
411	2020-08-01 00:00:00+00	0.16
412	2020-09-01 00:00:00+00	0.16
413	2020-10-01 00:00:00+00	0.16
414	2020-11-01 00:00:00+00	0.15
415	2020-12-01 00:00:00+00	0.16
416	2021-01-01 00:00:00+00	0.15
417	2021-02-01 00:00:00+00	0.13
418	2021-03-01 00:00:00+00	0.2
419	2021-04-01 00:00:00+00	0.21
420	2021-05-01 00:00:00+00	0.27
421	2021-06-01 00:00:00+00	0.31
422	2021-07-01 00:00:00+00	0.36
423	2021-08-01 00:00:00+00	0.43
424	2021-09-01 00:00:00+00	0.44
425	2021-10-01 00:00:00+00	0.49
426	2021-11-01 00:00:00+00	0.59
427	2021-12-01 00:00:00+00	0.77
428	2022-01-01 00:00:00+00	0.73
429	2022-02-01 00:00:00+00	0.76
430	2022-03-01 00:00:00+00	0.93
431	2022-04-01 00:00:00+00	0.83
432	2022-05-01 00:00:00+00	1.03
433	2022-06-01 00:00:00+00	1.02
434	2022-07-01 00:00:00+00	1.03
435	2022-08-01 00:00:00+00	1.17
436	2022-09-01 00:00:00+00	1.07
437	2022-10-01 00:00:00+00	1.02
438	2022-11-01 00:00:00+00	1.02
439	2022-12-01 00:00:00+00	1.12
440	2023-01-01 00:00:00+00	1.12
441	2023-02-01 00:00:00+00	0.92
442	2023-03-01 00:00:00+00	1.17
443	2023-04-01 00:00:00+00	0.92
444	2023-05-01 00:00:00+00	1.12
445	2023-06-01 00:00:00+00	1.07
446	2023-07-01 00:00:00+00	1.07
452	2023-08-01 00:00:00+00	1.14
453	2023-09-01 00:00:00+00	0.97
454	2023-10-01 00:00:00+00	1.0
455	2023-11-01 00:00:00+00	0.92
456	2023-12-01 00:00:00+00	0.89
457	2024-01-01 00:00:00+00	0.97
458	2024-02-01 00:00:00+00	0.80
\.


--
-- Data for Name: seliccopom; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seliccopom (id, data, valor) FROM stdin;
8970	2023-09-01 00:00:00+00	13.25
8971	2023-10-01 00:00:00+00	12.75
8972	2023-11-01 00:00:00+00	12.75
8975	2024-02-01 00:00:00+00	11.25
28	1999-04-01 00:00:00+00	42.0
58	1999-05-01 00:00:00+00	32.0
89	1999-06-01 00:00:00+00	23.5
119	1999-07-01 00:00:00+00	21.0
150	1999-08-01 00:00:00+00	19.5
8973	2023-12-01 00:00:00+00	12.25
181	1999-09-01 00:00:00+00	19.5
211	1999-10-01 00:00:00+00	19.0
242	1999-11-01 00:00:00+00	19.0
272	1999-12-01 00:00:00+00	19.0
303	2000-01-01 00:00:00+00	19.0
8969	2023-08-01 00:00:00+00	13.75
8974	2024-01-01 00:00:00+00	11.75
334	2000-02-01 00:00:00+00	19.0
363	2000-03-01 00:00:00+00	19.0
394	2000-04-01 00:00:00+00	18.5
424	2000-05-01 00:00:00+00	18.5
455	2000-06-01 00:00:00+00	18.5
485	2000-07-01 00:00:00+00	17.5
516	2000-08-01 00:00:00+00	16.5
547	2000-09-01 00:00:00+00	16.5
577	2000-10-01 00:00:00+00	16.5
608	2000-11-01 00:00:00+00	16.5
638	2000-12-01 00:00:00+00	16.5
669	2001-01-01 00:00:00+00	15.75
700	2001-02-01 00:00:00+00	15.25
728	2001-03-01 00:00:00+00	15.25
759	2001-04-01 00:00:00+00	15.75
789	2001-05-01 00:00:00+00	16.25
820	2001-06-01 00:00:00+00	16.75
850	2001-07-01 00:00:00+00	18.25
881	2001-08-01 00:00:00+00	19.0
912	2001-09-01 00:00:00+00	19.0
942	2001-10-01 00:00:00+00	19.0
973	2001-11-01 00:00:00+00	19.0
1003	2001-12-01 00:00:00+00	19.0
1034	2002-01-01 00:00:00+00	19.0
1065	2002-02-01 00:00:00+00	19.0
1093	2002-03-01 00:00:00+00	18.75
1124	2002-04-01 00:00:00+00	18.5
1154	2002-05-01 00:00:00+00	18.5
1185	2002-06-01 00:00:00+00	18.5
1215	2002-07-01 00:00:00+00	18.5
1246	2002-08-01 00:00:00+00	18.0
1277	2002-09-01 00:00:00+00	18.0
1307	2002-10-01 00:00:00+00	18.0
1338	2002-11-01 00:00:00+00	21.0
1368	2002-12-01 00:00:00+00	22.0
1399	2003-01-01 00:00:00+00	25.0
1430	2003-02-01 00:00:00+00	25.5
1458	2003-03-01 00:00:00+00	26.5
1489	2003-04-01 00:00:00+00	26.5
1519	2003-05-01 00:00:00+00	26.5
1550	2003-06-01 00:00:00+00	26.5
1580	2003-07-01 00:00:00+00	26.0
1611	2003-08-01 00:00:00+00	24.5
1642	2003-09-01 00:00:00+00	22.0
1672	2003-10-01 00:00:00+00	20.0
1703	2003-11-01 00:00:00+00	19.0
1733	2003-12-01 00:00:00+00	17.5
1764	2004-01-01 00:00:00+00	16.5
1795	2004-02-01 00:00:00+00	16.5
1824	2004-03-01 00:00:00+00	16.5
1855	2004-04-01 00:00:00+00	16.25
1885	2004-05-01 00:00:00+00	16.0
1916	2004-06-01 00:00:00+00	16.0
1946	2004-07-01 00:00:00+00	16.0
1977	2004-08-01 00:00:00+00	16.0
2008	2004-09-01 00:00:00+00	16.0
2038	2004-10-01 00:00:00+00	16.25
2069	2004-11-01 00:00:00+00	16.75
2099	2004-12-01 00:00:00+00	17.25
2130	2005-01-01 00:00:00+00	17.75
2161	2005-02-01 00:00:00+00	18.25
2189	2005-03-01 00:00:00+00	18.75
2220	2005-04-01 00:00:00+00	19.25
2250	2005-05-01 00:00:00+00	19.5
2281	2005-06-01 00:00:00+00	19.75
2311	2005-07-01 00:00:00+00	19.75
2342	2005-08-01 00:00:00+00	19.75
2373	2005-09-01 00:00:00+00	19.75
2403	2005-10-01 00:00:00+00	19.5
2434	2005-11-01 00:00:00+00	19.0
2464	2005-12-01 00:00:00+00	18.5
2495	2006-01-01 00:00:00+00	18.0
2526	2006-02-01 00:00:00+00	17.25
2554	2006-03-01 00:00:00+00	17.25
2585	2006-04-01 00:00:00+00	16.5
2615	2006-05-01 00:00:00+00	15.75
2646	2006-06-01 00:00:00+00	15.25
2676	2006-07-01 00:00:00+00	15.25
2707	2006-08-01 00:00:00+00	14.75
2738	2006-09-01 00:00:00+00	14.25
2768	2006-10-01 00:00:00+00	14.25
2799	2006-11-01 00:00:00+00	13.75
2829	2006-12-01 00:00:00+00	13.25
2860	2007-01-01 00:00:00+00	13.25
2891	2007-02-01 00:00:00+00	13.0
2919	2007-03-01 00:00:00+00	13.0
2950	2007-04-01 00:00:00+00	12.75
2980	2007-05-01 00:00:00+00	12.5
3011	2007-06-01 00:00:00+00	12.5
3041	2007-07-01 00:00:00+00	12.0
3072	2007-08-01 00:00:00+00	11.5
3103	2007-09-01 00:00:00+00	11.5
3133	2007-10-01 00:00:00+00	11.25
3164	2007-11-01 00:00:00+00	11.25
3194	2007-12-01 00:00:00+00	11.25
3225	2008-01-01 00:00:00+00	11.25
3256	2008-02-01 00:00:00+00	11.25
3285	2008-03-01 00:00:00+00	11.25
3316	2008-04-01 00:00:00+00	11.25
3346	2008-05-01 00:00:00+00	11.75
3377	2008-06-01 00:00:00+00	11.75
3407	2008-07-01 00:00:00+00	12.25
3438	2008-08-01 00:00:00+00	13.0
3469	2008-09-01 00:00:00+00	13.0
3499	2008-10-01 00:00:00+00	13.75
3530	2008-11-01 00:00:00+00	13.75
3560	2008-12-01 00:00:00+00	13.75
3591	2009-01-01 00:00:00+00	13.75
3622	2009-02-01 00:00:00+00	12.75
3650	2009-03-01 00:00:00+00	12.75
3681	2009-04-01 00:00:00+00	11.25
3711	2009-05-01 00:00:00+00	10.25
3742	2009-06-01 00:00:00+00	10.25
3772	2009-07-01 00:00:00+00	9.25
3803	2009-08-01 00:00:00+00	8.75
3834	2009-09-01 00:00:00+00	8.75
3864	2009-10-01 00:00:00+00	8.75
3895	2009-11-01 00:00:00+00	8.75
3925	2009-12-01 00:00:00+00	8.75
3956	2010-01-01 00:00:00+00	8.75
3987	2010-02-01 00:00:00+00	8.75
4015	2010-03-01 00:00:00+00	8.75
4046	2010-04-01 00:00:00+00	8.75
4076	2010-05-01 00:00:00+00	9.5
4107	2010-06-01 00:00:00+00	9.5
4137	2010-07-01 00:00:00+00	10.25
4168	2010-08-01 00:00:00+00	10.75
4199	2010-09-01 00:00:00+00	10.75
4229	2010-10-01 00:00:00+00	10.75
4260	2010-11-01 00:00:00+00	10.75
4290	2010-12-01 00:00:00+00	10.75
4321	2011-01-01 00:00:00+00	10.75
4352	2011-02-01 00:00:00+00	11.25
4380	2011-03-01 00:00:00+00	11.25
4411	2011-04-01 00:00:00+00	11.75
4441	2011-05-01 00:00:00+00	12.0
4472	2011-06-01 00:00:00+00	12.0
4502	2011-07-01 00:00:00+00	12.25
4533	2011-08-01 00:00:00+00	12.5
4564	2011-09-01 00:00:00+00	12.0
4594	2011-10-01 00:00:00+00	12.0
4625	2011-11-01 00:00:00+00	11.5
4655	2011-12-01 00:00:00+00	11.0
4686	2012-01-01 00:00:00+00	11.0
4717	2012-02-01 00:00:00+00	10.5
4746	2012-03-01 00:00:00+00	10.5
4777	2012-04-01 00:00:00+00	9.75
4807	2012-05-01 00:00:00+00	9.0
4838	2012-06-01 00:00:00+00	8.5
4868	2012-07-01 00:00:00+00	8.5
4899	2012-08-01 00:00:00+00	8.0
4930	2012-09-01 00:00:00+00	7.5
4960	2012-10-01 00:00:00+00	7.5
4991	2012-11-01 00:00:00+00	7.25
5021	2012-12-01 00:00:00+00	7.25
5052	2013-01-01 00:00:00+00	7.25
5083	2013-02-01 00:00:00+00	7.25
5111	2013-03-01 00:00:00+00	7.25
5142	2013-04-01 00:00:00+00	7.25
5172	2013-05-01 00:00:00+00	7.5
5203	2013-06-01 00:00:00+00	8.0
5233	2013-07-01 00:00:00+00	8.0
5264	2013-08-01 00:00:00+00	8.5
5295	2013-09-01 00:00:00+00	9.0
5325	2013-10-01 00:00:00+00	9.0
5356	2013-11-01 00:00:00+00	9.5
5386	2013-12-01 00:00:00+00	10.0
5417	2014-01-01 00:00:00+00	10.0
5448	2014-02-01 00:00:00+00	10.5
5476	2014-03-01 00:00:00+00	10.75
5507	2014-04-01 00:00:00+00	10.75
5537	2014-05-01 00:00:00+00	11.0
5568	2014-06-01 00:00:00+00	11.0
5598	2014-07-01 00:00:00+00	11.0
5629	2014-08-01 00:00:00+00	11.0
5660	2014-09-01 00:00:00+00	11.0
5690	2014-10-01 00:00:00+00	11.0
5721	2014-11-01 00:00:00+00	11.25
5751	2014-12-01 00:00:00+00	11.25
5782	2015-01-01 00:00:00+00	11.75
5813	2015-02-01 00:00:00+00	12.25
5841	2015-03-01 00:00:00+00	12.25
5872	2015-04-01 00:00:00+00	12.75
5902	2015-05-01 00:00:00+00	13.25
5933	2015-06-01 00:00:00+00	13.25
5963	2015-07-01 00:00:00+00	13.75
5994	2015-08-01 00:00:00+00	14.25
6025	2015-09-01 00:00:00+00	14.25
6055	2015-10-01 00:00:00+00	14.25
6086	2015-11-01 00:00:00+00	14.25
6116	2015-12-01 00:00:00+00	14.25
6147	2016-01-01 00:00:00+00	14.25
6178	2016-02-01 00:00:00+00	14.25
6207	2016-03-01 00:00:00+00	14.25
6238	2016-04-01 00:00:00+00	14.25
6268	2016-05-01 00:00:00+00	14.25
6299	2016-06-01 00:00:00+00	14.25
6329	2016-07-01 00:00:00+00	14.25
6360	2016-08-01 00:00:00+00	14.25
6391	2016-09-01 00:00:00+00	14.25
6421	2016-10-01 00:00:00+00	14.25
6452	2016-11-01 00:00:00+00	14.0
6482	2016-12-01 00:00:00+00	13.75
6513	2017-01-01 00:00:00+00	13.75
6544	2017-02-01 00:00:00+00	13.0
6572	2017-03-01 00:00:00+00	12.25
6603	2017-04-01 00:00:00+00	12.25
6633	2017-05-01 00:00:00+00	11.25
6664	2017-06-01 00:00:00+00	10.25
6694	2017-07-01 00:00:00+00	10.25
6725	2017-08-01 00:00:00+00	9.25
6756	2017-09-01 00:00:00+00	9.25
6786	2017-10-01 00:00:00+00	8.25
6817	2017-11-01 00:00:00+00	7.5
6847	2017-12-01 00:00:00+00	7.5
6878	2018-01-01 00:00:00+00	7.0
6909	2018-02-01 00:00:00+00	7.0
6937	2018-03-01 00:00:00+00	6.75
6968	2018-04-01 00:00:00+00	6.5
6998	2018-05-01 00:00:00+00	6.5
7029	2018-06-01 00:00:00+00	6.5
7059	2018-07-01 00:00:00+00	6.5
7090	2018-08-01 00:00:00+00	6.5
7121	2018-09-01 00:00:00+00	6.5
7151	2018-10-01 00:00:00+00	6.5
7182	2018-11-01 00:00:00+00	6.5
7212	2018-12-01 00:00:00+00	6.5
7243	2019-01-01 00:00:00+00	6.5
7274	2019-02-01 00:00:00+00	6.5
7302	2019-03-01 00:00:00+00	6.5
7333	2019-04-01 00:00:00+00	6.5
7363	2019-05-01 00:00:00+00	6.5
7394	2019-06-01 00:00:00+00	6.5
7424	2019-07-01 00:00:00+00	6.5
7455	2019-08-01 00:00:00+00	6.0
7486	2019-09-01 00:00:00+00	6.0
7516	2019-10-01 00:00:00+00	5.5
7547	2019-11-01 00:00:00+00	5.0
7577	2019-12-01 00:00:00+00	5.0
7608	2020-01-01 00:00:00+00	4.5
7639	2020-02-01 00:00:00+00	4.5
7668	2020-03-01 00:00:00+00	4.25
7699	2020-04-01 00:00:00+00	3.75
7729	2020-05-01 00:00:00+00	3.75
7760	2020-06-01 00:00:00+00	3.0
7790	2020-07-01 00:00:00+00	2.25
7821	2020-08-01 00:00:00+00	2.25
7852	2020-09-01 00:00:00+00	2.0
7882	2020-10-01 00:00:00+00	2.0
7913	2020-11-01 00:00:00+00	2.0
7943	2020-12-01 00:00:00+00	2.0
7974	2021-01-01 00:00:00+00	2.0
8005	2021-02-01 00:00:00+00	2.0
8033	2021-03-01 00:00:00+00	2.0
8064	2021-04-01 00:00:00+00	2.75
8094	2021-05-01 00:00:00+00	2.75
8125	2021-06-01 00:00:00+00	3.5
8155	2021-07-01 00:00:00+00	4.25
8186	2021-08-01 00:00:00+00	4.25
8217	2021-09-01 00:00:00+00	5.25
8247	2021-10-01 00:00:00+00	6.25
8278	2021-11-01 00:00:00+00	7.75
8308	2021-12-01 00:00:00+00	7.75
8339	2022-01-01 00:00:00+00	9.25
8370	2022-02-01 00:00:00+00	9.25
8398	2022-03-01 00:00:00+00	10.75
8429	2022-04-01 00:00:00+00	11.75
8459	2022-05-01 00:00:00+00	11.75
8490	2022-06-01 00:00:00+00	12.75
8520	2022-07-01 00:00:00+00	13.25
8551	2022-08-01 00:00:00+00	13.25
8582	2022-09-01 00:00:00+00	13.75
8612	2022-10-01 00:00:00+00	13.75
8643	2022-11-01 00:00:00+00	13.75
8673	2022-12-01 00:00:00+00	13.75
8704	2023-01-01 00:00:00+00	13.75
8735	2023-02-01 00:00:00+00	13.75
8763	2023-03-01 00:00:00+00	13.75
8794	2023-04-01 00:00:00+00	13.75
8824	2023-05-01 00:00:00+00	13.75
8855	2023-06-01 00:00:00+00	13.75
8885	2023-07-01 00:00:00+00	13.75
\.


--
-- Data for Name: serie_historica_moedas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.serie_historica_moedas (id, vigencia, moeda, alteracao, legislacao) FROM stdin;
\.


--
-- Data for Name: t200_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t200_tabela_pnep (id, data, indexador, variacao_mensal, numero_indice, fator_vigente, indice_correcao) FROM stdin;
1	1964-10-01 00:00:00+00	ORTN	0.0	1.0	1620.6956	0.008316476
2	1964-11-01 00:00:00+00	ORTN	0.0	1.0	1620.6956	0.008316476
3	1964-12-01 00:00:00+00	ORTN	0.130000001	1.130000001	1620.6956	0.008316476
4	1965-01-01 00:00:00+00	ORTN	0.0	1.0	1831.38603	0.007359713
5	1965-02-01 00:00:00+00	ORTN	0.0	1.0	1831.38603	0.007359713
6	1965-03-01 00:00:00+00	ORTN	0.185840713	1.185840713	1831.38603	0.007359713
7	1965-04-01 00:00:00+00	ORTN	0.0	1.0	2171.732116	0.006206325
8	1965-05-01 00:00:00+00	ORTN	0.0	1.0	2171.732116	0.006206325
9	1965-06-01 00:00:00+00	ORTN	0.134328344	1.134328344	2171.732116	0.006206325
10	1965-07-01 00:00:00+00	ORTN	0.0	1.0	2463.457294	0.005471366
11	1965-08-01 00:00:00+00	ORTN	0.032894753	1.032894753	2463.457294	0.005471366
12	1965-09-01 00:00:00+00	ORTN	0.012738835	1.012738835	2544.492113	0.005297118
13	1965-10-01 00:00:00+00	ORTN	0.009433975	1.009433975	2576.905977	0.005230488
14	1965-11-01 00:00:00+00	ORTN	0.015576314	1.015576314	2601.216445	0.005181605
15	1965-12-01 00:00:00+00	ORTN	0.018404928	1.018404928	2641.73381	0.005102133
16	1966-01-01 00:00:00+00	ORTN	0.027108437	1.027108437	2690.354731	0.005009925
17	1966-02-01 00:00:00+00	ORTN	0.014662738	1.014662738	2763.286043	0.004877698
18	1966-03-01 00:00:00+00	ORTN	0.017341059	1.017341059	2803.803383	0.004807212
19	1966-04-01 00:00:00+00	ORTN	0.038636354	1.038636354	2852.424302	0.00472527
20	1966-05-01 00:00:00+00	ORTN	0.044310705	1.044310705	2962.631578	0.004549494
21	1966-06-01 00:00:00+00	ORTN	0.040859093	1.040859093	3093.907873	0.004356457
22	1966-07-01 00:00:00+00	ORTN	0.028183186	1.028183186	3220.322141	0.004185443
23	1966-08-01 00:00:00+00	ORTN	0.028389642	1.028389642	3311.081079	0.004070718
24	1966-09-01 00:00:00+00	ORTN	0.02855781	1.02855781	3405.081486	0.003958342
25	1966-10-01 00:00:00+00	ORTN	0.026376703	1.026376703	3502.323156	0.003848439
26	1966-11-01 00:00:00+00	ORTN	0.022993684	1.022993684	3594.702894	0.003749538
27	1966-12-01 00:00:00+00	ORTN	0.023799027	1.023799027	3677.358356	0.00366526
28	1967-01-01 00:00:00+00	ORTN	0.023676	1.023676	3764.875907	0.003580058
29	1967-02-01 00:00:00+00	ORTN	0.021026072	1.021026072	3.854013	3.497257419
30	1967-03-01 00:00:00+00	ORTN	0.014827018	1.014827018	3.935048	3.425238115
31	1967-04-01 00:00:00+00	ORTN	0.015016234	1.015016234	3.993393	3.375194052
32	1967-05-01 00:00:00+00	ORTN	0.017992803	1.017992803	4.053359	3.325261153
33	1967-06-01 00:00:00+00	ORTN	0.028279654	1.028279654	4.12629	3.26648788
34	1967-07-01 00:00:00+00	ORTN	0.025210084	1.025210084	4.24298	3.176653225
35	1967-08-01 00:00:00+00	ORTN	0.015275708	1.015275708	4.349946	3.098538802
36	1967-09-01 00:00:00+00	ORTN	0.004770642	1.004770642	4.416394	3.051918585
37	1967-10-01 00:00:00+00	ORTN	0.006939372	1.006939372	4.437463	3.037428102
38	1967-11-01 00:00:00+00	ORTN	0.014145811	1.014145811	4.468257	3.016495518
39	1967-12-01 00:00:00+00	ORTN	0.018597997	1.018597997	4.531464	2.974419937
40	1968-01-01 00:00:00+00	ORTN	0.01755618	1.01755618	4.61574	2.920111708
41	1968-02-01 00:00:00+00	ORTN	0.014492754	1.014492754	4.696775	2.869730208
42	1968-03-01 00:00:00+00	ORTN	0.01462585	1.01462585	4.764844	2.828734062
43	1968-04-01 00:00:00+00	ORTN	0.018773047	1.018773047	4.834534	2.787957809
44	1968-05-01 00:00:00+00	ORTN	0.026653504	1.026653504	4.925293	2.736583792
45	1968-06-01 00:00:00+00	ORTN	0.028525641	1.028525641	5.056569	2.665537866
46	1968-07-01 00:00:00+00	ORTN	0.022436896	1.022436896	5.200811	2.591610515
47	1968-08-01 00:00:00+00	ORTN	0.018287108	1.018287108	5.317501	2.534738843
48	1968-09-01 00:00:00+00	ORTN	0.014067644	1.014067644	5.414743	2.489218241
49	1968-10-01 00:00:00+00	ORTN	0.015053129	1.015053129	5.490915	2.454686583
50	1968-11-01 00:00:00+00	ORTN	0.016283803	1.016283803	5.573571	2.418283845
51	1968-12-01 00:00:00+00	ORTN	0.019170243	1.019170243	5.66433	2.379535949
52	1969-01-01 00:00:00+00	ORTN	0.018248175	1.018248175	5.772916	2.334777693
53	1969-02-01 00:00:00+00	ORTN	0.017645437	1.017645437	5.878261	2.292935799
54	1969-03-01 00:00:00+00	ORTN	0.014088323	1.014088323	5.981986	2.253177498
55	1969-04-01 00:00:00+00	ORTN	0.015495592	1.015495592	6.066262	2.221875005
56	1969-05-01 00:00:00+00	ORTN	0.012365167	1.012365167	6.160262	2.187971098
57	1969-06-01 00:00:00+00	ORTN	0.013513514	1.013513514	6.236435	2.161246919
58	1969-07-01 00:00:00+00	ORTN	0.006923077	1.006923077	6.320711	2.132430293
59	1969-08-01 00:00:00+00	ORTN	0.007384772	1.007384772	6.36447	2.117768817
60	1969-09-01 00:00:00+00	ORTN	0.009100101	1.009100101	6.41147	2.102244222
61	1969-10-01 00:00:00+00	ORTN	0.016282565	1.016282565	6.469815	2.083286108
62	1969-11-01 00:00:00+00	ORTN	0.020951442	1.020951442	6.57516	2.049908342
63	1969-12-01 00:00:00+00	ORTN	0.022452921	1.022452921	6.712919	2.007841174
64	1970-01-01 00:00:00+00	ORTN	0.022432113	1.022432113	6.863644	1.963749266
65	1970-02-01 00:00:00+00	ORTN	0.020092379	1.020092379	7.01761	1.920664698
66	1970-03-01 00:00:00+00	ORTN	0.0113199	1.0113199	7.158611	1.882834083
67	1970-04-01 00:00:00+00	ORTN	0.00917842	1.00917842	7.239645	1.861759155
68	1970-05-01 00:00:00+00	ORTN	0.00931677	1.00931677	7.306094	1.844826562
69	1970-06-01 00:00:00+00	ORTN	0.015384615	1.015384615	7.374163	1.827797394
70	1970-07-01 00:00:00+00	ORTN	0.008874459	1.008874459	7.487612	1.800103494
71	1970-08-01 00:00:00+00	ORTN	0.009440034	1.009440034	7.55406	1.784269072
72	1970-09-01 00:00:00+00	ORTN	0.011902232	1.011902232	7.625371	1.767583027
73	1970-10-01 00:00:00+00	ORTN	0.018903592	1.018903592	7.71613	1.746792301
74	1970-11-01 00:00:00+00	ORTN	0.021232736	1.021232736	7.861992	1.71438428
75	1970-12-01 00:00:00+00	ORTN	0.019580137	1.019580137	8.028924	1.678740037
76	1971-01-01 00:00:00+00	ORTN	0.018412196	1.018412196	8.186131	1.646501315
77	1971-02-01 00:00:00+00	ORTN	0.013219285	1.013219285	8.336856	1.616733698
78	1971-03-01 00:00:00+00	ORTN	0.009976976	1.009976976	8.447063	1.595640473
79	1971-04-01 00:00:00+00	ORTN	0.011588146	1.011588146	8.531339	1.579878067
80	1971-05-01 00:00:00+00	ORTN	0.0142723	1.0142723	8.630202	1.561779933
81	1971-06-01 00:00:00+00	ORTN	0.019811146	1.019811146	8.753375	1.539803396
82	1971-07-01 00:00:00+00	ORTN	0.019970951	1.019970951	8.926789	1.50989073
83	1971-08-01 00:00:00+00	ORTN	0.021003916	1.021003916	9.105065	1.480327188
84	1971-09-01 00:00:00+00	ORTN	0.02179219	1.02179219	9.296307	1.449874153
85	1971-10-01 00:00:00+00	ORTN	0.020133083	1.020133083	9.498894	1.41895208
86	1971-11-01 00:00:00+00	ORTN	0.016390701	1.016390701	9.690136	1.390948009
87	1971-12-01 00:00:00+00	ORTN	0.012341616	1.012341616	9.848965	1.368517055
88	1972-01-01 00:00:00+00	ORTN	0.012028609	1.012028609	9.970517	1.351833248
89	1972-02-01 00:00:00+00	ORTN	0.013331192	1.013331192	10.090448	1.335765844
90	1972-03-01 00:00:00+00	ORTN	0.011412268	1.011412268	10.224966	1.318192763
91	1972-04-01 00:00:00+00	ORTN	0.013320796	1.013320796	10.341656	1.303318938
92	1972-05-01 00:00:00+00	ORTN	0.016857408	1.016857408	10.479415	1.286185918
93	1972-06-01 00:00:00+00	ORTN	0.017946768	1.017946768	10.656071	1.264863596
94	1972-07-01 00:00:00+00	ORTN	0.014343344	1.014343344	10.847313	1.242563595
95	1972-08-01 00:00:00+00	ORTN	0.008395935	1.008395935	11.002899	1.224993098
96	1972-09-01 00:00:00+00	ORTN	0.007157464	1.007157464	11.095279	1.214793769
97	1972-10-01 00:00:00+00	ORTN	0.009572154	1.009572154	11.174693	1.206160717
98	1972-11-01 00:00:00+00	ORTN	0.006608246	1.006608246	11.281659	1.194724629
99	1972-12-01 00:00:00+00	ORTN	0.011417154	1.011417154	11.356211	1.186881425
100	1973-01-01 00:00:00+00	ORTN	0.00987724	1.00987724	11.485867	1.173483582
101	1973-02-01 00:00:00+00	ORTN	0.010479251	1.010479251	11.599315	1.162006168
102	1973-03-01 00:00:00+00	ORTN	0.012029867	1.012029867	11.720867	1.149955495
103	1973-04-01 00:00:00+00	ORTN	0.011476978	1.011476978	11.861868	1.136286124
104	1973-05-01 00:00:00+00	ORTN	0.012697555	1.012697555	11.998006	1.123392968
105	1973-06-01 00:00:00+00	ORTN	0.011071095	1.011071095	12.150352	1.109307475
106	1973-07-01 00:00:00+00	ORTN	0.008970976	1.008970976	12.284869	1.097160705
107	1973-08-01 00:00:00+00	ORTN	0.008368201	1.008368201	12.395077	1.087405615
108	1973-09-01 00:00:00+00	ORTN	0.009725104	1.009725104	12.498801	1.078381502
109	1973-10-01 00:00:00+00	ORTN	0.006806215	1.006806215	12.620353	1.067995138
110	1973-11-01 00:00:00+00	ORTN	0.008545918	1.008545918	12.70625	1.060775273
111	1973-12-01 00:00:00+00	ORTN	0.019602883	1.019602883	12.814837	1.051786789
112	1974-01-01 00:00:00+00	ORTN	0.010543289	1.010543289	13.066044	1.031565138
113	1974-02-01 00:00:00+00	ORTN	0.014974837	1.014974837	13.203804	1.020802522
114	1974-03-01 00:00:00+00	ORTN	0.012577095	1.012577095	13.401528	1.005741703
115	1974-04-01 00:00:00+00	ORTN	0.016362116	1.016362116	13.570081	0.99324951
116	1974-05-01 00:00:00+00	ORTN	0.021269095	1.021269095	13.792116	0.977259476
117	1974-06-01 00:00:00+00	ORTN	0.03325279	1.03325279	14.085462	0.956906932
118	1974-07-01 00:00:00+00	ORTN	0.043986637	1.043986637	14.553843	0.926111152
119	1974-08-01 00:00:00+00	ORTN	0.04768	1.04768	15.194017	0.887091002
120	1974-09-01 00:00:00+00	ORTN	0.037466911	1.037466911	15.918468	0.84671942
121	1974-10-01 00:00:00+00	ORTN	0.021589794	1.021589794	16.514884	0.816141133
122	1974-11-01 00:00:00+00	ORTN	0.012584054	1.012584054	16.871437	0.798893193
123	1974-12-01 00:00:00+00	ORTN	0.012807134	1.012807134	17.083748	0.788964818
124	1975-01-01 00:00:00+00	ORTN	0.015174223	1.015174223	17.302542	0.778988211
125	1975-02-01 00:00:00+00	ORTN	0.01660823	1.01660823	17.565094	0.767344357
126	1975-03-01 00:00:00+00	ORTN	0.018787439	1.018787439	17.856819	0.754808327
127	1975-04-01 00:00:00+00	ORTN	0.019955457	1.019955457	18.192303	0.740888921
128	1975-05-01 00:00:00+00	ORTN	0.023058782	1.023058782	18.555339	0.726393409
129	1975-06-01 00:00:00+00	ORTN	0.018270298	1.018270298	18.983203	0.710021185
130	1975-07-01 00:00:00+00	ORTN	0.017104049	1.017104049	19.330031	0.697281642
131	1975-08-01 00:00:00+00	ORTN	0.015579919	1.015579919	19.660653	0.68555586
132	1975-09-01 00:00:00+00	ORTN	0.020292208	1.020292208	19.966964	0.67503881
133	1975-10-01 00:00:00+00	ORTN	0.021718377	1.021718377	20.372138	0.661613217
134	1975-11-01 00:00:00+00	ORTN	0.019465857	1.019465857	20.814588	0.647549493
135	1975-12-01 00:00:00+00	ORTN	0.018406782	1.018406782	21.219762	0.635185072
136	1976-01-01 00:00:00+00	ORTN	0.01919904	1.01919904	21.610349	0.623704676
137	1976-02-01 00:00:00+00	ORTN	0.022369389	1.022369389	22.025247	0.611955713
138	1976-03-01 00:00:00+00	ORTN	0.023751259	1.023751259	22.517939	0.598566154
139	1976-04-01 00:00:00+00	ORTN	0.025239033	1.025239033	23.052768	0.584679284
140	1976-05-01 00:00:00+00	ORTN	0.02976068	1.02976068	23.634598	0.570285822
141	1976-06-01 00:00:00+00	ORTN	0.0294999	1.0294999	24.337979	0.553804231
142	1976-07-01 00:00:00+00	ORTN	0.025549806	1.025549806	25.055947	0.537935197
143	1976-08-01 00:00:00+00	ORTN	0.027877641	1.027877641	25.696122	0.524533468
144	1976-09-01 00:00:00+00	ORTN	0.032889489	1.032889489	26.412469	0.510307305
145	1976-10-01 00:00:00+00	ORTN	0.03606012	1.03606012	27.281162	0.49405799
146	1976-11-01 00:00:00+00	ORTN	0.030275229	1.030275229	28.264924	0.476862279
147	1976-12-01 00:00:00+00	ORTN	0.022094835	1.022094835	29.120651	0.462849407
148	1977-01-01 00:00:00+00	ORTN	0.017315546	1.017315546	29.764067	0.452843896
149	1977-02-01 00:00:00+00	ORTN	0.019697051	1.019697051	30.279448	0.445136121
150	1977-03-01 00:00:00+00	ORTN	0.022675975	1.022675975	30.875864	0.436537617
151	1977-04-01 00:00:00+00	ORTN	0.02884566	1.02884566	31.576004	0.426858191
152	1977-05-01 00:00:00+00	ORTN	0.032177601	1.032177601	32.486835	0.414890404
153	1977-06-01 00:00:00+00	ORTN	0.033349444	1.033349444	33.532183	0.401956411
154	1977-07-01 00:00:00+00	ORTN	0.026707203	1.026707203	34.650463	0.38898401
155	1977-08-01 00:00:00+00	ORTN	0.020500205	1.020500205	35.57588	0.378865571
156	1977-09-01 00:00:00+00	ORTN	0.014017231	1.014017231	36.305192	0.371254772
157	1977-10-01 00:00:00+00	ORTN	0.013867488	1.013867488	36.814091	0.366122745
158	1977-11-01 00:00:00+00	ORTN	0.014937038	1.014937038	37.32461	0.361114987
159	1977-12-01 00:00:00+00	ORTN	0.019594421	1.019594421	37.882129	0.355800383
160	1978-01-01 00:00:00+00	ORTN	0.021106076	1.021106076	38.624407	0.348962661
161	1978-02-01 00:00:00+00	ORTN	0.023176495	1.023176495	39.439617	0.341749667
162	1978-03-01 00:00:00+00	ORTN	0.025784168	1.025784168	40.353689	0.33400852
163	1978-04-01 00:00:00+00	ORTN	0.02920794	1.02920794	41.394175	0.325612863
164	1978-05-01 00:00:00+00	ORTN	0.030471336	1.030471336	42.603214	0.316372281
165	1978-06-01 00:00:00+00	ORTN	0.03012404	1.03012404	43.901391	0.307017061
166	1978-07-01 00:00:00+00	ORTN	0.030604931	1.030604931	45.223878	0.298038924
167	1978-08-01 00:00:00+00	ORTN	0.027783573	1.027783573	46.607952	0.289188335
168	1978-09-01 00:00:00+00	ORTN	0.026119024	1.026119024	47.902887	0.281370848
169	1978-10-01 00:00:00+00	ORTN	0.023739655	1.023739655	49.154064	0.274208782
170	1978-11-01 00:00:00+00	ORTN	0.025604689	1.025604689	50.320964	0.267850112
171	1978-12-01 00:00:00+00	ORTN	0.026315789	1.026315789	51.609417	0.261163112
172	1979-01-01 00:00:00+00	ORTN	0.022581238	1.022581238	52.967559	0.254466622
173	1979-02-01 00:00:00+00	ORTN	0.023249551	1.023249551	54.163633	0.248847341
174	1979-03-01 00:00:00+00	ORTN	0.024972951	1.024972951	55.422913	0.243193208
175	1979-04-01 00:00:00+00	ORTN	0.037459702	1.037459702	56.806986	0.237267928
176	1979-05-01 00:00:00+00	ORTN	0.038224617	1.038224617	58.934959	0.228700862
177	1979-06-01 00:00:00+00	ORTN	0.033267999	1.033267999	61.187725	0.220280716
178	1979-07-01 00:00:00+00	ORTN	0.027198154	1.027198154	63.223319	0.213188366
179	1979-08-01 00:00:00+00	ORTN	0.028773927	1.028773927	64.942876	0.207543564
180	1979-09-01 00:00:00+00	ORTN	0.040170774	1.040170774	66.811538	0.201738748
181	1979-10-01 00:00:00+00	ORTN	0.045872201	1.045872201	69.495409	0.193947718
182	1979-11-01 00:00:00+00	ORTN	0.045131224	1.045131224	72.683316	0.185441125
183	1979-12-01 00:00:00+00	ORTN	0.040792815	1.040792815	75.963603	0.177433341
184	1980-01-01 00:00:00+00	ORTN	0.042022836	1.042022836	79.062372	0.170479022
185	1980-02-01 00:00:00+00	ORTN	0.037003521	1.037003521	82.384798	0.163603921
186	1980-03-01 00:00:00+00	ORTN	0.036992071	1.036992071	85.433325	0.157766023
187	1980-04-01 00:00:00+00	ORTN	0.036989609	1.036989609	88.593681	0.152138119
188	1980-05-01 00:00:00+00	ORTN	0.033994284	1.033994284	91.870726	0.146711325
189	1980-06-01 00:00:00+00	ORTN	0.032006551	1.032006551	94.993806	0.141887945
190	1980-07-01 00:00:00+00	ORTN	0.032005819	1.032005819	98.03423	0.137487446
191	1980-08-01 00:00:00+00	ORTN	0.032006408	1.032006408	101.171896	0.133223519
192	1980-09-01 00:00:00+00	ORTN	0.030004812	1.030004812	104.410045	0.129091755
193	1980-10-01 00:00:00+00	ORTN	0.031994093	1.031994093	107.542849	0.125331216
194	1980-11-01 00:00:00+00	ORTN	0.031995211	1.031995211	110.983584	0.121445672
195	1980-12-01 00:00:00+00	ORTN	0.044997877	1.044997877	114.534528	0.11768046
196	1981-01-01 00:00:00+00	ORTN	0.05000677	1.05000677	119.688338	0.11261311
197	1981-02-01 00:00:00+00	ORTN	0.064996196	1.064996196	125.673565	0.107249889
198	1981-03-01 00:00:00+00	ORTN	0.063003281	1.063003281	133.841869	0.100704481
199	1981-04-01 00:00:00+00	ORTN	0.059998178	1.059998178	142.274346	0.094735814
200	1981-05-01 00:00:00+00	ORTN	0.059998064	1.059998064	150.810548	0.089373563
201	1981-06-01 00:00:00+00	ORTN	0.059998379	1.059998379	159.858889	0.084314836
202	1981-07-01 00:00:00+00	ORTN	0.059997704	1.059997704	169.450163	0.07954242
203	1981-08-01 00:00:00+00	ORTN	0.058000308	1.058000308	179.616783	0.075040181
204	1981-09-01 00:00:00+00	ORTN	0.057003966	1.057003966	190.034612	0.070926426
205	1981-10-01 00:00:00+00	ORTN	0.057003848	1.057003848	200.867339	0.067101382
206	1981-11-01 00:00:00+00	ORTN	0.054998322	1.054998322	212.31755	0.063482628
207	1981-12-01 00:00:00+00	ORTN	0.052000955	1.052000955	223.994659	0.060173202
208	1982-01-01 00:00:00+00	ORTN	0.050001375	1.050001375	235.642595	0.05719881
209	1982-02-01 00:00:00+00	ORTN	0.049998035	1.049998035	247.425049	0.054474985
210	1982-03-01 00:00:00+00	ORTN	0.050000313	1.050000313	259.795815	0.051881036
211	1982-04-01 00:00:00+00	ORTN	0.054998394	1.054998394	272.785687	0.049410495
212	1982-05-01 00:00:00+00	ORTN	0.054997719	1.054997719	287.788462	0.046834664
213	1982-06-01 00:00:00+00	ORTN	0.055002483	1.055002483	303.616171	0.044393143
214	1982-07-01 00:00:00+00	ORTN	0.059997675	1.059997675	320.315814	0.042078709
215	1982-08-01 00:00:00+00	ORTN	0.070000334	1.070000334	339.534018	0.039696982
216	1982-09-01 00:00:00+00	ORTN	0.069997859	1.069997859	363.301513	0.037099972
217	1982-10-01 00:00:00+00	ORTN	0.070000625	1.070000625	388.731841	0.03467294
218	1982-11-01 00:00:00+00	ORTN	0.065000289	1.065000289	415.943313	0.032404598
219	1982-12-01 00:00:00+00	ORTN	0.064999069	1.064999069	442.979749	0.030426845
220	1983-01-01 00:00:00+00	ORTN	0.060001442	1.060001442	471.77302	0.028569832
221	1983-02-01 00:00:00+00	ORTN	0.06699853	1.06699853	500.080081	0.026952635
222	1983-03-01 00:00:00+00	ORTN	0.090000367	1.090000367	533.584712	0.025260236
223	1983-04-01 00:00:00+00	ORTN	0.09000092	1.09000092	581.607531	0.023174521
224	1983-05-01 00:00:00+00	ORTN	0.080000305	1.080000305	633.952744	0.02126101
225	1983-06-01 00:00:00+00	ORTN	0.077999031	1.077999031	684.669157	0.019686115
226	1983-07-01 00:00:00+00	ORTN	0.089999008	1.089999008	738.072688	0.018261719
227	1983-08-01 00:00:00+00	ORTN	0.084999531	1.084999531	804.498497	0.016753886
228	1983-09-01 00:00:00+00	ORTN	0.094999109	1.094999109	872.880493	0.015441376
229	1983-10-01 00:00:00+00	ORTN	0.097000584	1.097000584	955.803361	0.014101725
230	1983-11-01 00:00:00+00	ORTN	0.083999661	1.083999661	1048.516845	0.012854802
231	1983-12-01 00:00:00+00	ORTN	0.076000397	1.076000397	1136.591905	0.011858677
232	1984-01-01 00:00:00+00	ORTN	0.098000526	1.098000526	1222.973341	0.011021071
233	1984-02-01 00:00:00+00	ORTN	0.123000568	1.123000568	1342.825373	0.0100374
234	1984-03-01 00:00:00+00	ORTN	0.099999888	1.099999888	1507.993656	0.008938019
235	1984-04-01 00:00:00+00	ORTN	0.088999887	1.088999887	1658.792853	0.008125473
236	1984-05-01 00:00:00+00	ORTN	0.088999714	1.088999714	1806.42523	0.007461408
237	1984-06-01 00:00:00+00	ORTN	0.09199967	1.09199967	1967.196558	0.006851616
238	1984-07-01 00:00:00+00	ORTN	0.102999932	1.102999932	2148.177993	0.006274376
239	1984-08-01 00:00:00+00	ORTN	0.106000028	1.106000028	2369.44018	0.005688464
240	1984-09-01 00:00:00+00	ORTN	0.104974079	1.104974079	2620.600906	0.005143277
241	1984-10-01 00:00:00+00	ORTN	0.1260262	1.1260262	2895.696073	0.004654658
242	1984-11-01 00:00:00+00	ORTN	0.098999888	1.098999888	3260.629646	0.004133703
243	1984-12-01 00:00:00+00	ORTN	0.105000086	1.105000086	3583.431615	0.003761332
244	1985-01-01 00:00:00+00	ORTN	0.126000021	1.126000021	3959.692242	0.00340392
245	1985-02-01 00:00:00+00	ORTN	0.101999988	1.101999988	4458.613548	0.00302302
246	1985-03-01 00:00:00+00	ORTN	0.126999835	1.126999835	4913.392075	0.002743212
247	1985-04-01 00:00:00+00	ORTN	0.118292994	1.118292994	5537.392058	0.002434084
248	1985-05-01 00:00:00+00	ORTN	0.100058988	1.100058988	6192.426742	0.002176606
249	1985-06-01 00:00:00+00	ORTN	0.092082024	1.092082024	6812.034697	0.001978627
250	1985-07-01 00:00:00+00	ORTN	0.076139997	1.076139997	7439.300637	0.001811793
251	1985-08-01 00:00:00+00	ORTN	0.08179703	1.08179703	8005.728966	0.001683604
252	1985-09-01 00:00:00+00	ORTN	0.090999965	1.090999965	8660.573814	0.001556303
253	1985-10-01 00:00:00+00	ORTN	0.090000051	1.090000051	9448.685731	0.001426492
254	1985-11-01 00:00:00+00	ORTN	0.111199992	1.111199992	10299.067925	0.001308708
255	1985-12-01 00:00:00+00	ORTN	0.133600014	1.133600014	11444.324195	0.001177743
256	1986-01-01 00:00:00+00	ORTN	0.162300164	1.162300164	12973.286064	0.001038941
257	1986-02-01 00:00:00+00	ORTN	0.143601	1.143601	15.078853	0.893866156
258	1986-03-01 00:00:00+00	OTN	0.0	1.0	17.244191	0.781624147
259	1986-04-01 00:00:00+00	OTN	0.0	1.0	17.244191	0.781624147
260	1986-05-01 00:00:00+00	OTN	0.0	1.0	17.244191	0.781624147
261	1986-06-01 00:00:00+00	OTN	0.0	1.0	17.244191	0.781624147
262	1986-07-01 00:00:00+00	OTN	0.0	1.0	17.244191	0.781624147
263	1986-08-01 00:00:00+00	OTN	0.0	1.0	17.244191	0.781624147
264	1986-09-01 00:00:00+00	OTN	0.0	1.0	17.244191	0.781624147
265	1986-10-01 00:00:00+00	OTN	0.0	1.0	17.244191	0.781624147
266	1986-11-01 00:00:00+00	OTN	0.0	1.0	17.244191	0.781624147
267	1986-12-01 00:00:00+00	OTN	0.0	1.0	17.244191	0.781624147
268	1987-01-01 00:00:00+00	OTN	0.0	1.0	17.244191	0.781624147
269	1987-02-01 00:00:00+00	OTN	0.706860902	1.706860902	17.244191	0.781624147
270	1987-03-01 00:00:00+00	OTN	0.145146193	1.145146193	29.433435	0.457930781
271	1987-04-01 00:00:00+00	OTN	0.209597538	1.209597538	33.705586	0.39988849
272	1987-05-01 00:00:00+00	OTN	0.234417237	1.234417237	40.770194	0.330596316
273	1987-06-01 00:00:00+00	OTN	0.180208031	1.180208031	50.32743	0.2678157
274	1987-07-01 00:00:00+00	OTN	0.030505607	1.030505607	59.396837	0.226922451
275	1987-08-01 00:00:00+00	OTN	0.063600498	1.063600498	61.208774	0.220204965
276	1987-09-01 00:00:00+00	OTN	0.056809978	1.056809978	65.101682	0.207037291
277	1987-10-01 00:00:00+00	OTN	0.091799957	1.091799957	68.800108	0.195907774
278	1987-11-01 00:00:00+00	OTN	0.128398206	1.128398206	75.115955	0.179435594
279	1987-12-01 00:00:00+00	OTN	0.141398497	1.141398497	84.760708	0.159017972
280	1988-01-01 00:00:00+00	OTN	0.165108722	1.165108722	96.745745	0.13931854
281	1988-02-01 00:00:00+00	OTN	0.17961179	1.17961179	112.719311	0.11957557
282	1988-03-01 00:00:00+00	OTN	0.160100924	1.160100924	132.965029	0.101368578
283	1988-04-01 00:00:00+00	OTN	0.192798681	1.192798681	154.252853	0.087379103
284	1988-05-01 00:00:00+00	OTN	0.177799112	1.177799112	183.992599	0.073255533
285	1988-06-01 00:00:00+00	OTN	0.195300349	1.195300349	216.70632	0.062196968
286	1988-07-01 00:00:00+00	OTN	0.240398932	1.240398932	259.02914	0.052034593
287	1988-08-01 00:00:00+00	OTN	0.206599817	1.206599817	321.299468	0.041949886
288	1988-09-01 00:00:00+00	OTN	0.240098492	1.240098492	387.67988	0.034767025
289	1988-10-01 00:00:00+00	OTN	0.272499575	1.272499575	480.761234	0.028035696
290	1988-11-01 00:00:00+00	OTN	0.269200707	1.269200707	611.768466	0.022031989
291	1988-12-01 00:00:00+00	OTN	0.287901	1.287901	776.45697	0.017358948
292	1989-01-01 00:00:00+00	IPC	0.4272	1.4272	1.0	13.47847988
293	1989-02-01 00:00:00+00	IPC	0.1014	1.1014	1.4272	9.444002158
294	1989-03-01 00:00:00+00	BTN	0.060907336	1.060907336	1.571918	8.574543452
295	1989-04-01 00:00:00+00	BTN	0.073059776	1.073059776	1.667659	8.082273694
296	1989-05-01 00:00:00+00	BTN	0.099372562	1.099372562	1.789498	7.531988313
297	1989-06-01 00:00:00+00	BTN	0.248341817	1.248341817	1.967325	6.851169996
298	1989-07-01 00:00:00+00	BTN	0.287594217	1.287594217	2.455894	5.48821637
299	1989-08-01 00:00:00+00	BTN	0.293412024	1.293412024	3.162195	4.262380412
300	1989-09-01 00:00:00+00	BTN	0.359511797	1.359511797	4.09002	3.29545445
301	1989-10-01 00:00:00+00	BTN	0.376210877	1.376210877	5.560431	2.423998422
302	1989-11-01 00:00:00+00	BTN	0.414204703	1.414204703	7.652326	1.761356826
303	1989-12-01 00:00:00+00	BTN	0.535499972	1.535499972	10.821955	1.245475158
304	1990-01-01 00:00:00+00	BTN	0.56109498	1.56109498	16.617111	0.811120274
305	1990-02-01 00:00:00+00	BTN	0.727802864	1.727802864	25.940889	0.519584192
306	1990-03-01 00:00:00+00	IPC	0.843200001	1.843200001	44.820743	0.300719604
307	1990-04-01 00:00:00+00	IPC	0.447999999	1.447999999	82.613593	0.163150826
308	1990-05-01 00:00:00+00	IPC	0.078700001	1.078700001	119.624482	0.112673223
309	1990-06-01 00:00:00+00	IPC	0.095499999	1.095499999	129.038929	0.104452788
310	1990-07-01 00:00:00+00	IPC	0.1292	1.1292	141.362147	0.095347137
311	1990-08-01 00:00:00+00	IPC	0.1203	1.1203	159.626136	0.084437776
312	1990-09-01 00:00:00+00	IPC	0.127600001	1.127600001	178.82916	0.075370683
313	1990-10-01 00:00:00+00	IPC	0.142	1.142	201.647761	0.066841684
314	1990-11-01 00:00:00+00	IPC	0.1558	1.1558	230.281743	0.058530371
315	1990-12-01 00:00:00+00	IPC	0.183000001	1.183000001	266.159639	0.05064057
316	1991-01-01 00:00:00+00	IPC	0.199100001	1.199100001	314.866854	0.042806906
317	1991-02-01 00:00:00+00	IPC	0.218699997	1.218699997	377.556844	0.035699196
318	1991-03-01 00:00:00+00	INPC	0.1179	1.1179	460.128525	0.02929285
319	1991-04-01 00:00:00+00	INPC	0.0501	1.0501	514.377678	0.026203462
320	1991-05-01 00:00:00+00	INPC	0.0668	1.0668	540.148	0.024953302
321	1991-06-01 00:00:00+00	INPC	0.1083	1.1083	576.229886	0.023390796
322	1991-07-01 00:00:00+00	INPC	0.1214	1.1214	638.635583	0.021105113
323	1991-08-01 00:00:00+00	INPC	0.1562	1.1562	716.165943	0.018820325
324	1991-09-01 00:00:00+00	INPC	0.1562	1.1562	828.031063	0.016277742
325	1991-10-01 00:00:00+00	INPC	0.2108	1.2108	957.369515	0.014078656
326	1991-11-01 00:00:00+00	INPC	0.2648	1.2648	1159.183009	0.011627565
327	1991-12-01 00:00:00+00	IPCA	0.2288	1.2288	1466.13467	0.009193205
328	1992-01-01 00:00:00+00	UFIR	0.25600448	1.25600448	1801.586282	0.007481449
329	1992-02-01 00:00:00+00	UFIR	0.261004647	1.261004647	2262.800442	0.005956546
330	1992-03-01 00:00:00+00	UFIR	0.220295228	1.220295228	2853.401872	0.004723651
331	1992-04-01 00:00:00+00	UFIR	0.198299849	1.198299849	3481.992689	0.003870909
332	1992-05-01 00:00:00+00	UFIR	0.234496999	1.234496999	4172.471315	0.003230334
333	1992-06-01 00:00:00+00	UFIR	0.23269963	1.23269963	5150.903316	0.002616721
334	1992-07-01 00:00:00+00	UFIR	0.210100325	1.210100325	6349.516614	0.002122756
335	1992-08-01 00:00:00+00	UFIR	0.231398186	1.231398186	7683.552118	0.001754199
336	1992-09-01 00:00:00+00	UFIR	0.233300251	1.233300251	9461.512144	0.001424558
337	1992-10-01 00:00:00+00	UFIR	0.254799402	1.254799402	11668.885298	0.001155078
338	1992-11-01 00:00:00+00	UFIR	0.236999035	1.236999035	14642.110298	0.000920528
339	1992-12-01 00:00:00+00	UFIR	0.23490011	1.23490011	18112.276302	0.000744162
340	1993-01-01 00:00:00+00	UFIR	0.294700749	1.294700749	22366.851991	0.000602609
341	1993-02-01 00:00:00+00	UFIR	0.267200378	1.267200378	28958.380026	0.000465443
342	1993-03-01 00:00:00+00	UFIR	0.25960045	1.25960045	36696.070109	0.0003673
343	1993-04-01 00:00:00+00	UFIR	0.273401817	1.273401817	46222.386425	0.000291601
344	1993-05-01 00:00:00+00	UFIR	0.288099882	1.288099882	58859.670877	0.000228993
345	1993-06-01 00:00:00+00	UFIR	0.303398349	1.303398349	75817.135112	0.000177776
346	1993-07-01 00:00:00+00	UFIR	0.306576	1.306576	98819.928738	0.000136394
347	1993-08-01 00:00:00+00	UFIR	0.319934568	1.319934568	129.115747	0.104390644
348	1993-09-01 00:00:00+00	UFIR	0.343838528	1.343838528	170.424338	0.079087741
349	1993-10-01 00:00:00+00	UFIR	0.351646912	1.351646912	229.022792	0.058852116
350	1993-11-01 00:00:00+00	UFIR	0.339019389	1.339019389	309.557949	0.043541043
351	1993-12-01 00:00:00+00	UFIR	0.366892352	1.366892352	414.504096	0.032517112
352	1994-01-01 00:00:00+00	UFIR	0.391702625	1.391702625	566.582478	0.02378908
353	1994-02-01 00:00:00+00	UFIR	0.396984517	1.396984517	788.514322	0.017093508
354	1994-03-01 00:00:00+00	UFIR	0.436311908	1.436311908	1101.5423	0.012236004
355	1994-04-01 00:00:00+00	UFIR	0.412499564	1.412499564	1582.158322	0.008519044
356	1994-05-01 00:00:00+00	UFIR	0.442096538	1.442096538	2234.797941	0.006031183
357	1994-06-01 00:00:00+00	UFIR	0.446501	1.446501	3222.794374	0.004182233
358	1994-07-01 00:00:00+00	UFIR	0.052153791	1.052153791	1.695191	7.951007197
359	1994-08-01 00:00:00+00	UFIR	0.050076129	1.050076129	1.783602	7.556886894
360	1994-09-01 00:00:00+00	UFIR	0.016271951	1.016271951	1.872918	7.196513361
361	1994-10-01 00:00:00+00	UFIR	0.019023462	1.019023462	1.903394	7.081287006
362	1994-11-01 00:00:00+00	UFIR	0.029558183	1.029558183	1.939603	6.949091231
363	1994-12-01 00:00:00+00	UFIR	0.022514355	1.022514355	1.996934	6.749585741
364	1995-01-01 00:00:00+00	UFIR	0.0	1.0	2.041893	6.600969179
365	1995-02-01 00:00:00+00	UFIR	0.0	1.0	2.041893	6.600969179
366	1995-03-01 00:00:00+00	UFIR	0.043446136	1.043446136	2.041893	6.600969179
367	1995-04-01 00:00:00+00	UFIR	0.0	1.0	2.130606	6.326123556
368	1995-05-01 00:00:00+00	UFIR	0.0	1.0	2.130606	6.326123556
369	1995-06-01 00:00:00+00	UFIR	0.071236369	1.071236369	2.130606	6.326123556
370	1995-07-01 00:00:00+00	UFIR	0.0	1.0	2.282382	5.905441358
371	1995-08-01 00:00:00+00	UFIR	0.0	1.0	2.282382	5.905441358
372	1995-09-01 00:00:00+00	UFIR	0.051295611	1.051295611	2.282382	5.905441358
373	1995-10-01 00:00:00+00	UFIR	0.0	1.0	2.399459	5.617298596
374	1995-11-01 00:00:00+00	UFIR	0.0	1.0	2.399459	5.617298596
375	1995-12-01 00:00:00+00	UFIR	0.042127767	1.042127767	2.399459	5.617298596
376	1996-01-01 00:00:00+00	UFIR	0.0	1.0	2.500543	5.390220638
377	1996-02-01 00:00:00+00	UFIR	0.0	1.0	2.500543	5.390220638
378	1996-03-01 00:00:00+00	UFIR	0.0	1.0	2.500543	5.390220638
379	1996-04-01 00:00:00+00	UFIR	0.0	1.0	2.500543	5.390220638
380	1996-05-01 00:00:00+00	UFIR	0.0	1.0	2.500543	5.390220638
381	1996-06-01 00:00:00+00	UFIR	0.067575721	1.067575721	2.500543	5.390220638
382	1996-07-01 00:00:00+00	UFIR	0.0	1.0	2.669518	5.049028872
383	1996-08-01 00:00:00+00	UFIR	0.0	1.0	2.669518	5.049028872
384	1996-09-01 00:00:00+00	UFIR	0.0	1.0	2.669518	5.049028872
385	1996-10-01 00:00:00+00	UFIR	0.0	1.0	2.669518	5.049028872
386	1996-11-01 00:00:00+00	UFIR	0.0	1.0	2.669518	5.049028872
387	1996-12-01 00:00:00+00	UFIR	0.029501526	1.029501526	2.669518	5.049028872
388	1997-01-01 00:00:00+00	UFIR	0.0	1.0	2.748273	4.904343262
389	1997-02-01 00:00:00+00	UFIR	0.0	1.0	2.748273	4.904343262
390	1997-03-01 00:00:00+00	UFIR	0.0	1.0	2.748273	4.904343262
391	1997-04-01 00:00:00+00	UFIR	0.0	1.0	2.748273	4.904343262
392	1997-05-01 00:00:00+00	UFIR	0.0	1.0	2.748273	4.904343262
393	1997-06-01 00:00:00+00	UFIR	0.0	1.0	2.748273	4.904343262
394	1997-07-01 00:00:00+00	UFIR	0.0	1.0	2.748273	4.904343262
395	1997-08-01 00:00:00+00	UFIR	0.0	1.0	2.748273	4.904343262
396	1997-09-01 00:00:00+00	UFIR	0.0	1.0	2.748273	4.904343262
397	1997-10-01 00:00:00+00	UFIR	0.0	1.0	2.748273	4.904343262
398	1997-11-01 00:00:00+00	UFIR	0.0	1.0	2.748273	4.904343262
399	1997-12-01 00:00:00+00	UFIR	0.055226175	1.055226175	2.748273	4.904343262
400	1998-01-01 00:00:00+00	UFIR	0.0	1.0	2.90005	4.647670215
401	1998-02-01 00:00:00+00	UFIR	0.0	1.0	2.90005	4.647670215
402	1998-03-01 00:00:00+00	UFIR	0.0	1.0	2.90005	4.647670215
403	1998-04-01 00:00:00+00	UFIR	0.0	1.0	2.90005	4.647670215
404	1998-05-01 00:00:00+00	UFIR	0.0	1.0	2.90005	4.647670215
405	1998-06-01 00:00:00+00	UFIR	0.0	1.0	2.90005	4.647670215
406	1998-07-01 00:00:00+00	UFIR	0.0	1.0	2.90005	4.647670215
407	1998-08-01 00:00:00+00	UFIR	0.0	1.0	2.90005	4.647670215
408	1998-09-01 00:00:00+00	UFIR	0.0	1.0	2.90005	4.647670215
409	1998-10-01 00:00:00+00	UFIR	0.0	1.0	2.90005	4.647670215
410	1998-11-01 00:00:00+00	UFIR	0.0	1.0	2.90005	4.647670215
411	1998-12-01 00:00:00+00	UFIR	0.016543544	1.016543544	2.90005	4.647670215
412	1999-01-01 00:00:00+00	UFIR	0.0	1.0	2.948027	4.572032593
413	1999-02-01 00:00:00+00	UFIR	0.0	1.0	2.948027	4.572032593
414	1999-03-01 00:00:00+00	UFIR	0.0	1.0	2.948027	4.572032593
415	1999-04-01 00:00:00+00	UFIR	0.0	1.0	2.948027	4.572032593
416	1999-05-01 00:00:00+00	UFIR	0.0	1.0	2.948027	4.572032593
417	1999-06-01 00:00:00+00	UFIR	0.0	1.0	2.948027	4.572032593
418	1999-07-01 00:00:00+00	UFIR	0.0	1.0	2.948027	4.572032593
419	1999-08-01 00:00:00+00	UFIR	0.0	1.0	2.948027	4.572032593
420	1999-09-01 00:00:00+00	UFIR	0.0	1.0	2.948027	4.572032593
421	1999-10-01 00:00:00+00	UFIR	0.0	1.0	2.948027	4.572032593
422	1999-11-01 00:00:00+00	UFIR	0.0	1.0	2.948027	4.572032593
423	1999-12-01 00:00:00+00	UFIR	0.08915046	1.08915046	2.948027	4.572032593
424	2000-01-01 00:00:00+00	UFIR	0.0	1.0	3.210845	4.197797052
425	2000-02-01 00:00:00+00	UFIR	0.0	1.0	3.210845	4.197797052
426	2000-03-01 00:00:00+00	UFIR	0.0	1.0	3.210845	4.197797052
427	2000-04-01 00:00:00+00	UFIR	0.0	1.0	3.210845	4.197797052
428	2000-05-01 00:00:00+00	UFIR	0.0	1.0	3.210845	4.197797052
429	2000-06-01 00:00:00+00	UFIR	0.0	1.0	3.210845	4.197797052
430	2000-07-01 00:00:00+00	UFIR	0.0	1.0	3.210845	4.197797052
431	2000-08-01 00:00:00+00	UFIR	0.0	1.0	3.210845	4.197797052
432	2000-09-01 00:00:00+00	UFIR	0.0	1.0	3.210845	4.197797052
433	2000-10-01 00:00:00+00	UFIR	0.0	1.0	3.210845	4.197797052
434	2000-11-01 00:00:00+00	UFIR	0.0	1.0	3.210845	4.197797052
435	2000-12-01 00:00:00+00	IPCA-E	0.06035557	1.06035557	3.210845	4.197797052
436	2001-01-01 00:00:00+00	IPCA-E	0.0063	1.0063	3.404637	3.958857925
437	2001-02-01 00:00:00+00	IPCA-E	0.005	1.005	3.426087	3.934073264
438	2001-03-01 00:00:00+00	IPCA-E	0.0036	1.0036	3.443217	3.91450076
439	2001-04-01 00:00:00+00	IPCA-E	0.005	1.005	3.455613	3.900459107
440	2001-05-01 00:00:00+00	IPCA-E	0.0049	1.0049	3.472891	3.881053838
441	2001-06-01 00:00:00+00	IPCA-E	0.0038	1.0038	3.489908	3.862129404
442	2001-07-01 00:00:00+00	IPCA-E	0.0094	1.0094	3.50317	3.84750887
443	2001-08-01 00:00:00+00	IPCA-E	0.0118	1.0118	3.536099	3.811679087
444	2001-09-01 00:00:00+00	IPCA-E	0.0038	1.0038	3.577825	3.767225822
445	2001-10-01 00:00:00+00	IPCA-E	0.0037	1.0037	3.591421	3.752964557
446	2001-11-01 00:00:00+00	IPCA-E	0.0099	1.0099	3.604709	3.739129777
447	2001-12-01 00:00:00+00	IPCA-E	0.0055	1.0055	3.640396	3.702475271
448	2002-01-01 00:00:00+00	IPCA-E	0.0062	1.0062	3.660418	3.682223045
449	2002-02-01 00:00:00+00	IPCA-E	0.0044	1.0044	3.683113	3.659533934
450	2002-03-01 00:00:00+00	IPCA-E	0.004	1.004	3.699318	3.643502523
451	2002-04-01 00:00:00+00	IPCA-E	0.0078	1.0078	3.714116	3.628986577
452	2002-05-01 00:00:00+00	IPCA-E	0.0042	1.0042	3.743086	3.60089956
453	2002-06-01 00:00:00+00	IPCA-E	0.0033	1.0033	3.758807	3.585839036
454	2002-07-01 00:00:00+00	IPCA-E	0.0077	1.0077	3.771211	3.574044689
455	2002-08-01 00:00:00+00	IPCA-E	0.01	1.01	3.800249	3.546734831
456	2002-09-01 00:00:00+00	IPCA-E	0.0062	1.0062	3.838252	3.511618644
457	2002-10-01 00:00:00+00	IPCA-E	0.009	1.009	3.862049	3.489980763
458	2002-11-01 00:00:00+00	IPCA-E	0.0208	1.0208	3.896807	3.458851104
459	2002-12-01 00:00:00+00	IPCA-E	0.0305	1.0305	3.977861	3.388372946
460	2003-01-01 00:00:00+00	IPCA-E	0.0198	1.0198	4.099186	3.288086314
461	2003-02-01 00:00:00+00	IPCA-E	0.0219	1.0219	4.180349	3.224246238
462	2003-03-01 00:00:00+00	IPCA-E	0.0114	1.0114	4.271899	3.155148486
463	2003-04-01 00:00:00+00	IPCA-E	0.0114	1.0114	4.320599	3.119585215
464	2003-05-01 00:00:00+00	IPCA-E	0.0085	1.0085	4.369854	3.084422795
465	2003-06-01 00:00:00+00	IPCA-E	0.0022	1.0022	4.406997	3.058426173
466	2003-07-01 00:00:00+00	IPCA-E	-0.0018	0.9982	4.416693	3.051712405
467	2003-08-01 00:00:00+00	IPCA-E	0.0027	1.0027	4.408743	3.057215393
468	2003-09-01 00:00:00+00	IPCA-E	0.0057	1.0057	4.420646	3.048983138
469	2003-10-01 00:00:00+00	IPCA-E	0.0066	1.0066	4.445844	3.031702435
470	2003-11-01 00:00:00+00	IPCA-E	0.0017	1.0017	4.475187	3.011824394
471	2003-12-01 00:00:00+00	IPCA-E	0.0046	1.0046	4.482794	3.006712982
472	2004-01-01 00:00:00+00	IPCA-E	0.0068	1.0068	4.503415	2.992945432
473	2004-02-01 00:00:00+00	IPCA-E	0.009	1.009	4.534038	2.972730863
474	2004-03-01 00:00:00+00	IPCA-E	0.004	1.004	4.574845	2.946214928
475	2004-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	4.593144	2.93447702
476	2004-05-01 00:00:00+00	IPCA-E	0.0054	1.0054	4.60279	2.928327532
477	2004-06-01 00:00:00+00	IPCA-E	0.0056	1.0056	4.627645	2.912599495
478	2004-07-01 00:00:00+00	IPCA-E	0.0093	1.0093	4.65356	2.896379768
479	2004-08-01 00:00:00+00	IPCA-E	0.0079	1.0079	4.696838	2.869691636
480	2004-09-01 00:00:00+00	IPCA-E	0.0049	1.0049	4.733943	2.847198766
481	2004-10-01 00:00:00+00	IPCA-E	0.0032	1.0032	4.757139	2.83331552
482	2004-11-01 00:00:00+00	IPCA-E	0.0063	1.0063	4.772362	2.824277831
483	2004-12-01 00:00:00+00	IPCA-E	0.0084	1.0084	4.802428	2.806596274
484	2005-01-01 00:00:00+00	IPCA-E	0.0068	1.0068	4.842768	2.783217249
485	2005-02-01 00:00:00+00	IPCA-E	0.0074	1.0074	4.875699	2.764419199
486	2005-03-01 00:00:00+00	IPCA-E	0.0035	1.0035	4.911779	2.744112764
487	2005-04-01 00:00:00+00	IPCA-E	0.0074	1.0074	4.92897	2.734541868
488	2005-05-01 00:00:00+00	IPCA-E	0.0083	1.0083	4.965445	2.714454902
489	2005-06-01 00:00:00+00	IPCA-E	0.0012	1.0012	5.006658	2.692110385
490	2005-07-01 00:00:00+00	IPCA-E	0.0011	1.0011	5.012666	2.688883725
491	2005-08-01 00:00:00+00	IPCA-E	0.0028	1.0028	5.01818	2.685929203
492	2005-09-01 00:00:00+00	IPCA-E	0.0016	1.0016	5.032231	2.6784296
493	2005-10-01 00:00:00+00	IPCA-E	0.0056	1.0056	5.040282	2.674150958
494	2005-11-01 00:00:00+00	IPCA-E	0.0078	1.0078	5.068508	2.659259107
495	2005-12-01 00:00:00+00	IPCA-E	0.0038	1.0038	5.108042	2.638677424
496	2006-01-01 00:00:00+00	IPCA-E	0.0051	1.0051	5.127453	2.628688408
497	2006-02-01 00:00:00+00	IPCA-E	0.0052	1.0052	5.153603	2.615350122
498	2006-03-01 00:00:00+00	IPCA-E	0.0037	1.0037	5.180402	2.601820654
499	2006-04-01 00:00:00+00	IPCA-E	0.0017	1.0017	5.199569	2.592229406
500	2006-05-01 00:00:00+00	IPCA-E	0.0027	1.0027	5.208408	2.587830095
501	2006-06-01 00:00:00+00	IPCA-E	-0.0015	0.9985	5.222471	2.580861768
502	2006-07-01 00:00:00+00	IPCA-E	-0.0002	0.9998	5.214637	2.584738876
503	2006-08-01 00:00:00+00	IPCA-E	0.0019	1.0019	5.213594	2.585255927
504	2006-09-01 00:00:00+00	IPCA-E	0.0005	1.0005	5.2235	2.580353256
505	2006-10-01 00:00:00+00	IPCA-E	0.0029	1.0029	5.226112	2.579063724
506	2006-11-01 00:00:00+00	IPCA-E	0.0037	1.0037	5.241268	2.571606067
507	2006-12-01 00:00:00+00	IPCA-E	0.0035	1.0035	5.26066	2.5621262
508	2007-01-01 00:00:00+00	IPCA-E	0.0052	1.0052	5.279073	2.553190035
509	2007-02-01 00:00:00+00	IPCA-E	0.0046	1.0046	5.306524	2.539982127
510	2007-03-01 00:00:00+00	IPCA-E	0.0041	1.0041	5.330934	2.52835171
511	2007-04-01 00:00:00+00	IPCA-E	0.0022	1.0022	5.352791	2.518027796
512	2007-05-01 00:00:00+00	IPCA-E	0.0026	1.0026	5.364567	2.512500295
513	2007-06-01 00:00:00+00	IPCA-E	0.0029	1.0029	5.378515	2.505984735
514	2007-07-01 00:00:00+00	IPCA-E	0.0024	1.0024	5.394112	2.498738393
515	2007-08-01 00:00:00+00	IPCA-E	0.0042	1.0042	5.407058	2.49275578
516	2007-09-01 00:00:00+00	IPCA-E	0.0029	1.0029	5.429768	2.482329994
517	2007-10-01 00:00:00+00	IPCA-E	0.0024	1.0024	5.445514	2.475152053
518	2007-11-01 00:00:00+00	IPCA-E	0.0023	1.0023	5.458584	2.46922591
519	2007-12-01 00:00:00+00	IPCA-E	0.007	1.007	5.471138	2.463559723
520	2008-01-01 00:00:00+00	IPCA-E	0.007	1.007	5.509436	2.44643468
521	2008-02-01 00:00:00+00	IPCA-E	0.0064	1.0064	5.548002	2.42942868
522	2008-03-01 00:00:00+00	IPCA-E	0.0023	1.0023	5.58351	2.413979213
523	2008-04-01 00:00:00+00	IPCA-E	0.0059	1.0059	5.596352	2.408439801
524	2008-05-01 00:00:00+00	IPCA-E	0.0056	1.0056	5.62937	2.394313352
525	2008-06-01 00:00:00+00	IPCA-E	0.009	1.009	5.660895	2.380979865
526	2008-07-01 00:00:00+00	IPCA-E	0.0063	1.0063	5.711843	2.359742185
527	2008-08-01 00:00:00+00	IPCA-E	0.0035	1.0035	5.747827	2.344968881
528	2008-09-01 00:00:00+00	IPCA-E	0.0026	1.0026	5.767945	2.336790116
529	2008-10-01 00:00:00+00	IPCA-E	0.003	1.003	5.782941	2.330730217
530	2008-11-01 00:00:00+00	IPCA-E	0.0049	1.0049	5.80029	2.323758941
531	2008-12-01 00:00:00+00	IPCA-E	0.0029	1.0029	5.828712	2.312428043
532	2009-01-01 00:00:00+00	IPCA-E	0.004	1.004	5.845615	2.305741393
533	2009-02-01 00:00:00+00	IPCA-E	0.0063	1.0063	5.868997	2.296555172
534	2009-03-01 00:00:00+00	IPCA-E	0.0011	1.0011	5.905972	2.282177455
535	2009-04-01 00:00:00+00	IPCA-E	0.0036	1.0036	5.912468	2.279669818
536	2009-05-01 00:00:00+00	IPCA-E	0.0059	1.0059	5.933753	2.271492445
537	2009-06-01 00:00:00+00	IPCA-E	0.0038	1.0038	5.968763	2.258169246
538	2009-07-01 00:00:00+00	IPCA-E	0.0022	1.0022	5.991444	2.249620688
539	2009-08-01 00:00:00+00	IPCA-E	0.0023	1.0023	6.004625	2.244682386
540	2009-09-01 00:00:00+00	IPCA-E	0.0019	1.0019	6.018436	2.239531464
541	2009-10-01 00:00:00+00	IPCA-E	0.0018	1.0018	6.029871	2.235284424
542	2009-11-01 00:00:00+00	IPCA-E	0.0044	1.0044	6.040724	2.231268141
543	2009-12-01 00:00:00+00	IPCA-E	0.0038	1.0038	6.067304	2.221493569
544	2010-01-01 00:00:00+00	IPCA-E	0.0052	1.0052	6.090359	2.213083851
545	2010-02-01 00:00:00+00	IPCA-E	0.0094	1.0094	6.122029	2.201635347
546	2010-03-01 00:00:00+00	IPCA-E	0.0055	1.0055	6.179576	2.181132699
547	2010-04-01 00:00:00+00	IPCA-E	0.0048	1.0048	6.213564	2.169202088
548	2010-05-01 00:00:00+00	IPCA-E	0.0063	1.0063	6.243389	2.158839658
549	2010-06-01 00:00:00+00	IPCA-E	0.0019	1.0019	6.282722	2.145324116
550	2010-07-01 00:00:00+00	IPCA-E	-0.0009	0.9991	6.29466	2.14125573
551	2010-08-01 00:00:00+00	IPCA-E	-0.0005	0.9995	6.288994	2.143184596
552	2010-09-01 00:00:00+00	IPCA-E	0.0031	1.0031	6.28585	2.144256724
553	2010-10-01 00:00:00+00	IPCA-E	0.0062	1.0062	6.305336	2.137630071
554	2010-11-01 00:00:00+00	IPCA-E	0.0086	1.0086	6.344429	2.124458429
555	2010-12-01 00:00:00+00	IPCA-E	0.0069	1.0069	6.398991	2.106343872
556	2011-01-01 00:00:00+00	IPCA-E	0.0076	1.0076	6.443144	2.091909695
557	2011-02-01 00:00:00+00	IPCA-E	0.0097	1.0097	6.492112	2.076131098
558	2011-03-01 00:00:00+00	IPCA-E	0.006	1.006	6.555086	2.056186093
559	2011-04-01 00:00:00+00	IPCA-E	0.0077	1.0077	6.594416	2.043922558
560	2011-05-01 00:00:00+00	IPCA-E	0.007	1.007	6.645193	2.028304612
561	2011-06-01 00:00:00+00	IPCA-E	0.0023	1.0023	6.69171	2.014205176
562	2011-07-01 00:00:00+00	IPCA-E	0.001	1.001	6.7071	2.009583135
563	2011-08-01 00:00:00+00	IPCA-E	0.0027	1.0027	6.713808	2.007575559
564	2011-09-01 00:00:00+00	IPCA-E	0.0053	1.0053	6.731935	2.002169701
565	2011-10-01 00:00:00+00	IPCA-E	0.0042	1.0042	6.767614	1.991614146
566	2011-11-01 00:00:00+00	IPCA-E	0.0046	1.0046	6.796038	1.983284352
567	2011-12-01 00:00:00+00	IPCA-E	0.0056	1.0056	6.8273	1.974203018
568	2012-01-01 00:00:00+00	IPCA-E	0.0065	1.0065	6.865533	1.963209047
569	2012-02-01 00:00:00+00	IPCA-E	0.0053	1.0053	6.910159	1.950530598
570	2012-03-01 00:00:00+00	IPCA-E	0.0025	1.0025	6.946783	1.940247288
571	2012-04-01 00:00:00+00	IPCA-E	0.0043	1.0043	6.964149	1.935408766
572	2012-05-01 00:00:00+00	IPCA-E	0.0051	1.0051	6.994095	1.927122141
573	2012-06-01 00:00:00+00	IPCA-E	0.0018	1.0018	7.029765	1.917343688
574	2012-07-01 00:00:00+00	IPCA-E	0.0033	1.0033	7.042419	1.91389867
575	2012-08-01 00:00:00+00	IPCA-E	0.0039	1.0039	7.065659	1.907603578
576	2012-09-01 00:00:00+00	IPCA-E	0.0048	1.0048	7.093215	1.900192826
577	2012-10-01 00:00:00+00	IPCA-E	0.0065	1.0065	7.127262	1.891115472
578	2012-11-01 00:00:00+00	IPCA-E	0.0054	1.0054	7.173589	1.878902605
579	2012-12-01 00:00:00+00	IPCA-E	0.0069	1.0069	7.212327	1.868811026
580	2013-01-01 00:00:00+00	IPCA-E	0.0088	1.0088	7.262092	1.856004594
581	2013-02-01 00:00:00+00	IPCA-E	0.0068	1.0068	7.325998	1.839814229
582	2013-03-01 00:00:00+00	IPCA-E	0.0049	1.0049	7.375815	1.82738799
583	2013-04-01 00:00:00+00	IPCA-E	0.0051	1.0051	7.411957	1.818477451
584	2013-05-01 00:00:00+00	IPCA-E	0.0046	1.0046	7.449758	1.809250275
585	2013-06-01 00:00:00+00	IPCA-E	0.0038	1.0038	7.484026	1.800965832
586	2013-07-01 00:00:00+00	IPCA-E	0.0007	1.0007	7.512466	1.794148069
587	2013-08-01 00:00:00+00	IPCA-E	0.0016	1.0016	7.517724	1.792893044
588	2013-09-01 00:00:00+00	IPCA-E	0.0027	1.0027	7.529753	1.790028998
589	2013-10-01 00:00:00+00	IPCA-E	0.0048	1.0048	7.550083	1.785208933
590	2013-11-01 00:00:00+00	IPCA-E	0.0057	1.0057	7.586324	1.776680865
591	2013-12-01 00:00:00+00	IPCA-E	0.0075	1.0075	7.629566	1.766611182
592	2014-01-01 00:00:00+00	IPCA-E	0.0067	1.0067	7.686787	1.75346023
593	2014-02-01 00:00:00+00	IPCA-E	0.007	1.007	7.738289	1.741790235
594	2014-03-01 00:00:00+00	IPCA-E	0.0073	1.0073	7.792457	1.729682458
595	2014-04-01 00:00:00+00	IPCA-E	0.0078	1.0078	7.849342	1.717147283
596	2014-05-01 00:00:00+00	IPCA-E	0.0058	1.0058	7.910567	1.703857197
597	2014-06-01 00:00:00+00	IPCA-E	0.0047	1.0047	7.956448	1.694031812
598	2014-07-01 00:00:00+00	IPCA-E	0.0017	1.0017	7.993843	1.686107109
599	2014-08-01 00:00:00+00	IPCA-E	0.0014	1.0014	8.007433	1.683245591
600	2014-09-01 00:00:00+00	IPCA-E	0.0039	1.0039	8.018643	1.680892342
601	2014-10-01 00:00:00+00	IPCA-E	0.0048	1.0048	8.049916	1.674362329
602	2014-11-01 00:00:00+00	IPCA-E	0.0038	1.0038	8.088556	1.666363783
603	2014-12-01 00:00:00+00	IPCA-E	0.0079	1.0079	8.119292	1.660055572
604	2015-01-01 00:00:00+00	IPCA-E	0.0089	1.0089	8.183434	1.647043925
605	2015-02-01 00:00:00+00	IPCA-E	0.0133	1.0133	8.256267	1.632514545
606	2015-03-01 00:00:00+00	IPCA-E	0.0124	1.0124	8.366075	1.611087087
607	2015-04-01 00:00:00+00	IPCA-E	0.0107	1.0107	8.469815	1.591354294
608	2015-05-01 00:00:00+00	IPCA-E	0.006	1.006	8.560442	1.574507068
609	2015-06-01 00:00:00+00	IPCA-E	0.0099	1.0099	8.611804	1.56511637
610	2015-07-01 00:00:00+00	IPCA-E	0.0059	1.0059	8.697061	1.549773611
611	2015-08-01 00:00:00+00	IPCA-E	0.0043	1.0043	8.748374	1.540683578
612	2015-09-01 00:00:00+00	IPCA-E	0.0039	1.0039	8.785992	1.534087004
613	2015-10-01 00:00:00+00	IPCA-E	0.0066	1.0066	8.820257	1.528127307
614	2015-11-01 00:00:00+00	IPCA-E	0.0085	1.0085	8.878471	1.518107796
615	2015-12-01 00:00:00+00	IPCA-E	0.0118	1.0118	8.953938	1.505312638
616	2016-01-01 00:00:00+00	IPCA-E	0.0092	1.0092	9.059594	1.487757105
617	2016-02-01 00:00:00+00	IPCA-E	0.0142	1.0142	9.142943	1.474194515
618	2016-03-01 00:00:00+00	IPCA-E	0.0043	1.0043	9.272772	1.453554048
619	2016-04-01 00:00:00+00	IPCA-E	0.0051	1.0051	9.312645	1.447330526
620	2016-05-01 00:00:00+00	IPCA-E	0.0086	1.0086	9.36014	1.439986595
621	2016-06-01 00:00:00+00	IPCA-E	0.004	1.004	9.440637	1.427708303
622	2016-07-01 00:00:00+00	IPCA-E	0.0054	1.0054	9.4784	1.422020222
623	2016-08-01 00:00:00+00	IPCA-E	0.0045	1.0045	9.529583	1.414382557
624	2016-09-01 00:00:00+00	IPCA-E	0.0023	1.0023	9.572466	1.408046348
625	2016-10-01 00:00:00+00	IPCA-E	0.0019	1.0019	9.594483	1.404815273
626	2016-11-01 00:00:00+00	IPCA-E	0.0026	1.0026	9.612712	1.402151186
627	2016-12-01 00:00:00+00	IPCA-E	0.0019	1.0019	9.637705	1.398515047
628	2017-01-01 00:00:00+00	IPCA-E	0.0031	1.0031	9.656017	1.395862907
629	2017-02-01 00:00:00+00	IPCA-E	0.0054	1.0054	9.685951	1.391549105
630	2017-03-01 00:00:00+00	IPCA-E	0.0015	1.0015	9.738255	1.384075099
631	2017-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	9.752862	1.382002096
632	2017-05-01 00:00:00+00	IPCA-E	0.0024	1.0024	9.773343	1.379105974
633	2017-06-01 00:00:00+00	IPCA-E	0.0016	1.0016	9.796799	1.375804044
634	2017-07-01 00:00:00+00	IPCA-E	-0.0018	0.9982	9.812474	1.373606274
635	2017-08-01 00:00:00+00	IPCA-E	0.0035	1.0035	9.794812	1.376083224
636	2017-09-01 00:00:00+00	IPCA-E	0.0011	1.0011	9.829093	1.371283731
637	2017-10-01 00:00:00+00	IPCA-E	0.0034	1.0034	9.839905	1.369776976
638	2017-11-01 00:00:00+00	IPCA-E	0.0032	1.0032	9.873361	1.365135515
639	2017-12-01 00:00:00+00	IPCA-E	0.0035	1.0035	9.904956	1.360781016
640	2018-01-01 00:00:00+00	IPCA-E	0.0039	1.0039	9.939623	1.356034894
641	2018-02-01 00:00:00+00	IPCA-E	0.0038	1.0038	9.978388	1.350766903
642	2018-03-01 00:00:00+00	IPCA-E	0.001	1.001	10.016306	1.34565342
643	2018-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	10.026322	1.344309111
644	2018-05-01 00:00:00+00	IPCA-E	0.0014	1.0014	10.047377	1.341491978
645	2018-06-01 00:00:00+00	IPCA-E	0.0111	1.0111	10.061444	1.339616514
646	2018-07-01 00:00:00+00	IPCA-E	0.0064	1.0064	10.173126	1.324910013
647	2018-08-01 00:00:00+00	IPCA-E	0.0013	1.0013	10.238234	1.316484512
648	2018-09-01 00:00:00+00	IPCA-E	0.0009	1.0009	10.251543	1.314775305
649	2018-10-01 00:00:00+00	IPCA-E	0.0058	1.0058	10.26077	1.313593071
650	2018-11-01 00:00:00+00	IPCA-E	0.0019	1.0019	10.320282	1.306018165
651	2018-12-01 00:00:00+00	IPCA-E	-0.0016	0.9984	10.339891	1.303541437
652	2019-01-01 00:00:00+00	IPCA-E	0.003	1.003	10.323347	1.305630445
653	2019-02-01 00:00:00+00	IPCA-E	0.0034	1.0034	10.354317	1.30172527
654	2019-03-01 00:00:00+00	IPCA-E	0.0054	1.0054	10.389522	1.297314401
655	2019-04-01 00:00:00+00	IPCA-E	0.0072	1.0072	10.445625	1.290346529
656	2019-05-01 00:00:00+00	IPCA-E	0.0035	1.0035	10.520833	1.281122448
657	2019-06-01 00:00:00+00	IPCA-E	0.0006	1.0006	10.557656	1.276654158
658	2019-07-01 00:00:00+00	IPCA-E	0.0009	1.0009	10.563991	1.275888625
659	2019-08-01 00:00:00+00	IPCA-E	0.0008	1.0008	10.573499	1.274741358
660	2019-09-01 00:00:00+00	IPCA-E	0.0009	1.0009	10.581957	1.27372238
661	2019-10-01 00:00:00+00	IPCA-E	0.0009	1.0009	10.591481	1.272577061
662	2019-11-01 00:00:00+00	IPCA-E	0.0014	1.0014	10.601013	1.271432771
663	2019-12-01 00:00:00+00	IPCA-E	0.0105	1.0105	10.615855	1.269655254
664	2020-01-01 00:00:00+00	IPCA-E	0.0071	1.0071	10.727321	1.256462399
665	2020-02-01 00:00:00+00	IPCA-E	0.0022	1.0022	10.803485	1.247604407
666	2020-03-01 00:00:00+00	IPCA-E	0.0002	1.0002	10.827253	1.244865703
667	2020-04-01 00:00:00+00	IPCA-E	-0.0001	0.9999	10.829418	1.244616779
668	2020-05-01 00:00:00+00	IPCA-E	-0.0059	0.9941	10.828336	1.244741253
669	2020-06-01 00:00:00+00	IPCA-E	0.0002	1.0002	10.764448	1.252128813
670	2020-07-01 00:00:00+00	IPCA-E	0.003	1.003	10.766601	1.251878438
671	2020-08-01 00:00:00+00	IPCA-E	0.0023	1.0023	10.798901	1.248134036
672	2020-09-01 00:00:00+00	IPCA-E	0.0045	1.0045	10.823739	1.245269915
673	2020-10-01 00:00:00+00	IPCA-E	0.0094	1.0094	10.872445	1.239691304
674	2020-11-01 00:00:00+00	IPCA-E	0.0081	1.0081	10.974646	1.228146725
675	2020-12-01 00:00:00+00	IPCA-E	0.0106	1.0106	11.063541	1.218278668
676	2021-01-01 00:00:00+00	IPCA-E	0.0078	1.0078	11.180814	1.205500364
677	2021-02-01 00:00:00+00	IPCA-E	0.0048	1.0048	11.268025	1.196170236
678	2021-03-01 00:00:00+00	IPCA-E	0.0093	1.0093	11.322111	1.190456047
679	2021-04-01 00:00:00+00	IPCA-E	0.006	1.006	11.427407	1.179486819
680	2021-05-01 00:00:00+00	IPCA-E	0.0044	1.0044	11.495971	1.172452107
681	2021-06-01 00:00:00+00	IPCA-E	0.0083	1.0083	11.546554	1.167315917
682	2021-07-01 00:00:00+00	IPCA-E	0.0072	1.0072	11.64239	1.157706949
683	2021-08-01 00:00:00+00	IPCA-E	0.0089	1.0089	11.726215	1.149431046
684	2021-09-01 00:00:00+00	IPCA-E	0.0114	1.0114	11.830579	1.139291352
685	2021-10-01 00:00:00+00	IPCA-E	0.012	1.012	11.965447	1.126449824
686	2021-11-01 00:00:00+00	IPCA-E	0.0117	1.0117	12.109033	1.113092712
687	2021-12-01 00:00:00+00	IPCA-E	0.0078	1.0078	12.250708	1.100220136
688	2022-01-01 00:00:00+00	IPCA-E	0.0058	1.0058	12.346264	1.091704839
689	2022-02-01 00:00:00+00	IPCA-E	0.0099	1.0099	12.417872	1.085409464
690	2022-03-01 00:00:00+00	IPCA-E	0.0095	1.0095	12.540809	1.074769248
691	2022-04-01 00:00:00+00	IPCA-E	0.0173	1.0173	12.659947	1.064655025
692	2022-05-01 00:00:00+00	IPCA-E	0.0059	1.0059	12.878964	1.046549715
693	2022-06-01 00:00:00+00	IPCA-E	0.0069	1.0069	12.95495	1.040411289
694	2022-07-01 00:00:00+00	IPCA-E	0.0013	1.0013	13.044339	1.033281645
695	2022-08-01 00:00:00+00	IPCA-E	-0.0073	0.9927	13.061297	1.031940123
696	2022-09-01 00:00:00+00	IPCA-E	-0.0037	0.9963	12.965949	1.039528683
697	2022-10-01 00:00:00+00	IPCA-E	0.0016	1.0016	12.917975	1.043389223
698	2022-11-01 00:00:00+00	IPCA-E	0.0053	1.0053	12.938644	1.041722467
699	2022-12-01 00:00:00+00	IPCA-E	0.0052	1.0052	13.007219	1.036230445
700	2023-01-01 00:00:00+00	IPCA-E	0.0055	1.0055	13.074856	1.030869922
701	2023-02-01 00:00:00+00	IPCA-E	0.0076	1.0076	13.146768	1.025231151
702	2023-03-01 00:00:00+00	IPCA-E	0.0069	1.0069	13.246683	1.017498164
703	2023-04-01 00:00:00+00	IPCA-E	0.0057	1.0057	13.338085	1.010525538
704	2023-05-01 00:00:00+00	IPCA-E	0.0051	1.0051	13.414113	1.004798189
705	2023-06-01 00:00:00+00	IPCA-E	0.0004	1.0004	13.482524	0.99969972
706	2023-07-01 00:00:00+00	IPCA-E	-0.0007	0.9993	13.487917	0.9993
707	2023-08-01 00:00:00+00	IPCA-E	0	1.0	13.478476	1.0
\.


--
-- Data for Name: t202_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t202_tabela_pnep (id, data, indexador, variacao_mensal, numero_indice, fator_vigente, indice_correcao) FROM stdin;
1395	1964-10-01 00:00:00+00	ORTN	0.0	1.0	1620.6956	0.00755892
1396	1964-11-01 00:00:00+00	ORTN	0.0	1.0	1620.6956	0.00755892
1397	1964-12-01 00:00:00+00	ORTN	0.130000001	1.130000001	1620.6956	0.00755892
1398	1965-01-01 00:00:00+00	ORTN	0.0	1.0	1831.38603	0.00668931
1399	1965-02-01 00:00:00+00	ORTN	0.0	1.0	1831.38603	0.00668931
1400	1965-03-01 00:00:00+00	ORTN	0.185840713	1.185840713	1831.38603	0.00668931
1401	1965-04-01 00:00:00+00	ORTN	0.0	1.0	2171.732116	0.005640985
1402	1965-05-01 00:00:00+00	ORTN	0.0	1.0	2171.732116	0.005640985
1403	1965-06-01 00:00:00+00	ORTN	0.134328344	1.134328344	2171.732116	0.005640985
1404	1965-07-01 00:00:00+00	ORTN	0.0	1.0	2463.457294	0.004972974
1405	1965-08-01 00:00:00+00	ORTN	0.032894753	1.032894753	2463.457294	0.004972974
1406	1965-09-01 00:00:00+00	ORTN	0.012738835	1.012738835	2544.492113	0.004814599
1407	1965-10-01 00:00:00+00	ORTN	0.009433975	1.009433975	2576.905977	0.004754038
1408	1965-11-01 00:00:00+00	ORTN	0.015576314	1.015576314	2601.216445	0.004709607
1409	1965-12-01 00:00:00+00	ORTN	0.018404928	1.018404928	2641.73381	0.004637374
1410	1966-01-01 00:00:00+00	ORTN	0.027108437	1.027108437	2690.354731	0.004553566
1411	1966-02-01 00:00:00+00	ORTN	0.014662738	1.014662738	2763.286043	0.004433384
1412	1966-03-01 00:00:00+00	ORTN	0.017341059	1.017341059	2803.803383	0.004369318
1413	1966-04-01 00:00:00+00	ORTN	0.038636354	1.038636354	2852.424302	0.004294841
1414	1966-05-01 00:00:00+00	ORTN	0.044310705	1.044310705	2962.631578	0.004135077
1415	1966-06-01 00:00:00+00	ORTN	0.040859093	1.040859093	3093.907873	0.003959623
1416	1966-07-01 00:00:00+00	ORTN	0.028183186	1.028183186	3220.322141	0.003804187
1417	1966-08-01 00:00:00+00	ORTN	0.028389642	1.028389642	3311.081079	0.003699912
1418	1966-09-01 00:00:00+00	ORTN	0.02855781	1.02855781	3405.081486	0.003597772
1419	1966-10-01 00:00:00+00	ORTN	0.026376703	1.026376703	3502.323156	0.003497881
1420	1966-11-01 00:00:00+00	ORTN	0.022993684	1.022993684	3594.702894	0.003407989
1421	1966-12-01 00:00:00+00	ORTN	0.023799027	1.023799027	3677.358356	0.003331388
1422	1967-01-01 00:00:00+00	ORTN	0.023676	1.023676	3764.875907	0.003253947
1423	1967-02-01 00:00:00+00	ORTN	0.021026072	1.021026072	3.854013109	3.178688795
1424	1967-03-01 00:00:00+00	ORTN	0.014827018	1.014827018	3.935047868	3.1132298
1425	1967-04-01 00:00:00+00	ORTN	0.015016234	1.015016234	3.993392894	3.0677443
1426	1967-05-01 00:00:00+00	ORTN	0.017992803	1.017992803	4.053358615	3.022359838
1427	1967-06-01 00:00:00+00	ORTN	0.028279654	1.028279654	4.126289898	2.968940281
1428	1967-07-01 00:00:00+00	ORTN	0.025210084	1.025210084	4.24297995	2.887288753
1429	1967-08-01 00:00:00+00	ORTN	0.015275708	1.015275708	4.349945831	2.816289849
1430	1967-09-01 00:00:00+00	ORTN	0.004770642	1.004770642	4.416394333	2.773916314
1431	1967-10-01 00:00:00+00	ORTN	0.006939372	1.006939372	4.43746337	2.760745783
1432	1967-11-01 00:00:00+00	ORTN	0.014145811	1.014145811	4.468256578	2.741719969
1433	1967-12-01 00:00:00+00	ORTN	0.018597997	1.018597997	4.53146369	2.703477094
1434	1968-01-01 00:00:00+00	ORTN	0.01755618	1.01755618	4.615739838	2.654115855
1435	1968-02-01 00:00:00+00	ORTN	0.014492754	1.014492754	4.696774597	2.608323656
1436	1968-03-01 00:00:00+00	ORTN	0.01462585	1.01462585	4.764843794	2.571061889
1437	1968-04-01 00:00:00+00	ORTN	0.018773047	1.018773047	4.834533686	2.533999985
1438	1968-05-01 00:00:00+00	ORTN	0.026653504	1.026653504	4.925292615	2.487305678
1439	1968-06-01 00:00:00+00	ORTN	0.028525641	1.028525641	5.056568924	2.422731396
1440	1968-07-01 00:00:00+00	ORTN	0.022436896	1.022436896	5.200810794	2.35553816
1441	1968-08-01 00:00:00+00	ORTN	0.018287108	1.018287108	5.317500846	2.303846984
1442	1968-09-01 00:00:00+00	ORTN	0.014067644	1.014067644	5.414742556	2.262472899
1443	1968-10-01 00:00:00+00	ORTN	0.015053129	1.015053129	5.490915229	2.231086763
1444	1968-11-01 00:00:00+00	ORTN	0.016283803	1.016283803	5.573570683	2.197999987
1445	1968-12-01 00:00:00+00	ORTN	0.019170243	1.019170243	5.664329612	2.162781675
1446	1969-01-01 00:00:00+00	ORTN	0.018248175	1.018248175	5.772916188	2.122100493
1447	1969-02-01 00:00:00+00	ORTN	0.017645437	1.017645437	5.878261374	2.084070018
1448	1969-03-01 00:00:00+00	ORTN	0.014088323	1.014088323	5.981985865	2.047933339
1449	1969-04-01 00:00:00+00	ORTN	0.015495592	1.015495592	6.066262014	2.019482221
1450	1969-05-01 00:00:00+00	ORTN	0.012365167	1.012365167	6.160262333	1.988666655
1451	1969-06-01 00:00:00+00	ORTN	0.013513514	1.013513514	6.236435006	1.964376807
1452	1969-07-01 00:00:00+00	ORTN	0.006923077	1.006923077	6.320711155	1.938185116
1453	1969-08-01 00:00:00+00	ORTN	0.007384772	1.007384772	6.364469925	1.924859168
1454	1969-09-01 00:00:00+00	ORTN	0.009100101	1.009100101	6.411470084	1.910748725
1455	1969-10-01 00:00:00+00	ORTN	0.016282565	1.016282565	6.469815111	1.893517524
1456	1969-11-01 00:00:00+00	ORTN	0.020951442	1.020951442	6.575160296	1.863180171
1457	1969-12-01 00:00:00+00	ORTN	0.022452921	1.022452921	6.712919386	1.824944943
1458	1970-01-01 00:00:00+00	ORTN	0.022432113	1.022432113	6.863644036	1.784869411
1459	1970-02-01 00:00:00+00	ORTN	0.020092379	1.020092379	7.017610077	1.745709458
1460	1970-03-01 00:00:00+00	ORTN	0.0113199	1.0113199	7.158610557	1.711324871
1461	1970-04-01 00:00:00+00	ORTN	0.00917842	1.00917842	7.239645315	1.692169679
1462	1970-05-01 00:00:00+00	ORTN	0.00931677	1.00931677	7.306093817	1.676779493
1463	1970-06-01 00:00:00+00	ORTN	0.015384615	1.015384615	7.374163014	1.661301528
1464	1970-07-01 00:00:00+00	ORTN	0.008874459	1.008874459	7.487611676	1.636130293
1465	1970-08-01 00:00:00+00	ORTN	0.009440034	1.009440034	7.554060178	1.621738244
1466	1970-09-01 00:00:00+00	ORTN	0.011902232	1.011902232	7.625370765	1.606572148
1467	1970-10-01 00:00:00+00	ORTN	0.018903592	1.018903592	7.716129695	1.587675269
1468	1970-11-01 00:00:00+00	ORTN	0.021232736	1.021232736	7.86199226	1.558219327
1469	1970-12-01 00:00:00+00	ORTN	0.019580137	1.019580137	8.028923862	1.525821953
1470	1971-01-01 00:00:00+00	ORTN	0.018412196	1.018412196	8.186131294	1.496519888
1471	1971-02-01 00:00:00+00	ORTN	0.013219285	1.013219285	8.336855944	1.469463833
1472	1971-03-01 00:00:00+00	ORTN	0.009976976	1.009976976	8.447063216	1.45029201
1473	1971-04-01 00:00:00+00	ORTN	0.011588146	1.011588146	8.531339364	1.435965417
1474	1971-05-01 00:00:00+00	ORTN	0.0142723	1.0142723	8.63020177	1.41951586
1475	1971-06-01 00:00:00+00	ORTN	0.019811146	1.019811146	8.753374602	1.399541188
1476	1971-07-01 00:00:00+00	ORTN	0.019970951	1.019970951	8.926788985	1.372353296
1477	1971-08-01 00:00:00+00	ORTN	0.021003916	1.021003916	9.105065454	1.345482726
1478	1971-09-01 00:00:00+00	ORTN	0.02179219	1.02179219	9.296307483	1.317803688
1479	1971-10-01 00:00:00+00	ORTN	0.020133083	1.020133083	9.49889438	1.289698337
1480	1971-11-01 00:00:00+00	ORTN	0.016390701	1.016390701	9.69013641	1.264245184
1481	1971-12-01 00:00:00+00	ORTN	0.012341616	1.012341616	9.848964536	1.243857488
1482	1972-01-01 00:00:00+00	ORTN	0.012028609	1.012028609	9.970516673	1.228693426
1483	1972-02-01 00:00:00+00	ORTN	0.013331192	1.013331192	10.09044812	1.214089617
1484	1972-03-01 00:00:00+00	ORTN	0.011412268	1.011412268	10.22496582	1.198117285
1485	1972-04-01 00:00:00+00	ORTN	0.013320796	1.013320796	10.34165587	1.184598332
1486	1972-05-01 00:00:00+00	ORTN	0.016857408	1.016857408	10.47941496	1.169025975
1487	1972-06-01 00:00:00+00	ORTN	0.017946768	1.017946768	10.65607073	1.149645925
1488	1972-07-01 00:00:00+00	ORTN	0.014343344	1.014343344	10.84731276	1.129377253
1489	1972-08-01 00:00:00+00	ORTN	0.008395935	1.008395935	11.0028995	1.11340727
1490	1972-09-01 00:00:00+00	ORTN	0.007157464	1.007157464	11.09527912	1.104137008
1491	1972-10-01 00:00:00+00	ORTN	0.009572154	1.009572154	11.17469318	1.096290349
1492	1972-11-01 00:00:00+00	ORTN	0.006608246	1.006608246	11.28165906	1.085895985
1493	1972-12-01 00:00:00+00	ORTN	0.011417154	1.011417154	11.35621104	1.078767226
1494	1973-01-01 00:00:00+00	ORTN	0.00987724	1.00987724	11.48586666	1.066589806
1495	1973-02-01 00:00:00+00	ORTN	0.010479251	1.010479251	11.59931532	1.056157881
1496	1973-03-01 00:00:00+00	ORTN	0.012029867	1.012029867	11.72086746	1.045204916
1497	1973-04-01 00:00:00+00	ORTN	0.011476978	1.011476978	11.86186793	1.032780701
1498	1973-05-01 00:00:00+00	ORTN	0.012697555	1.012697555	11.99800633	1.021061996
1499	1973-06-01 00:00:00+00	ORTN	0.011071095	1.011071095	12.15035167	1.008259564
1500	1973-07-01 00:00:00+00	ORTN	0.008970976	1.008970976	12.28486937	0.997219255
1501	1973-08-01 00:00:00+00	ORTN	0.008368201	1.008368201	12.39507665	0.988352766
1502	1973-09-01 00:00:00+00	ORTN	0.009725104	1.009725104	12.49880114	0.980150668
1503	1973-10-01 00:00:00+00	ORTN	0.006806215	1.006806215	12.62035327	0.970710409
1504	1973-11-01 00:00:00+00	ORTN	0.008545918	1.008545918	12.70625012	0.964148208
1505	1973-12-01 00:00:00+00	ORTN	0.019602883	1.019602883	12.81483669	0.955978494
1506	1974-01-01 00:00:00+00	ORTN	0.010543289	1.010543289	13.06604444	0.937598853
1507	1974-02-01 00:00:00+00	ORTN	0.014974837	1.014974837	13.20380353	0.927816614
1508	1974-03-01 00:00:00+00	ORTN	0.012577095	1.012577095	13.40152835	0.9141277
1509	1974-04-01 00:00:00+00	ORTN	0.016362116	1.016362116	13.57008064	0.902773433
1510	1974-05-01 00:00:00+00	ORTN	0.021269095	1.021269095	13.79211588	0.888239948
1511	1974-06-01 00:00:00+00	ORTN	0.03325279	1.03325279	14.08546171	0.869741336
1512	1974-07-01 00:00:00+00	ORTN	0.043986637	1.043986637	14.55384261	0.841750774
1513	1974-08-01 00:00:00+00	ORTN	0.04768	1.04768	15.1940172	0.806285008
1514	1974-09-01 00:00:00+00	ORTN	0.037466911	1.037466911	15.91846794	0.769590914
1515	1974-10-01 00:00:00+00	ORTN	0.021589794	1.021589794	16.51488376	0.741798033
1516	1974-11-01 00:00:00+00	ORTN	0.012584054	1.012584054	16.8714367	0.726121225
1517	1974-12-01 00:00:00+00	ORTN	0.012807134	1.012807134	17.08374777	0.717097235
1518	1975-01-01 00:00:00+00	ORTN	0.015174223	1.015174223	17.30254161	0.708029407
1519	1975-02-01 00:00:00+00	ORTN	0.01660823	1.01660823	17.56509423	0.697446204
1520	1975-03-01 00:00:00+00	ORTN	0.018787439	1.018787439	17.85681936	0.686052092
1521	1975-04-01 00:00:00+00	ORTN	0.019955457	1.019955457	18.19230326	0.67340062
1522	1975-05-01 00:00:00+00	ORTN	0.023058782	1.023058782	18.55533898	0.660225518
1523	1975-06-01 00:00:00+00	ORTN	0.018270298	1.018270298	18.9832025	0.645344656
1524	1975-07-01 00:00:00+00	ORTN	0.017104049	1.017104049	19.33003127	0.63376557
1525	1975-08-01 00:00:00+00	ORTN	0.015579919	1.015579919	19.66065308	0.623107902
1526	1975-09-01 00:00:00+00	ORTN	0.020292208	1.020292208	19.96696447	0.61354886
1527	1975-10-01 00:00:00+00	ORTN	0.021718377	1.021718377	20.37213826	0.601346217
1528	1975-11-01 00:00:00+00	ORTN	0.019465857	1.019465857	20.81458805	0.588563572
1529	1975-12-01 00:00:00+00	ORTN	0.018406782	1.018406782	21.21976183	0.577325438
1530	1976-01-01 00:00:00+00	ORTN	0.01919904	1.01919904	21.61034937	0.566890802
1531	1976-02-01 00:00:00+00	ORTN	0.022369389	1.022369389	22.02524733	0.556212064
1532	1976-03-01 00:00:00+00	ORTN	0.023751259	1.023751259	22.51793867	0.544042173
1533	1976-04-01 00:00:00+00	ORTN	0.025239033	1.025239033	23.05276807	0.531420272
1534	1976-05-01 00:00:00+00	ORTN	0.02976068	1.02976068	23.63459764	0.518337925
1535	1976-06-01 00:00:00+00	ORTN	0.0294999	1.0294999	24.33797934	0.503357658
1536	1976-07-01 00:00:00+00	ORTN	0.025549806	1.025549806	25.0559473	0.48893415
1537	1976-08-01 00:00:00+00	ORTN	0.027877641	1.027877641	25.69612189	0.476753198
1538	1976-09-01 00:00:00+00	ORTN	0.032889489	1.032889489	26.41246915	0.463822909
1539	1976-10-01 00:00:00+00	ORTN	0.03606012	1.03606012	27.28116176	0.449053761
1540	1976-11-01 00:00:00+00	ORTN	0.030275229	1.030275229	28.26492373	0.433424424
1541	1976-12-01 00:00:00+00	ORTN	0.022094835	1.022094835	29.12065078	0.420687998
1542	1977-01-01 00:00:00+00	ORTN	0.017315546	1.017315546	29.76406676	0.411593899
1543	1977-02-01 00:00:00+00	ORTN	0.019697051	1.019697051	30.27944783	0.404588233
1544	1977-03-01 00:00:00+00	ORTN	0.022675975	1.022675975	30.87586365	0.396772975
1545	1977-04-01 00:00:00+00	ORTN	0.02884566	1.02884566	31.57600396	0.387975258
1546	1977-05-01 00:00:00+00	ORTN	0.032177601	1.032177601	32.48683464	0.377097628
1547	1977-06-01 00:00:00+00	ORTN	0.033349444	1.033349444	33.53218303	0.365341805
1548	1977-07-01 00:00:00+00	ORTN	0.026707203	1.026707203	34.6504627	0.353551074
1549	1977-08-01 00:00:00+00	ORTN	0.020500205	1.020500205	35.57587963	0.344354333
1550	1977-09-01 00:00:00+00	ORTN	0.014017231	1.014017231	36.30519247	0.337436809
1551	1977-10-01 00:00:00+00	ORTN	0.013867488	1.013867488	36.81409075	0.332772263
1552	1977-11-01 00:00:00+00	ORTN	0.014937038	1.014937038	37.32460973	0.328220667
1553	1977-12-01 00:00:00+00	ORTN	0.019594421	1.019594421	37.88212886	0.323390175
1554	1978-01-01 00:00:00+00	ORTN	0.021106076	1.021106076	38.62440724	0.317175309
1555	1978-02-01 00:00:00+00	ORTN	0.023176495	1.023176495	39.43961691	0.310619353
1556	1978-03-01 00:00:00+00	ORTN	0.025784168	1.025784168	40.353689	0.303583355
1557	1978-04-01 00:00:00+00	ORTN	0.02920794	1.02920794	41.3941753	0.295952467
1558	1978-05-01 00:00:00+00	ORTN	0.030471336	1.030471336	42.60321389	0.287553618
1559	1978-06-01 00:00:00+00	ORTN	0.03012404	1.03012404	43.90139071	0.279050574
1560	1978-07-01 00:00:00+00	ORTN	0.030604931	1.030604931	45.22387798	0.270890265
1561	1978-08-01 00:00:00+00	ORTN	0.027783573	1.027783573	46.60795164	0.262845885
1562	1978-09-01 00:00:00+00	ORTN	0.026119024	1.026119024	47.90288708	0.2557405
1563	1978-10-01 00:00:00+00	ORTN	0.023739655	1.023739655	49.15406375	0.249230834
1564	1978-11-01 00:00:00+00	ORTN	0.025604689	1.025604689	50.32096428	0.243451382
1565	1978-12-01 00:00:00+00	ORTN	0.026315789	1.026315789	51.60941693	0.237373507
1566	1979-01-01 00:00:00+00	ORTN	0.022581238	1.022581238	52.96755948	0.231287007
1567	1979-02-01 00:00:00+00	ORTN	0.023249551	1.023249551	54.16363253	0.226179592
1568	1979-03-01 00:00:00+00	ORTN	0.024972951	1.024972951	55.42291268	0.221040499
1569	1979-04-01 00:00:00+00	ORTN	0.037459702	1.037459702	56.80698634	0.215654959
1570	1979-05-01 00:00:00+00	ORTN	0.038224617	1.038224617	58.93495911	0.207868275
1571	1979-06-01 00:00:00+00	ORTN	0.033267999	1.033267999	61.18772537	0.200215128
1572	1979-07-01 00:00:00+00	ORTN	0.027198154	1.027198154	63.22331853	0.193768827
1573	1979-08-01 00:00:00+00	ORTN	0.028773927	1.028773927	64.94287608	0.188638216
1574	1979-09-01 00:00:00+00	ORTN	0.040170774	1.040170774	66.81153764	0.183362166
1575	1979-10-01 00:00:00+00	ORTN	0.045872201	1.045872201	69.49540883	0.176280829
1576	1979-11-01 00:00:00+00	ORTN	0.045131224	1.045131224	72.68331622	0.16854911
1577	1979-12-01 00:00:00+00	ORTN	0.040792815	1.040792815	75.96360322	0.161270763
1578	1980-01-01 00:00:00+00	ORTN	0.042022836	1.042022836	79.06237243	0.15494992
1579	1980-02-01 00:00:00+00	ORTN	0.037003521	1.037003521	82.38479753	0.148701079
1580	1980-03-01 00:00:00+00	ORTN	0.036992071	1.036992071	85.43332509	0.143394961
1581	1980-04-01 00:00:00+00	ORTN	0.036989609	1.036989609	88.59368068	0.138279708
1582	1980-05-01 00:00:00+00	ORTN	0.033994284	1.033994284	91.87072632	0.133347245
1583	1980-06-01 00:00:00+00	ORTN	0.032006551	1.032006551	94.99380592	0.128963233
1584	1980-07-01 00:00:00+00	ORTN	0.032005819	1.032005819	98.03423006	0.124963579
1585	1980-08-01 00:00:00+00	ORTN	0.032006408	1.032006408	101.1718959	0.121088057
1586	1980-09-01 00:00:00+00	ORTN	0.030004812	1.030004812	104.4100448	0.11733266
1587	1980-10-01 00:00:00+00	ORTN	0.031994093	1.031994093	107.5428486	0.113914672
1588	1980-11-01 00:00:00+00	ORTN	0.031995211	1.031995211	110.9835844	0.110383066
1589	1980-12-01 00:00:00+00	ORTN	0.044997877	1.044997877	114.5345276	0.106960831
1590	1981-01-01 00:00:00+00	ORTN	0.05000677	1.05000677	119.6883382	0.10235507
1591	1981-02-01 00:00:00+00	ORTN	0.064996196	1.064996196	125.6735655	0.097480391
1592	1981-03-01 00:00:00+00	ORTN	0.063003281	1.063003281	133.8418692	0.09153121
1593	1981-04-01 00:00:00+00	ORTN	0.059998178	1.059998178	142.2743461	0.086106235
1594	1981-05-01 00:00:00+00	ORTN	0.059998064	1.059998064	150.8105477	0.081232437
1595	1981-06-01 00:00:00+00	ORTN	0.059998379	1.059998379	159.8588886	0.076634514
1596	1981-07-01 00:00:00+00	ORTN	0.059997704	1.059997704	169.4501628	0.072296822
1597	1981-08-01 00:00:00+00	ORTN	0.058000308	1.058000308	179.6167835	0.068204697
1598	1981-09-01 00:00:00+00	ORTN	0.057003966	1.057003966	190.0346122	0.064465668
1599	1981-10-01 00:00:00+00	ORTN	0.057003848	1.057003848	200.8673388	0.060989051
1600	1981-11-01 00:00:00+00	ORTN	0.054998322	1.054998322	212.31755	0.057699932
1601	1981-12-01 00:00:00+00	ORTN	0.052000955	1.052000955	223.9946589	0.054691966
1602	1982-01-01 00:00:00+00	ORTN	0.050001375	1.050001375	235.6425951	0.051988514
1603	1982-02-01 00:00:00+00	ORTN	0.049998035	1.049998035	247.4250488	0.049512805
1604	1982-03-01 00:00:00+00	ORTN	0.050000313	1.050000313	259.7958151	0.047155141
1605	1982-04-01 00:00:00+00	ORTN	0.054998394	1.054998394	272.785687	0.044909645
1606	1982-05-01 00:00:00+00	ORTN	0.054997719	1.054997719	287.7884618	0.042568448
1607	1982-06-01 00:00:00+00	ORTN	0.055002483	1.055002483	303.6161708	0.040349327
1608	1982-07-01 00:00:00+00	ORTN	0.059997675	1.059997675	320.3158141	0.038245718
1609	1982-08-01 00:00:00+00	ORTN	0.070000334	1.070000334	339.5340181	0.036080945
1610	1982-09-01 00:00:00+00	ORTN	0.069997859	1.069997859	363.3015127	0.033720499
1611	1982-10-01 00:00:00+00	ORTN	0.070000625	1.070000625	388.7318409	0.031514548
1612	1982-11-01 00:00:00+00	ORTN	0.065000289	1.065000289	415.9433128	0.029452831
1613	1982-12-01 00:00:00+00	ORTN	0.064999069	1.064999069	442.9797485	0.027655233
1614	1983-01-01 00:00:00+00	ORTN	0.060001442	1.060001442	471.7730196	0.025967378
1615	1983-02-01 00:00:00+00	ORTN	0.06699853	1.06699853	500.0800812	0.024497493
1616	1983-03-01 00:00:00+00	ORTN	0.090000367	1.090000367	533.5847117	0.022959257
1617	1983-04-01 00:00:00+00	ORTN	0.09000092	1.09000092	581.6075313	0.021063531
1618	1983-05-01 00:00:00+00	ORTN	0.080000305	1.080000305	633.952744	0.019324324
1619	1983-06-01 00:00:00+00	ORTN	0.077999031	1.077999031	684.6691571	0.017892888
1620	1983-07-01 00:00:00+00	ORTN	0.089999008	1.089999008	738.0726877	0.016598241
1621	1983-08-01 00:00:00+00	ORTN	0.084999531	1.084999531	804.4984973	0.015227758
1622	1983-09-01 00:00:00+00	ORTN	0.094999109	1.094999109	872.8804926	0.014034806
1623	1983-10-01 00:00:00+00	ORTN	0.097000584	1.097000584	955.8033614	0.012817185
1624	1983-11-01 00:00:00+00	ORTN	0.083999661	1.083999661	1048.516845	0.011683845
1625	1983-12-01 00:00:00+00	ORTN	0.076000397	1.076000397	1136.591905	0.010778458
1626	1984-01-01 00:00:00+00	ORTN	0.098000526	1.098000526	1222.973341	0.010017151
1627	1984-02-01 00:00:00+00	ORTN	0.123000568	1.123000568	1342.825373	0.009123084
1628	1984-03-01 00:00:00+00	ORTN	0.099999888	1.099999888	1507.993656	0.008123846
1629	1984-04-01 00:00:00+00	ORTN	0.088999887	1.088999887	1658.792853	0.007385315
1630	1984-05-01 00:00:00+00	ORTN	0.088999714	1.088999714	1806.42523	0.006781741
1631	1984-06-01 00:00:00+00	ORTN	0.09199967	1.09199967	1967.196558	0.006227496
1632	1984-07-01 00:00:00+00	ORTN	0.102999932	1.102999932	2148.177993	0.005702837
1633	1984-08-01 00:00:00+00	ORTN	0.106000028	1.106000028	2369.44018	0.005170297
1634	1984-09-01 00:00:00+00	ORTN	0.104974079	1.104974079	2620.600906	0.004674771
1635	1984-10-01 00:00:00+00	ORTN	0.1260262	1.1260262	2895.696073	0.004230661
1636	1984-11-01 00:00:00+00	ORTN	0.098999888	1.098999888	3260.629646	0.00375716
1637	1984-12-01 00:00:00+00	ORTN	0.105000086	1.105000086	3583.431615	0.003418709
1638	1985-01-01 00:00:00+00	ORTN	0.126000021	1.126000021	3959.692242	0.003093854
1639	1985-02-01 00:00:00+00	ORTN	0.101999988	1.101999988	4458.613548	0.00274765
1640	1985-03-01 00:00:00+00	ORTN	0.126999835	1.126999835	4913.392075	0.00249333
1641	1985-04-01 00:00:00+00	ORTN	0.118292994	1.118292994	5537.392058	0.002212361
1642	1985-05-01 00:00:00+00	ORTN	0.100058988	1.100058988	6192.426742	0.001978337
1643	1985-06-01 00:00:00+00	ORTN	0.092082024	1.092082024	6812.034697	0.001798392
1644	1985-07-01 00:00:00+00	ORTN	0.076139997	1.076139997	7439.300637	0.001646755
1645	1985-08-01 00:00:00+00	ORTN	0.08179703	1.08179703	8005.728966	0.001530243
1646	1985-09-01 00:00:00+00	ORTN	0.090999965	1.090999965	8660.573814	0.001414538
1647	1985-10-01 00:00:00+00	ORTN	0.090000051	1.090000051	9448.685731	0.001296552
1648	1985-11-01 00:00:00+00	ORTN	0.111199992	1.111199992	10299.06792	0.001189497
1649	1985-12-01 00:00:00+00	ORTN	0.133600014	1.133600014	11444.3242	0.001070461
1650	1986-01-01 00:00:00+00	ORTN	0.162300164	1.162300164	12973.28606	0.000944303
1651	1986-02-01 00:00:00+00	ORTN	0.143601	1.143601	15.07885252	0.812443007
1652	1986-03-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.710425233
1653	1986-04-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.710425233
1654	1986-05-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.710425233
1655	1986-06-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.710425233
1656	1986-07-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.710425233
1657	1986-08-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.710425233
1658	1986-09-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.710425233
1659	1986-10-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.710425233
1660	1986-11-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.710425233
1661	1986-12-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.710425233
1662	1987-01-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.710425233
1663	1987-02-01 00:00:00+00	OTN	0.706860902	1.706860902	17.24419083	0.710425233
1664	1987-03-01 00:00:00+00	OTN	0.145146193	1.145146193	29.43343511	0.416217415
1665	1987-04-01 00:00:00+00	OTN	0.209597538	1.209597538	33.70558615	0.363462253
1666	1987-05-01 00:00:00+00	OTN	0.234417237	1.234417237	40.77019403	0.300481972
1667	1987-06-01 00:00:00+00	OTN	0.180208031	1.180208031	50.32743025	0.243420104
1668	1987-07-01 00:00:00+00	OTN	0.030505607	1.030505607	59.39683736	0.206251862
1669	1987-08-01 00:00:00+00	OTN	0.063600498	1.063600498	61.20877395	0.200146278
1670	1987-09-01 00:00:00+00	OTN	0.056809978	1.056809978	65.10168245	0.18817806
1671	1987-10-01 00:00:00+00	OTN	0.091799957	1.091799957	68.80010762	0.178062342
1672	1987-11-01 00:00:00+00	OTN	0.128398206	1.128398206	75.11595455	0.163090629
1673	1987-12-01 00:00:00+00	OTN	0.141398497	1.141398497	84.76070832	0.144532868
1674	1988-01-01 00:00:00+00	OTN	0.165108722	1.165108722	96.74574507	0.126627877
1675	1988-02-01 00:00:00+00	OTN	0.17961179	1.17961179	112.7193114	0.108683314
1676	1988-03-01 00:00:00+00	OTN	0.160100924	1.160100924	132.9650287	0.092134815
1677	1988-04-01 00:00:00+00	OTN	0.192798681	1.192798681	154.2528526	0.079419655
1678	1988-05-01 00:00:00+00	OTN	0.177799112	1.177799112	183.9925991	0.066582614
1679	1988-06-01 00:00:00+00	OTN	0.195300349	1.195300349	216.7063199	0.056531384
1680	1988-07-01 00:00:00+00	OTN	0.240398932	1.240398932	259.0291398	0.047294711
1681	1988-08-01 00:00:00+00	OTN	0.206599817	1.206599817	321.2994684	0.038128629
1682	1988-09-01 00:00:00+00	OTN	0.240098492	1.240098492	387.6798797	0.031600062
1683	1988-10-01 00:00:00+00	OTN	0.272499575	1.272499575	480.7612341	0.025481897
1684	1988-11-01 00:00:00+00	OTN	0.269200707	1.269200707	611.7684659	0.020025073
1685	1988-12-01 00:00:00+00	OTN	0.287901	1.287901	776.4569697	0.015777704
1686	1989-01-01 00:00:00+00	IPC	0.4272	1.4272	0.999999708	12.25071187
1687	1989-02-01 00:00:00+00	IPC	0.1014	1.1014	1.427199583	8.583738696
1688	1989-03-01 00:00:00+00	BTN	0.060907336	1.060907336	1.571917621	7.79347984
1689	1989-04-01 00:00:00+00	BTN	0.073059776	1.073059776	1.667658935	7.346051419
1690	1989-05-01 00:00:00+00	BTN	0.099372562	1.099372562	1.789497724	6.845892076
1691	1989-06-01 00:00:00+00	BTN	0.248341817	1.248341817	1.967324698	6.22709017
1692	1989-07-01 00:00:00+00	BTN	0.287594217	1.287594217	2.455893688	4.988289333
1693	1989-08-01 00:00:00+00	BTN	0.293412024	1.293412024	3.162194511	3.87411598
1694	1989-09-01 00:00:00+00	BTN	0.359511797	1.359511797	4.090020404	2.995268257
1695	1989-10-01 00:00:00+00	BTN	0.376210877	1.376210877	5.560430989	2.203194017
1696	1989-11-01 00:00:00+00	BTN	0.414204703	1.414204703	7.652325606	1.600913097
1697	1989-12-01 00:00:00+00	BTN	0.535499972	1.535499972	10.82195486	1.132023598
1698	1990-01-01 00:00:00+00	BTN	0.56109498	1.56109498	16.61711139	0.737234529
1699	1990-02-01 00:00:00+00	BTN	0.727802864	1.727802864	25.94088917	0.472254756
1700	1990-03-01 00:00:00+00	IPC	0.843200001	1.843200001	44.82074259	0.273326759
1701	1990-04-01 00:00:00+00	IPC	0.447999999	1.447999999	82.61359279	0.148289257
1702	1990-05-01 00:00:00+00	IPC	0.078700001	1.078700001	119.6244823	0.102409708
1703	1990-06-01 00:00:00+00	IPC	0.095499999	1.095499999	129.0389291	0.094938081
1704	1990-07-01 00:00:00+00	IPC	0.1292	1.1292	141.3621468	0.086661872
1705	1990-08-01 00:00:00+00	IPC	0.1203	1.1203	159.6261362	0.076746256
1706	1990-09-01 00:00:00+00	IPC	0.127600001	1.127600001	178.8291604	0.068505093
1707	1990-10-01 00:00:00+00	IPC	0.142	1.142	201.6477614	0.060753009
1708	1990-11-01 00:00:00+00	IPC	0.1558	1.1558	230.2817435	0.053198782
1709	1990-12-01 00:00:00+00	IPC	0.183000001	1.183000001	266.1596392	0.046027671
1710	1991-01-01 00:00:00+00	IPC	0.199100001	1.199100001	314.8668535	0.038907583
1711	1991-02-01 00:00:00+00	IPC	0.218699997	1.218699997	377.5568443	0.032447321
1712	1991-03-01 00:00:00+00	INPC	0.1179	1.1179	460.1285252	0.026624536
1713	1991-04-01 00:00:00+00	INPC	0.0501	1.0501	514.3776783	0.023816563
1714	1991-05-01 00:00:00+00	INPC	0.0668	1.0668	540.148	0.022680281
1715	1991-06-01 00:00:00+00	INPC	0.1083	1.1083	576.2298864	0.021260106
1716	1991-07-01 00:00:00+00	INPC	0.1214	1.1214	638.6355831	0.019182627
1717	1991-08-01 00:00:00+00	INPC	0.1562	1.1562	716.1659429	0.017105963
1718	1991-09-01 00:00:00+00	INPC	0.1562	1.1562	828.0310632	0.014794986
1719	1991-10-01 00:00:00+00	INPC	0.2108	1.2108	957.3695153	0.012796217
1720	1991-11-01 00:00:00+00	INPC	0.2648	1.2648	1159.183009	0.010568399
1721	1991-12-01 00:00:00+00	IPCA	0.2288	1.2288	1466.13467	0.008355787
1722	1992-01-01 00:00:00+00	UFIR	0.25600448	1.25600448	1801.586282	0.006799956
1723	1992-02-01 00:00:00+00	UFIR	0.261004647	1.261004647	2262.800442	0.005413959
1724	1992-03-01 00:00:00+00	UFIR	0.220295228	1.220295228	2853.401872	0.004293369
1725	1992-04-01 00:00:00+00	UFIR	0.198299849	1.198299849	3481.992689	0.003518304
1726	1992-05-01 00:00:00+00	UFIR	0.234496999	1.234496999	4172.471315	0.00293608
1727	1992-06-01 00:00:00+00	UFIR	0.23269963	1.23269963	5150.903316	0.002378361
1728	1992-07-01 00:00:00+00	UFIR	0.210100325	1.210100325	6349.516614	0.001929392
1729	1992-08-01 00:00:00+00	UFIR	0.231398186	1.231398186	7683.552118	0.001594407
1730	1992-09-01 00:00:00+00	UFIR	0.233300251	1.233300251	9461.512144	0.001294794
1731	1992-10-01 00:00:00+00	UFIR	0.254799402	1.254799402	11668.8853	0.001049861
1732	1992-11-01 00:00:00+00	UFIR	0.236999035	1.236999035	14642.1103	0.000836676
1733	1992-12-01 00:00:00+00	UFIR	0.23490011	1.23490011	18112.2763	0.000676376
1734	1993-01-01 00:00:00+00	UFIR	0.294700749	1.294700749	22366.85199	0.000547717
1735	1993-02-01 00:00:00+00	UFIR	0.267200378	1.267200378	28958.38003	0.000423045
1736	1993-03-01 00:00:00+00	UFIR	0.25960045	1.25960045	36696.07011	0.000333843
1737	1993-04-01 00:00:00+00	UFIR	0.273401817	1.273401817	46222.38642	0.000265038
1738	1993-05-01 00:00:00+00	UFIR	0.288099882	1.288099882	58859.67088	0.000208134
1739	1993-06-01 00:00:00+00	UFIR	0.303398349	1.303398349	75817.13511	0.000161582
1740	1993-07-01 00:00:00+00	UFIR	0.306576	1.306576	98819.92874	0.00012397
1741	1993-08-01 00:00:00+00	UFIR	0.319934568	1.319934568	129.1157472	0.094881597
1742	1993-09-01 00:00:00+00	UFIR	0.343838528	1.343838528	170.424338	0.071883561
1743	1993-10-01 00:00:00+00	UFIR	0.351646912	1.351646912	229.0227915	0.053491219
1744	1993-11-01 00:00:00+00	UFIR	0.339019389	1.339019389	309.5579491	0.039574846
1745	1993-12-01 00:00:00+00	UFIR	0.366892352	1.366892352	414.5040957	0.029555096
1746	1994-01-01 00:00:00+00	UFIR	0.391702625	1.391702625	566.5824784	0.021622109
1747	1994-02-01 00:00:00+00	UFIR	0.396984517	1.396984517	788.5143224	0.015536444
1748	1994-03-01 00:00:00+00	UFIR	0.436311908	1.436311908	1101.5423	0.011121414
1749	1994-04-01 00:00:00+00	UFIR	0.412499564	1.412499564	1582.158322	0.007743036
1750	1994-05-01 00:00:00+00	UFIR	0.442096538	1.442096538	2234.797941	0.005481797
1751	1994-06-01 00:00:00+00	UFIR	0.446501	1.446501	3222.794374	0.003801269
1752	1994-07-01 00:00:00+00	UFIR	0.052153791	1.052153791	1.695191013	7.226742117
1753	1994-08-01 00:00:00+00	UFIR	0.050076129	1.050076129	1.783601651	6.868522621
1754	1994-09-01 00:00:00+00	UFIR	0.016271951	1.016271951	1.872917518	6.540975868
1755	1994-10-01 00:00:00+00	UFIR	0.019023462	1.019023462	1.90339354	6.436245595
1756	1994-11-01 00:00:00+00	UFIR	0.029558183	1.029558183	1.939602675	6.316091663
1757	1994-12-01 00:00:00+00	UFIR	0.022514355	1.022514355	1.996933806	6.134759325
1758	1995-01-01 00:00:00+00	UFIR	0.0	1.0	2.041893482	5.999680392
1759	1995-02-01 00:00:00+00	UFIR	0.0	1.0	2.041893482	5.999680392
1760	1995-03-01 00:00:00+00	UFIR	0.043446136	1.043446136	2.041893482	5.999680392
1761	1995-04-01 00:00:00+00	UFIR	0.0	1.0	2.130605863	5.749870728
1762	1995-05-01 00:00:00+00	UFIR	0.0	1.0	2.130605863	5.749870728
1763	1995-06-01 00:00:00+00	UFIR	0.071236369	1.071236369	2.130605863	5.749870728
1764	1995-07-01 00:00:00+00	UFIR	0.0	1.0	2.282382488	5.367508885
1765	1995-08-01 00:00:00+00	UFIR	0.0	1.0	2.282382488	5.367508885
1766	1995-09-01 00:00:00+00	UFIR	0.051295611	1.051295611	2.282382488	5.367508885
1767	1995-10-01 00:00:00+00	UFIR	0.0	1.0	2.399458692	5.105613331
1768	1995-11-01 00:00:00+00	UFIR	0.0	1.0	2.399458692	5.105613331
1769	1995-12-01 00:00:00+00	UFIR	0.042127767	1.042127767	2.399458692	5.105613331
1770	1996-01-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	4.899220129
1771	1996-02-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	4.899220129
1772	1996-03-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	4.899220129
1773	1996-04-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	4.899220129
1774	1996-05-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	4.899220129
1775	1996-06-01 00:00:00+00	UFIR	0.067575721	1.067575721	2.500542528	4.899220129
1776	1996-07-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	4.589107857
1777	1996-08-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	4.589107857
1778	1996-09-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	4.589107857
1779	1996-10-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	4.589107857
1780	1996-11-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	4.589107857
1781	1996-12-01 00:00:00+00	UFIR	0.029501526	1.029501526	2.669518492	4.589107857
1782	1997-01-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	4.457601802
1783	1997-02-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	4.457601802
1784	1997-03-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	4.457601802
1785	1997-04-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	4.457601802
1786	1997-05-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	4.457601802
1787	1997-06-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	4.457601802
1788	1997-07-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	4.457601802
1789	1997-08-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	4.457601802
1790	1997-09-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	4.457601802
1791	1997-10-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	4.457601802
1792	1997-11-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	4.457601802
1793	1997-12-01 00:00:00+00	UFIR	0.055226175	1.055226175	2.748273361	4.457601802
1794	1998-01-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	4.224309355
1795	1998-02-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	4.224309355
1796	1998-03-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	4.224309355
1797	1998-04-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	4.224309355
1798	1998-05-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	4.224309355
1799	1998-06-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	4.224309355
1800	1998-07-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	4.224309355
1801	1998-08-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	4.224309355
1802	1998-09-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	4.224309355
1803	1998-10-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	4.224309355
1804	1998-11-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	4.224309355
1805	1998-12-01 00:00:00+00	UFIR	0.016543544	1.016543544	2.900049986	4.224309355
1806	1999-01-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	4.155561638
1807	1999-02-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	4.155561638
1808	1999-03-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	4.155561638
1809	1999-04-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	4.155561638
1810	1999-05-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	4.155561638
1811	1999-06-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	4.155561638
1812	1999-07-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	4.155561638
1813	1999-08-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	4.155561638
1814	1999-09-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	4.155561638
1815	1999-10-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	4.155561638
1816	1999-11-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	4.155561638
1817	1999-12-01 00:00:00+00	UFIR	0.08915046	1.08915046	2.948027091	4.155561638
1818	2000-01-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.815415582
1819	2000-02-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.815415582
1820	2000-03-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.815415582
1821	2000-04-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.815415582
1822	2000-05-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.815415582
1823	2000-06-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.815415582
1824	2000-07-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.815415582
1825	2000-08-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.815415582
1826	2000-09-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.815415582
1827	2000-10-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.815415582
1828	2000-11-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.815415582
1829	2000-12-01 00:00:00+00	IPCA-E	0.06035557	1.06035557	3.210845063	3.815415582
1830	2001-01-01 00:00:00+00	IPCA-E	0.0063	1.0063	3.404637447	3.598241656
1831	2001-02-01 00:00:00+00	IPCA-E	0.005	1.005	3.426086663	3.575714654
1832	2001-03-01 00:00:00+00	IPCA-E	0.0036	1.0036	3.443217097	3.557925029
1833	2001-04-01 00:00:00+00	IPCA-E	0.005	1.005	3.455612678	3.545162444
1834	2001-05-01 00:00:00+00	IPCA-E	0.0049	1.0049	3.472890742	3.52752482
1835	2001-06-01 00:00:00+00	IPCA-E	0.0038	1.0038	3.489907906	3.510324231
1836	2001-07-01 00:00:00+00	IPCA-E	0.0094	1.0094	3.503169556	3.497035496
1837	2001-08-01 00:00:00+00	IPCA-E	0.0118	1.0118	3.53609935	3.464469483
1838	2001-09-01 00:00:00+00	IPCA-E	0.0038	1.0038	3.577825322	3.42406551
1839	2001-10-01 00:00:00+00	IPCA-E	0.0037	1.0037	3.591421059	3.411103317
1840	2001-11-01 00:00:00+00	IPCA-E	0.0099	1.0099	3.604709316	3.398528761
1841	2001-12-01 00:00:00+00	IPCA-E	0.0055	1.0055	3.640395939	3.365213151
1842	2002-01-01 00:00:00+00	IPCA-E	0.0062	1.0062	3.660418116	3.346805719
1843	2002-02-01 00:00:00+00	IPCA-E	0.0044	1.0044	3.683112709	3.326183382
1844	2002-03-01 00:00:00+00	IPCA-E	0.004	1.004	3.699318405	3.311612288
1845	2002-04-01 00:00:00+00	IPCA-E	0.0078	1.0078	3.714115678	3.298418614
1846	2002-05-01 00:00:00+00	IPCA-E	0.0042	1.0042	3.743085781	3.272890071
1847	2002-06-01 00:00:00+00	IPCA-E	0.0033	1.0033	3.758806741	3.259201425
1848	2002-07-01 00:00:00+00	IPCA-E	0.0077	1.0077	3.771210803	3.248481436
1849	2002-08-01 00:00:00+00	IPCA-E	0.01	1.01	3.800249126	3.22365926
1850	2002-09-01 00:00:00+00	IPCA-E	0.0062	1.0062	3.838251618	3.191741842
1851	2002-10-01 00:00:00+00	IPCA-E	0.009	1.009	3.862048778	3.172074977
1852	2002-11-01 00:00:00+00	IPCA-E	0.0208	1.0208	3.896807217	3.143780948
1853	2002-12-01 00:00:00+00	IPCA-E	0.0305	1.0305	3.977860807	3.079722716
1854	2003-01-01 00:00:00+00	IPCA-E	0.0198	1.0198	4.099185561	2.988571291
1855	2003-02-01 00:00:00+00	IPCA-E	0.0219	1.0219	4.180349435	2.930546471
1856	2003-03-01 00:00:00+00	IPCA-E	0.0114	1.0114	4.271899088	2.867742902
1857	2003-04-01 00:00:00+00	IPCA-E	0.0114	1.0114	4.320598738	2.835419124
1858	2003-05-01 00:00:00+00	IPCA-E	0.0085	1.0085	4.369853563	2.803459683
1859	2003-06-01 00:00:00+00	IPCA-E	0.0022	1.0022	4.406997319	2.779831119
1860	2003-07-01 00:00:00+00	IPCA-E	-0.0018	0.9982	4.416692713	2.773728915
1861	2003-08-01 00:00:00+00	IPCA-E	0.0027	1.0027	4.408742666	2.77873063
1862	2003-09-01 00:00:00+00	IPCA-E	0.0057	1.0057	4.420646271	2.77124826
1863	2003-10-01 00:00:00+00	IPCA-E	0.0066	1.0066	4.445843955	2.755541672
1864	2003-11-01 00:00:00+00	IPCA-E	0.0017	1.0017	4.475186525	2.737474342
1865	2003-12-01 00:00:00+00	IPCA-E	0.0046	1.0046	4.482794342	2.732828533
1866	2004-01-01 00:00:00+00	IPCA-E	0.0068	1.0068	4.503415196	2.720315084
1867	2004-02-01 00:00:00+00	IPCA-E	0.009	1.009	4.534038419	2.701941879
1868	2004-03-01 00:00:00+00	IPCA-E	0.004	1.004	4.574844765	2.677841307
1869	2004-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	4.593144144	2.667172617
1870	2004-05-01 00:00:00+00	IPCA-E	0.0054	1.0054	4.602789747	2.661583292
1871	2004-06-01 00:00:00+00	IPCA-E	0.0056	1.0056	4.627644811	2.647287937
1872	2004-07-01 00:00:00+00	IPCA-E	0.0093	1.0093	4.653559622	2.632545681
1873	2004-08-01 00:00:00+00	IPCA-E	0.0079	1.0079	4.696837727	2.608288597
1874	2004-09-01 00:00:00+00	IPCA-E	0.0049	1.0049	4.733942745	2.587844625
1875	2004-10-01 00:00:00+00	IPCA-E	0.0032	1.0032	4.757139064	2.575226017
1876	2004-11-01 00:00:00+00	IPCA-E	0.0063	1.0063	4.772361909	2.56701158
1877	2004-12-01 00:00:00+00	IPCA-E	0.0084	1.0084	4.802427789	2.550940654
1878	2005-01-01 00:00:00+00	IPCA-E	0.0068	1.0068	4.842768183	2.529691248
1879	2005-02-01 00:00:00+00	IPCA-E	0.0074	1.0074	4.875699006	2.51260553
1880	2005-03-01 00:00:00+00	IPCA-E	0.0035	1.0035	4.911779179	2.494148829
1881	2005-04-01 00:00:00+00	IPCA-E	0.0074	1.0074	4.928970406	2.485449755
1882	2005-05-01 00:00:00+00	IPCA-E	0.0083	1.0083	4.965444787	2.46719253
1883	2005-06-01 00:00:00+00	IPCA-E	0.0012	1.0012	5.006657979	2.446883398
1884	2005-07-01 00:00:00+00	IPCA-E	0.0011	1.0011	5.012665969	2.443950657
1885	2005-08-01 00:00:00+00	IPCA-E	0.0028	1.0028	5.018179901	2.441265265
1886	2005-09-01 00:00:00+00	IPCA-E	0.0016	1.0016	5.032230805	2.434448808
1887	2005-10-01 00:00:00+00	IPCA-E	0.0056	1.0056	5.040282374	2.430559913
1888	2005-11-01 00:00:00+00	IPCA-E	0.0078	1.0078	5.068507956	2.417024575
1889	2005-12-01 00:00:00+00	IPCA-E	0.0038	1.0038	5.108042317	2.398317697
1890	2006-01-01 00:00:00+00	IPCA-E	0.0051	1.0051	5.127452878	2.38923859
1891	2006-02-01 00:00:00+00	IPCA-E	0.0052	1.0052	5.153602888	2.377115302
1892	2006-03-01 00:00:00+00	IPCA-E	0.0037	1.0037	5.180401623	2.364818247
1893	2006-04-01 00:00:00+00	IPCA-E	0.0017	1.0017	5.199569109	2.356100675
1894	2006-05-01 00:00:00+00	IPCA-E	0.0027	1.0027	5.208408377	2.352102101
1895	2006-06-01 00:00:00+00	IPCA-E	-0.0015	0.9985	5.222471079	2.345768526
1896	2006-07-01 00:00:00+00	IPCA-E	-0.0002	0.9998	5.214637373	2.349292465
1897	2006-08-01 00:00:00+00	IPCA-E	0.0019	1.0019	5.213594445	2.349762417
1898	2006-09-01 00:00:00+00	IPCA-E	0.0005	1.0005	5.223500274	2.345306335
1899	2006-10-01 00:00:00+00	IPCA-E	0.0029	1.0029	5.226112024	2.344134268
1900	2006-11-01 00:00:00+00	IPCA-E	0.0037	1.0037	5.24126775	2.337355936
1901	2006-12-01 00:00:00+00	IPCA-E	0.0035	1.0035	5.26066044	2.3287396
1902	2007-01-01 00:00:00+00	IPCA-E	0.0052	1.0052	5.279072752	2.320617438
1903	2007-02-01 00:00:00+00	IPCA-E	0.0046	1.0046	5.30652393	2.308612653
1904	2007-03-01 00:00:00+00	IPCA-E	0.0041	1.0041	5.33093394	2.298041661
1905	2007-04-01 00:00:00+00	IPCA-E	0.0022	1.0022	5.352790769	2.288658163
1906	2007-05-01 00:00:00+00	IPCA-E	0.0026	1.0026	5.364566909	2.283634167
1907	2007-06-01 00:00:00+00	IPCA-E	0.0029	1.0029	5.378514783	2.277712116
1908	2007-07-01 00:00:00+00	IPCA-E	0.0024	1.0024	5.394112476	2.271125851
1909	2007-08-01 00:00:00+00	IPCA-E	0.0042	1.0042	5.407058346	2.265688199
1910	2007-09-01 00:00:00+00	IPCA-E	0.0029	1.0029	5.429767991	2.256212108
1911	2007-10-01 00:00:00+00	IPCA-E	0.0024	1.0024	5.445514318	2.249688013
1912	2007-11-01 00:00:00+00	IPCA-E	0.0023	1.0023	5.458583552	2.244301689
1913	2007-12-01 00:00:00+00	IPCA-E	0.007	1.007	5.471138294	2.23915164
1914	2008-01-01 00:00:00+00	IPCA-E	0.007	1.007	5.509436263	2.223586535
1915	2008-02-01 00:00:00+00	IPCA-E	0.0064	1.0064	5.548002316	2.208129627
1916	2008-03-01 00:00:00+00	IPCA-E	0.0023	1.0023	5.583509531	2.194087467
1917	2008-04-01 00:00:00+00	IPCA-E	0.0059	1.0059	5.596351603	2.189052646
1918	2008-05-01 00:00:00+00	IPCA-E	0.0056	1.0056	5.629370077	2.17621299
1919	2008-06-01 00:00:00+00	IPCA-E	0.009	1.009	5.66089455	2.164094063
1920	2008-07-01 00:00:00+00	IPCA-E	0.0063	1.0063	5.711842601	2.144790944
1921	2008-08-01 00:00:00+00	IPCA-E	0.0035	1.0035	5.747827209	2.131363355
1922	2008-09-01 00:00:00+00	IPCA-E	0.0026	1.0026	5.767944604	2.123929602
1923	2008-10-01 00:00:00+00	IPCA-E	0.003	1.003	5.78294126	2.118421705
1924	2008-11-01 00:00:00+00	IPCA-E	0.0049	1.0049	5.800290084	2.112085449
1925	2008-12-01 00:00:00+00	IPCA-E	0.0029	1.0029	5.828711506	2.101786694
1926	2009-01-01 00:00:00+00	IPCA-E	0.004	1.004	5.845614769	2.095709138
1927	2009-02-01 00:00:00+00	IPCA-E	0.0063	1.0063	5.868997228	2.087359699
1928	2009-03-01 00:00:00+00	IPCA-E	0.0011	1.0011	5.905971911	2.074291661
1929	2009-04-01 00:00:00+00	IPCA-E	0.0036	1.0036	5.91246848	2.072012448
1930	2009-05-01 00:00:00+00	IPCA-E	0.0059	1.0059	5.933753366	2.06457996
1931	2009-06-01 00:00:00+00	IPCA-E	0.0038	1.0038	5.968762511	2.052470385
1932	2009-07-01 00:00:00+00	IPCA-E	0.0022	1.0022	5.991443809	2.044700522
1933	2009-08-01 00:00:00+00	IPCA-E	0.0023	1.0023	6.004624985	2.040212056
1934	2009-09-01 00:00:00+00	IPCA-E	0.0019	1.0019	6.018435623	2.035530336
1935	2009-10-01 00:00:00+00	IPCA-E	0.0018	1.0018	6.02987065	2.031670163
1936	2009-11-01 00:00:00+00	IPCA-E	0.0044	1.0044	6.040724418	2.028019727
1937	2009-12-01 00:00:00+00	IPCA-E	0.0038	1.0038	6.067303605	2.019135531
1938	2010-01-01 00:00:00+00	IPCA-E	0.0052	1.0052	6.090359359	2.011491862
1939	2010-02-01 00:00:00+00	IPCA-E	0.0094	1.0094	6.122029227	2.001086214
1940	2010-03-01 00:00:00+00	IPCA-E	0.0055	1.0055	6.179576302	1.982451173
1941	2010-04-01 00:00:00+00	IPCA-E	0.0048	1.0048	6.213563972	1.971607332
1942	2010-05-01 00:00:00+00	IPCA-E	0.0063	1.0063	6.243389079	1.962188826
1943	2010-06-01 00:00:00+00	IPCA-E	0.0019	1.0019	6.28272243	1.949904428
1944	2010-07-01 00:00:00+00	IPCA-E	-0.0009	0.9991	6.294659603	1.946206635
1945	2010-08-01 00:00:00+00	IPCA-E	-0.0005	0.9995	6.288994409	1.947959799
1946	2010-09-01 00:00:00+00	IPCA-E	0.0031	1.0031	6.285849912	1.948934266
1947	2010-10-01 00:00:00+00	IPCA-E	0.0062	1.0062	6.305336047	1.942911242
1948	2010-11-01 00:00:00+00	IPCA-E	0.0086	1.0086	6.34442913	1.930939417
1949	2010-12-01 00:00:00+00	IPCA-E	0.0069	1.0069	6.398991221	1.914474933
1950	2011-01-01 00:00:00+00	IPCA-E	0.0076	1.0076	6.44314426	1.901355579
1951	2011-02-01 00:00:00+00	IPCA-E	0.0097	1.0097	6.492112156	1.887014271
1952	2011-03-01 00:00:00+00	IPCA-E	0.006	1.006	6.555085644	1.868886076
1953	2011-04-01 00:00:00+00	IPCA-E	0.0077	1.0077	6.594416158	1.857739638
1954	2011-05-01 00:00:00+00	IPCA-E	0.007	1.007	6.645193163	1.843544347
1955	2011-06-01 00:00:00+00	IPCA-E	0.0023	1.0023	6.691709515	1.830729242
1956	2011-07-01 00:00:00+00	IPCA-E	0.001	1.001	6.707100447	1.826528227
1957	2011-08-01 00:00:00+00	IPCA-E	0.0027	1.0027	6.713807547	1.824703523
1958	2011-09-01 00:00:00+00	IPCA-E	0.0053	1.0053	6.731934827	1.81979009
1959	2011-10-01 00:00:00+00	IPCA-E	0.0042	1.0042	6.767614082	1.810196051
1960	2011-11-01 00:00:00+00	IPCA-E	0.0046	1.0046	6.796038061	1.802625026
1961	2011-12-01 00:00:00+00	IPCA-E	0.0056	1.0056	6.827299836	1.79437092
1962	2012-01-01 00:00:00+00	IPCA-E	0.0065	1.0065	6.865532715	1.784378401
1963	2012-02-01 00:00:00+00	IPCA-E	0.0053	1.0053	6.910158678	1.772854844
1964	2012-03-01 00:00:00+00	IPCA-E	0.0025	1.0025	6.946782519	1.76350825
1965	2012-04-01 00:00:00+00	IPCA-E	0.0043	1.0043	6.964149475	1.759110474
1966	2012-05-01 00:00:00+00	IPCA-E	0.0051	1.0051	6.994095318	1.751578686
1967	2012-06-01 00:00:00+00	IPCA-E	0.0018	1.0018	7.029765204	1.742690962
1968	2012-07-01 00:00:00+00	IPCA-E	0.0033	1.0033	7.042418781	1.739559754
1969	2012-08-01 00:00:00+00	IPCA-E	0.0039	1.0039	7.065658763	1.733838089
1970	2012-09-01 00:00:00+00	IPCA-E	0.0048	1.0048	7.093214833	1.727102389
1971	2012-10-01 00:00:00+00	IPCA-E	0.0065	1.0065	7.127262264	1.7188519
1972	2012-11-01 00:00:00+00	IPCA-E	0.0054	1.0054	7.173589469	1.707751516
1973	2012-12-01 00:00:00+00	IPCA-E	0.0069	1.0069	7.212326852	1.698579188
1974	2013-01-01 00:00:00+00	IPCA-E	0.0088	1.0088	7.262091907	1.686939307
1975	2013-02-01 00:00:00+00	IPCA-E	0.0068	1.0068	7.325998316	1.672223738
1976	2013-03-01 00:00:00+00	IPCA-E	0.0049	1.0049	7.375815104	1.660929418
1977	2013-04-01 00:00:00+00	IPCA-E	0.0051	1.0051	7.411956598	1.652830548
1978	2013-05-01 00:00:00+00	IPCA-E	0.0046	1.0046	7.449757577	1.644443884
1979	2013-06-01 00:00:00+00	IPCA-E	0.0038	1.0038	7.484026462	1.636914079
1980	2013-07-01 00:00:00+00	IPCA-E	0.0007	1.0007	7.512465762	1.630717354
1981	2013-08-01 00:00:00+00	IPCA-E	0.0016	1.0016	7.517724488	1.62957665
1982	2013-09-01 00:00:00+00	IPCA-E	0.0027	1.0027	7.529752848	1.626973492
1983	2013-10-01 00:00:00+00	IPCA-E	0.0048	1.0048	7.55008318	1.622592493
1984	2013-11-01 00:00:00+00	IPCA-E	0.0057	1.0057	7.58632358	1.614841255
1985	2013-12-01 00:00:00+00	IPCA-E	0.0075	1.0075	7.629565624	1.605688828
1986	2014-01-01 00:00:00+00	IPCA-E	0.0067	1.0067	7.686787366	1.59373581
1987	2014-02-01 00:00:00+00	IPCA-E	0.007	1.007	7.738288841	1.583128846
1988	2014-03-01 00:00:00+00	IPCA-E	0.0073	1.0073	7.792456863	1.572123979
1989	2014-04-01 00:00:00+00	IPCA-E	0.0078	1.0078	7.849341798	1.560730645
1990	2014-05-01 00:00:00+00	IPCA-E	0.0058	1.0058	7.910566664	1.548651166
1991	2014-06-01 00:00:00+00	IPCA-E	0.0047	1.0047	7.956447951	1.539720785
1992	2014-07-01 00:00:00+00	IPCA-E	0.0017	1.0017	7.993843257	1.532517951
1993	2014-08-01 00:00:00+00	IPCA-E	0.0014	1.0014	8.00743279	1.529917092
1994	2014-09-01 00:00:00+00	IPCA-E	0.0039	1.0039	8.018643196	1.527778202
1995	2014-10-01 00:00:00+00	IPCA-E	0.0048	1.0048	8.049915904	1.521843015
1996	2014-11-01 00:00:00+00	IPCA-E	0.0038	1.0038	8.088555501	1.514573064
1997	2014-12-01 00:00:00+00	IPCA-E	0.0079	1.0079	8.119292012	1.508839474
1998	2015-01-01 00:00:00+00	IPCA-E	0.0089	1.0089	8.183434419	1.497013071
1999	2015-02-01 00:00:00+00	IPCA-E	0.0133	1.0133	8.256266985	1.483807187
2000	2015-03-01 00:00:00+00	IPCA-E	0.0124	1.0124	8.366075336	1.464331577
2001	2015-04-01 00:00:00+00	IPCA-E	0.0107	1.0107	8.46981467	1.446396263
2002	2015-05-01 00:00:00+00	IPCA-E	0.006	1.006	8.560441687	1.431083668
2003	2015-06-01 00:00:00+00	IPCA-E	0.0099	1.0099	8.611804337	1.422548377
2004	2015-07-01 00:00:00+00	IPCA-E	0.0059	1.0059	8.6970612	1.408603206
2005	2015-08-01 00:00:00+00	IPCA-E	0.0043	1.0043	8.748373861	1.400341193
2006	2015-09-01 00:00:00+00	IPCA-E	0.0039	1.0039	8.785991869	1.394345507
2007	2015-10-01 00:00:00+00	IPCA-E	0.0066	1.0066	8.820257237	1.388928685
2008	2015-11-01 00:00:00+00	IPCA-E	0.0085	1.0085	8.878470935	1.379821861
2009	2015-12-01 00:00:00+00	IPCA-E	0.0118	1.0118	8.953937938	1.368192227
2010	2016-01-01 00:00:00+00	IPCA-E	0.0092	1.0092	9.059594405	1.352235844
2011	2016-02-01 00:00:00+00	IPCA-E	0.0142	1.0142	9.142942674	1.339908684
2012	2016-03-01 00:00:00+00	IPCA-E	0.0043	1.0043	9.27277246	1.321148377
2013	2016-04-01 00:00:00+00	IPCA-E	0.0051	1.0051	9.312645381	1.315491763
2014	2016-05-01 00:00:00+00	IPCA-E	0.0086	1.0086	9.360139873	1.308816797
2015	2016-06-01 00:00:00+00	IPCA-E	0.004	1.004	9.440637076	1.297656947
2016	2016-07-01 00:00:00+00	IPCA-E	0.0054	1.0054	9.478399624	1.292486999
2017	2016-08-01 00:00:00+00	IPCA-E	0.0045	1.0045	9.529582982	1.285545056
2018	2016-09-01 00:00:00+00	IPCA-E	0.0023	1.0023	9.572466105	1.279786019
2019	2016-10-01 00:00:00+00	IPCA-E	0.0019	1.0019	9.594482777	1.276849265
2020	2016-11-01 00:00:00+00	IPCA-E	0.0026	1.0026	9.612712295	1.274427853
2021	2016-12-01 00:00:00+00	IPCA-E	0.0019	1.0019	9.637705347	1.271122933
2022	2017-01-01 00:00:00+00	IPCA-E	0.0031	1.0031	9.656016987	1.268712379
2023	2017-02-01 00:00:00+00	IPCA-E	0.0054	1.0054	9.68595064	1.264791526
2024	2017-03-01 00:00:00+00	IPCA-E	0.0015	1.0015	9.738254773	1.257998335
2025	2017-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	9.752862155	1.256114163
2026	2017-05-01 00:00:00+00	IPCA-E	0.0024	1.0024	9.773343166	1.253481851
2027	2017-06-01 00:00:00+00	IPCA-E	0.0016	1.0016	9.796799189	1.250480698
2028	2017-07-01 00:00:00+00	IPCA-E	-0.0018	0.9982	9.812474068	1.248483125
2029	2017-08-01 00:00:00+00	IPCA-E	0.0035	1.0035	9.794811615	1.250734447
2030	2017-09-01 00:00:00+00	IPCA-E	0.0011	1.0011	9.829093455	1.246372144
2031	2017-10-01 00:00:00+00	IPCA-E	0.0034	1.0034	9.839905458	1.245002641
2032	2017-11-01 00:00:00+00	IPCA-E	0.0032	1.0032	9.873361137	1.240783976
2033	2017-12-01 00:00:00+00	IPCA-E	0.0035	1.0035	9.904955892	1.236826132
2034	2018-01-01 00:00:00+00	IPCA-E	0.0039	1.0039	9.939623238	1.232512339
2035	2018-02-01 00:00:00+00	IPCA-E	0.0038	1.0038	9.978387769	1.227724215
2036	2018-03-01 00:00:00+00	IPCA-E	0.001	1.001	10.01630564	1.223076524
2037	2018-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	10.02632195	1.221854669
2038	2018-05-01 00:00:00+00	IPCA-E	0.0014	1.0014	10.04737722	1.219294151
2039	2018-06-01 00:00:00+00	IPCA-E	0.0111	1.0111	10.06144355	1.217589526
2040	2018-07-01 00:00:00+00	IPCA-E	0.0064	1.0064	10.17312558	1.204222655
2041	2018-08-01 00:00:00+00	IPCA-E	0.0013	1.0013	10.23823358	1.196564641
2042	2018-09-01 00:00:00+00	IPCA-E	0.0009	1.0009	10.25154328	1.195011126
2043	2018-10-01 00:00:00+00	IPCA-E	0.0058	1.0058	10.26076967	1.193936584
2044	2018-11-01 00:00:00+00	IPCA-E	0.0019	1.0019	10.32028214	1.187051684
2045	2018-12-01 00:00:00+00	IPCA-E	-0.0016	0.9984	10.33989067	1.184800563
2046	2019-01-01 00:00:00+00	IPCA-E	0.003	1.003	10.32334685	1.186699282
2047	2019-02-01 00:00:00+00	IPCA-E	0.0034	1.0034	10.35431689	1.183149832
2048	2019-03-01 00:00:00+00	IPCA-E	0.0054	1.0054	10.38952156	1.179140754
2049	2019-04-01 00:00:00+00	IPCA-E	0.0072	1.0072	10.44562498	1.172807593
2050	2019-05-01 00:00:00+00	IPCA-E	0.0035	1.0035	10.52083348	1.164423742
2051	2019-06-01 00:00:00+00	IPCA-E	0.0006	1.0006	10.5576564	1.160362473
2052	2019-07-01 00:00:00+00	IPCA-E	0.0009	1.0009	10.56399099	1.159666673
2053	2019-08-01 00:00:00+00	IPCA-E	0.0008	1.0008	10.57349858	1.158623911
2054	2019-09-01 00:00:00+00	IPCA-E	0.0009	1.0009	10.58195738	1.157697753
2055	2019-10-01 00:00:00+00	IPCA-E	0.0009	1.0009	10.59148114	1.156656762
2056	2019-11-01 00:00:00+00	IPCA-E	0.0014	1.0014	10.60101348	1.155616707
2057	2019-12-01 00:00:00+00	IPCA-E	0.0105	1.0105	10.6158549	1.154001106
2058	2020-01-01 00:00:00+00	IPCA-E	0.0071	1.0071	10.72732137	1.142010001
2059	2020-02-01 00:00:00+00	IPCA-E	0.0022	1.0022	10.80348535	1.133958892
2060	2020-03-01 00:00:00+00	IPCA-E	0.0002	1.0002	10.82725302	1.131469659
2061	2020-04-01 00:00:00+00	IPCA-E	-0.0001	0.9999	10.82941847	1.13124341
2062	2020-05-01 00:00:00+00	IPCA-E	-0.0059	0.9941	10.82833553	1.131356546
2063	2020-06-01 00:00:00+00	IPCA-E	0.0002	1.0002	10.76444835	1.138071166
2064	2020-07-01 00:00:00+00	IPCA-E	0.003	1.003	10.76660124	1.137843597
2065	2020-08-01 00:00:00+00	IPCA-E	0.0023	1.0023	10.79890104	1.134440276
2066	2020-09-01 00:00:00+00	IPCA-E	0.0045	1.0045	10.82373852	1.131837051
2067	2020-10-01 00:00:00+00	IPCA-E	0.0094	1.0094	10.87244534	1.126766602
2068	2020-11-01 00:00:00+00	IPCA-E	0.0081	1.0081	10.97464633	1.116273629
2069	2020-12-01 00:00:00+00	IPCA-E	0.0106	1.0106	11.06354096	1.107304463
2070	2021-01-01 00:00:00+00	IPCA-E	0.0078	1.0078	11.1808145	1.095690148
2071	2021-02-01 00:00:00+00	IPCA-E	0.0048	1.0048	11.26802485	1.08720991
2072	2021-03-01 00:00:00+00	IPCA-E	0.0093	1.0093	11.32211137	1.082016232
2073	2021-04-01 00:00:00+00	IPCA-E	0.006	1.006	11.427407	1.072046203
2074	2021-05-01 00:00:00+00	IPCA-E	0.0044	1.0044	11.49597145	1.065652289
2075	2021-06-01 00:00:00+00	IPCA-E	0.0083	1.0083	11.54655372	1.06098396
2076	2021-07-01 00:00:00+00	IPCA-E	0.0072	1.0072	11.64239012	1.052250282
2077	2021-08-01 00:00:00+00	IPCA-E	0.0089	1.0089	11.72621533	1.044728239
2078	2021-09-01 00:00:00+00	IPCA-E	0.0114	1.0114	11.83057864	1.035512181
2079	2021-10-01 00:00:00+00	IPCA-E	0.012	1.012	11.96544724	1.0238404
2080	2021-11-01 00:00:00+00	IPCA-E	0.0117	1.0117	12.10903261	1.0117
2081	2021-12-01 00:00:00+00	IPCA-E	0	1.0	12.25070829	1.0
\.


--
-- Data for Name: t204_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t204_tabela_pnep (id, data, indexador, variacao_mensal, numero_indice, fator_vigente, indice_correcao) FROM stdin;
1	1964-10-01 00:00:00+00	ORTN	0.0	1.0	1620.6956	0.00568991
2	1964-11-01 00:00:00+00	ORTN	0.0	1.0	1620.6956	0.00568991
3	1964-12-01 00:00:00+00	ORTN	0.130000001	1.130000001	1620.6956	0.00568991
4	1965-01-01 00:00:00+00	ORTN	0.0	1.0	1831.38603	0.005035319
5	1965-02-01 00:00:00+00	ORTN	0.0	1.0	1831.38603	0.005035319
6	1965-03-01 00:00:00+00	ORTN	0.185840713	1.185840713	1831.38603	0.005035319
7	1965-04-01 00:00:00+00	ORTN	0.0	1.0	2171.732116	0.004246202
8	1965-05-01 00:00:00+00	ORTN	0.0	1.0	2171.732116	0.004246202
9	1965-06-01 00:00:00+00	ORTN	0.134328344	1.134328344	2171.732116	0.004246202
10	1965-07-01 00:00:00+00	ORTN	0.0	1.0	2463.457294	0.003743362
11	1965-08-01 00:00:00+00	ORTN	0.032894753	1.032894753	2463.457294	0.003743362
12	1965-09-01 00:00:00+00	ORTN	0.012738835	1.012738835	2544.492113	0.003624147
13	1965-10-01 00:00:00+00	ORTN	0.009433975	1.009433975	2576.905977	0.00357856
14	1965-11-01 00:00:00+00	ORTN	0.015576314	1.015576314	2601.216445	0.003545115
15	1965-12-01 00:00:00+00	ORTN	0.018404928	1.018404928	2641.73381	0.003490743
16	1966-01-01 00:00:00+00	ORTN	0.027108437	1.027108437	2690.354731	0.003427657
17	1966-02-01 00:00:00+00	ORTN	0.014662738	1.014662738	2763.286043	0.003337191
18	1966-03-01 00:00:00+00	ORTN	0.017341059	1.017341059	2803.803383	0.003288966
19	1966-04-01 00:00:00+00	ORTN	0.038636354	1.038636354	2852.424302	0.003232904
20	1966-05-01 00:00:00+00	ORTN	0.044310705	1.044310705	2962.631578	0.003112642
21	1966-06-01 00:00:00+00	ORTN	0.040859093	1.040859093	3093.907873	0.002980571
22	1966-07-01 00:00:00+00	ORTN	0.028183186	1.028183186	3220.322141	0.002863568
23	1966-08-01 00:00:00+00	ORTN	0.028389642	1.028389642	3311.081079	0.002785076
24	1966-09-01 00:00:00+00	ORTN	0.02855781	1.02855781	3405.081486	0.002708191
25	1966-10-01 00:00:00+00	ORTN	0.026376703	1.026376703	3502.323156	0.002632999
26	1966-11-01 00:00:00+00	ORTN	0.022993684	1.022993684	3594.702894	0.002565334
27	1966-12-01 00:00:00+00	ORTN	0.023799027	1.023799027	3677.358356	0.002507673
28	1967-01-01 00:00:00+00	ORTN	0.023676	1.023676	3764.875907	0.00244938
29	1967-02-01 00:00:00+00	ORTN	0.021026072	1.021026072	3.854013109	2.392729962
30	1967-03-01 00:00:00+00	ORTN	0.014827018	1.014827018	3.935047868	2.343456281
31	1967-04-01 00:00:00+00	ORTN	0.015016234	1.015016234	3.993392894	2.309217472
32	1967-05-01 00:00:00+00	ORTN	0.017992803	1.017992803	4.053358615	2.275054718
33	1967-06-01 00:00:00+00	ORTN	0.028279654	1.028279654	4.126289898	2.234843617
34	1967-07-01 00:00:00+00	ORTN	0.025210084	1.025210084	4.24297995	2.17338115
35	1967-08-01 00:00:00+00	ORTN	0.015275708	1.015275708	4.349945831	2.119937351
36	1967-09-01 00:00:00+00	ORTN	0.004770642	1.004770642	4.416394333	2.088041046
37	1967-10-01 00:00:00+00	ORTN	0.006939372	1.006939372	4.43746337	2.078127045
38	1967-11-01 00:00:00+00	ORTN	0.014145811	1.014145811	4.468256578	2.063805531
39	1967-12-01 00:00:00+00	ORTN	0.018597997	1.018597997	4.53146369	2.035018544
40	1968-01-01 00:00:00+00	ORTN	0.01755618	1.01755618	4.615739838	1.997862307
41	1968-02-01 00:00:00+00	ORTN	0.014492754	1.014492754	4.696774597	1.963392633
42	1968-03-01 00:00:00+00	ORTN	0.01462585	1.01462585	4.764843794	1.935344167
43	1968-04-01 00:00:00+00	ORTN	0.018773047	1.018773047	4.834533686	1.907446145
44	1968-05-01 00:00:00+00	ORTN	0.026653504	1.026653504	4.925292615	1.872297417
45	1968-06-01 00:00:00+00	ORTN	0.028525641	1.028525641	5.056568924	1.823689695
46	1968-07-01 00:00:00+00	ORTN	0.022436896	1.022436896	5.200810794	1.77311058
47	1968-08-01 00:00:00+00	ORTN	0.018287108	1.018287108	5.317500846	1.734200503
48	1968-09-01 00:00:00+00	ORTN	0.014067644	1.014067644	5.414742556	1.703056525
49	1968-10-01 00:00:00+00	ORTN	0.015053129	1.015053129	5.490915229	1.679430888
50	1968-11-01 00:00:00+00	ORTN	0.016283803	1.016283803	5.573570683	1.654525109
51	1968-12-01 00:00:00+00	ORTN	0.019170243	1.019170243	5.664329612	1.628014835
52	1969-01-01 00:00:00+00	ORTN	0.018248175	1.018248175	5.772916188	1.597392434
53	1969-02-01 00:00:00+00	ORTN	0.017645437	1.017645437	5.878261374	1.568765329
54	1969-03-01 00:00:00+00	ORTN	0.014088323	1.014088323	5.981985865	1.541563763
55	1969-04-01 00:00:00+00	ORTN	0.015495592	1.015495592	6.066262014	1.520147435
56	1969-05-01 00:00:00+00	ORTN	0.012365167	1.012365167	6.160262333	1.496951289
57	1969-06-01 00:00:00+00	ORTN	0.013513514	1.013513514	6.236435006	1.478667321
58	1969-07-01 00:00:00+00	ORTN	0.006923077	1.006923077	6.320711155	1.458951756
59	1969-08-01 00:00:00+00	ORTN	0.007384772	1.007384772	6.364469925	1.448920766
60	1969-09-01 00:00:00+00	ORTN	0.009100101	1.009100101	6.411470084	1.438299254
61	1969-10-01 00:00:00+00	ORTN	0.016282565	1.016282565	6.469815111	1.42532862
62	1969-11-01 00:00:00+00	ORTN	0.020951442	1.020951442	6.575160296	1.402492445
63	1969-12-01 00:00:00+00	ORTN	0.022452921	1.022452921	6.712919386	1.373711214
64	1970-01-01 00:00:00+00	ORTN	0.022432113	1.022432113	6.863644036	1.343544711
65	1970-02-01 00:00:00+00	ORTN	0.020092379	1.020092379	7.017610077	1.314067402
66	1970-03-01 00:00:00+00	ORTN	0.0113199	1.0113199	7.158610557	1.288184707
67	1970-04-01 00:00:00+00	ORTN	0.00917842	1.00917842	7.239645315	1.273765805
68	1970-05-01 00:00:00+00	ORTN	0.00931677	1.00931677	7.306093817	1.262180978
69	1970-06-01 00:00:00+00	ORTN	0.015384615	1.015384615	7.374163014	1.250530077
70	1970-07-01 00:00:00+00	ORTN	0.008874459	1.008874459	7.487611676	1.231582652
71	1970-08-01 00:00:00+00	ORTN	0.009440034	1.009440034	7.554060178	1.220749163
72	1970-09-01 00:00:00+00	ORTN	0.011902232	1.011902232	7.625370765	1.209333018
73	1970-10-01 00:00:00+00	ORTN	0.018903592	1.018903592	7.716129695	1.195108559
74	1970-11-01 00:00:00+00	ORTN	0.021232736	1.021232736	7.86199226	1.172935859
75	1970-12-01 00:00:00+00	ORTN	0.019580137	1.019580137	8.028923862	1.148549021
76	1971-01-01 00:00:00+00	ORTN	0.018412196	1.018412196	8.186131294	1.12649215
77	1971-02-01 00:00:00+00	ORTN	0.013219285	1.013219285	8.336855944	1.106125943
78	1971-03-01 00:00:00+00	ORTN	0.009976976	1.009976976	8.447063216	1.091694522
79	1971-04-01 00:00:00+00	ORTN	0.011588146	1.011588146	8.531339364	1.080910306
80	1971-05-01 00:00:00+00	ORTN	0.0142723	1.0142723	8.63020177	1.068528047
81	1971-06-01 00:00:00+00	ORTN	0.019811146	1.019811146	8.753374602	1.053492288
82	1971-07-01 00:00:00+00	ORTN	0.019970951	1.019970951	8.926788985	1.033026843
83	1971-08-01 00:00:00+00	ORTN	0.021003916	1.021003916	9.105065454	1.012800258
84	1971-09-01 00:00:00+00	ORTN	0.02179219	1.02179219	9.296307483	0.991965106
85	1971-10-01 00:00:00+00	ORTN	0.020133083	1.020133083	9.49889438	0.970809051
86	1971-11-01 00:00:00+00	ORTN	0.016390701	1.016390701	9.69013641	0.951649415
87	1971-12-01 00:00:00+00	ORTN	0.012341616	1.012341616	9.848964536	0.936302756
88	1972-01-01 00:00:00+00	ORTN	0.012028609	1.012028609	9.970516673	0.924888142
89	1972-02-01 00:00:00+00	ORTN	0.013331192	1.013331192	10.09044812	0.913895254
90	1972-03-01 00:00:00+00	ORTN	0.011412268	1.011412268	10.22496582	0.901872222
91	1972-04-01 00:00:00+00	ORTN	0.013320796	1.013320796	10.34165587	0.891695949
92	1972-05-01 00:00:00+00	ORTN	0.016857408	1.016857408	10.47941496	0.879973995
93	1972-06-01 00:00:00+00	ORTN	0.017946768	1.017946768	10.65607073	0.865385833
94	1972-07-01 00:00:00+00	ORTN	0.014343344	1.014343344	10.84731276	0.850128769
95	1972-08-01 00:00:00+00	ORTN	0.008395935	1.008395935	11.0028995	0.838107505
96	1972-09-01 00:00:00+00	ORTN	0.007157464	1.007157464	11.09527912	0.831129397
97	1972-10-01 00:00:00+00	ORTN	0.009572154	1.009572154	11.17469318	0.825222893
98	1972-11-01 00:00:00+00	ORTN	0.006608246	1.006608246	11.28165906	0.817398628
99	1972-12-01 00:00:00+00	ORTN	0.011417154	1.011417154	11.35621104	0.812032517
100	1973-01-01 00:00:00+00	ORTN	0.00987724	1.00987724	11.48586666	0.802866072
101	1973-02-01 00:00:00+00	ORTN	0.010479251	1.010479251	11.59931532	0.795013532
102	1973-03-01 00:00:00+00	ORTN	0.012029867	1.012029867	11.72086746	0.786768785
103	1973-04-01 00:00:00+00	ORTN	0.011476978	1.011476978	11.86186793	0.777416566
104	1973-05-01 00:00:00+00	ORTN	0.012697555	1.012697555	11.99800633	0.768595414
105	1973-06-01 00:00:00+00	ORTN	0.011071095	1.011071095	12.15035167	0.758958497
106	1973-07-01 00:00:00+00	ORTN	0.008970976	1.008970976	12.28486937	0.750648001
107	1973-08-01 00:00:00+00	ORTN	0.008368201	1.008368201	12.39507665	0.74397383
108	1973-09-01 00:00:00+00	ORTN	0.009725104	1.009725104	12.49880114	0.737799773
109	1973-10-01 00:00:00+00	ORTN	0.006806215	1.006806215	12.62035327	0.730693701
110	1973-11-01 00:00:00+00	ORTN	0.008545918	1.008545918	12.70625012	0.725754062
111	1973-12-01 00:00:00+00	ORTN	0.019602883	1.019602883	12.81483669	0.719604382
112	1974-01-01 00:00:00+00	ORTN	0.010543289	1.010543289	13.06604444	0.705769269
113	1974-02-01 00:00:00+00	ORTN	0.014974837	1.014974837	13.20380353	0.698405775
114	1974-03-01 00:00:00+00	ORTN	0.012577095	1.012577095	13.40152835	0.688101566
115	1974-04-01 00:00:00+00	ORTN	0.016362116	1.016362116	13.57008064	0.679554741
116	1974-05-01 00:00:00+00	ORTN	0.021269095	1.021269095	13.79211588	0.668614788
117	1974-06-01 00:00:00+00	ORTN	0.03325279	1.03325279	14.08546171	0.654690122
118	1974-07-01 00:00:00+00	ORTN	0.043986637	1.043986637	14.55384261	0.633620473
119	1974-08-01 00:00:00+00	ORTN	0.04768	1.04768	15.1940172	0.606923931
120	1974-09-01 00:00:00+00	ORTN	0.037466911	1.037466911	15.91846794	0.579302774
121	1974-10-01 00:00:00+00	ORTN	0.021589794	1.021589794	16.51488376	0.558381928
122	1974-11-01 00:00:00+00	ORTN	0.012584054	1.012584054	16.8714367	0.54658135
123	1974-12-01 00:00:00+00	ORTN	0.012807134	1.012807134	17.08374777	0.539788621
124	1975-01-01 00:00:00+00	ORTN	0.015174223	1.015174223	17.30254161	0.532962893
125	1975-02-01 00:00:00+00	ORTN	0.01660823	1.01660823	17.56509423	0.52499648
126	1975-03-01 00:00:00+00	ORTN	0.018787439	1.018787439	17.85681936	0.516419663
127	1975-04-01 00:00:00+00	ORTN	0.019955457	1.019955457	18.19230326	0.506896379
128	1975-05-01 00:00:00+00	ORTN	0.023058782	1.023058782	18.55533898	0.496978937
129	1975-06-01 00:00:00+00	ORTN	0.018270298	1.018270298	18.9832025	0.485777499
130	1975-07-01 00:00:00+00	ORTN	0.017104049	1.017104049	19.33003127	0.477061445
131	1975-08-01 00:00:00+00	ORTN	0.015579919	1.015579919	19.66065308	0.469038979
132	1975-09-01 00:00:00+00	ORTN	0.020292208	1.020292208	19.96696447	0.461843494
133	1975-10-01 00:00:00+00	ORTN	0.021718377	1.021718377	20.37213826	0.452658063
134	1975-11-01 00:00:00+00	ORTN	0.019465857	1.019465857	20.81458805	0.443036039
135	1975-12-01 00:00:00+00	ORTN	0.018406782	1.018406782	21.21976183	0.434576633
136	1976-01-01 00:00:00+00	ORTN	0.01919904	1.01919904	21.61034937	0.426722053
137	1976-02-01 00:00:00+00	ORTN	0.022369389	1.022369389	22.02524733	0.418683727
138	1976-03-01 00:00:00+00	ORTN	0.023751259	1.023751259	22.51793867	0.409522949
139	1976-04-01 00:00:00+00	ORTN	0.025239033	1.025239033	23.05276807	0.400021924
140	1976-05-01 00:00:00+00	ORTN	0.02976068	1.02976068	23.63459764	0.390174302
141	1976-06-01 00:00:00+00	ORTN	0.0294999	1.0294999	24.33797934	0.378898039
142	1976-07-01 00:00:00+00	ORTN	0.025549806	1.025549806	25.0559473	0.36804087
143	1976-08-01 00:00:00+00	ORTN	0.027877641	1.027877641	25.69612189	0.358871766
144	1976-09-01 00:00:00+00	ORTN	0.032889489	1.032889489	26.41246915	0.349138605
145	1976-10-01 00:00:00+00	ORTN	0.03606012	1.03606012	27.28116176	0.338021259
146	1976-11-01 00:00:00+00	ORTN	0.030275229	1.030275229	28.26492373	0.326256413
147	1976-12-01 00:00:00+00	ORTN	0.022094835	1.022094835	29.12065078	0.316669181
148	1977-01-01 00:00:00+00	ORTN	0.017315546	1.017315546	29.76406676	0.309823678
149	1977-02-01 00:00:00+00	ORTN	0.019697051	1.019697051	30.27944783	0.304550225
150	1977-03-01 00:00:00+00	ORTN	0.022675975	1.022675975	30.87586365	0.298667359
151	1977-04-01 00:00:00+00	ORTN	0.02884566	1.02884566	31.57600396	0.292044955
152	1977-05-01 00:00:00+00	ORTN	0.032177601	1.032177601	32.48683464	0.283856914
153	1977-06-01 00:00:00+00	ORTN	0.033349444	1.033349444	33.53218303	0.275007823
154	1977-07-01 00:00:00+00	ORTN	0.026707203	1.026707203	34.6504627	0.266132453
155	1977-08-01 00:00:00+00	ORTN	0.020500205	1.020500205	35.57587963	0.259209687
156	1977-09-01 00:00:00+00	ORTN	0.014017231	1.014017231	36.30519247	0.254002582
157	1977-10-01 00:00:00+00	ORTN	0.013867488	1.013867488	36.81409075	0.250491387
158	1977-11-01 00:00:00+00	ORTN	0.014937038	1.014937038	37.32460973	0.247065213
159	1977-12-01 00:00:00+00	ORTN	0.019594421	1.019594421	37.88212886	0.243429103
160	1978-01-01 00:00:00+00	ORTN	0.021106076	1.021106076	38.62440724	0.238750917
161	1978-02-01 00:00:00+00	ORTN	0.023176495	1.023176495	39.43961691	0.233815979
162	1978-03-01 00:00:00+00	ORTN	0.025784168	1.025784168	40.353689	0.228519693
163	1978-04-01 00:00:00+00	ORTN	0.02920794	1.02920794	41.3941753	0.22277561
164	1978-05-01 00:00:00+00	ORTN	0.030471336	1.030471336	42.60321389	0.21645345
165	1978-06-01 00:00:00+00	ORTN	0.03012404	1.03012404	43.90139071	0.210052859
166	1978-07-01 00:00:00+00	ORTN	0.030604931	1.030604931	45.22387798	0.203910258
167	1978-08-01 00:00:00+00	ORTN	0.027783573	1.027783573	46.60795164	0.197854922
168	1978-09-01 00:00:00+00	ORTN	0.026119024	1.026119024	47.90288708	0.192506406
169	1978-10-01 00:00:00+00	ORTN	0.023739655	1.023739655	49.15406375	0.187606312
170	1978-11-01 00:00:00+00	ORTN	0.025604689	1.025604689	50.32096428	0.183255881
171	1978-12-01 00:00:00+00	ORTN	0.026315789	1.026315789	51.60941693	0.178680814
172	1979-01-01 00:00:00+00	ORTN	0.022581238	1.022581238	52.96755948	0.174099255
173	1979-02-01 00:00:00+00	ORTN	0.023249551	1.023249551	54.16363253	0.170254693
174	1979-03-01 00:00:00+00	ORTN	0.024972951	1.024972951	55.42291268	0.166386287
175	1979-04-01 00:00:00+00	ORTN	0.037459702	1.037459702	56.80698634	0.162332369
176	1979-05-01 00:00:00+00	ORTN	0.038224617	1.038224617	58.93495911	0.156471011
177	1979-06-01 00:00:00+00	ORTN	0.033267999	1.033267999	61.18772537	0.150710172
178	1979-07-01 00:00:00+00	ORTN	0.027198154	1.027198154	63.22331853	0.145857776
179	1979-08-01 00:00:00+00	ORTN	0.028773927	1.028773927	64.94287608	0.141995754
180	1979-09-01 00:00:00+00	ORTN	0.040170774	1.040170774	66.81153764	0.138024254
181	1979-10-01 00:00:00+00	ORTN	0.045872201	1.045872201	69.49540883	0.13269384
182	1979-11-01 00:00:00+00	ORTN	0.045131224	1.045131224	72.68331622	0.126873857
183	1979-12-01 00:00:00+00	ORTN	0.040792815	1.040792815	75.96360322	0.121395145
184	1980-01-01 00:00:00+00	ORTN	0.042022836	1.042022836	79.06237243	0.116637186
185	1980-02-01 00:00:00+00	ORTN	0.037003521	1.037003521	82.38479753	0.111933426
186	1980-03-01 00:00:00+00	ORTN	0.036992071	1.036992071	85.43332509	0.107939292
187	1980-04-01 00:00:00+00	ORTN	0.036989609	1.036989609	88.59368068	0.104088831
188	1980-05-01 00:00:00+00	ORTN	0.033994284	1.033994284	91.87072632	0.100375963
189	1980-06-01 00:00:00+00	ORTN	0.032006551	1.032006551	94.99380592	0.097075936
190	1980-07-01 00:00:00+00	ORTN	0.032005819	1.032005819	98.03423006	0.094065232
191	1980-08-01 00:00:00+00	ORTN	0.032006408	1.032006408	101.1718959	0.091147967
192	1980-09-01 00:00:00+00	ORTN	0.030004812	1.030004812	104.4100448	0.088321125
193	1980-10-01 00:00:00+00	ORTN	0.031994093	1.031994093	107.5428486	0.085748265
194	1980-11-01 00:00:00+00	ORTN	0.031995211	1.031995211	110.9835844	0.083089879
195	1980-12-01 00:00:00+00	ORTN	0.044997877	1.044997877	114.5345276	0.080513823
196	1981-01-01 00:00:00+00	ORTN	0.05000677	1.05000677	119.6883382	0.077046877
197	1981-02-01 00:00:00+00	ORTN	0.064996196	1.064996196	125.6735655	0.073377505
198	1981-03-01 00:00:00+00	ORTN	0.063003281	1.063003281	133.8418692	0.068899312
199	1981-04-01 00:00:00+00	ORTN	0.059998178	1.059998178	142.2743461	0.064815709
200	1981-05-01 00:00:00+00	ORTN	0.059998064	1.059998064	150.8105477	0.061147001
201	1981-06-01 00:00:00+00	ORTN	0.059998379	1.059998379	159.8588886	0.057685955
202	1981-07-01 00:00:00+00	ORTN	0.059997704	1.059997704	169.4501628	0.054420795
203	1981-08-01 00:00:00+00	ORTN	0.058000308	1.058000308	179.6167835	0.051340484
204	1981-09-01 00:00:00+00	ORTN	0.057003966	1.057003966	190.0346122	0.048525963
205	1981-10-01 00:00:00+00	ORTN	0.057003848	1.057003848	200.8673388	0.04590897
206	1981-11-01 00:00:00+00	ORTN	0.054998322	1.054998322	212.31755	0.043433115
207	1981-12-01 00:00:00+00	ORTN	0.052000955	1.052000955	223.9946589	0.041168895
208	1982-01-01 00:00:00+00	ORTN	0.050001375	1.050001375	235.6425951	0.039133895
209	1982-02-01 00:00:00+00	ORTN	0.049998035	1.049998035	247.4250488	0.037270328
210	1982-03-01 00:00:00+00	ORTN	0.050000313	1.050000313	259.7958151	0.035495617
211	1982-04-01 00:00:00+00	ORTN	0.054998394	1.054998394	272.785687	0.033805339
212	1982-05-01 00:00:00+00	ORTN	0.054997719	1.054997719	287.7884618	0.032043024
213	1982-06-01 00:00:00+00	ORTN	0.055002483	1.055002483	303.6161708	0.0303726
214	1982-07-01 00:00:00+00	ORTN	0.059997675	1.059997675	320.3158141	0.028789127
215	1982-08-01 00:00:00+00	ORTN	0.070000334	1.070000334	339.5340181	0.027159613
216	1982-09-01 00:00:00+00	ORTN	0.069997859	1.069997859	363.3015127	0.025382808
217	1982-10-01 00:00:00+00	ORTN	0.070000625	1.070000625	388.7318409	0.023722298
218	1982-11-01 00:00:00+00	ORTN	0.065000289	1.065000289	415.9433128	0.022170359
219	1982-12-01 00:00:00+00	ORTN	0.064999069	1.064999069	442.9797485	0.020817233
220	1983-01-01 00:00:00+00	ORTN	0.060001442	1.060001442	471.7730196	0.019546715
221	1983-02-01 00:00:00+00	ORTN	0.06699853	1.06699853	500.0800812	0.018440272
222	1983-03-01 00:00:00+00	ORTN	0.090000367	1.090000367	533.5847117	0.017282378
223	1983-04-01 00:00:00+00	ORTN	0.09000092	1.09000092	581.6075313	0.015855387
224	1983-05-01 00:00:00+00	ORTN	0.080000305	1.080000305	633.952744	0.014546215
225	1983-06-01 00:00:00+00	ORTN	0.077999031	1.077999031	684.6691571	0.013468713
226	1983-07-01 00:00:00+00	ORTN	0.089999008	1.089999008	738.0726877	0.012494179
227	1983-08-01 00:00:00+00	ORTN	0.084999531	1.084999531	804.4984973	0.01146256
228	1983-09-01 00:00:00+00	ORTN	0.094999109	1.094999109	872.8804926	0.010564576
229	1983-10-01 00:00:00+00	ORTN	0.097000584	1.097000584	955.8033614	0.009648023
230	1983-11-01 00:00:00+00	ORTN	0.083999661	1.083999661	1048.516845	0.008794911
231	1983-12-01 00:00:00+00	ORTN	0.076000397	1.076000397	1136.591905	0.008113389
232	1984-01-01 00:00:00+00	ORTN	0.098000526	1.098000526	1222.973341	0.007540322
233	1984-02-01 00:00:00+00	ORTN	0.123000568	1.123000568	1342.825373	0.006867321
234	1984-03-01 00:00:00+00	ORTN	0.099999888	1.099999888	1507.993656	0.006115153
235	1984-04-01 00:00:00+00	ORTN	0.088999887	1.088999887	1658.792853	0.005559231
236	1984-05-01 00:00:00+00	ORTN	0.088999714	1.088999714	1806.42523	0.005104896
237	1984-06-01 00:00:00+00	ORTN	0.09199967	1.09199967	1967.196558	0.004687693
238	1984-07-01 00:00:00+00	ORTN	0.102999932	1.102999932	2148.177993	0.00429276
239	1984-08-01 00:00:00+00	ORTN	0.106000028	1.106000028	2369.44018	0.003891895
240	1984-09-01 00:00:00+00	ORTN	0.104974079	1.104974079	2620.600906	0.003518892
241	1984-10-01 00:00:00+00	ORTN	0.1260262	1.1260262	2895.696073	0.003184593
242	1984-11-01 00:00:00+00	ORTN	0.098999888	1.098999888	3260.629646	0.002828169
243	1984-12-01 00:00:00+00	ORTN	0.105000086	1.105000086	3583.431615	0.002573403
244	1985-01-01 00:00:00+00	ORTN	0.126000021	1.126000021	3959.692242	0.002328871
245	1985-02-01 00:00:00+00	ORTN	0.101999988	1.101999988	4458.613548	0.002068269
246	1985-03-01 00:00:00+00	ORTN	0.126999835	1.126999835	4913.392075	0.001876832
247	1985-04-01 00:00:00+00	ORTN	0.118292994	1.118292994	5537.392058	0.001665335
248	1985-05-01 00:00:00+00	ORTN	0.100058988	1.100058988	6192.426742	0.001489176
249	1985-06-01 00:00:00+00	ORTN	0.092082024	1.092082024	6812.034697	0.001353724
250	1985-07-01 00:00:00+00	ORTN	0.076139997	1.076139997	7439.300637	0.001239581
251	1985-08-01 00:00:00+00	ORTN	0.08179703	1.08179703	8005.728966	0.001151877
252	1985-09-01 00:00:00+00	ORTN	0.090999965	1.090999965	8660.573814	0.001064781
253	1985-10-01 00:00:00+00	ORTN	0.090000051	1.090000051	9448.685731	0.000975968
254	1985-11-01 00:00:00+00	ORTN	0.111199992	1.111199992	10299.06792	0.000895383
255	1985-12-01 00:00:00+00	ORTN	0.133600014	1.133600014	11444.3242	0.00080578
256	1986-01-01 00:00:00+00	ORTN	0.162300164	1.162300164	12973.28606	0.000710815
257	1986-02-01 00:00:00+00	ORTN	0.143601	1.143601	15.07885252	0.61155931
258	1986-03-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.53476633
259	1986-04-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.53476633
260	1986-05-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.53476633
261	1986-06-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.53476633
262	1986-07-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.53476633
263	1986-08-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.53476633
264	1986-09-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.53476633
265	1986-10-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.53476633
266	1986-11-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.53476633
267	1986-12-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.53476633
268	1987-01-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.53476633
269	1987-02-01 00:00:00+00	OTN	0.706860902	1.706860902	17.24419083	0.53476633
270	1987-03-01 00:00:00+00	OTN	0.145146193	1.145146193	29.43343511	0.313303989
271	1987-04-01 00:00:00+00	OTN	0.209597538	1.209597538	33.70558615	0.273593006
272	1987-05-01 00:00:00+00	OTN	0.234417237	1.234417237	40.77019403	0.226185155
273	1987-06-01 00:00:00+00	OTN	0.180208031	1.180208031	50.32743025	0.183232337
274	1987-07-01 00:00:00+00	OTN	0.030505607	1.030505607	59.39683736	0.15525427
275	1987-08-01 00:00:00+00	OTN	0.063600498	1.063600498	61.20877395	0.150658346
276	1987-09-01 00:00:00+00	OTN	0.056809978	1.056809978	65.10168245	0.141649375
277	1987-10-01 00:00:00+00	OTN	0.091799957	1.091799957	68.80010762	0.134034858
278	1987-11-01 00:00:00+00	OTN	0.128398206	1.128398206	75.11595455	0.122765033
279	1987-12-01 00:00:00+00	OTN	0.141398497	1.141398497	84.76070832	0.108795842
280	1988-01-01 00:00:00+00	OTN	0.165108722	1.165108722	96.74574507	0.095318018
281	1988-02-01 00:00:00+00	OTN	0.17961179	1.17961179	112.7193114	0.081810406
282	1988-03-01 00:00:00+00	OTN	0.160100924	1.160100924	132.9650287	0.069353669
283	1988-04-01 00:00:00+00	OTN	0.192798681	1.192798681	154.2528526	0.059782445
284	1988-05-01 00:00:00+00	OTN	0.177799112	1.177799112	183.9925991	0.050119476
285	1988-06-01 00:00:00+00	OTN	0.195300349	1.195300349	216.7063199	0.042553501
286	1988-07-01 00:00:00+00	OTN	0.240398932	1.240398932	259.0291398	0.035600677
287	1988-08-01 00:00:00+00	OTN	0.206599817	1.206599817	321.2994684	0.028700989
288	1988-09-01 00:00:00+00	OTN	0.240098492	1.240098492	387.6798797	0.023786668
289	1988-10-01 00:00:00+00	OTN	0.272499575	1.272499575	480.7612341	0.019181273
290	1988-11-01 00:00:00+00	OTN	0.269200707	1.269200707	611.7684659	0.015073697
291	1988-12-01 00:00:00+00	OTN	0.287901	1.287901	776.4569697	0.011876528
292	1989-01-01 00:00:00+00	IPC	0.4272	1.4272	0.999999708	9.221615336
293	1989-02-01 00:00:00+00	IPC	0.1014	1.1014	1.427199583	6.461333616
294	1989-03-01 00:00:00+00	BTN	0.060907336	1.060907336	1.571917621	5.86647323
295	1989-04-01 00:00:00+00	BTN	0.073059776	1.073059776	1.667658935	5.529675431
296	1989-05-01 00:00:00+00	BTN	0.099372562	1.099372562	1.789497724	5.153184896
297	1989-06-01 00:00:00+00	BTN	0.248341817	1.248341817	1.967324698	4.687387218
298	1989-07-01 00:00:00+00	BTN	0.287594217	1.287594217	2.455893688	3.754890811
299	1989-08-01 00:00:00+00	BTN	0.293412024	1.293412024	3.162194511	2.916206644
300	1989-09-01 00:00:00+00	BTN	0.359511797	1.359511797	4.090020404	2.25466177
301	1989-10-01 00:00:00+00	BTN	0.376210877	1.376210877	5.560430989	1.65843487
302	1989-11-01 00:00:00+00	BTN	0.414204703	1.414204703	7.652325606	1.205073218
303	1989-12-01 00:00:00+00	BTN	0.535499972	1.535499972	10.82195486	0.852120782
304	1990-01-01 00:00:00+00	BTN	0.56109498	1.56109498	16.61711139	0.554946791
305	1990-02-01 00:00:00+00	BTN	0.727802864	1.727802864	25.94088917	0.355485604
306	1990-03-01 00:00:00+00	IPC	0.843200001	1.843200001	44.82074259	0.205744307
307	1990-04-01 00:00:00+00	IPC	0.447999999	1.447999999	82.61359279	0.111623431
308	1990-05-01 00:00:00+00	IPC	0.078700001	1.078700001	119.6244823	0.077088005
309	1990-06-01 00:00:00+00	IPC	0.095499999	1.095499999	129.0389291	0.071463803
310	1990-07-01 00:00:00+00	IPC	0.1292	1.1292	141.3621468	0.06523396
311	1990-08-01 00:00:00+00	IPC	0.1203	1.1203	159.6261362	0.057770067
312	1990-09-01 00:00:00+00	IPC	0.127600001	1.127600001	178.8291604	0.051566605
313	1990-10-01 00:00:00+00	IPC	0.142	1.142	201.6477614	0.045731292
314	1990-11-01 00:00:00+00	IPC	0.1558	1.1558	230.2817435	0.040044914
315	1990-12-01 00:00:00+00	IPC	0.183000001	1.183000001	266.1596392	0.034646923
316	1991-01-01 00:00:00+00	IPC	0.199100001	1.199100001	314.8668535	0.02928734
317	1991-02-01 00:00:00+00	IPC	0.218699997	1.218699997	377.5568443	0.024424435
318	1991-03-01 00:00:00+00	INPC	0.1179	1.1179	460.1285252	0.020041384
319	1991-04-01 00:00:00+00	INPC	0.0501	1.0501	514.3776783	0.017927708
320	1991-05-01 00:00:00+00	INPC	0.0668	1.0668	540.148	0.017072381
321	1991-06-01 00:00:00+00	INPC	0.1083	1.1083	576.2298864	0.016003357
322	1991-07-01 00:00:00+00	INPC	0.1214	1.1214	638.6355831	0.014439553
323	1991-08-01 00:00:00+00	INPC	0.1562	1.1562	716.1659429	0.012876363
324	1991-09-01 00:00:00+00	INPC	0.1562	1.1562	828.0310632	0.011136796
325	1991-10-01 00:00:00+00	INPC	0.2108	1.2108	957.3695153	0.00963224
326	1991-11-01 00:00:00+00	INPC	0.2648	1.2648	1159.183009	0.007955269
327	1991-12-01 00:00:00+00	IPCA	0.2288	1.2288	1466.13467	0.006289745
328	1992-01-01 00:00:00+00	UFIR	0.25600448	1.25600448	1801.586282	0.005118607
329	1992-02-01 00:00:00+00	UFIR	0.261004647	1.261004647	2262.800442	0.00407531
330	1992-03-01 00:00:00+00	UFIR	0.220295228	1.220295228	2853.401872	0.003231796
331	1992-04-01 00:00:00+00	UFIR	0.198299849	1.198299849	3481.992689	0.002648372
332	1992-05-01 00:00:00+00	UFIR	0.234496999	1.234496999	4172.471315	0.002210108
333	1992-06-01 00:00:00+00	UFIR	0.23269963	1.23269963	5150.903316	0.00179029
334	1992-07-01 00:00:00+00	UFIR	0.210100325	1.210100325	6349.516614	0.001452333
335	1992-08-01 00:00:00+00	UFIR	0.231398186	1.231398186	7683.552118	0.001200176
336	1992-09-01 00:00:00+00	UFIR	0.233300251	1.233300251	9461.512144	0.000974645
337	1992-10-01 00:00:00+00	UFIR	0.254799402	1.254799402	11668.8853	0.000790274
338	1992-11-01 00:00:00+00	UFIR	0.236999035	1.236999035	14642.1103	0.000629801
339	1992-12-01 00:00:00+00	UFIR	0.23490011	1.23490011	18112.2763	0.000509136
340	1993-01-01 00:00:00+00	UFIR	0.294700749	1.294700749	22366.85199	0.000412289
341	1993-02-01 00:00:00+00	UFIR	0.267200378	1.267200378	28958.38003	0.000318444
342	1993-03-01 00:00:00+00	UFIR	0.25960045	1.25960045	36696.07011	0.000251297
343	1993-04-01 00:00:00+00	UFIR	0.273401817	1.273401817	46222.38642	0.000199505
344	1993-05-01 00:00:00+00	UFIR	0.288099882	1.288099882	58859.67088	0.000156671
345	1993-06-01 00:00:00+00	UFIR	0.303398349	1.303398349	75817.13511	0.00012163
346	1993-07-01 00:00:00+00	UFIR	0.306576	1.306576	98819.92874	0.0000933173
347	1993-08-01 00:00:00+00	UFIR	0.319934568	1.319934568	129.1157472	0.071421285
348	1993-09-01 00:00:00+00	UFIR	0.343838528	1.343838528	170.424338	0.054109717
349	1993-10-01 00:00:00+00	UFIR	0.351646912	1.351646912	229.0227915	0.040265043
350	1993-11-01 00:00:00+00	UFIR	0.339019389	1.339019389	309.5579491	0.029789617
351	1993-12-01 00:00:00+00	UFIR	0.366892352	1.366892352	414.5040957	0.022247338
352	1994-01-01 00:00:00+00	UFIR	0.391702625	1.391702625	566.5824784	0.016275852
353	1994-02-01 00:00:00+00	UFIR	0.396984517	1.396984517	788.5143224	0.011694921
354	1994-03-01 00:00:00+00	UFIR	0.436311908	1.436311908	1101.5423	0.008371547
355	1994-04-01 00:00:00+00	UFIR	0.412499564	1.412499564	1582.158322	0.005828502
356	1994-05-01 00:00:00+00	UFIR	0.442096538	1.442096538	2234.797941	0.004126374
357	1994-06-01 00:00:00+00	UFIR	0.446501	1.446501	3222.794374	0.002861372
358	1994-07-01 00:00:00+00	UFIR	0.052153791	1.052153791	1.695191013	5.439866406
359	1994-08-01 00:00:00+00	UFIR	0.050076129	1.050076129	1.783601651	5.170219839
360	1994-09-01 00:00:00+00	UFIR	0.016271951	1.016271951	1.872917518	4.923661909
361	1994-10-01 00:00:00+00	UFIR	0.019023462	1.019023462	1.90339354	4.84482712
362	1994-11-01 00:00:00+00	UFIR	0.029558183	1.029558183	1.939602675	4.754382307
363	1994-12-01 00:00:00+00	UFIR	0.022514355	1.022514355	1.996933806	4.617885988
364	1995-01-01 00:00:00+00	UFIR	0.0	1.0	2.041893482	4.516206512
365	1995-02-01 00:00:00+00	UFIR	0.0	1.0	2.041893482	4.516206512
366	1995-03-01 00:00:00+00	UFIR	0.043446136	1.043446136	2.041893482	4.516206512
367	1995-04-01 00:00:00+00	UFIR	0.0	1.0	2.130605863	4.328164491
368	1995-05-01 00:00:00+00	UFIR	0.0	1.0	2.130605863	4.328164491
369	1995-06-01 00:00:00+00	UFIR	0.071236369	1.071236369	2.130605863	4.328164491
370	1995-07-01 00:00:00+00	UFIR	0.0	1.0	2.282382488	4.040344985
371	1995-08-01 00:00:00+00	UFIR	0.0	1.0	2.282382488	4.040344985
372	1995-09-01 00:00:00+00	UFIR	0.051295611	1.051295611	2.282382488	4.040344985
373	1995-10-01 00:00:00+00	UFIR	0.0	1.0	2.399458692	3.843205416
374	1995-11-01 00:00:00+00	UFIR	0.0	1.0	2.399458692	3.843205416
375	1995-12-01 00:00:00+00	UFIR	0.042127767	1.042127767	2.399458692	3.843205416
376	1996-01-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	3.687844753
377	1996-02-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	3.687844753
378	1996-03-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	3.687844753
379	1996-04-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	3.687844753
380	1996-05-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	3.687844753
381	1996-06-01 00:00:00+00	UFIR	0.067575721	1.067575721	2.500542528	3.687844753
382	1996-07-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	3.454410474
383	1996-08-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	3.454410474
384	1996-09-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	3.454410474
385	1996-10-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	3.454410474
386	1996-11-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	3.454410474
387	1996-12-01 00:00:00+00	UFIR	0.029501526	1.029501526	2.669518492	3.454410474
388	1997-01-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.355420451
389	1997-02-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.355420451
390	1997-03-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.355420451
391	1997-04-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.355420451
392	1997-05-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.355420451
393	1997-06-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.355420451
394	1997-07-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.355420451
395	1997-08-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.355420451
396	1997-09-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.355420451
397	1997-10-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.355420451
398	1997-11-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.355420451
399	1997-12-01 00:00:00+00	UFIR	0.055226175	1.055226175	2.748273361	3.355420451
400	1998-01-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.179811619
401	1998-02-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.179811619
402	1998-03-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.179811619
403	1998-04-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.179811619
404	1998-05-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.179811619
405	1998-06-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.179811619
406	1998-07-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.179811619
407	1998-08-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.179811619
408	1998-09-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.179811619
409	1998-10-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.179811619
410	1998-11-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.179811619
411	1998-12-01 00:00:00+00	UFIR	0.016543544	1.016543544	2.900049986	3.179811619
412	1999-01-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.128062381
413	1999-02-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.128062381
414	1999-03-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.128062381
415	1999-04-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.128062381
416	1999-05-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.128062381
417	1999-06-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.128062381
418	1999-07-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.128062381
419	1999-08-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.128062381
420	1999-09-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.128062381
421	1999-10-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.128062381
422	1999-11-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.128062381
423	1999-12-01 00:00:00+00	UFIR	0.08915046	1.08915046	2.948027091	3.128062381
424	2000-01-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.872020437
425	2000-02-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.872020437
426	2000-03-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.872020437
427	2000-04-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.872020437
428	2000-05-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.872020437
429	2000-06-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.872020437
430	2000-07-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.872020437
431	2000-08-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.872020437
432	2000-09-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.872020437
433	2000-10-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.872020437
434	2000-11-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.872020437
435	2000-12-01 00:00:00+00	IPCA-E	0.06035557	1.06035557	3.210845063	2.872020437
436	2001-01-01 00:00:00+00	IPCA-E	0.0063	1.0063	3.404637447	2.708544679
437	2001-02-01 00:00:00+00	IPCA-E	0.005	1.005	3.426086663	2.691587676
438	2001-03-01 00:00:00+00	IPCA-E	0.0036	1.0036	3.443217097	2.678196693
439	2001-04-01 00:00:00+00	IPCA-E	0.005	1.005	3.455612678	2.66858977
440	2001-05-01 00:00:00+00	IPCA-E	0.0049	1.0049	3.472890742	2.655313204
441	2001-06-01 00:00:00+00	IPCA-E	0.0038	1.0038	3.489907906	2.642365612
442	2001-07-01 00:00:00+00	IPCA-E	0.0094	1.0094	3.503169556	2.632362634
443	2001-08-01 00:00:00+00	IPCA-E	0.0118	1.0118	3.53609935	2.607848855
444	2001-09-01 00:00:00+00	IPCA-E	0.0038	1.0038	3.577825322	2.577435121
445	2001-10-01 00:00:00+00	IPCA-E	0.0037	1.0037	3.591421059	2.567677944
446	2001-11-01 00:00:00+00	IPCA-E	0.0099	1.0099	3.604709316	2.558212558
447	2001-12-01 00:00:00+00	IPCA-E	0.0055	1.0055	3.640395939	2.533134526
448	2002-01-01 00:00:00+00	IPCA-E	0.0062	1.0062	3.660418116	2.519278494
449	2002-02-01 00:00:00+00	IPCA-E	0.0044	1.0044	3.683112709	2.503755212
450	2002-03-01 00:00:00+00	IPCA-E	0.004	1.004	3.699318405	2.492786949
451	2002-04-01 00:00:00+00	IPCA-E	0.0078	1.0078	3.714115678	2.482855527
452	2002-05-01 00:00:00+00	IPCA-E	0.0042	1.0042	3.743085781	2.463639142
453	2002-06-01 00:00:00+00	IPCA-E	0.0033	1.0033	3.758806741	2.453335135
454	2002-07-01 00:00:00+00	IPCA-E	0.0077	1.0077	3.771210803	2.445265758
455	2002-08-01 00:00:00+00	IPCA-E	0.01	1.01	3.800249126	2.426581083
456	2002-09-01 00:00:00+00	IPCA-E	0.0062	1.0062	3.838251618	2.402555528
457	2002-10-01 00:00:00+00	IPCA-E	0.009	1.009	3.862048778	2.387751469
458	2002-11-01 00:00:00+00	IPCA-E	0.0208	1.0208	3.896807217	2.366453388
459	2002-12-01 00:00:00+00	IPCA-E	0.0305	1.0305	3.977860807	2.318234119
460	2003-01-01 00:00:00+00		0.0197	1.0197	4.099185561	2.249620688
461	2003-02-01 00:00:00+00		0.0183	1.0183	4.099185561	2.249620688
462	2003-03-01 00:00:00+00		0.0178	1.0178	4.099185561	2.249620688
463	2003-04-01 00:00:00+00		0.0187	1.0187	4.099185561	2.249620688
464	2003-05-01 00:00:00+00		0.0197	1.0197	4.099185561	2.249620688
465	2003-06-01 00:00:00+00		0.0186	1.0186	4.099185561	2.249620688
466	2003-07-01 00:00:00+00		0.0208	1.0208	4.099185561	2.249620688
467	2003-08-01 00:00:00+00		0.0177	1.0177	4.099185561	2.249620688
468	2003-09-01 00:00:00+00		0.0168	1.0168	4.099185561	2.249620688
469	2003-10-01 00:00:00+00		0.0164	1.0164	4.099185561	2.249620688
470	2003-11-01 00:00:00+00		0.0134	1.0134	4.099185561	2.249620688
471	2003-12-01 00:00:00+00		0.0137	1.0137	4.099185561	2.249620688
472	2004-01-01 00:00:00+00		0.0127	1.0127	4.099185561	2.249620688
473	2004-02-01 00:00:00+00		0.0108	1.0108	4.099185561	2.249620688
474	2004-03-01 00:00:00+00		0.0138	1.0138	4.099185561	2.249620688
475	2004-04-01 00:00:00+00		0.0118	1.0118	4.099185561	2.249620688
476	2004-05-01 00:00:00+00		0.0123	1.0123	4.099185561	2.249620688
477	2004-06-01 00:00:00+00		0.0123	1.0123	4.099185561	2.249620688
478	2004-07-01 00:00:00+00		0.0129	1.0129	4.099185561	2.249620688
479	2004-08-01 00:00:00+00		0.0129	1.0129	4.099185561	2.249620688
480	2004-09-01 00:00:00+00		0.0125	1.0125	4.099185561	2.249620688
481	2004-10-01 00:00:00+00		0.0121	1.0121	4.099185561	2.249620688
482	2004-11-01 00:00:00+00		0.0125	1.0125	4.099185561	2.249620688
483	2004-12-01 00:00:00+00		0.0148	1.0148	4.099185561	2.249620688
484	2005-01-01 00:00:00+00		0.0138	1.0138	4.099185561	2.249620688
485	2005-02-01 00:00:00+00		0.0122	1.0122	4.099185561	2.249620688
486	2005-03-01 00:00:00+00		0.0153	1.0153	4.099185561	2.249620688
487	2005-04-01 00:00:00+00		0.0141	1.0141	4.099185561	2.249620688
488	2005-05-01 00:00:00+00		0.015	1.015	4.099185561	2.249620688
489	2005-06-01 00:00:00+00		0.0159	1.0159	4.099185561	2.249620688
490	2005-07-01 00:00:00+00		0.0151	1.0151	4.099185561	2.249620688
491	2005-08-01 00:00:00+00		0.0166	1.0166	4.099185561	2.249620688
492	2005-09-01 00:00:00+00		0.015	1.015	4.099185561	2.249620688
493	2005-10-01 00:00:00+00		0.0141	1.0141	4.099185561	2.249620688
494	2005-11-01 00:00:00+00		0.0138	1.0138	4.099185561	2.249620688
495	2005-12-01 00:00:00+00		0.0147	1.0147	4.099185561	2.249620688
496	2006-01-01 00:00:00+00		0.0143	1.0143	4.099185561	2.249620688
497	2006-02-01 00:00:00+00		0.0115	1.0115	4.099185561	2.249620688
498	2006-03-01 00:00:00+00		0.0142	1.0142	4.099185561	2.249620688
499	2006-04-01 00:00:00+00		0.0108	1.0108	4.099185561	2.249620688
500	2006-05-01 00:00:00+00		0.0128	1.0128	4.099185561	2.249620688
501	2006-06-01 00:00:00+00		0.0118	1.0118	4.099185561	2.249620688
502	2006-07-01 00:00:00+00		0.0117	1.0117	4.099185561	2.249620688
503	2006-08-01 00:00:00+00		0.0126	1.0126	4.099185561	2.249620688
504	2006-09-01 00:00:00+00		0.0106	1.0106	4.099185561	2.249620688
505	2006-10-01 00:00:00+00		0.0109	1.0109	4.099185561	2.249620688
506	2006-11-01 00:00:00+00		0.0102	1.0102	4.099185561	2.249620688
507	2006-12-01 00:00:00+00		0.0099	1.0099	4.099185561	2.249620688
508	2007-01-01 00:00:00+00		0.0108	1.0108	4.099185561	2.249620688
509	2007-02-01 00:00:00+00		0.0087	1.0087	4.099185561	2.249620688
510	2007-03-01 00:00:00+00		0.0105	1.0105	4.099185561	2.249620688
511	2007-04-01 00:00:00+00		0.0094	1.0094	4.099185561	2.249620688
512	2007-05-01 00:00:00+00		0.0103	1.0103	4.099185561	2.249620688
513	2007-06-01 00:00:00+00		0.0091	1.0091	4.099185561	2.249620688
514	2007-07-01 00:00:00+00		0.0097	1.0097	4.099185561	2.249620688
515	2007-08-01 00:00:00+00		0.0099	1.0099	4.099185561	2.249620688
516	2007-09-01 00:00:00+00		0.008	1.008	4.099185561	2.249620688
517	2007-10-01 00:00:00+00		0.0093	1.0093	4.099185561	2.249620688
518	2007-11-01 00:00:00+00		0.0084	1.0084	4.099185561	2.249620688
519	2007-12-01 00:00:00+00		0.0084	1.0084	4.099185561	2.249620688
520	2008-01-01 00:00:00+00		0.0093	1.0093	4.099185561	2.249620688
521	2008-02-01 00:00:00+00		0.008	1.008	4.099185561	2.249620688
522	2008-03-01 00:00:00+00		0.0084	1.0084	4.099185561	2.249620688
523	2008-04-01 00:00:00+00		0.009	1.009	4.099185561	2.249620688
524	2008-05-01 00:00:00+00		0.0088	1.0088	4.099185561	2.249620688
525	2008-06-01 00:00:00+00		0.0096	1.0096	4.099185561	2.249620688
526	2008-07-01 00:00:00+00		0.0107	1.0107	4.099185561	2.249620688
527	2008-08-01 00:00:00+00		0.0102	1.0102	4.099185561	2.249620688
528	2008-09-01 00:00:00+00		0.011	1.011	4.099185561	2.249620688
529	2008-10-01 00:00:00+00		0.0118	1.0118	4.099185561	2.249620688
530	2008-11-01 00:00:00+00		0.0102	1.0102	4.099185561	2.249620688
531	2008-12-01 00:00:00+00		0.0112	1.0112	4.099185561	2.249620688
532	2009-01-01 00:00:00+00		0.0105	1.0105	4.099185561	2.249620688
533	2009-02-01 00:00:00+00		0.0086	1.0086	4.099185561	2.249620688
534	2009-03-01 00:00:00+00		0.0097	1.0097	4.099185561	2.249620688
535	2009-04-01 00:00:00+00		0.0084	1.0084	4.099185561	2.249620688
536	2009-05-01 00:00:00+00		0.0077	1.0077	4.099185561	2.249620688
537	2009-06-01 00:00:00+00		0.0076	1.0076	4.099185561	2.249620688
538	2009-07-01 00:00:00+00	IPCA-E	0.0022	1.0022	4.099185561	2.249620688
539	2009-08-01 00:00:00+00	IPCA-E	0.0023	1.0023	4.10820377	2.244682386
540	2009-09-01 00:00:00+00	IPCA-E	0.0019	1.0019	4.117652638	2.239531464
541	2009-10-01 00:00:00+00	IPCA-E	0.0018	1.0018	4.125476178	2.235284424
542	2009-11-01 00:00:00+00	IPCA-E	0.0044	1.0044	4.132902035	2.231268141
543	2009-12-01 00:00:00+00	IPCA-E	0.0038	1.0038	4.151086804	2.221493569
544	2010-01-01 00:00:00+00	IPCA-E	0.0052	1.0052	4.166860934	2.213083851
545	2010-02-01 00:00:00+00	IPCA-E	0.0094	1.0094	4.188528611	2.201635347
546	2010-03-01 00:00:00+00	IPCA-E	0.0055	1.0055	4.22790078	2.181132699
547	2010-04-01 00:00:00+00	IPCA-E	0.0048	1.0048	4.251154234	2.169202088
548	2010-05-01 00:00:00+00	IPCA-E	0.0063	1.0063	4.271559775	2.158839658
549	2010-06-01 00:00:00+00	IPCA-E	0.0019	1.0019	4.298470601	2.145324116
550	2010-07-01 00:00:00+00	IPCA-E	-0.0009	0.9991	4.306637695	2.14125573
551	2010-08-01 00:00:00+00	IPCA-E	-0.0005	0.9995	4.302761721	2.143184596
552	2010-09-01 00:00:00+00	IPCA-E	0.0031	1.0031	4.300610341	2.144256724
553	2010-10-01 00:00:00+00	IPCA-E	0.0062	1.0062	4.313942233	2.137630071
554	2010-11-01 00:00:00+00	IPCA-E	0.0086	1.0086	4.340688674	2.124458429
555	2010-12-01 00:00:00+00	IPCA-E	0.0069	1.0069	4.378018597	2.106343872
556	2011-01-01 00:00:00+00	IPCA-E	0.0076	1.0076	4.408226925	2.091909695
557	2011-02-01 00:00:00+00	IPCA-E	0.0097	1.0097	4.44172945	2.076131098
558	2011-03-01 00:00:00+00	IPCA-E	0.006	1.006	4.484814226	2.056186093
559	2011-04-01 00:00:00+00	IPCA-E	0.0077	1.0077	4.511723111	2.043922558
560	2011-05-01 00:00:00+00	IPCA-E	0.007	1.007	4.546463379	2.028304612
561	2011-06-01 00:00:00+00	IPCA-E	0.0023	1.0023	4.578288623	2.014205176
562	2011-07-01 00:00:00+00	IPCA-E	0.001	1.001	4.588818686	2.009583135
563	2011-08-01 00:00:00+00	IPCA-E	0.0027	1.0027	4.593407505	2.007575559
564	2011-09-01 00:00:00+00	IPCA-E	0.0053	1.0053	4.605809705	2.002169701
565	2011-10-01 00:00:00+00	IPCA-E	0.0042	1.0042	4.630220497	1.991614146
566	2011-11-01 00:00:00+00	IPCA-E	0.0046	1.0046	4.649667423	1.983284352
567	2011-12-01 00:00:00+00	IPCA-E	0.0056	1.0056	4.671055893	1.974203018
568	2012-01-01 00:00:00+00	IPCA-E	0.0065	1.0065	4.697213806	1.963209047
569	2012-02-01 00:00:00+00	IPCA-E	0.0053	1.0053	4.727745696	1.950530598
570	2012-03-01 00:00:00+00	IPCA-E	0.0025	1.0025	4.752802748	1.940247288
571	2012-04-01 00:00:00+00	IPCA-E	0.0043	1.0043	4.764684755	1.935408766
572	2012-05-01 00:00:00+00	IPCA-E	0.0051	1.0051	4.785172899	1.927122141
573	2012-06-01 00:00:00+00	IPCA-E	0.0018	1.0018	4.809577281	1.917343688
574	2012-07-01 00:00:00+00	IPCA-E	0.0033	1.0033	4.81823452	1.91389867
575	2012-08-01 00:00:00+00	IPCA-E	0.0039	1.0039	4.834134694	1.907603578
576	2012-09-01 00:00:00+00	IPCA-E	0.0048	1.0048	4.852987819	1.900192826
577	2012-10-01 00:00:00+00	IPCA-E	0.0065	1.0065	4.876282161	1.891115472
578	2012-11-01 00:00:00+00	IPCA-E	0.0054	1.0054	4.907977995	1.878902605
579	2012-12-01 00:00:00+00	IPCA-E	0.0069	1.0069	4.934481076	1.868811026
580	2013-01-01 00:00:00+00	IPCA-E	0.0088	1.0088	4.968528996	1.856004594
581	2013-02-01 00:00:00+00	IPCA-E	0.0068	1.0068	5.012252051	1.839814229
582	2013-03-01 00:00:00+00	IPCA-E	0.0049	1.0049	5.046335365	1.82738799
583	2013-04-01 00:00:00+00	IPCA-E	0.0051	1.0051	5.071062408	1.818477451
584	2013-05-01 00:00:00+00	IPCA-E	0.0046	1.0046	5.096924826	1.809250275
585	2013-06-01 00:00:00+00	IPCA-E	0.0038	1.0038	5.120370681	1.800965832
586	2013-07-01 00:00:00+00	IPCA-E	0.0007	1.0007	5.139828089	1.794148069
587	2013-08-01 00:00:00+00	IPCA-E	0.0016	1.0016	5.143425969	1.792893044
588	2013-09-01 00:00:00+00	IPCA-E	0.0027	1.0027	5.15165545	1.790028998
589	2013-10-01 00:00:00+00	IPCA-E	0.0048	1.0048	5.16556492	1.785208933
590	2013-11-01 00:00:00+00	IPCA-E	0.0057	1.0057	5.190359632	1.776680865
591	2013-12-01 00:00:00+00	IPCA-E	0.0075	1.0075	5.219944682	1.766611182
592	2014-01-01 00:00:00+00	IPCA-E	0.0067	1.0067	5.259094267	1.75346023
593	2014-02-01 00:00:00+00	IPCA-E	0.007	1.007	5.294330198	1.741790235
594	2014-03-01 00:00:00+00	IPCA-E	0.0073	1.0073	5.33139051	1.729682458
595	2014-04-01 00:00:00+00	IPCA-E	0.0078	1.0078	5.37030966	1.717147283
596	2014-05-01 00:00:00+00	IPCA-E	0.0058	1.0058	5.412198076	1.703857197
597	2014-06-01 00:00:00+00	IPCA-E	0.0047	1.0047	5.443588825	1.694031812
598	2014-07-01 00:00:00+00	IPCA-E	0.0017	1.0017	5.469173692	1.686107109
599	2014-08-01 00:00:00+00	IPCA-E	0.0014	1.0014	5.478471287	1.683245591
600	2014-09-01 00:00:00+00	IPCA-E	0.0039	1.0039	5.486141147	1.680892342
601	2014-10-01 00:00:00+00	IPCA-E	0.0048	1.0048	5.507537098	1.674362329
602	2014-11-01 00:00:00+00	IPCA-E	0.0038	1.0038	5.533973276	1.666363783
603	2014-12-01 00:00:00+00	IPCA-E	0.0079	1.0079	5.555002374	1.660055572
604	2015-01-01 00:00:00+00	IPCA-E	0.0089	1.0089	5.598886893	1.647043925
605	2015-02-01 00:00:00+00	IPCA-E	0.0133	1.0133	5.648716986	1.632514545
606	2015-03-01 00:00:00+00	IPCA-E	0.0124	1.0124	5.723844922	1.611087087
607	2015-04-01 00:00:00+00	IPCA-E	0.0107	1.0107	5.794820599	1.591354294
608	2015-05-01 00:00:00+00	IPCA-E	0.006	1.006	5.85682518	1.574507068
609	2015-06-01 00:00:00+00	IPCA-E	0.0099	1.0099	5.891966131	1.56511637
610	2015-07-01 00:00:00+00	IPCA-E	0.0059	1.0059	5.950296595	1.549773611
611	2015-08-01 00:00:00+00	IPCA-E	0.0043	1.0043	5.985403345	1.540683578
612	2015-09-01 00:00:00+00	IPCA-E	0.0039	1.0039	6.01114058	1.534087004
613	2015-10-01 00:00:00+00	IPCA-E	0.0066	1.0066	6.034584028	1.528127307
614	2015-11-01 00:00:00+00	IPCA-E	0.0085	1.0085	6.074412282	1.518107796
615	2015-12-01 00:00:00+00	IPCA-E	0.0118	1.0118	6.126044787	1.505312638
616	2016-01-01 00:00:00+00	IPCA-E	0.0092	1.0092	6.198332115	1.487757105
617	2016-02-01 00:00:00+00	IPCA-E	0.0142	1.0142	6.255356771	1.474194515
618	2016-03-01 00:00:00+00	IPCA-E	0.0043	1.0043	6.344182837	1.453554048
619	2016-04-01 00:00:00+00	IPCA-E	0.0051	1.0051	6.371462823	1.447330526
620	2016-05-01 00:00:00+00	IPCA-E	0.0086	1.0086	6.403957284	1.439986595
621	2016-06-01 00:00:00+00	IPCA-E	0.004	1.004	6.459031316	1.427708303
622	2016-07-01 00:00:00+00	IPCA-E	0.0054	1.0054	6.484867441	1.422020222
623	2016-08-01 00:00:00+00	IPCA-E	0.0045	1.0045	6.519885726	1.414382557
624	2016-09-01 00:00:00+00	IPCA-E	0.0023	1.0023	6.549225211	1.408046348
625	2016-10-01 00:00:00+00	IPCA-E	0.0019	1.0019	6.564288429	1.404815273
626	2016-11-01 00:00:00+00	IPCA-E	0.0026	1.0026	6.576760577	1.402151186
627	2016-12-01 00:00:00+00	IPCA-E	0.0019	1.0019	6.593860155	1.398515047
628	2017-01-01 00:00:00+00	IPCA-E	0.0031	1.0031	6.606388489	1.395862907
629	2017-02-01 00:00:00+00	IPCA-E	0.0054	1.0054	6.626868293	1.391549105
630	2017-03-01 00:00:00+00	IPCA-E	0.0015	1.0015	6.662653382	1.384075099
631	2017-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	6.672647362	1.382002096
632	2017-05-01 00:00:00+00	IPCA-E	0.0024	1.0024	6.686659922	1.379105974
633	2017-06-01 00:00:00+00	IPCA-E	0.0016	1.0016	6.702707906	1.375804044
634	2017-07-01 00:00:00+00	IPCA-E	-0.0018	0.9982	6.713432238	1.373606274
635	2017-08-01 00:00:00+00	IPCA-E	0.0035	1.0035	6.70134806	1.376083224
636	2017-09-01 00:00:00+00	IPCA-E	0.0011	1.0011	6.724802778	1.371283731
637	2017-10-01 00:00:00+00	IPCA-E	0.0034	1.0034	6.732200062	1.369776976
638	2017-11-01 00:00:00+00	IPCA-E	0.0032	1.0032	6.755089542	1.365135515
639	2017-12-01 00:00:00+00	IPCA-E	0.0035	1.0035	6.776705828	1.360781016
640	2018-01-01 00:00:00+00	IPCA-E	0.0039	1.0039	6.800424299	1.356034894
641	2018-02-01 00:00:00+00	IPCA-E	0.0038	1.0038	6.826945953	1.350766903
642	2018-03-01 00:00:00+00	IPCA-E	0.001	1.001	6.852888348	1.34565342
643	2018-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	6.859741236	1.344309111
644	2018-05-01 00:00:00+00	IPCA-E	0.0014	1.0014	6.874146693	1.341491978
645	2018-06-01 00:00:00+00	IPCA-E	0.0111	1.0111	6.883770498	1.339616514
646	2018-07-01 00:00:00+00	IPCA-E	0.0064	1.0064	6.960180351	1.324910013
647	2018-08-01 00:00:00+00	IPCA-E	0.0013	1.0013	7.004725505	1.316484512
648	2018-09-01 00:00:00+00	IPCA-E	0.0009	1.0009	7.013831648	1.314775305
649	2018-10-01 00:00:00+00	IPCA-E	0.0058	1.0058	7.020144097	1.313593071
650	2018-11-01 00:00:00+00	IPCA-E	0.0019	1.0019	7.060860933	1.306018165
651	2018-12-01 00:00:00+00	IPCA-E	-0.0016	0.9984	7.074276568	1.303541437
652	2019-01-01 00:00:00+00	IPCA-E	0.003	1.003	7.062957726	1.305630445
653	2019-02-01 00:00:00+00	IPCA-E	0.0034	1.0034	7.084146599	1.30172527
654	2019-03-01 00:00:00+00	IPCA-E	0.0054	1.0054	7.108232697	1.297314401
655	2019-04-01 00:00:00+00	IPCA-E	0.0072	1.0072	7.146617154	1.290346529
656	2019-05-01 00:00:00+00	IPCA-E	0.0035	1.0035	7.198072797	1.281122448
657	2019-06-01 00:00:00+00	IPCA-E	0.0006	1.0006	7.223266052	1.276654158
658	2019-07-01 00:00:00+00	IPCA-E	0.0009	1.0009	7.227600012	1.275888625
659	2019-08-01 00:00:00+00	IPCA-E	0.0008	1.0008	7.234104852	1.274741358
660	2019-09-01 00:00:00+00	IPCA-E	0.0009	1.0009	7.239892136	1.27372238
661	2019-10-01 00:00:00+00	IPCA-E	0.0009	1.0009	7.246408039	1.272577061
662	2019-11-01 00:00:00+00	IPCA-E	0.0014	1.0014	7.252929806	1.271432771
663	2019-12-01 00:00:00+00	IPCA-E	0.0105	1.0105	7.263083908	1.269655254
664	2020-01-01 00:00:00+00	IPCA-E	0.0071	1.0071	7.339346289	1.256462399
665	2020-02-01 00:00:00+00	IPCA-E	0.0022	1.0022	7.391455647	1.247604407
666	2020-03-01 00:00:00+00	IPCA-E	0.0002	1.0002	7.40771685	1.244865703
667	2020-04-01 00:00:00+00	IPCA-E	-0.0001	0.9999	7.409198393	1.244616779
668	2020-05-01 00:00:00+00	IPCA-E	-0.0059	0.9941	7.408457473	1.244741253
669	2020-06-01 00:00:00+00	IPCA-E	0.0002	1.0002	7.364747574	1.252128813
670	2020-07-01 00:00:00+00	IPCA-E	0.003	1.003	7.366220524	1.251878438
671	2020-08-01 00:00:00+00	IPCA-E	0.0023	1.0023	7.388319185	1.248134036
672	2020-09-01 00:00:00+00	IPCA-E	0.0045	1.0045	7.405312319	1.245269915
673	2020-10-01 00:00:00+00	IPCA-E	0.0094	1.0094	7.438636225	1.239691304
674	2020-11-01 00:00:00+00	IPCA-E	0.0081	1.0081	7.508559405	1.228146725
675	2020-12-01 00:00:00+00	IPCA-E	0.0106	1.0106	7.569378737	1.218278668
676	2021-01-01 00:00:00+00	IPCA-E	0.0078	1.0078	7.649614151	1.205500364
677	2021-02-01 00:00:00+00	IPCA-E	0.0048	1.0048	7.709281142	1.196170236
678	2021-03-01 00:00:00+00	IPCA-E	0.0093	1.0093	7.746285691	1.190456047
679	2021-04-01 00:00:00+00	IPCA-E	0.006	1.006	7.818326148	1.179486819
680	2021-05-01 00:00:00+00	IPCA-E	0.0044	1.0044	7.865236105	1.172452107
681	2021-06-01 00:00:00+00	IPCA-E	0.0083	1.0083	7.899843144	1.167315917
682	2021-07-01 00:00:00+00	IPCA-E	0.0072	1.0072	7.965411842	1.157706949
683	2021-08-01 00:00:00+00	IPCA-E	0.0089	1.0089	8.022762807	1.149431046
684	2021-09-01 00:00:00+00	IPCA-E	0.0114	1.0114	8.094165396	1.139291352
685	2021-10-01 00:00:00+00	IPCA-E	0.012	1.012	8.186438882	1.126449824
686	2021-11-01 00:00:00+00	IPCA-E	0.0117	1.0117	8.284676148	1.113092712
687	2021-12-01 00:00:00+00	IPCA-E	0.0078	1.0078	8.381606859	1.100220136
688	2022-01-01 00:00:00+00	IPCA-E	0.0058	1.0058	8.446983393	1.091704839
689	2022-02-01 00:00:00+00	IPCA-E	0.0099	1.0099	8.495975896	1.085409464
690	2022-03-01 00:00:00+00	IPCA-E	0.0095	1.0095	8.580086058	1.074769248
691	2022-04-01 00:00:00+00	IPCA-E	0.0173	1.0173	8.661596875	1.064655025
692	2022-05-01 00:00:00+00	IPCA-E	0.0059	1.0059	8.811442501	1.046549715
693	2022-06-01 00:00:00+00	IPCA-E	0.0069	1.0069	8.863430012	1.040411289
694	2022-07-01 00:00:00+00	IPCA-E	0.0013	1.0013	8.924587679	1.033281645
695	2022-08-01 00:00:00+00	IPCA-E	-0.0073	0.9927	8.936189643	1.031940123
696	2022-09-01 00:00:00+00	IPCA-E	-0.0037	0.9963	8.870955459	1.039528683
697	2022-10-01 00:00:00+00	IPCA-E	0.0016	1.0016	8.838132923	1.043389223
698	2022-11-01 00:00:00+00	IPCA-E	0.0053	1.0053	8.852273936	1.041722467
699	2022-12-01 00:00:00+00	IPCA-E	0.0052	1.0052	8.899190988	1.036230445
700	2023-01-01 00:00:00+00	IPCA-E	0.0055	1.0055	8.945466781	1.030869922
701	2023-02-01 00:00:00+00	IPCA-E	0.0076	1.0076	8.994666848	1.025231151
702	2023-03-01 00:00:00+00	IPCA-E	0.0069	1.0069	9.063026316	1.017498164
703	2023-04-01 00:00:00+00	IPCA-E	0.0057	1.0057	9.125561198	1.010525538
704	2023-05-01 00:00:00+00	IPCA-E	0.0051	1.0051	9.177576897	1.004798189
705	2023-06-01 00:00:00+00	IPCA-E	0.0004	1.0004	9.224382539	0.99969972
706	2023-07-01 00:00:00+00	IPCA-E	-0.0007	0.9993	9.228072292	0.9993
707	2023-08-01 00:00:00+00	IPCA-E	0	1.0	9.221612641	1.0
\.


--
-- Data for Name: t206_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t206_tabela_pnep (id, data, indexador, variacao_mensal, numero_indice, fator_vigente, indice_correcao) FROM stdin;
1	1964-10-01 00:00:00+00	ORTN	0.0	1.0	1620.6956	0.006649358
2	1964-11-01 00:00:00+00	ORTN	0.0	1.0	1620.6956	0.006649358
3	1964-12-01 00:00:00+00	ORTN	0.130000001	1.130000001	1620.6956	0.006649358
4	1965-01-01 00:00:00+00	ORTN	0.0	1.0	1831.38603	0.005884388
5	1965-02-01 00:00:00+00	ORTN	0.0	1.0	1831.38603	0.005884388
6	1965-03-01 00:00:00+00	ORTN	0.185840713	1.185840713	1831.38603	0.005884388
7	1965-04-01 00:00:00+00	ORTN	0.0	1.0	2171.732116	0.004962207
8	1965-05-01 00:00:00+00	ORTN	0.0	1.0	2171.732116	0.004962207
9	1965-06-01 00:00:00+00	ORTN	0.134328344	1.134328344	2171.732116	0.004962207
10	1965-07-01 00:00:00+00	ORTN	0.0	1.0	2463.457294	0.004374578
11	1965-08-01 00:00:00+00	ORTN	0.032894753	1.032894753	2463.457294	0.004374578
12	1965-09-01 00:00:00+00	ORTN	0.012738835	1.012738835	2544.492113	0.00423526
13	1965-10-01 00:00:00+00	ORTN	0.009433975	1.009433975	2576.905977	0.004181986
14	1965-11-01 00:00:00+00	ORTN	0.015576314	1.015576314	2601.216445	0.004142902
15	1965-12-01 00:00:00+00	ORTN	0.018404928	1.018404928	2641.73381	0.004079361
16	1966-01-01 00:00:00+00	ORTN	0.027108437	1.027108437	2690.354731	0.004005637
17	1966-02-01 00:00:00+00	ORTN	0.014662738	1.014662738	2763.286043	0.003899917
18	1966-03-01 00:00:00+00	ORTN	0.017341059	1.017341059	2803.803383	0.00384356
19	1966-04-01 00:00:00+00	ORTN	0.038636354	1.038636354	2852.424302	0.003778044
20	1966-05-01 00:00:00+00	ORTN	0.044310705	1.044310705	2962.631578	0.003637504
21	1966-06-01 00:00:00+00	ORTN	0.040859093	1.040859093	3093.907873	0.003483163
22	1966-07-01 00:00:00+00	ORTN	0.028183186	1.028183186	3220.322141	0.003346431
23	1966-08-01 00:00:00+00	ORTN	0.028389642	1.028389642	3311.081079	0.003254703
24	1966-09-01 00:00:00+00	ORTN	0.02855781	1.02855781	3405.081486	0.003164854
25	1966-10-01 00:00:00+00	ORTN	0.026376703	1.026376703	3502.323156	0.003076982
26	1966-11-01 00:00:00+00	ORTN	0.022993684	1.022993684	3594.702894	0.002997907
27	1966-12-01 00:00:00+00	ORTN	0.023799027	1.023799027	3677.358356	0.002930524
28	1967-01-01 00:00:00+00	ORTN	0.023676	1.023676	3764.875907	0.002862401
29	1967-02-01 00:00:00+00	ORTN	0.021026072	1.021026072	3.854013109	2.796198372
30	1967-03-01 00:00:00+00	ORTN	0.014827018	1.014827018	3.935047868	2.738616033
31	1967-04-01 00:00:00+00	ORTN	0.015016234	1.015016234	3.993392894	2.698603786
32	1967-05-01 00:00:00+00	ORTN	0.017992803	1.017992803	4.053358615	2.658680419
33	1967-06-01 00:00:00+00	ORTN	0.028279654	1.028279654	4.126289898	2.611688817
34	1967-07-01 00:00:00+00	ORTN	0.025210084	1.025210084	4.24297995	2.539862387
35	1967-08-01 00:00:00+00	ORTN	0.015275708	1.015275708	4.349945831	2.477406754
36	1967-09-01 00:00:00+00	ORTN	0.004770642	1.004770642	4.416394333	2.44013201
37	1967-10-01 00:00:00+00	ORTN	0.006939372	1.006939372	4.43746337	2.428546285
38	1967-11-01 00:00:00+00	ORTN	0.014145811	1.014145811	4.468256578	2.41180984
39	1967-12-01 00:00:00+00	ORTN	0.018597997	1.018597997	4.53146369	2.378168715
40	1968-01-01 00:00:00+00	ORTN	0.01755618	1.01755618	4.615739838	2.334747095
41	1968-02-01 00:00:00+00	ORTN	0.014492754	1.014492754	4.696774597	2.294465055
42	1968-03-01 00:00:00+00	ORTN	0.01462585	1.01462585	4.764843794	2.261686982
43	1968-04-01 00:00:00+00	ORTN	0.018773047	1.018773047	4.834533686	2.229084723
44	1968-05-01 00:00:00+00	ORTN	0.026653504	1.026653504	4.925292615	2.188009124
45	1968-06-01 00:00:00+00	ORTN	0.028525641	1.028525641	5.056568924	2.131205041
46	1968-07-01 00:00:00+00	ORTN	0.022436896	1.022436896	5.200810794	2.072097142
47	1968-08-01 00:00:00+00	ORTN	0.018287108	1.018287108	5.317500846	2.026625946
48	1968-09-01 00:00:00+00	ORTN	0.014067644	1.014067644	5.414742556	1.990230388
49	1968-10-01 00:00:00+00	ORTN	0.015053129	1.015053129	5.490915229	1.962620935
50	1968-11-01 00:00:00+00	ORTN	0.016283803	1.016283803	5.573570683	1.933515478
51	1968-12-01 00:00:00+00	ORTN	0.019170243	1.019170243	5.664329612	1.902534972
52	1969-01-01 00:00:00+00	ORTN	0.018248175	1.018248175	5.772916188	1.866748941
53	1969-02-01 00:00:00+00	ORTN	0.017645437	1.017645437	5.878261374	1.833294659
54	1969-03-01 00:00:00+00	ORTN	0.014088323	1.014088323	5.981985865	1.801506293
55	1969-04-01 00:00:00+00	ORTN	0.015495592	1.015495592	6.066262014	1.776478688
56	1969-05-01 00:00:00+00	ORTN	0.012365167	1.012365167	6.160262333	1.749371147
57	1969-06-01 00:00:00+00	ORTN	0.013513514	1.013513514	6.236435006	1.728004087
58	1969-07-01 00:00:00+00	ORTN	0.006923077	1.006923077	6.320711155	1.704964033
59	1969-08-01 00:00:00+00	ORTN	0.007384772	1.007384772	6.364469925	1.693241591
60	1969-09-01 00:00:00+00	ORTN	0.009100101	1.009100101	6.411470084	1.680829052
61	1969-10-01 00:00:00+00	ORTN	0.016282565	1.016282565	6.469815111	1.665671275
62	1969-11-01 00:00:00+00	ORTN	0.020951442	1.020951442	6.575160296	1.638984404
63	1969-12-01 00:00:00+00	ORTN	0.022452921	1.022452921	6.712919386	1.605350007
64	1970-01-01 00:00:00+00	ORTN	0.022432113	1.022432113	6.863644036	1.570096748
65	1970-02-01 00:00:00+00	ORTN	0.020092379	1.020092379	7.017610077	1.535648898
66	1970-03-01 00:00:00+00	ORTN	0.0113199	1.0113199	7.158610557	1.505401795
67	1970-04-01 00:00:00+00	ORTN	0.00917842	1.00917842	7.239645315	1.48855154
68	1970-05-01 00:00:00+00	ORTN	0.00931677	1.00931677	7.306093817	1.475013249
69	1970-06-01 00:00:00+00	ORTN	0.015384615	1.015384615	7.374163014	1.461397742
70	1970-07-01 00:00:00+00	ORTN	0.008874459	1.008874459	7.487611676	1.439255352
71	1970-08-01 00:00:00+00	ORTN	0.009440034	1.009440034	7.554060178	1.426595093
72	1970-09-01 00:00:00+00	ORTN	0.011902232	1.011902232	7.625370765	1.413253927
73	1970-10-01 00:00:00+00	ORTN	0.018903592	1.018903592	7.716129695	1.396630903
74	1970-11-01 00:00:00+00	ORTN	0.021232736	1.021232736	7.86199226	1.370719383
75	1970-12-01 00:00:00+00	ORTN	0.019580137	1.019580137	8.028923862	1.342220373
76	1971-01-01 00:00:00+00	ORTN	0.018412196	1.018412196	8.186131294	1.316444215
77	1971-02-01 00:00:00+00	ORTN	0.013219285	1.013219285	8.336855944	1.292643804
78	1971-03-01 00:00:00+00	ORTN	0.009976976	1.009976976	8.447063216	1.275778919
79	1971-04-01 00:00:00+00	ORTN	0.011588146	1.011588146	8.531339364	1.26317624
80	1971-05-01 00:00:00+00	ORTN	0.0142723	1.0142723	8.63020177	1.248706052
81	1971-06-01 00:00:00+00	ORTN	0.019811146	1.019811146	8.753374602	1.231134925
82	1971-07-01 00:00:00+00	ORTN	0.019970951	1.019970951	8.926788985	1.207218542
83	1971-08-01 00:00:00+00	ORTN	0.021003916	1.021003916	9.105065454	1.183581297
84	1971-09-01 00:00:00+00	ORTN	0.02179219	1.02179219	9.296307483	1.159232868
85	1971-10-01 00:00:00+00	ORTN	0.020133083	1.020133083	9.49889438	1.134509423
86	1971-11-01 00:00:00+00	ORTN	0.016390701	1.016390701	9.69013641	1.112119038
87	1971-12-01 00:00:00+00	ORTN	0.012341616	1.012341616	9.848964536	1.094184586
88	1972-01-01 00:00:00+00	ORTN	0.012028609	1.012028609	9.970516673	1.080845209
89	1972-02-01 00:00:00+00	ORTN	0.013331192	1.013331192	10.09044812	1.067998671
90	1972-03-01 00:00:00+00	ORTN	0.011412268	1.011412268	10.22496582	1.053948285
91	1972-04-01 00:00:00+00	ORTN	0.013320796	1.013320796	10.34165587	1.042056061
92	1972-05-01 00:00:00+00	ORTN	0.016857408	1.016857408	10.47941496	1.028357521
93	1972-06-01 00:00:00+00	ORTN	0.017946768	1.017946768	10.65607073	1.011309464
94	1972-07-01 00:00:00+00	ORTN	0.014343344	1.014343344	10.84731276	0.993479714
95	1972-08-01 00:00:00+00	ORTN	0.008395935	1.008395935	11.0028995	0.979431393
96	1972-09-01 00:00:00+00	ORTN	0.007157464	1.007157464	11.09527912	0.971276618
97	1972-10-01 00:00:00+00	ORTN	0.009572154	1.009572154	11.17469318	0.964374145
98	1972-11-01 00:00:00+00	ORTN	0.006608246	1.006608246	11.28165906	0.955230531
99	1972-12-01 00:00:00+00	ORTN	0.011417154	1.011417154	11.35621104	0.948959573
100	1973-01-01 00:00:00+00	ORTN	0.00987724	1.00987724	11.48586666	0.938247457
101	1973-02-01 00:00:00+00	ORTN	0.010479251	1.010479251	11.59931532	0.929070802
102	1973-03-01 00:00:00+00	ORTN	0.012029867	1.012029867	11.72086746	0.919435803
103	1973-04-01 00:00:00+00	ORTN	0.011476978	1.011476978	11.86186793	0.908506589
104	1973-05-01 00:00:00+00	ORTN	0.012697555	1.012697555	11.99800633	0.898197991
105	1973-06-01 00:00:00+00	ORTN	0.011071095	1.011071095	12.15035167	0.886936071
106	1973-07-01 00:00:00+00	ORTN	0.008970976	1.008970976	12.28486937	0.877224238
107	1973-08-01 00:00:00+00	ORTN	0.008368201	1.008368201	12.39507665	0.869424651
108	1973-09-01 00:00:00+00	ORTN	0.009725104	1.009725104	12.49880114	0.862209508
109	1973-10-01 00:00:00+00	ORTN	0.006806215	1.006806215	12.62035327	0.853905192
110	1973-11-01 00:00:00+00	ORTN	0.008545918	1.008545918	12.70625012	0.848132618
111	1973-12-01 00:00:00+00	ORTN	0.019602883	1.019602883	12.81483669	0.840945963
112	1974-01-01 00:00:00+00	ORTN	0.010543289	1.010543289	13.06604444	0.824777937
113	1974-02-01 00:00:00+00	ORTN	0.014974837	1.014974837	13.20380353	0.816172791
114	1974-03-01 00:00:00+00	ORTN	0.012577095	1.012577095	13.40152835	0.804131059
115	1974-04-01 00:00:00+00	ORTN	0.016362116	1.016362116	13.57008064	0.794143046
116	1974-05-01 00:00:00+00	ORTN	0.021269095	1.021269095	13.79211588	0.78135837
117	1974-06-01 00:00:00+00	ORTN	0.03325279	1.03325279	14.08546171	0.765085689
118	1974-07-01 00:00:00+00	ORTN	0.043986637	1.043986637	14.55384261	0.740463221
119	1974-08-01 00:00:00+00	ORTN	0.04768	1.04768	15.1940172	0.709265038
120	1974-09-01 00:00:00+00	ORTN	0.037466911	1.037466911	15.91846794	0.676986329
121	1974-10-01 00:00:00+00	ORTN	0.021589794	1.021589794	16.51488376	0.652537755
122	1974-11-01 00:00:00+00	ORTN	0.012584054	1.012584054	16.8714367	0.638747332
123	1974-12-01 00:00:00+00	ORTN	0.012807134	1.012807134	17.08374777	0.630809195
124	1975-01-01 00:00:00+00	ORTN	0.015174223	1.015174223	17.30254161	0.622832496
125	1975-02-01 00:00:00+00	ORTN	0.01660823	1.01660823	17.56509423	0.613522765
126	1975-03-01 00:00:00+00	ORTN	0.018787439	1.018787439	17.85681936	0.603499703
127	1975-04-01 00:00:00+00	ORTN	0.019955457	1.019955457	18.19230326	0.592370577
128	1975-05-01 00:00:00+00	ORTN	0.023058782	1.023058782	18.55533898	0.58078083
129	1975-06-01 00:00:00+00	ORTN	0.018270298	1.018270298	18.9832025	0.567690577
130	1975-07-01 00:00:00+00	ORTN	0.017104049	1.017104049	19.33003127	0.557504798
131	1975-08-01 00:00:00+00	ORTN	0.015579919	1.015579919	19.66065308	0.548129563
132	1975-09-01 00:00:00+00	ORTN	0.020292208	1.020292208	19.96696447	0.539720757
133	1975-10-01 00:00:00+00	ORTN	0.021718377	1.021718377	20.37213826	0.528986454
134	1975-11-01 00:00:00+00	ORTN	0.019465857	1.019465857	20.81458805	0.517741939
135	1975-12-01 00:00:00+00	ORTN	0.018406782	1.018406782	21.21976183	0.507856086
136	1976-01-01 00:00:00+00	ORTN	0.01919904	1.01919904	21.61034937	0.498677046
137	1976-02-01 00:00:00+00	ORTN	0.022369389	1.022369389	22.02524733	0.489283277
138	1976-03-01 00:00:00+00	ORTN	0.023751259	1.023751259	22.51793867	0.478577784
139	1976-04-01 00:00:00+00	ORTN	0.025239033	1.025239033	23.05276807	0.467474672
140	1976-05-01 00:00:00+00	ORTN	0.02976068	1.02976068	23.63459764	0.455966518
141	1976-06-01 00:00:00+00	ORTN	0.0294999	1.0294999	24.33797934	0.442788821
142	1976-07-01 00:00:00+00	ORTN	0.025549806	1.025549806	25.0559473	0.430100888
143	1976-08-01 00:00:00+00	ORTN	0.027877641	1.027877641	25.69612189	0.419385666
144	1976-09-01 00:00:00+00	ORTN	0.032889489	1.032889489	26.41246915	0.408011274
145	1976-10-01 00:00:00+00	ORTN	0.03606012	1.03606012	27.28116176	0.395019291
146	1976-11-01 00:00:00+00	ORTN	0.030275229	1.030275229	28.26492373	0.381270627
147	1976-12-01 00:00:00+00	ORTN	0.022094835	1.022094835	29.12065078	0.37006677
148	1977-01-01 00:00:00+00	ORTN	0.017315546	1.017315546	29.76406676	0.36206696
149	1977-02-01 00:00:00+00	ORTN	0.019697051	1.019697051	30.27944783	0.355904283
150	1977-03-01 00:00:00+00	ORTN	0.022675975	1.022675975	30.87586365	0.349029433
151	1977-04-01 00:00:00+00	ORTN	0.02884566	1.02884566	31.57600396	0.341290342
152	1977-05-01 00:00:00+00	ORTN	0.032177601	1.032177601	32.48683464	0.331721613
153	1977-06-01 00:00:00+00	ORTN	0.033349444	1.033349444	33.53218303	0.321380364
154	1977-07-01 00:00:00+00	ORTN	0.026707203	1.026707203	34.6504627	0.311008406
155	1977-08-01 00:00:00+00	ORTN	0.020500205	1.020500205	35.57587963	0.302918306
156	1977-09-01 00:00:00+00	ORTN	0.014017231	1.014017231	36.30519247	0.296833165
157	1977-10-01 00:00:00+00	ORTN	0.013867488	1.013867488	36.81409075	0.292729902
158	1977-11-01 00:00:00+00	ORTN	0.014937038	1.014937038	37.32460973	0.288725998
159	1977-12-01 00:00:00+00	ORTN	0.019594421	1.019594421	37.88212886	0.284476757
160	1978-01-01 00:00:00+00	ORTN	0.021106076	1.021106076	38.62440724	0.279009723
161	1978-02-01 00:00:00+00	ORTN	0.023176495	1.023176495	39.43961691	0.273242643
162	1978-03-01 00:00:00+00	ORTN	0.025784168	1.025784168	40.353689	0.267053284
163	1978-04-01 00:00:00+00	ORTN	0.02920794	1.02920794	41.3941753	0.260340618
164	1978-05-01 00:00:00+00	ORTN	0.030471336	1.030471336	42.60321389	0.2529524
165	1978-06-01 00:00:00+00	ORTN	0.03012404	1.03012404	43.90139071	0.245472524
166	1978-07-01 00:00:00+00	ORTN	0.030604931	1.030604931	45.22387798	0.238294142
167	1978-08-01 00:00:00+00	ORTN	0.027783573	1.027783573	46.60795164	0.231217739
168	1978-09-01 00:00:00+00	ORTN	0.026119024	1.026119024	47.90288708	0.224967342
169	1978-10-01 00:00:00+00	ORTN	0.023739655	1.023739655	49.15406375	0.219240981
170	1978-11-01 00:00:00+00	ORTN	0.025604689	1.025604689	50.32096428	0.214156969
171	1978-12-01 00:00:00+00	ORTN	0.026315789	1.026315789	51.60941693	0.208810442
172	1979-01-01 00:00:00+00	ORTN	0.022581238	1.022581238	52.96755948	0.203456329
173	1979-02-01 00:00:00+00	ORTN	0.023249551	1.023249551	54.16363253	0.198963487
174	1979-03-01 00:00:00+00	ORTN	0.024972951	1.024972951	55.42291268	0.194442779
175	1979-04-01 00:00:00+00	ORTN	0.037459702	1.037459702	56.80698634	0.189705279
176	1979-05-01 00:00:00+00	ORTN	0.038224617	1.038224617	58.93495911	0.182855564
177	1979-06-01 00:00:00+00	ORTN	0.033267999	1.033267999	61.18772537	0.176123317
178	1979-07-01 00:00:00+00	ORTN	0.027198154	1.027198154	63.22331853	0.170452697
179	1979-08-01 00:00:00+00	ORTN	0.028773927	1.028773927	64.94287608	0.165939451
180	1979-09-01 00:00:00+00	ORTN	0.040170774	1.040170774	66.81153764	0.161298266
181	1979-10-01 00:00:00+00	ORTN	0.045872201	1.045872201	69.49540883	0.155069023
182	1979-11-01 00:00:00+00	ORTN	0.045131224	1.045131224	72.68331622	0.14826766
183	1979-12-01 00:00:00+00	ORTN	0.040792815	1.040792815	75.96360322	0.141865113
184	1980-01-01 00:00:00+00	ORTN	0.042022836	1.042022836	79.06237243	0.136304855
185	1980-02-01 00:00:00+00	ORTN	0.037003521	1.037003521	82.38479753	0.130807934
186	1980-03-01 00:00:00+00	ORTN	0.036992071	1.036992071	85.43332509	0.126140299
187	1980-04-01 00:00:00+00	ORTN	0.036989609	1.036989609	88.59368068	0.121640563
188	1980-05-01 00:00:00+00	ORTN	0.033994284	1.033994284	91.87072632	0.117301622
189	1980-06-01 00:00:00+00	ORTN	0.032006551	1.032006551	94.99380592	0.113445135
190	1980-07-01 00:00:00+00	ORTN	0.032005819	1.032005819	98.03423006	0.109926759
191	1980-08-01 00:00:00+00	ORTN	0.032006408	1.032006408	101.1718959	0.106517577
192	1980-09-01 00:00:00+00	ORTN	0.030004812	1.030004812	104.4100448	0.103214065
193	1980-10-01 00:00:00+00	ORTN	0.031994093	1.031994093	107.5428486	0.100207362
194	1980-11-01 00:00:00+00	ORTN	0.031995211	1.031995211	110.9835844	0.097100713
195	1980-12-01 00:00:00+00	ORTN	0.044997877	1.044997877	114.5345276	0.094090275
196	1981-01-01 00:00:00+00	ORTN	0.05000677	1.05000677	119.6883382	0.090038723
197	1981-02-01 00:00:00+00	ORTN	0.064996196	1.064996196	125.6735655	0.085750612
198	1981-03-01 00:00:00+00	ORTN	0.063003281	1.063003281	133.8418692	0.080517294
199	1981-04-01 00:00:00+00	ORTN	0.059998178	1.059998178	142.2743461	0.075745104
200	1981-05-01 00:00:00+00	ORTN	0.059998064	1.059998064	150.8105477	0.071457768
201	1981-06-01 00:00:00+00	ORTN	0.059998379	1.059998379	159.8588886	0.067413112
202	1981-07-01 00:00:00+00	ORTN	0.059997704	1.059997704	169.4501628	0.063597373
203	1981-08-01 00:00:00+00	ORTN	0.058000308	1.058000308	179.6167835	0.059997652
204	1981-09-01 00:00:00+00	ORTN	0.057003966	1.057003966	190.0346122	0.056708539
205	1981-10-01 00:00:00+00	ORTN	0.057003848	1.057003848	200.8673388	0.053650261
206	1981-11-01 00:00:00+00	ORTN	0.054998322	1.054998322	212.31755	0.050756921
207	1981-12-01 00:00:00+00	ORTN	0.052000955	1.052000955	223.9946589	0.048110902
208	1982-01-01 00:00:00+00	ORTN	0.050001375	1.050001375	235.6425951	0.045732755
209	1982-02-01 00:00:00+00	ORTN	0.049998035	1.049998035	247.4250488	0.043554948
210	1982-03-01 00:00:00+00	ORTN	0.050000313	1.050000313	259.7958151	0.041480981
211	1982-04-01 00:00:00+00	ORTN	0.054998394	1.054998394	272.785687	0.039505684
212	1982-05-01 00:00:00+00	ORTN	0.054997719	1.054997719	287.7884618	0.037446203
213	1982-06-01 00:00:00+00	ORTN	0.055002483	1.055002483	303.6161708	0.035494108
214	1982-07-01 00:00:00+00	ORTN	0.059997675	1.059997675	320.3158141	0.033643625
215	1982-08-01 00:00:00+00	ORTN	0.070000334	1.070000334	339.5340181	0.031739339
216	1982-09-01 00:00:00+00	ORTN	0.069997859	1.069997859	363.3015127	0.029662924
217	1982-10-01 00:00:00+00	ORTN	0.070000625	1.070000625	388.7318409	0.027722414
218	1982-11-01 00:00:00+00	ORTN	0.065000289	1.065000289	415.9433128	0.025908783
219	1982-12-01 00:00:00+00	ORTN	0.064999069	1.064999069	442.9797485	0.02432749
220	1983-01-01 00:00:00+00	ORTN	0.060001442	1.060001442	471.7730196	0.022842733
221	1983-02-01 00:00:00+00	ORTN	0.06699853	1.06699853	500.0800812	0.021549719
222	1983-03-01 00:00:00+00	ORTN	0.090000367	1.090000367	533.5847117	0.020196578
223	1983-04-01 00:00:00+00	ORTN	0.09000092	1.09000092	581.6075313	0.018528964
224	1983-05-01 00:00:00+00	ORTN	0.080000305	1.080000305	633.952744	0.016999035
225	1983-06-01 00:00:00+00	ORTN	0.077999031	1.077999031	684.6691571	0.015739843
226	1983-07-01 00:00:00+00	ORTN	0.089999008	1.089999008	738.0726877	0.014600981
227	1983-08-01 00:00:00+00	ORTN	0.084999531	1.084999531	804.4984973	0.013395407
228	1983-09-01 00:00:00+00	ORTN	0.094999109	1.094999109	872.8804926	0.012346003
229	1983-10-01 00:00:00+00	ORTN	0.097000584	1.097000584	955.8033614	0.011274898
230	1983-11-01 00:00:00+00	ORTN	0.083999661	1.083999661	1048.516845	0.010277932
231	1983-12-01 00:00:00+00	ORTN	0.076000397	1.076000397	1136.591905	0.00948149
232	1984-01-01 00:00:00+00	ORTN	0.098000526	1.098000526	1222.973341	0.008811791
233	1984-02-01 00:00:00+00	ORTN	0.123000568	1.123000568	1342.825373	0.008025306
234	1984-03-01 00:00:00+00	ORTN	0.099999888	1.099999888	1507.993656	0.007146307
235	1984-04-01 00:00:00+00	ORTN	0.088999887	1.088999887	1658.792853	0.006496643
236	1984-05-01 00:00:00+00	ORTN	0.088999714	1.088999714	1806.42523	0.005965697
237	1984-06-01 00:00:00+00	ORTN	0.09199967	1.09199967	1967.196558	0.005478144
238	1984-07-01 00:00:00+00	ORTN	0.102999932	1.102999932	2148.177993	0.005016617
239	1984-08-01 00:00:00+00	ORTN	0.106000028	1.106000028	2369.44018	0.004548157
240	1984-09-01 00:00:00+00	ORTN	0.104974079	1.104974079	2620.600906	0.004112257
241	1984-10-01 00:00:00+00	ORTN	0.1260262	1.1260262	2895.696073	0.003721587
242	1984-11-01 00:00:00+00	ORTN	0.098999888	1.098999888	3260.629646	0.003305063
243	1984-12-01 00:00:00+00	ORTN	0.105000086	1.105000086	3583.431615	0.003007337
244	1985-01-01 00:00:00+00	ORTN	0.126000021	1.126000021	3959.692242	0.002721571
245	1985-02-01 00:00:00+00	ORTN	0.101999988	1.101999988	4458.613548	0.002417026
246	1985-03-01 00:00:00+00	ORTN	0.126999835	1.126999835	4913.392075	0.002193309
247	1985-04-01 00:00:00+00	ORTN	0.118292994	1.118292994	5537.392058	0.001946148
248	1985-05-01 00:00:00+00	ORTN	0.100058988	1.100058988	6192.426742	0.001740285
249	1985-06-01 00:00:00+00	ORTN	0.092082024	1.092082024	6812.034697	0.001581992
250	1985-07-01 00:00:00+00	ORTN	0.076139997	1.076139997	7439.300637	0.001448602
251	1985-08-01 00:00:00+00	ORTN	0.08179703	1.08179703	8005.728966	0.001346109
252	1985-09-01 00:00:00+00	ORTN	0.090999965	1.090999965	8660.573814	0.001244327
253	1985-10-01 00:00:00+00	ORTN	0.090000051	1.090000051	9448.685731	0.001140538
254	1985-11-01 00:00:00+00	ORTN	0.111199992	1.111199992	10299.06792	0.001046365
255	1985-12-01 00:00:00+00	ORTN	0.133600014	1.133600014	11444.3242	0.000941653
256	1986-01-01 00:00:00+00	ORTN	0.162300164	1.162300164	12973.28606	0.000830675
257	1986-02-01 00:00:00+00	ORTN	0.143601	1.143601	15.07885252	0.714682047
258	1986-03-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.624940033
259	1986-04-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.624940033
260	1986-05-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.624940033
261	1986-06-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.624940033
262	1986-07-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.624940033
263	1986-08-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.624940033
264	1986-09-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.624940033
265	1986-10-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.624940033
266	1986-11-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.624940033
267	1986-12-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.624940033
268	1987-01-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.624940033
269	1987-02-01 00:00:00+00	OTN	0.706860902	1.706860902	17.24419083	0.624940033
270	1987-03-01 00:00:00+00	OTN	0.145146193	1.145146193	29.43343511	0.366134131
271	1987-04-01 00:00:00+00	OTN	0.209597538	1.209597538	33.70558615	0.319726977
272	1987-05-01 00:00:00+00	OTN	0.234417237	1.234417237	40.77019403	0.264325089
273	1987-06-01 00:00:00+00	OTN	0.180208031	1.180208031	50.32743025	0.214129454
274	1987-07-01 00:00:00+00	OTN	0.030505607	1.030505607	59.39683736	0.181433653
275	1987-08-01 00:00:00+00	OTN	0.063600498	1.063600498	61.20877395	0.176062752
276	1987-09-01 00:00:00+00	OTN	0.056809978	1.056809978	65.10168245	0.165534665
277	1987-10-01 00:00:00+00	OTN	0.091799957	1.091799957	68.80010762	0.156636168
278	1987-11-01 00:00:00+00	OTN	0.128398206	1.128398206	75.11595455	0.143465995
279	1987-12-01 00:00:00+00	OTN	0.141398497	1.141398497	84.76070832	0.127141283
280	1988-01-01 00:00:00+00	OTN	0.165108722	1.165108722	96.74574507	0.111390792
281	1988-02-01 00:00:00+00	OTN	0.17961179	1.17961179	112.7193114	0.095605492
282	1988-03-01 00:00:00+00	OTN	0.160100924	1.160100924	132.9650287	0.081048267
283	1988-04-01 00:00:00+00	OTN	0.192798681	1.192798681	154.2528526	0.069863118
284	1988-05-01 00:00:00+00	OTN	0.177799112	1.177799112	183.9925991	0.058570754
285	1988-06-01 00:00:00+00	OTN	0.195300349	1.195300349	216.7063199	0.049728984
286	1988-07-01 00:00:00+00	OTN	0.240398932	1.240398932	259.0291398	0.041603756
287	1988-08-01 00:00:00+00	OTN	0.206599817	1.206599817	321.2994684	0.033540626
288	1988-09-01 00:00:00+00	OTN	0.240098492	1.240098492	387.6798797	0.027797639
289	1988-10-01 00:00:00+00	OTN	0.272499575	1.272499575	480.7612341	0.02241567
290	1988-11-01 00:00:00+00	OTN	0.269200707	1.269200707	611.7684659	0.017615464
291	1988-12-01 00:00:00+00	OTN	0.287901	1.287901	776.4569697	0.013879179
292	1989-01-01 00:00:00+00	IPC	0.4272	1.4272	0.999999708	10.77658833
293	1989-02-01 00:00:00+00	IPC	0.1014	1.1014	1.427199583	7.550860658
294	1989-03-01 00:00:00+00	BTN	0.060907336	1.060907336	1.571917621	6.855693352
295	1989-04-01 00:00:00+00	BTN	0.073059776	1.073059776	1.667658935	6.462103824
296	1989-05-01 00:00:00+00	BTN	0.099372562	1.099372562	1.789497724	6.022128466
297	1989-06-01 00:00:00+00	BTN	0.248341817	1.248341817	1.967324698	5.47778676
298	1989-07-01 00:00:00+00	BTN	0.287594217	1.287594217	2.455893688	4.38805036
299	1989-08-01 00:00:00+00	BTN	0.293412024	1.293412024	3.162194511	3.407945066
300	1989-09-01 00:00:00+00	BTN	0.359511797	1.359511797	4.090020404	2.634848758
301	1989-10-01 00:00:00+00	BTN	0.376210877	1.376210877	5.560430989	1.938084512
302	1989-11-01 00:00:00+00	BTN	0.414204703	1.414204703	7.652325606	1.408275828
303	1989-12-01 00:00:00+00	BTN	0.535499972	1.535499972	10.82195486	0.995807626
304	1990-01-01 00:00:00+00	BTN	0.56109498	1.56109498	16.61711139	0.648523376
305	1990-02-01 00:00:00+00	BTN	0.727802864	1.727802864	25.94088917	0.415428519
306	1990-03-01 00:00:00+00	IPC	0.843200001	1.843200001	44.82074259	0.240437453
307	1990-04-01 00:00:00+00	IPC	0.447999999	1.447999999	82.61359279	0.130445667
308	1990-05-01 00:00:00+00	IPC	0.078700001	1.078700001	119.6244823	0.090086786
309	1990-06-01 00:00:00+00	IPC	0.095499999	1.095499999	129.0389291	0.083514217
310	1990-07-01 00:00:00+00	IPC	0.1292	1.1292	141.3621468	0.076233882
311	1990-08-01 00:00:00+00	IPC	0.1203	1.1203	159.6261362	0.067511408
312	1990-09-01 00:00:00+00	IPC	0.127600001	1.127600001	178.8291604	0.060261901
313	1990-10-01 00:00:00+00	IPC	0.142	1.142	201.6477614	0.053442622
314	1990-11-01 00:00:00+00	IPC	0.1558	1.1558	230.2817435	0.046797393
315	1990-12-01 00:00:00+00	IPC	0.183000001	1.183000001	266.1596392	0.040489179
316	1991-01-01 00:00:00+00	IPC	0.199100001	1.199100001	314.8668535	0.034225848
317	1991-02-01 00:00:00+00	IPC	0.218699997	1.218699997	377.5568443	0.028542947
318	1991-03-01 00:00:00+00	INPC	0.1179	1.1179	460.1285252	0.023420815
319	1991-04-01 00:00:00+00	INPC	0.0501	1.0501	514.3776783	0.020950725
320	1991-05-01 00:00:00+00	INPC	0.0668	1.0668	540.148	0.019951171
321	1991-06-01 00:00:00+00	INPC	0.1083	1.1083	576.2298864	0.018701885
322	1991-07-01 00:00:00+00	INPC	0.1214	1.1214	638.6355831	0.016874389
323	1991-08-01 00:00:00+00	INPC	0.1562	1.1562	716.1659429	0.015047609
324	1991-09-01 00:00:00+00	INPC	0.1562	1.1562	828.0310632	0.013014711
325	1991-10-01 00:00:00+00	INPC	0.2108	1.2108	957.3695153	0.011256453
326	1991-11-01 00:00:00+00	INPC	0.2648	1.2648	1159.183009	0.009296707
327	1991-12-01 00:00:00+00	IPCA	0.2288	1.2288	1466.13467	0.007350338
328	1992-01-01 00:00:00+00	UFIR	0.25600448	1.25600448	1801.586282	0.00598172
329	1992-02-01 00:00:00+00	UFIR	0.261004647	1.261004647	2262.800442	0.004762499
330	1992-03-01 00:00:00+00	UFIR	0.220295228	1.220295228	2853.401872	0.00377675
331	1992-04-01 00:00:00+00	UFIR	0.198299849	1.198299849	3481.992689	0.003094948
332	1992-05-01 00:00:00+00	UFIR	0.234496999	1.234496999	4172.471315	0.002582782
333	1992-06-01 00:00:00+00	UFIR	0.23269963	1.23269963	5150.903316	0.002092174
334	1992-07-01 00:00:00+00	UFIR	0.210100325	1.210100325	6349.516614	0.001697229
335	1992-08-01 00:00:00+00	UFIR	0.231398186	1.231398186	7683.552118	0.001402552
336	1992-09-01 00:00:00+00	UFIR	0.233300251	1.233300251	9461.512144	0.001138992
337	1992-10-01 00:00:00+00	UFIR	0.254799402	1.254799402	11668.8853	0.000923532
338	1992-11-01 00:00:00+00	UFIR	0.236999035	1.236999035	14642.1103	0.000735999
339	1992-12-01 00:00:00+00	UFIR	0.23490011	1.23490011	18112.2763	0.000594988
340	1993-01-01 00:00:00+00	UFIR	0.294700749	1.294700749	22366.85199	0.000481811
341	1993-02-01 00:00:00+00	UFIR	0.267200378	1.267200378	28958.38003	0.00037214
342	1993-03-01 00:00:00+00	UFIR	0.25960045	1.25960045	36696.07011	0.000293671
343	1993-04-01 00:00:00+00	UFIR	0.273401817	1.273401817	46222.38642	0.000233146
344	1993-05-01 00:00:00+00	UFIR	0.288099882	1.288099882	58859.67088	0.000183089
345	1993-06-01 00:00:00+00	UFIR	0.303398349	1.303398349	75817.13511	0.000142139
346	1993-07-01 00:00:00+00	UFIR	0.306576	1.306576	98819.92874	0.000109053
347	1993-08-01 00:00:00+00	UFIR	0.319934568	1.319934568	129.1157472	0.08346453
348	1993-09-01 00:00:00+00	UFIR	0.343838528	1.343838528	170.424338	0.063233839
349	1993-10-01 00:00:00+00	UFIR	0.351646912	1.351646912	229.0227915	0.047054641
350	1993-11-01 00:00:00+00	UFIR	0.339019389	1.339019389	309.5579491	0.03481282
351	1993-12-01 00:00:00+00	UFIR	0.366892352	1.366892352	414.5040957	0.025998742
352	1994-01-01 00:00:00+00	UFIR	0.391702625	1.391702625	566.5824784	0.019020329
353	1994-02-01 00:00:00+00	UFIR	0.396984517	1.396984517	788.5143224	0.013666949
354	1994-03-01 00:00:00+00	UFIR	0.436311908	1.436311908	1101.5423	0.009783179
355	1994-04-01 00:00:00+00	UFIR	0.412499564	1.412499564	1582.158322	0.006811319
356	1994-05-01 00:00:00+00	UFIR	0.442096538	1.442096538	2234.797941	0.004822174
357	1994-06-01 00:00:00+00	UFIR	0.446501	1.446501	3222.794374	0.003343864
358	1994-07-01 00:00:00+00	UFIR	0.052153791	1.052153791	1.695191013	6.357150965
359	1994-08-01 00:00:00+00	UFIR	0.050076129	1.050076129	1.783601651	6.042035886
360	1994-09-01 00:00:00+00	UFIR	0.016271951	1.016271951	1.872917518	5.75390271
361	1994-10-01 00:00:00+00	UFIR	0.019023462	1.019023462	1.90339354	5.661774591
362	1994-11-01 00:00:00+00	UFIR	0.029558183	1.029558183	1.939602675	5.556078737
363	1994-12-01 00:00:00+00	UFIR	0.022514355	1.022514355	1.996933806	5.39656605
364	1995-01-01 00:00:00+00	UFIR	0.0	1.0	2.041893482	5.277741114
365	1995-02-01 00:00:00+00	UFIR	0.0	1.0	2.041893482	5.277741114
366	1995-03-01 00:00:00+00	UFIR	0.043446136	1.043446136	2.041893482	5.277741114
367	1995-04-01 00:00:00+00	UFIR	0.0	1.0	2.130605863	5.057990953
368	1995-05-01 00:00:00+00	UFIR	0.0	1.0	2.130605863	5.057990953
369	1995-06-01 00:00:00+00	UFIR	0.071236369	1.071236369	2.130605863	5.057990953
370	1995-07-01 00:00:00+00	UFIR	0.0	1.0	2.282382488	4.721638567
371	1995-08-01 00:00:00+00	UFIR	0.0	1.0	2.282382488	4.721638567
372	1995-09-01 00:00:00+00	UFIR	0.051295611	1.051295611	2.282382488	4.721638567
373	1995-10-01 00:00:00+00	UFIR	0.0	1.0	2.399458692	4.491256806
374	1995-11-01 00:00:00+00	UFIR	0.0	1.0	2.399458692	4.491256806
375	1995-12-01 00:00:00+00	UFIR	0.042127767	1.042127767	2.399458692	4.491256806
376	1996-01-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	4.30969882
377	1996-02-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	4.30969882
378	1996-03-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	4.30969882
379	1996-04-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	4.30969882
380	1996-05-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	4.30969882
381	1996-06-01 00:00:00+00	UFIR	0.067575721	1.067575721	2.500542528	4.30969882
382	1996-07-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	4.03690224
383	1996-08-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	4.03690224
384	1996-09-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	4.03690224
385	1996-10-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	4.03690224
386	1996-11-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	4.03690224
387	1996-12-01 00:00:00+00	UFIR	0.029501526	1.029501526	2.669518492	4.03690224
388	1997-01-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.921220259
389	1997-02-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.921220259
390	1997-03-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.921220259
391	1997-04-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.921220259
392	1997-05-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.921220259
393	1997-06-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.921220259
394	1997-07-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.921220259
395	1997-08-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.921220259
396	1997-09-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.921220259
397	1997-10-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.921220259
398	1997-11-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.921220259
399	1997-12-01 00:00:00+00	UFIR	0.055226175	1.055226175	2.748273361	3.921220259
400	1998-01-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.715999804
401	1998-02-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.715999804
402	1998-03-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.715999804
403	1998-04-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.715999804
404	1998-05-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.715999804
405	1998-06-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.715999804
406	1998-07-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.715999804
407	1998-08-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.715999804
408	1998-09-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.715999804
409	1998-10-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.715999804
410	1998-11-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	3.715999804
411	1998-12-01 00:00:00+00	UFIR	0.016543544	1.016543544	2.900049986	3.715999804
412	1999-01-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.655524475
413	1999-02-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.655524475
414	1999-03-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.655524475
415	1999-04-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.655524475
416	1999-05-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.655524475
417	1999-06-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.655524475
418	1999-07-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.655524475
419	1999-08-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.655524475
420	1999-09-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.655524475
421	1999-10-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.655524475
422	1999-11-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	3.655524475
423	1999-12-01 00:00:00+00	UFIR	0.08915046	1.08915046	2.948027091	3.655524475
424	2000-01-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.356308065
425	2000-02-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.356308065
426	2000-03-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.356308065
427	2000-04-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.356308065
428	2000-05-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.356308065
429	2000-06-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.356308065
430	2000-07-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.356308065
431	2000-08-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.356308065
432	2000-09-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.356308065
433	2000-10-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.356308065
434	2000-11-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	3.356308065
435	2000-12-01 00:00:00+00	IPCA-E	0.06035557	1.06035557	3.210845063	3.356308065
436	2001-01-01 00:00:00+00	IPCA-E	0.0063	1.0063	3.404637447	3.165266595
437	2001-02-01 00:00:00+00	IPCA-E	0.005	1.005	3.426086663	3.145450259
438	2001-03-01 00:00:00+00	IPCA-E	0.0036	1.0036	3.443217097	3.129801252
439	2001-04-01 00:00:00+00	IPCA-E	0.005	1.005	3.455612678	3.118574385
440	2001-05-01 00:00:00+00	IPCA-E	0.0049	1.0049	3.472890742	3.103059089
441	2001-06-01 00:00:00+00	IPCA-E	0.0038	1.0038	3.489907906	3.087928241
442	2001-07-01 00:00:00+00	IPCA-E	0.0094	1.0094	3.503169556	3.076238534
443	2001-08-01 00:00:00+00	IPCA-E	0.0118	1.0118	3.53609935	3.047591177
444	2001-09-01 00:00:00+00	IPCA-E	0.0038	1.0038	3.577825322	3.012048999
445	2001-10-01 00:00:00+00	IPCA-E	0.0037	1.0037	3.591421059	3.000646542
446	2001-11-01 00:00:00+00	IPCA-E	0.0099	1.0099	3.604709316	2.989585077
447	2001-12-01 00:00:00+00	IPCA-E	0.0055	1.0055	3.640395939	2.960278322
448	2002-01-01 00:00:00+00	IPCA-E	0.0062	1.0062	3.660418116	2.94408585
449	2002-02-01 00:00:00+00	IPCA-E	0.0044	1.0044	3.683112709	2.925944991
450	2002-03-01 00:00:00+00	IPCA-E	0.004	1.004	3.699318405	2.913127231
451	2002-04-01 00:00:00+00	IPCA-E	0.0078	1.0078	3.714115678	2.901521146
452	2002-05-01 00:00:00+00	IPCA-E	0.0042	1.0042	3.743085781	2.879064444
453	2002-06-01 00:00:00+00	IPCA-E	0.0033	1.0033	3.758806741	2.867022948
454	2002-07-01 00:00:00+00	IPCA-E	0.0077	1.0077	3.771210803	2.857592891
455	2002-08-01 00:00:00+00	IPCA-E	0.01	1.01	3.800249126	2.835757558
456	2002-09-01 00:00:00+00	IPCA-E	0.0062	1.0062	3.838251618	2.80768075
457	2002-10-01 00:00:00+00	IPCA-E	0.009	1.009	3.862048778	2.790380392
458	2002-11-01 00:00:00+00	IPCA-E	0.0208	1.0208	3.896807217	2.765490973
459	2002-12-01 00:00:00+00	IPCA-E	0.0305	1.0305	3.977860807	2.709140843
460	2003-01-01 00:00:00+00	IPCA-E	0.0198	1.0198	4.099185561	2.628957636
461	2003-02-01 00:00:00+00	IPCA-E	0.0219	1.0219	4.180349435	2.57791492
462	2003-03-01 00:00:00+00	IPCA-E	0.0114	1.0114	4.271899088	2.52266848
463	2003-04-01 00:00:00+00	IPCA-E	0.0114	1.0114	4.320598738	2.49423421
464	2003-05-01 00:00:00+00	IPCA-E	0.0085	1.0085	4.369853563	2.466120437
465	2003-06-01 00:00:00+00	IPCA-E	0.0022	1.0022	4.406997319	2.445335089
466	2003-07-01 00:00:00+00	IPCA-E	-0.0018	0.9982	4.416692713	2.439967161
467	2003-08-01 00:00:00+00	IPCA-E	0.0027	1.0027	4.408742666	2.444367022
468	2003-09-01 00:00:00+00	IPCA-E	0.0057	1.0057	4.420646271	2.437785003
469	2003-10-01 00:00:00+00	IPCA-E	0.0066	1.0066	4.445843955	2.423968383
470	2003-11-01 00:00:00+00	IPCA-E	0.0017	1.0017	4.475186525	2.408075087
471	2003-12-01 00:00:00+00	IPCA-E	0.0046	1.0046	4.482794342	2.403988307
472	2004-01-01 00:00:00+00	IPCA-E	0.0068	1.0068	4.503415196	2.392980596
473	2004-02-01 00:00:00+00	IPCA-E	0.009	1.009	4.534038419	2.376818232
474	2004-03-01 00:00:00+00	IPCA-E	0.004	1.004	4.574844765	2.355617673
475	2004-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	4.593144144	2.346232742
476	2004-05-01 00:00:00+00	IPCA-E	0.0054	1.0054	4.602789747	2.341315979
477	2004-06-01 00:00:00+00	IPCA-E	0.0056	1.0056	4.627644811	2.328740779
478	2004-07-01 00:00:00+00	IPCA-E	0.0093	1.0093	4.653559622	2.315772453
479	2004-08-01 00:00:00+00	IPCA-E	0.0079	1.0079	4.696837727	2.294434215
480	2004-09-01 00:00:00+00	IPCA-E	0.0049	1.0049	4.733942745	2.276450258
481	2004-10-01 00:00:00+00	IPCA-E	0.0032	1.0032	4.757139064	2.265350042
482	2004-11-01 00:00:00+00	IPCA-E	0.0063	1.0063	4.772361909	2.258124045
483	2004-12-01 00:00:00+00	IPCA-E	0.0084	1.0084	4.802427789	2.243986928
484	2005-01-01 00:00:00+00	IPCA-E	0.0068	1.0068	4.842768183	2.225294454
485	2005-02-01 00:00:00+00	IPCA-E	0.0074	1.0074	4.875699006	2.210264655
486	2005-03-01 00:00:00+00	IPCA-E	0.0035	1.0035	4.911779179	2.194028841
487	2005-04-01 00:00:00+00	IPCA-E	0.0074	1.0074	4.928970406	2.186376523
488	2005-05-01 00:00:00+00	IPCA-E	0.0083	1.0083	4.965444787	2.170316184
489	2005-06-01 00:00:00+00	IPCA-E	0.0012	1.0012	5.006657979	2.152450842
490	2005-07-01 00:00:00+00	IPCA-E	0.0011	1.0011	5.012665969	2.149870997
491	2005-08-01 00:00:00+00	IPCA-E	0.0028	1.0028	5.018179901	2.147508737
492	2005-09-01 00:00:00+00	IPCA-E	0.0016	1.0016	5.032230805	2.141512502
493	2005-10-01 00:00:00+00	IPCA-E	0.0056	1.0056	5.040282374	2.138091555
494	2005-11-01 00:00:00+00	IPCA-E	0.0078	1.0078	5.068507956	2.12618492
495	2005-12-01 00:00:00+00	IPCA-E	0.0038	1.0038	5.108042317	2.109729033
496	2006-01-01 00:00:00+00	IPCA-E	0.0051	1.0051	5.127452878	2.101742412
497	2006-02-01 00:00:00+00	IPCA-E	0.0052	1.0052	5.153602888	2.091077915
498	2006-03-01 00:00:00+00	IPCA-E	0.0037	1.0037	5.180401623	2.08026056
499	2006-04-01 00:00:00+00	IPCA-E	0.0017	1.0017	5.199569109	2.07259197
500	2006-05-01 00:00:00+00	IPCA-E	0.0027	1.0027	5.208408377	2.069074543
501	2006-06-01 00:00:00+00	IPCA-E	-0.0015	0.9985	5.222471079	2.063503085
502	2006-07-01 00:00:00+00	IPCA-E	-0.0002	0.9998	5.214637373	2.066602989
503	2006-08-01 00:00:00+00	IPCA-E	0.0019	1.0019	5.213594445	2.067016392
504	2006-09-01 00:00:00+00	IPCA-E	0.0005	1.0005	5.223500274	2.063096509
505	2006-10-01 00:00:00+00	IPCA-E	0.0029	1.0029	5.226112024	2.062065476
506	2006-11-01 00:00:00+00	IPCA-E	0.0037	1.0037	5.24126775	2.056102778
507	2006-12-01 00:00:00+00	IPCA-E	0.0035	1.0035	5.26066044	2.048523242
508	2007-01-01 00:00:00+00	IPCA-E	0.0052	1.0052	5.279072752	2.041378418
509	2007-02-01 00:00:00+00	IPCA-E	0.0046	1.0046	5.30652393	2.030818163
510	2007-03-01 00:00:00+00	IPCA-E	0.0041	1.0041	5.33093394	2.021519175
511	2007-04-01 00:00:00+00	IPCA-E	0.0022	1.0022	5.352790769	2.01326479
512	2007-05-01 00:00:00+00	IPCA-E	0.0026	1.0026	5.364566909	2.00884533
513	2007-06-01 00:00:00+00	IPCA-E	0.0029	1.0029	5.378514783	2.003635877
514	2007-07-01 00:00:00+00	IPCA-E	0.0024	1.0024	5.394112476	1.997842134
515	2007-08-01 00:00:00+00	IPCA-E	0.0042	1.0042	5.407058346	1.993058793
516	2007-09-01 00:00:00+00	IPCA-E	0.0029	1.0029	5.429767991	1.984722957
517	2007-10-01 00:00:00+00	IPCA-E	0.0024	1.0024	5.445514318	1.978983903
518	2007-11-01 00:00:00+00	IPCA-E	0.0023	1.0023	5.458583552	1.974245714
519	2007-12-01 00:00:00+00	IPCA-E	0.007	1.007	5.471138294	1.969715368
520	2008-01-01 00:00:00+00	IPCA-E	0.007	1.007	5.509436263	1.956023206
521	2008-02-01 00:00:00+00	IPCA-E	0.0064	1.0064	5.548002316	1.942426222
522	2008-03-01 00:00:00+00	IPCA-E	0.0023	1.0023	5.583509531	1.93007375
523	2008-04-01 00:00:00+00	IPCA-E	0.0059	1.0059	5.596351603	1.925644767
524	2008-05-01 00:00:00+00	IPCA-E	0.0056	1.0056	5.629370077	1.914350102
525	2008-06-01 00:00:00+00	IPCA-E	0.009	1.009	5.66089455	1.903689441
526	2008-07-01 00:00:00+00	IPCA-E	0.0063	1.0063	5.711842601	1.886709059
527	2008-08-01 00:00:00+00	IPCA-E	0.0035	1.0035	5.747827209	1.874897207
528	2008-09-01 00:00:00+00	IPCA-E	0.0026	1.0026	5.767944604	1.868357954
529	2008-10-01 00:00:00+00	IPCA-E	0.003	1.003	5.78294126	1.863512821
530	2008-11-01 00:00:00+00	IPCA-E	0.0049	1.0049	5.800290084	1.857939004
531	2008-12-01 00:00:00+00	IPCA-E	0.0029	1.0029	5.828711506	1.848879494
532	2009-01-01 00:00:00+00	IPCA-E	0.004	1.004	5.845614769	1.843533248
533	2009-02-01 00:00:00+00	IPCA-E	0.0063	1.0063	5.868997228	1.836188494
534	2009-03-01 00:00:00+00	IPCA-E	0.0011	1.0011	5.905971911	1.824692929
535	2009-04-01 00:00:00+00	IPCA-E	0.0036	1.0036	5.91246848	1.822687972
536	2009-05-01 00:00:00+00	IPCA-E	0.0059	1.0059	5.933753366	1.816149832
537	2009-06-01 00:00:00+00	IPCA-E	0.0038	1.0038	5.968762511	1.805497398
538	2009-07-01 00:00:00+00	TR	0.001051	1.001051	5.991443809	1.79866248
539	2009-08-01 00:00:00+00	TR	0.000197	1.000197	5.997740816	1.796774071
540	2009-09-01 00:00:00+00	TR	0.0	1.0	5.998922371	1.796420176
541	2009-10-01 00:00:00+00	TR	0.0	1.0	5.998922371	1.796420176
542	2009-11-01 00:00:00+00	TR	0.0	1.0	5.998922371	1.796420176
543	2009-12-01 00:00:00+00	TR	0.000533	1.000533	5.998922371	1.796420176
544	2010-01-01 00:00:00+00	TR	0.0	1.0	6.002119797	1.795463194
545	2010-02-01 00:00:00+00	TR	0.0	1.0	6.002119797	1.795463194
546	2010-03-01 00:00:00+00	TR	0.000792	1.000792	6.002119797	1.795463194
547	2010-04-01 00:00:00+00	TR	0.0	1.0	6.006873476	1.794042312
548	2010-05-01 00:00:00+00	TR	0.00051	1.00051	6.006873476	1.794042312
549	2010-06-01 00:00:00+00	TR	0.000589	1.000589	6.009936981	1.793127817
550	2010-07-01 00:00:00+00	TR	0.001151	1.001151	6.013476834	1.792072287
551	2010-08-01 00:00:00+00	TR	0.000909	1.000909	6.020398346	1.790011983
552	2010-09-01 00:00:00+00	TR	0.000702	1.000702	6.025870888	1.78838634
553	2010-10-01 00:00:00+00	TR	0.000472	1.000472	6.030101049	1.787131773
554	2010-11-01 00:00:00+00	TR	0.000336	1.000336	6.032947257	1.786288645
555	2010-12-01 00:00:00+00	TR	0.001406	1.001406	6.034974327	1.785688654
556	2011-01-01 00:00:00+00	TR	0.000715	1.000715	6.043459501	1.7831815
557	2011-02-01 00:00:00+00	TR	0.000524	1.000524	6.047780575	1.781907437
558	2011-03-01 00:00:00+00	TR	0.001212	1.001212	6.050949612	1.780974206
559	2011-04-01 00:00:00+00	TR	0.000369	1.000369	6.058283363	1.778818278
560	2011-05-01 00:00:00+00	TR	0.00157	1.00157	6.060518869	1.778162137
561	2011-06-01 00:00:00+00	TR	0.001114	1.001114	6.070033884	1.775374798
562	2011-07-01 00:00:00+00	TR	0.001229	1.001229	6.076795902	1.773399231
563	2011-08-01 00:00:00+00	TR	0.002076	1.002076	6.084264284	1.771222399
564	2011-09-01 00:00:00+00	TR	0.001003	1.001003	6.096895217	1.767552959
565	2011-10-01 00:00:00+00	TR	0.00062	1.00062	6.103010402	1.76578188
566	2011-11-01 00:00:00+00	TR	0.000645	1.000645	6.106794269	1.764687773
567	2011-12-01 00:00:00+00	TR	0.000937	1.000937	6.110733151	1.763550284
568	2012-01-01 00:00:00+00	TR	0.000864	1.000864	6.116458908	1.761899384
569	2012-02-01 00:00:00+00	TR	0.0	1.0	6.121743529	1.760378417
570	2012-03-01 00:00:00+00	TR	0.001068	1.001068	6.121743529	1.760378417
571	2012-04-01 00:00:00+00	TR	0.000227	1.000227	6.128281551	1.758500338
572	2012-05-01 00:00:00+00	TR	0.000468	1.000468	6.129672671	1.758101249
573	2012-06-01 00:00:00+00	TR	0.0	1.0	6.132541357	1.757278843
574	2012-07-01 00:00:00+00	TR	0.000144	1.000144	6.132541357	1.757278843
575	2012-08-01 00:00:00+00	TR	0.000123	1.000123	6.133424443	1.757025831
576	2012-09-01 00:00:00+00	TR	0.0	1.0	6.134178855	1.756809744
577	2012-10-01 00:00:00+00	TR	0.0	1.0	6.134178855	1.756809744
578	2012-11-01 00:00:00+00	TR	0.0	1.0	6.134178855	1.756809744
579	2012-12-01 00:00:00+00	TR	0.0	1.0	6.134178855	1.756809744
580	2013-01-01 00:00:00+00	TR	0.0	1.0	6.134178855	1.756809744
581	2013-02-01 00:00:00+00	TR	0.0	1.0	6.134178855	1.756809744
582	2013-03-01 00:00:00+00	TR	0.0	1.0	6.134178855	1.756809744
583	2013-04-01 00:00:00+00	TR	0.0	1.0	6.134178855	1.756809744
584	2013-05-01 00:00:00+00	TR	0.0	1.0	6.134178855	1.756809744
585	2013-06-01 00:00:00+00	TR	0.0	1.0	6.134178855	1.756809744
586	2013-07-01 00:00:00+00	TR	0.000209	1.000209	6.134178855	1.756809744
587	2013-08-01 00:00:00+00	TR	0.0	1.0	6.135460898	1.756442647
588	2013-09-01 00:00:00+00	TR	0.000079	1.000079	6.135460898	1.756442647
589	2013-10-01 00:00:00+00	TR	0.00092	1.00092	6.135945599	1.756303899
590	2013-11-01 00:00:00+00	TR	0.000207	1.000207	6.141590669	1.754689585
591	2013-12-01 00:00:00+00	TR	0.000494	1.000494	6.142861979	1.754326439
592	2014-01-01 00:00:00+00	IPCA-E	0.0067	1.0067	6.145896552	1.75346023
593	2014-02-01 00:00:00+00	IPCA-E	0.007	1.007	6.187074059	1.741790235
594	2014-03-01 00:00:00+00	IPCA-E	0.0073	1.0073	6.230383578	1.729682458
595	2014-04-01 00:00:00+00	IPCA-E	0.0078	1.0078	6.275865378	1.717147283
596	2014-05-01 00:00:00+00	IPCA-E	0.0058	1.0058	6.324817128	1.703857197
597	2014-06-01 00:00:00+00	IPCA-E	0.0047	1.0047	6.361501067	1.694031812
598	2014-07-01 00:00:00+00	IPCA-E	0.0017	1.0017	6.391400122	1.686107109
599	2014-08-01 00:00:00+00	IPCA-E	0.0014	1.0014	6.402265502	1.683245591
600	2014-09-01 00:00:00+00	IPCA-E	0.0039	1.0039	6.411228674	1.680892342
601	2014-10-01 00:00:00+00	IPCA-E	0.0048	1.0048	6.436232466	1.674362329
602	2014-11-01 00:00:00+00	IPCA-E	0.0038	1.0038	6.467126382	1.666363783
603	2014-12-01 00:00:00+00	IPCA-E	0.0079	1.0079	6.491701462	1.660055572
604	2015-01-01 00:00:00+00	IPCA-E	0.0089	1.0089	6.542985904	1.647043925
605	2015-02-01 00:00:00+00	IPCA-E	0.0133	1.0133	6.601218478	1.632514545
606	2015-03-01 00:00:00+00	IPCA-E	0.0124	1.0124	6.689014684	1.611087087
607	2015-04-01 00:00:00+00	IPCA-E	0.0107	1.0107	6.771958466	1.591354294
608	2015-05-01 00:00:00+00	IPCA-E	0.006	1.006	6.844418422	1.574507068
609	2015-06-01 00:00:00+00	IPCA-E	0.0099	1.0099	6.885484932	1.56511637
610	2015-07-01 00:00:00+00	IPCA-E	0.0059	1.0059	6.953651233	1.549773611
611	2015-08-01 00:00:00+00	IPCA-E	0.0043	1.0043	6.994677775	1.540683578
612	2015-09-01 00:00:00+00	IPCA-E	0.0039	1.0039	7.02475489	1.534087004
613	2015-10-01 00:00:00+00	IPCA-E	0.0066	1.0066	7.052151434	1.528127307
614	2015-11-01 00:00:00+00	IPCA-E	0.0085	1.0085	7.098695633	1.518107796
615	2015-12-01 00:00:00+00	IPCA-E	0.0118	1.0118	7.159034546	1.505312638
616	2016-01-01 00:00:00+00	IPCA-E	0.0092	1.0092	7.243511154	1.487757105
617	2016-02-01 00:00:00+00	IPCA-E	0.0142	1.0142	7.310151456	1.474194515
618	2016-03-01 00:00:00+00	IPCA-E	0.0043	1.0043	7.413955607	1.453554048
619	2016-04-01 00:00:00+00	IPCA-E	0.0051	1.0051	7.445835616	1.447330526
620	2016-05-01 00:00:00+00	IPCA-E	0.0086	1.0086	7.483809378	1.439986595
621	2016-06-01 00:00:00+00	IPCA-E	0.004	1.004	7.548170138	1.427708303
622	2016-07-01 00:00:00+00	IPCA-E	0.0054	1.0054	7.578362819	1.422020222
623	2016-08-01 00:00:00+00	IPCA-E	0.0045	1.0045	7.619285978	1.414382557
624	2016-09-01 00:00:00+00	IPCA-E	0.0023	1.0023	7.653572765	1.408046348
625	2016-10-01 00:00:00+00	IPCA-E	0.0019	1.0019	7.671175982	1.404815273
626	2016-11-01 00:00:00+00	IPCA-E	0.0026	1.0026	7.685751217	1.402151186
627	2016-12-01 00:00:00+00	IPCA-E	0.0019	1.0019	7.70573417	1.398515047
628	2017-01-01 00:00:00+00	IPCA-E	0.0031	1.0031	7.720375065	1.395862907
629	2017-02-01 00:00:00+00	IPCA-E	0.0054	1.0054	7.744308228	1.391549105
630	2017-03-01 00:00:00+00	IPCA-E	0.0015	1.0015	7.786127492	1.384075099
631	2017-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	7.797806683	1.382002096
632	2017-05-01 00:00:00+00	IPCA-E	0.0024	1.0024	7.814182077	1.379105974
633	2017-06-01 00:00:00+00	IPCA-E	0.0016	1.0016	7.832936114	1.375804044
634	2017-07-01 00:00:00+00	IPCA-E	-0.0018	0.9982	7.845468812	1.373606274
635	2017-08-01 00:00:00+00	IPCA-E	0.0035	1.0035	7.831346968	1.376083224
636	2017-09-01 00:00:00+00	IPCA-E	0.0011	1.0011	7.858756683	1.371283731
637	2017-10-01 00:00:00+00	IPCA-E	0.0034	1.0034	7.867401315	1.369776976
638	2017-11-01 00:00:00+00	IPCA-E	0.0032	1.0032	7.894150479	1.365135515
639	2017-12-01 00:00:00+00	IPCA-E	0.0035	1.0035	7.919411761	1.360781016
640	2018-01-01 00:00:00+00	IPCA-E	0.0039	1.0039	7.947129702	1.356034894
641	2018-02-01 00:00:00+00	IPCA-E	0.0038	1.0038	7.978123508	1.350766903
642	2018-03-01 00:00:00+00	IPCA-E	0.001	1.001	8.008440377	1.34565342
643	2018-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	8.016448818	1.344309111
644	2018-05-01 00:00:00+00	IPCA-E	0.0014	1.0014	8.03328336	1.341491978
645	2018-06-01 00:00:00+00	IPCA-E	0.0111	1.0111	8.044529957	1.339616514
646	2018-07-01 00:00:00+00	IPCA-E	0.0064	1.0064	8.133824239	1.324910013
647	2018-08-01 00:00:00+00	IPCA-E	0.0013	1.0013	8.185880715	1.316484512
648	2018-09-01 00:00:00+00	IPCA-E	0.0009	1.0009	8.196522359	1.314775305
649	2018-10-01 00:00:00+00	IPCA-E	0.0058	1.0058	8.20389923	1.313593071
650	2018-11-01 00:00:00+00	IPCA-E	0.0019	1.0019	8.251481845	1.306018165
651	2018-12-01 00:00:00+00	IPCA-E	-0.0016	0.9984	8.267159661	1.303541437
652	2019-01-01 00:00:00+00	IPCA-E	0.003	1.003	8.253932205	1.305630445
653	2019-02-01 00:00:00+00	IPCA-E	0.0034	1.0034	8.278694002	1.30172527
654	2019-03-01 00:00:00+00	IPCA-E	0.0054	1.0054	8.306841561	1.297314401
655	2019-04-01 00:00:00+00	IPCA-E	0.0072	1.0072	8.351698506	1.290346529
656	2019-05-01 00:00:00+00	IPCA-E	0.0035	1.0035	8.411830735	1.281122448
657	2019-06-01 00:00:00+00	IPCA-E	0.0006	1.0006	8.441272143	1.276654158
658	2019-07-01 00:00:00+00	IPCA-E	0.0009	1.0009	8.446336906	1.275888625
659	2019-08-01 00:00:00+00	IPCA-E	0.0008	1.0008	8.453938609	1.274741358
660	2019-09-01 00:00:00+00	IPCA-E	0.0009	1.0009	8.46070176	1.27372238
661	2019-10-01 00:00:00+00	IPCA-E	0.0009	1.0009	8.468316392	1.272577061
662	2019-11-01 00:00:00+00	IPCA-E	0.0014	1.0014	8.475937876	1.271432771
663	2019-12-01 00:00:00+00	IPCA-E	0.0105	1.0105	8.487804189	1.269655254
664	2020-01-01 00:00:00+00	IPCA-E	0.0071	1.0071	8.576926133	1.256462399
665	2020-02-01 00:00:00+00	IPCA-E	0.0022	1.0022	8.637822309	1.247604407
666	2020-03-01 00:00:00+00	IPCA-E	0.0002	1.0002	8.656825518	1.244865703
667	2020-04-01 00:00:00+00	IPCA-E	-0.0001	0.9999	8.658556883	1.244616779
668	2020-05-01 00:00:00+00	IPCA-E	-0.0059	0.9941	8.657691027	1.244741253
669	2020-06-01 00:00:00+00	IPCA-E	0.0002	1.0002	8.60661065	1.252128813
670	2020-07-01 00:00:00+00	IPCA-E	0.003	1.003	8.608331972	1.251878438
671	2020-08-01 00:00:00+00	IPCA-E	0.0023	1.0023	8.634156968	1.248134036
672	2020-09-01 00:00:00+00	IPCA-E	0.0045	1.0045	8.654015529	1.245269915
673	2020-10-01 00:00:00+00	IPCA-E	0.0094	1.0094	8.692958599	1.239691304
674	2020-11-01 00:00:00+00	IPCA-E	0.0081	1.0081	8.77467241	1.228146725
675	2020-12-01 00:00:00+00	IPCA-E	0.0106	1.0106	8.845747257	1.218278668
676	2021-01-01 00:00:00+00	IPCA-E	0.0078	1.0078	8.939512178	1.205500364
677	2021-02-01 00:00:00+00	IPCA-E	0.0048	1.0048	9.009240373	1.196170236
678	2021-03-01 00:00:00+00	IPCA-E	0.0093	1.0093	9.052484726	1.190456047
679	2021-04-01 00:00:00+00	IPCA-E	0.006	1.006	9.136672834	1.179486819
680	2021-05-01 00:00:00+00	IPCA-E	0.0044	1.0044	9.191492871	1.172452107
681	2021-06-01 00:00:00+00	IPCA-E	0.0083	1.0083	9.23193544	1.167315917
682	2021-07-01 00:00:00+00	IPCA-E	0.0072	1.0072	9.308560504	1.157706949
683	2021-08-01 00:00:00+00	IPCA-E	0.0089	1.0089	9.37558214	1.149431046
684	2021-09-01 00:00:00+00	IPCA-E	0.0114	1.0114	9.459024821	1.139291352
685	2021-10-01 00:00:00+00	IPCA-E	0.012	1.012	9.566857704	1.126449824
686	2021-11-01 00:00:00+00	IPCA-E	0.0117	1.0117	9.681659996	1.113092712
687	2021-12-01 00:00:00+00	IPCA-E	0.0078	1.0078	9.794935418	1.100220136
688	2022-01-01 00:00:00+00	IPCA-E	0.0058	1.0058	9.871335914	1.091704839
689	2022-02-01 00:00:00+00	IPCA-E	0.0099	1.0099	9.928589663	1.085409464
690	2022-03-01 00:00:00+00	IPCA-E	0.0095	1.0095	10.0268827	1.074769248
691	2022-04-01 00:00:00+00	IPCA-E	0.0173	1.0173	10.12213809	1.064655025
692	2022-05-01 00:00:00+00	IPCA-E	0.0059	1.0059	10.29725107	1.046549715
693	2022-06-01 00:00:00+00	IPCA-E	0.0069	1.0069	10.35800486	1.040411289
694	2022-07-01 00:00:00+00	IPCA-E	0.0013	1.0013	10.42947509	1.033281645
695	2022-08-01 00:00:00+00	IPCA-E	-0.0073	0.9927	10.44303341	1.031940123
696	2022-09-01 00:00:00+00	IPCA-E	-0.0037	0.9963	10.36679926	1.039528683
697	2022-10-01 00:00:00+00	IPCA-E	0.0016	1.0016	10.32844211	1.043389223
698	2022-11-01 00:00:00+00	IPCA-E	0.0053	1.0053	10.34496761	1.041722467
699	2022-12-01 00:00:00+00	IPCA-E	0.0052	1.0052	10.39979594	1.036230445
700	2023-01-01 00:00:00+00	IPCA-E	0.0055	1.0055	10.45387488	1.030869922
701	2023-02-01 00:00:00+00	IPCA-E	0.0076	1.0076	10.51137119	1.025231151
702	2023-03-01 00:00:00+00	IPCA-E	0.0069	1.0069	10.59125761	1.017498164
703	2023-04-01 00:00:00+00	IPCA-E	0.0057	1.0057	10.66433729	1.010525538
704	2023-05-01 00:00:00+00	IPCA-E	0.0051	1.0051	10.72512401	1.004798189
705	2023-06-01 00:00:00+00	IPCA-E	0.0004	1.0004	10.77982215	0.99969972
706	2023-07-01 00:00:00+00	IPCA-E	-0.0007	0.9993	10.78413408	0.9993
707	2023-08-01 00:00:00+00	IPCA-E	0	1.0	10.77658518	1.0
\.


--
-- Data for Name: t208_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t208_tabela_pnep (id, data, indexador, variacao_mensal, numero_indice, fator_vigente, indice_correcao) FROM stdin;
982	1964-10-01 00:00:00+00	ORTN	0.0	1.0	1620.6956	0.005171611
983	1964-11-01 00:00:00+00	ORTN	0.0	1.0	1620.6956	0.005171611
984	1964-12-01 00:00:00+00	ORTN	0.130000001	1.130000001	1620.6956	0.005171611
985	1965-01-01 00:00:00+00	ORTN	0.0	1.0	1831.38603	0.004576647
986	1965-02-01 00:00:00+00	ORTN	0.0	1.0	1831.38603	0.004576647
987	1965-03-01 00:00:00+00	ORTN	0.185840713	1.185840713	1831.38603	0.004576647
988	1965-04-01 00:00:00+00	ORTN	0.0	1.0	2171.732116	0.003859411
989	1965-05-01 00:00:00+00	ORTN	0.0	1.0	2171.732116	0.003859411
990	1965-06-01 00:00:00+00	ORTN	0.134328344	1.134328344	2171.732116	0.003859411
991	1965-07-01 00:00:00+00	ORTN	0.0	1.0	2463.457294	0.003402376
992	1965-08-01 00:00:00+00	ORTN	0.032894753	1.032894753	2463.457294	0.003402376
993	1965-09-01 00:00:00+00	ORTN	0.012738835	1.012738835	2544.492113	0.00329402
994	1965-10-01 00:00:00+00	ORTN	0.009433975	1.009433975	2576.905977	0.003252585
995	1965-11-01 00:00:00+00	ORTN	0.015576314	1.015576314	2601.216445	0.003222187
996	1965-12-01 00:00:00+00	ORTN	0.018404928	1.018404928	2641.73381	0.003172767
997	1966-01-01 00:00:00+00	ORTN	0.027108437	1.027108437	2690.354731	0.003115428
998	1966-02-01 00:00:00+00	ORTN	0.014662738	1.014662738	2763.286043	0.003033203
999	1966-03-01 00:00:00+00	ORTN	0.017341059	1.017341059	2803.803383	0.00298937
1000	1966-04-01 00:00:00+00	ORTN	0.038636354	1.038636354	2852.424302	0.002938415
1001	1966-05-01 00:00:00+00	ORTN	0.044310705	1.044310705	2962.631578	0.002829109
1002	1966-06-01 00:00:00+00	ORTN	0.040859093	1.040859093	3093.907873	0.002709068
1003	1966-07-01 00:00:00+00	ORTN	0.028183186	1.028183186	3220.322141	0.002602723
1004	1966-08-01 00:00:00+00	ORTN	0.028389642	1.028389642	3311.081079	0.002531381
1005	1966-09-01 00:00:00+00	ORTN	0.02855781	1.02855781	3405.081486	0.0024615
1006	1966-10-01 00:00:00+00	ORTN	0.026376703	1.026376703	3502.323156	0.002393156
1007	1966-11-01 00:00:00+00	ORTN	0.022993684	1.022993684	3594.702894	0.002331655
1008	1966-12-01 00:00:00+00	ORTN	0.023799027	1.023799027	3677.358356	0.002279247
1009	1967-01-01 00:00:00+00	ORTN	0.023676	1.023676	3764.875907	0.002226264
1010	1967-02-01 00:00:00+00	ORTN	0.021026072	1.021026072	3.854013109	2.174773832
1011	1967-03-01 00:00:00+00	ORTN	0.014827018	1.014827018	3.935047868	2.129988539
1012	1967-04-01 00:00:00+00	ORTN	0.015016234	1.015016234	3.993392894	2.098868577
1013	1967-05-01 00:00:00+00	ORTN	0.017992803	1.017992803	4.053358615	2.067817742
1014	1967-06-01 00:00:00+00	ORTN	0.028279654	1.028279654	4.126289898	2.03126951
1015	1967-07-01 00:00:00+00	ORTN	0.025210084	1.025210084	4.24297995	1.975405719
1016	1967-08-01 00:00:00+00	ORTN	0.015275708	1.015275708	4.349945831	1.926830169
1017	1967-09-01 00:00:00+00	ORTN	0.004770642	1.004770642	4.416394333	1.89783933
1018	1967-10-01 00:00:00+00	ORTN	0.006939372	1.006939372	4.43746337	1.888828405
1019	1967-11-01 00:00:00+00	ORTN	0.014145811	1.014145811	4.468256578	1.875811452
1020	1967-12-01 00:00:00+00	ORTN	0.018597997	1.018597997	4.53146369	1.8496467
1021	1968-01-01 00:00:00+00	ORTN	0.01755618	1.01755618	4.615739838	1.815875061
1022	1968-02-01 00:00:00+00	ORTN	0.014492754	1.014492754	4.696774597	1.784545263
1023	1968-03-01 00:00:00+00	ORTN	0.01462585	1.01462585	4.764843794	1.759051759
1024	1968-04-01 00:00:00+00	ORTN	0.018773047	1.018773047	4.834533686	1.733694996
1025	1968-05-01 00:00:00+00	ORTN	0.026653504	1.026653504	4.925292615	1.701748
1026	1968-06-01 00:00:00+00	ORTN	0.028525641	1.028525641	5.056568924	1.657568004
1027	1968-07-01 00:00:00+00	ORTN	0.022436896	1.022436896	5.200810794	1.61159619
1028	1968-08-01 00:00:00+00	ORTN	0.018287108	1.018287108	5.317500846	1.57623047
1029	1968-09-01 00:00:00+00	ORTN	0.014067644	1.014067644	5.414742556	1.547923428
1030	1968-10-01 00:00:00+00	ORTN	0.015053129	1.015053129	5.490915229	1.526449874
1031	1968-11-01 00:00:00+00	ORTN	0.016283803	1.016283803	5.573570683	1.503812787
1032	1968-12-01 00:00:00+00	ORTN	0.019170243	1.019170243	5.664329612	1.47971736
1033	1969-01-01 00:00:00+00	ORTN	0.018248175	1.018248175	5.772916188	1.451884383
1034	1969-02-01 00:00:00+00	ORTN	0.017645437	1.017645437	5.878261374	1.42586495
1035	1969-03-01 00:00:00+00	ORTN	0.014088323	1.014088323	5.981985865	1.401141201
1036	1969-04-01 00:00:00+00	ORTN	0.015495592	1.015495592	6.066262014	1.381675707
1037	1969-05-01 00:00:00+00	ORTN	0.012365167	1.012365167	6.160262333	1.360592521
1038	1969-06-01 00:00:00+00	ORTN	0.013513514	1.013513514	6.236435006	1.343974057
1039	1969-07-01 00:00:00+00	ORTN	0.006923077	1.006923077	6.320711155	1.326054403
1040	1969-08-01 00:00:00+00	ORTN	0.007384772	1.007384772	6.364469925	1.316937146
1041	1969-09-01 00:00:00+00	ORTN	0.009100101	1.009100101	6.411470084	1.307283158
1042	1969-10-01 00:00:00+00	ORTN	0.016282565	1.016282565	6.469815111	1.295494031
1043	1969-11-01 00:00:00+00	ORTN	0.020951442	1.020951442	6.575160296	1.274738026
1044	1969-12-01 00:00:00+00	ORTN	0.022452921	1.022452921	6.712919386	1.248578506
1045	1970-01-01 00:00:00+00	ORTN	0.022432113	1.022432113	6.863644036	1.221159899
1046	1970-02-01 00:00:00+00	ORTN	0.020092379	1.020092379	7.017610077	1.194367707
1047	1970-03-01 00:00:00+00	ORTN	0.0113199	1.0113199	7.158610557	1.170842693
1048	1970-04-01 00:00:00+00	ORTN	0.00917842	1.00917842	7.239645315	1.157737222
1049	1970-05-01 00:00:00+00	ORTN	0.00931677	1.00931677	7.306093817	1.147207669
1050	1970-06-01 00:00:00+00	ORTN	0.015384615	1.015384615	7.374163014	1.13661806
1051	1970-07-01 00:00:00+00	ORTN	0.008874459	1.008874459	7.487611676	1.119396574
1052	1970-08-01 00:00:00+00	ORTN	0.009440034	1.009440034	7.554060178	1.109549919
1053	1970-09-01 00:00:00+00	ORTN	0.011902232	1.011902232	7.625370765	1.099173682
1054	1970-10-01 00:00:00+00	ORTN	0.018903592	1.018903592	7.716129695	1.086244943
1055	1970-11-01 00:00:00+00	ORTN	0.021232736	1.021232736	7.86199226	1.066091975
1056	1970-12-01 00:00:00+00	ORTN	0.019580137	1.019580137	8.028923862	1.043926559
1057	1971-01-01 00:00:00+00	ORTN	0.018412196	1.018412196	8.186131294	1.02387887
1058	1971-02-01 00:00:00+00	ORTN	0.013219285	1.013219285	8.336855944	1.005367841
1059	1971-03-01 00:00:00+00	ORTN	0.009976976	1.009976976	8.447063216	0.992250992
1060	1971-04-01 00:00:00+00	ORTN	0.011588146	1.011588146	8.531339364	0.982449121
1061	1971-05-01 00:00:00+00	ORTN	0.0142723	1.0142723	8.63020177	0.971194774
1062	1971-06-01 00:00:00+00	ORTN	0.019811146	1.019811146	8.753374602	0.957528638
1063	1971-07-01 00:00:00+00	ORTN	0.019970951	1.019970951	8.926788985	0.93892741
1064	1971-08-01 00:00:00+00	ORTN	0.021003916	1.021003916	9.105065454	0.920543285
1065	1971-09-01 00:00:00+00	ORTN	0.02179219	1.02179219	9.296307483	0.901606027
1066	1971-10-01 00:00:00+00	ORTN	0.020133083	1.020133083	9.49889438	0.882377098
1067	1971-11-01 00:00:00+00	ORTN	0.016390701	1.016390701	9.69013641	0.864962732
1068	1971-12-01 00:00:00+00	ORTN	0.012341616	1.012341616	9.848964536	0.851014016
1069	1972-01-01 00:00:00+00	ORTN	0.012028609	1.012028609	9.970516673	0.84063917
1070	1972-02-01 00:00:00+00	ORTN	0.013331192	1.013331192	10.09044812	0.830647635
1071	1972-03-01 00:00:00+00	ORTN	0.011412268	1.011412268	10.22496582	0.819719793
1072	1972-04-01 00:00:00+00	ORTN	0.013320796	1.013320796	10.34165587	0.810470486
1073	1972-05-01 00:00:00+00	ORTN	0.016857408	1.016857408	10.47941496	0.799816296
1074	1972-06-01 00:00:00+00	ORTN	0.017946768	1.017946768	10.65607073	0.786556984
1075	1972-07-01 00:00:00+00	ORTN	0.014343344	1.014343344	10.84731276	0.772689702
1076	1972-08-01 00:00:00+00	ORTN	0.008395935	1.008395935	11.0028995	0.761763466
1077	1972-09-01 00:00:00+00	ORTN	0.007157464	1.007157464	11.09527912	0.755421001
1078	1972-10-01 00:00:00+00	ORTN	0.009572154	1.009572154	11.17469318	0.750052527
1079	1972-11-01 00:00:00+00	ORTN	0.006608246	1.006608246	11.28165906	0.742940982
1080	1972-12-01 00:00:00+00	ORTN	0.011417154	1.011417154	11.35621104	0.738063675
1081	1973-01-01 00:00:00+00	ORTN	0.00987724	1.00987724	11.48586666	0.72973221
1082	1973-02-01 00:00:00+00	ORTN	0.010479251	1.010479251	11.59931532	0.722594966
1083	1973-03-01 00:00:00+00	ORTN	0.012029867	1.012029867	11.72086746	0.715101241
1084	1973-04-01 00:00:00+00	ORTN	0.011476978	1.011476978	11.86186793	0.706600925
1085	1973-05-01 00:00:00+00	ORTN	0.012697555	1.012697555	11.99800633	0.6985833
1086	1973-06-01 00:00:00+00	ORTN	0.011071095	1.011071095	12.15035167	0.689824219
1087	1973-07-01 00:00:00+00	ORTN	0.008970976	1.008970976	12.28486937	0.682270735
1088	1973-08-01 00:00:00+00	ORTN	0.008368201	1.008368201	12.39507665	0.67620452
1089	1973-09-01 00:00:00+00	ORTN	0.009725104	1.009725104	12.49880114	0.670592865
1090	1973-10-01 00:00:00+00	ORTN	0.006806215	1.006806215	12.62035327	0.664134092
1091	1973-11-01 00:00:00+00	ORTN	0.008545918	1.008545918	12.70625012	0.65964441
1092	1973-12-01 00:00:00+00	ORTN	0.019602883	1.019602883	12.81483669	0.65405491
1093	1974-01-01 00:00:00+00	ORTN	0.010543289	1.010543289	13.06604444	0.641480051
1094	1974-02-01 00:00:00+00	ORTN	0.014974837	1.014974837	13.20380353	0.634787305
1095	1974-03-01 00:00:00+00	ORTN	0.012577095	1.012577095	13.40152835	0.625421716
1096	1974-04-01 00:00:00+00	ORTN	0.016362116	1.016362116	13.57008064	0.61765343
1097	1974-05-01 00:00:00+00	ORTN	0.021269095	1.021269095	13.79211588	0.607710009
1098	1974-06-01 00:00:00+00	ORTN	0.03325279	1.03325279	14.08546171	0.595053754
1099	1974-07-01 00:00:00+00	ORTN	0.043986637	1.043986637	14.55384261	0.57590336
1100	1974-08-01 00:00:00+00	ORTN	0.04768	1.04768	15.1940172	0.551638632
1101	1974-09-01 00:00:00+00	ORTN	0.037466911	1.037466911	15.91846794	0.526533514
1102	1974-10-01 00:00:00+00	ORTN	0.021589794	1.021589794	16.51488376	0.507518368
1103	1974-11-01 00:00:00+00	ORTN	0.012584054	1.012584054	16.8714367	0.496792716
1104	1974-12-01 00:00:00+00	ORTN	0.012807134	1.012807134	17.08374777	0.490618743
1105	1975-01-01 00:00:00+00	ORTN	0.015174223	1.015174223	17.30254161	0.484414778
1106	1975-02-01 00:00:00+00	ORTN	0.01660823	1.01660823	17.56509423	0.477174033
1107	1975-03-01 00:00:00+00	ORTN	0.018787439	1.018787439	17.85681936	0.469378487
1108	1975-04-01 00:00:00+00	ORTN	0.019955457	1.019955457	18.19230326	0.460722688
1109	1975-05-01 00:00:00+00	ORTN	0.023058782	1.023058782	18.55533898	0.451708636
1110	1975-06-01 00:00:00+00	ORTN	0.018270298	1.018270298	18.9832025	0.441527548
1111	1975-07-01 00:00:00+00	ORTN	0.017104049	1.017104049	19.33003127	0.433605447
1112	1975-08-01 00:00:00+00	ORTN	0.015579919	1.015579919	19.66065308	0.426313756
1113	1975-09-01 00:00:00+00	ORTN	0.020292208	1.020292208	19.96696447	0.419773715
1114	1975-10-01 00:00:00+00	ORTN	0.021718377	1.021718377	20.37213826	0.411424994
1115	1975-11-01 00:00:00+00	ORTN	0.019465857	1.019465857	20.81458805	0.40267945
1116	1975-12-01 00:00:00+00	ORTN	0.018406782	1.018406782	21.21976183	0.394990619
1117	1976-01-01 00:00:00+00	ORTN	0.01919904	1.01919904	21.61034937	0.38785152
1118	1976-02-01 00:00:00+00	ORTN	0.022369389	1.022369389	22.02524733	0.380545414
1119	1976-03-01 00:00:00+00	ORTN	0.023751259	1.023751259	22.51793867	0.3722191
1120	1976-04-01 00:00:00+00	ORTN	0.025239033	1.025239033	23.05276807	0.363583533
1121	1976-05-01 00:00:00+00	ORTN	0.02976068	1.02976068	23.63459764	0.354632941
1122	1976-06-01 00:00:00+00	ORTN	0.0294999	1.0294999	24.33797934	0.344383843
1123	1976-07-01 00:00:00+00	ORTN	0.025549806	1.025549806	25.0559473	0.334515664
1124	1976-08-01 00:00:00+00	ORTN	0.027877641	1.027877641	25.69612189	0.326181783
1125	1976-09-01 00:00:00+00	ORTN	0.032889489	1.032889489	26.41246915	0.317335226
1126	1976-10-01 00:00:00+00	ORTN	0.03606012	1.03606012	27.28116176	0.307230569
1127	1976-11-01 00:00:00+00	ORTN	0.030275229	1.030275229	28.26492373	0.296537395
1128	1976-12-01 00:00:00+00	ORTN	0.022094835	1.022094835	29.12065078	0.287823474
1129	1977-01-01 00:00:00+00	ORTN	0.017315546	1.017315546	29.76406676	0.281601534
1130	1977-02-01 00:00:00+00	ORTN	0.019697051	1.019697051	30.27944783	0.276808445
1131	1977-03-01 00:00:00+00	ORTN	0.022675975	1.022675975	30.87586365	0.271461455
1132	1977-04-01 00:00:00+00	ORTN	0.02884566	1.02884566	31.57600396	0.265442292
1133	1977-05-01 00:00:00+00	ORTN	0.032177601	1.032177601	32.48683464	0.258000108
1134	1977-06-01 00:00:00+00	ORTN	0.033349444	1.033349444	33.53218303	0.249957089
1135	1977-07-01 00:00:00+00	ORTN	0.026707203	1.026707203	34.6504627	0.241890186
1136	1977-08-01 00:00:00+00	ORTN	0.020500205	1.020500205	35.57587963	0.235598022
1137	1977-09-01 00:00:00+00	ORTN	0.014017231	1.014017231	36.30519247	0.230865237
1138	1977-10-01 00:00:00+00	ORTN	0.013867488	1.013867488	36.81409075	0.227673879
1139	1977-11-01 00:00:00+00	ORTN	0.014937038	1.014937038	37.32460973	0.224559799
1140	1977-12-01 00:00:00+00	ORTN	0.019594421	1.019594421	37.88212886	0.221254906
1141	1978-01-01 00:00:00+00	ORTN	0.021106076	1.021106076	38.62440724	0.217002861
1142	1978-02-01 00:00:00+00	ORTN	0.023176495	1.023176495	39.43961691	0.212517451
1143	1978-03-01 00:00:00+00	ORTN	0.025784168	1.025784168	40.353689	0.207703609
1144	1978-04-01 00:00:00+00	ORTN	0.02920794	1.02920794	41.3941753	0.20248276
1145	1978-05-01 00:00:00+00	ORTN	0.030471336	1.030471336	42.60321389	0.196736492
1146	1978-06-01 00:00:00+00	ORTN	0.03012404	1.03012404	43.90139071	0.190918937
1147	1978-07-01 00:00:00+00	ORTN	0.030604931	1.030604931	45.22387798	0.185335872
1148	1978-08-01 00:00:00+00	ORTN	0.027783573	1.027783573	46.60795164	0.179832122
1149	1978-09-01 00:00:00+00	ORTN	0.026119024	1.026119024	47.90288708	0.174970808
1150	1978-10-01 00:00:00+00	ORTN	0.023739655	1.023739655	49.15406375	0.170517069
1151	1978-11-01 00:00:00+00	ORTN	0.025604689	1.025604689	50.32096428	0.166562922
1152	1978-12-01 00:00:00+00	ORTN	0.026315789	1.026315789	51.60941693	0.162404603
1153	1979-01-01 00:00:00+00	ORTN	0.022581238	1.022581238	52.96755948	0.158240382
1154	1979-02-01 00:00:00+00	ORTN	0.023249551	1.023249551	54.16363253	0.154746025
1155	1979-03-01 00:00:00+00	ORTN	0.024972951	1.024972951	55.42291268	0.151229996
1156	1979-04-01 00:00:00+00	ORTN	0.037459702	1.037459702	56.80698634	0.147545353
1157	1979-05-01 00:00:00+00	ORTN	0.038224617	1.038224617	58.93495911	0.142217913
1158	1979-06-01 00:00:00+00	ORTN	0.033267999	1.033267999	61.18772537	0.136981834
1159	1979-07-01 00:00:00+00	ORTN	0.027198154	1.027198154	63.22331853	0.132571448
1160	1979-08-01 00:00:00+00	ORTN	0.028773927	1.028773927	64.94287608	0.129061221
1161	1979-09-01 00:00:00+00	ORTN	0.040170774	1.040170774	66.81153764	0.125451489
1162	1979-10-01 00:00:00+00	ORTN	0.045872201	1.045872201	69.49540883	0.120606627
1163	1979-11-01 00:00:00+00	ORTN	0.045131224	1.045131224	72.68331622	0.115316792
1164	1979-12-01 00:00:00+00	ORTN	0.040792815	1.040792815	75.96360322	0.110337142
1165	1980-01-01 00:00:00+00	ORTN	0.042022836	1.042022836	79.06237243	0.10601259
1166	1980-02-01 00:00:00+00	ORTN	0.037003521	1.037003521	82.38479753	0.1017373
1167	1980-03-01 00:00:00+00	ORTN	0.036992071	1.036992071	85.43332509	0.098106996
1168	1980-04-01 00:00:00+00	ORTN	0.036989609	1.036989609	88.59368068	0.094607277
1169	1980-05-01 00:00:00+00	ORTN	0.033994284	1.033994284	91.87072632	0.091232618
1170	1980-06-01 00:00:00+00	ORTN	0.032006551	1.032006551	94.99380592	0.088233193
1171	1980-07-01 00:00:00+00	ORTN	0.032005819	1.032005819	98.03423006	0.085496738
1172	1980-08-01 00:00:00+00	ORTN	0.032006408	1.032006408	101.1718959	0.082845209
1173	1980-09-01 00:00:00+00	ORTN	0.030004812	1.030004812	104.4100448	0.080275867
1174	1980-10-01 00:00:00+00	ORTN	0.031994093	1.031994093	107.5428486	0.077937371
1175	1980-11-01 00:00:00+00	ORTN	0.031995211	1.031995211	110.9835844	0.07552114
1176	1980-12-01 00:00:00+00	ORTN	0.044997877	1.044997877	114.5345276	0.073179739
1177	1981-01-01 00:00:00+00	ORTN	0.05000677	1.05000677	119.6883382	0.070028601
1178	1981-02-01 00:00:00+00	ORTN	0.064996196	1.064996196	125.6735655	0.066693475
1179	1981-03-01 00:00:00+00	ORTN	0.063003281	1.063003281	133.8418692	0.062623205
1180	1981-04-01 00:00:00+00	ORTN	0.059998178	1.059998178	142.2743461	0.058911582
1181	1981-05-01 00:00:00+00	ORTN	0.059998064	1.059998064	150.8105477	0.05557706
1182	1981-06-01 00:00:00+00	ORTN	0.059998379	1.059998379	159.8588886	0.052431284
1183	1981-07-01 00:00:00+00	ORTN	0.059997704	1.059997704	169.4501628	0.049463552
1184	1981-08-01 00:00:00+00	ORTN	0.058000308	1.058000308	179.6167835	0.046663829
1185	1981-09-01 00:00:00+00	ORTN	0.057003966	1.057003966	190.0346122	0.044105686
1186	1981-10-01 00:00:00+00	ORTN	0.057003848	1.057003848	200.8673388	0.041727077
1187	1981-11-01 00:00:00+00	ORTN	0.054998322	1.054998322	212.31755	0.03947675
1188	1981-12-01 00:00:00+00	ORTN	0.052000955	1.052000955	223.9946589	0.03741878
1189	1982-01-01 00:00:00+00	ORTN	0.050001375	1.050001375	235.6425951	0.03556915
1190	1982-02-01 00:00:00+00	ORTN	0.049998035	1.049998035	247.4250488	0.033875337
1191	1982-03-01 00:00:00+00	ORTN	0.050000313	1.050000313	259.7958151	0.032262286
1192	1982-04-01 00:00:00+00	ORTN	0.054998394	1.054998394	272.785687	0.030725977
1193	1982-05-01 00:00:00+00	ORTN	0.054997719	1.054997719	287.7884618	0.029124194
1194	1982-06-01 00:00:00+00	ORTN	0.055002483	1.055002483	303.6161708	0.02760593
1195	1982-07-01 00:00:00+00	ORTN	0.059997675	1.059997675	320.3158141	0.026166697
1196	1982-08-01 00:00:00+00	ORTN	0.070000334	1.070000334	339.5340181	0.024685617
1197	1982-09-01 00:00:00+00	ORTN	0.069997859	1.069997859	363.3015127	0.023070663
1198	1982-10-01 00:00:00+00	ORTN	0.070000625	1.070000625	388.7318409	0.021561411
1199	1982-11-01 00:00:00+00	ORTN	0.065000289	1.065000289	415.9433128	0.020150839
1200	1982-12-01 00:00:00+00	ORTN	0.064999069	1.064999069	442.9797485	0.018920971
1201	1983-01-01 00:00:00+00	ORTN	0.060001442	1.060001442	471.7730196	0.017766185
1202	1983-02-01 00:00:00+00	ORTN	0.06699853	1.06699853	500.0800812	0.016760529
1203	1983-03-01 00:00:00+00	ORTN	0.090000367	1.090000367	533.5847117	0.015708109
1204	1983-04-01 00:00:00+00	ORTN	0.09000092	1.09000092	581.6075313	0.014411104
1205	1983-05-01 00:00:00+00	ORTN	0.080000305	1.080000305	633.952744	0.013221186
1206	1983-06-01 00:00:00+00	ORTN	0.077999031	1.077999031	684.6691571	0.012241835
1207	1983-07-01 00:00:00+00	ORTN	0.089999008	1.089999008	738.0726877	0.011356072
1208	1983-08-01 00:00:00+00	ORTN	0.084999531	1.084999531	804.4984973	0.010418425
1209	1983-09-01 00:00:00+00	ORTN	0.094999109	1.094999109	872.8804926	0.009602239
1210	1983-10-01 00:00:00+00	ORTN	0.097000584	1.097000584	955.8033614	0.008769175
1211	1983-11-01 00:00:00+00	ORTN	0.083999661	1.083999661	1048.516845	0.007993774
1212	1983-12-01 00:00:00+00	ORTN	0.076000397	1.076000397	1136.591905	0.007374333
1213	1984-01-01 00:00:00+00	ORTN	0.098000526	1.098000526	1222.973341	0.006853467
1214	1984-02-01 00:00:00+00	ORTN	0.123000568	1.123000568	1342.825373	0.00624177
1215	1984-03-01 00:00:00+00	ORTN	0.099999888	1.099999888	1507.993656	0.005558118
1216	1984-04-01 00:00:00+00	ORTN	0.088999887	1.088999887	1658.792853	0.005052835
1217	1984-05-01 00:00:00+00	ORTN	0.088999714	1.088999714	1806.42523	0.004639886
1218	1984-06-01 00:00:00+00	ORTN	0.09199967	1.09199967	1967.196558	0.004260686
1219	1984-07-01 00:00:00+00	ORTN	0.102999932	1.102999932	2148.177993	0.003901728
1220	1984-08-01 00:00:00+00	ORTN	0.106000028	1.106000028	2369.44018	0.003537379
1221	1984-09-01 00:00:00+00	ORTN	0.104974079	1.104974079	2620.600906	0.003198353
1222	1984-10-01 00:00:00+00	ORTN	0.1260262	1.1260262	2895.696073	0.002894505
1223	1984-11-01 00:00:00+00	ORTN	0.098999888	1.098999888	3260.629646	0.002570549
1224	1984-12-01 00:00:00+00	ORTN	0.105000086	1.105000086	3583.431615	0.002338989
1225	1985-01-01 00:00:00+00	ORTN	0.126000021	1.126000021	3959.692242	0.002116732
1226	1985-02-01 00:00:00+00	ORTN	0.101999988	1.101999988	4458.613548	0.001879868
1227	1985-03-01 00:00:00+00	ORTN	0.126999835	1.126999835	4913.392075	0.00170587
1228	1985-04-01 00:00:00+00	ORTN	0.118292994	1.118292994	5537.392058	0.001513638
1229	1985-05-01 00:00:00+00	ORTN	0.100058988	1.100058988	6192.426742	0.001353525
1230	1985-06-01 00:00:00+00	ORTN	0.092082024	1.092082024	6812.034697	0.001230412
1231	1985-07-01 00:00:00+00	ORTN	0.076139997	1.076139997	7439.300637	0.001126666
1232	1985-08-01 00:00:00+00	ORTN	0.08179703	1.08179703	8005.728966	0.001046951
1233	1985-09-01 00:00:00+00	ORTN	0.090999965	1.090999965	8660.573814	0.000967789
1234	1985-10-01 00:00:00+00	ORTN	0.090000051	1.090000051	9448.685731	0.000887066
1235	1985-11-01 00:00:00+00	ORTN	0.111199992	1.111199992	10299.06792	0.000813822
1236	1985-12-01 00:00:00+00	ORTN	0.133600014	1.133600014	11444.3242	0.000732381
1237	1986-01-01 00:00:00+00	ORTN	0.162300164	1.162300164	12973.28606	0.000646067
1238	1986-02-01 00:00:00+00	ORTN	0.143601	1.143601	15.07885252	0.55585177
1239	1986-03-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.486053938
1240	1986-04-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.486053938
1241	1986-05-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.486053938
1242	1986-06-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.486053938
1243	1986-07-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.486053938
1244	1986-08-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.486053938
1245	1986-09-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.486053938
1246	1986-10-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.486053938
1247	1986-11-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.486053938
1248	1986-12-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.486053938
1249	1987-01-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.486053938
1250	1987-02-01 00:00:00+00	OTN	0.706860902	1.706860902	17.24419083	0.486053938
1251	1987-03-01 00:00:00+00	OTN	0.145146193	1.145146193	29.43343511	0.28476482
1252	1987-04-01 00:00:00+00	OTN	0.209597538	1.209597538	33.70558615	0.24867115
1253	1987-05-01 00:00:00+00	OTN	0.234417237	1.234417237	40.77019403	0.205581726
1254	1987-06-01 00:00:00+00	OTN	0.180208031	1.180208031	50.32743025	0.166541523
1255	1987-07-01 00:00:00+00	OTN	0.030505607	1.030505607	59.39683736	0.141112006
1256	1987-08-01 00:00:00+00	OTN	0.063600498	1.063600498	61.20877395	0.136934729
1257	1987-09-01 00:00:00+00	OTN	0.056809978	1.056809978	65.10168245	0.128746394
1258	1987-10-01 00:00:00+00	OTN	0.091799957	1.091799957	68.80010762	0.121825491
1259	1987-11-01 00:00:00+00	OTN	0.128398206	1.128398206	75.11595455	0.111582245
1260	1987-12-01 00:00:00+00	OTN	0.141398497	1.141398497	84.76070832	0.098885522
1261	1988-01-01 00:00:00+00	OTN	0.165108722	1.165108722	96.74574507	0.086635406
1262	1988-02-01 00:00:00+00	OTN	0.17961179	1.17961179	112.7193114	0.074358216
1263	1988-03-01 00:00:00+00	OTN	0.160100924	1.160100924	132.9650287	0.063036175
1264	1988-04-01 00:00:00+00	OTN	0.192798681	1.192798681	154.2528526	0.054336803
1265	1988-05-01 00:00:00+00	OTN	0.177799112	1.177799112	183.9925991	0.045554043
1266	1988-06-01 00:00:00+00	OTN	0.195300349	1.195300349	216.7063199	0.038677261
1267	1988-07-01 00:00:00+00	OTN	0.240398932	1.240398932	259.0291398	0.032357776
1268	1988-08-01 00:00:00+00	OTN	0.206599817	1.206599817	321.2994684	0.026086588
1269	1988-09-01 00:00:00+00	OTN	0.240098492	1.240098492	387.6798797	0.021619917
1270	1988-10-01 00:00:00+00	OTN	0.272499575	1.272499575	480.7612341	0.017434032
1271	1988-11-01 00:00:00+00	OTN	0.269200707	1.269200707	611.7684659	0.013700619
1272	1988-12-01 00:00:00+00	OTN	0.287901	1.287901	776.4569697	0.010794683
1273	1989-01-01 00:00:00+00	IPC	0.4272	1.4272	0.999999708	8.381609309
1274	1989-02-01 00:00:00+00	IPC	0.1014	1.1014	1.427199583	5.87276437
1275	1989-03-01 00:00:00+00	BTN	0.060907336	1.060907336	1.571917621	5.332090403
1276	1989-04-01 00:00:00+00	BTN	0.073059776	1.073059776	1.667658935	5.025971847
1277	1989-05-01 00:00:00+00	BTN	0.099372562	1.099372562	1.789497724	4.683776206
1278	1989-06-01 00:00:00+00	BTN	0.248341817	1.248341817	1.967324698	4.260408497
1279	1989-07-01 00:00:00+00	BTN	0.287594217	1.287594217	2.455893688	3.412854107
1280	1989-08-01 00:00:00+00	BTN	0.293412024	1.293412024	3.162194511	2.650566507
1281	1989-09-01 00:00:00+00	BTN	0.359511797	1.359511797	4.090020404	2.049282407
1282	1989-10-01 00:00:00+00	BTN	0.376210877	1.376210877	5.560430989	1.507366403
1283	1989-11-01 00:00:00+00	BTN	0.414204703	1.414204703	7.652325606	1.095301911
1284	1989-12-01 00:00:00+00	BTN	0.535499972	1.535499972	10.82195486	0.77450026
1285	1990-01-01 00:00:00+00	BTN	0.56109498	1.56109498	16.61711139	0.504396141
1286	1990-02-01 00:00:00+00	BTN	0.727802864	1.727802864	25.94088917	0.32310407
1287	1990-03-01 00:00:00+00	IPC	0.843200001	1.843200001	44.82074259	0.187002856
1288	1990-04-01 00:00:00+00	IPC	0.447999999	1.447999999	82.61359279	0.101455542
1289	1990-05-01 00:00:00+00	IPC	0.078700001	1.078700001	119.6244823	0.070065982
1290	1990-06-01 00:00:00+00	IPC	0.095499999	1.095499999	129.0389291	0.064954095
1291	1990-07-01 00:00:00+00	IPC	0.1292	1.1292	141.3621468	0.059291734
1292	1990-08-01 00:00:00+00	IPC	0.1203	1.1203	159.6261362	0.052507735
1293	1990-09-01 00:00:00+00	IPC	0.127600001	1.127600001	178.8291604	0.046869352
1294	1990-10-01 00:00:00+00	IPC	0.142	1.142	201.6477614	0.041565583
1295	1990-11-01 00:00:00+00	IPC	0.1558	1.1558	230.2817435	0.036397183
1296	1990-12-01 00:00:00+00	IPC	0.183000001	1.183000001	266.1596392	0.031490901
1297	1991-01-01 00:00:00+00	IPC	0.199100001	1.199100001	314.8668535	0.026619527
1298	1991-02-01 00:00:00+00	IPC	0.218699997	1.218699997	377.5568443	0.022199589
1299	1991-03-01 00:00:00+00	INPC	0.1179	1.1179	460.1285252	0.018215795
1300	1991-04-01 00:00:00+00	INPC	0.0501	1.0501	514.3776783	0.016294655
1301	1991-05-01 00:00:00+00	INPC	0.0668	1.0668	540.148	0.015517241
1302	1991-06-01 00:00:00+00	INPC	0.1083	1.1083	576.2298864	0.014545596
1303	1991-07-01 00:00:00+00	INPC	0.1214	1.1214	638.6355831	0.01312424
1304	1991-08-01 00:00:00+00	INPC	0.1562	1.1562	716.1659429	0.011703442
1305	1991-09-01 00:00:00+00	INPC	0.1562	1.1562	828.0310632	0.010122334
1306	1991-10-01 00:00:00+00	INPC	0.2108	1.2108	957.3695153	0.008754829
1307	1991-11-01 00:00:00+00	INPC	0.2648	1.2648	1159.183009	0.007230616
1308	1991-12-01 00:00:00+00	IPCA-E	0.2288	1.2288	1466.13467	0.005716806
1309	1992-01-01 00:00:00+00	UFIR	0.25600448	1.25600448	1801.586282	0.004652348
1310	1992-02-01 00:00:00+00	UFIR	0.261004647	1.261004647	2262.800442	0.003704086
1311	1992-03-01 00:00:00+00	UFIR	0.220295228	1.220295228	2853.401872	0.002937408
1312	1992-04-01 00:00:00+00	UFIR	0.198299849	1.198299849	3481.992689	0.002407129
1313	1992-05-01 00:00:00+00	UFIR	0.234496999	1.234496999	4172.471315	0.002008787
1314	1992-06-01 00:00:00+00	UFIR	0.23269963	1.23269963	5150.903316	0.001627211
1315	1992-07-01 00:00:00+00	UFIR	0.210100325	1.210100325	6349.516614	0.001320039
1316	1992-08-01 00:00:00+00	UFIR	0.231398186	1.231398186	7683.552118	0.001090851
1317	1992-09-01 00:00:00+00	UFIR	0.233300251	1.233300251	9461.512144	0.000885863
1318	1992-10-01 00:00:00+00	UFIR	0.254799402	1.254799402	11668.8853	0.000718287
1319	1992-11-01 00:00:00+00	UFIR	0.236999035	1.236999035	14642.1103	0.000572432
1320	1992-12-01 00:00:00+00	UFIR	0.23490011	1.23490011	18112.2763	0.000462758
1321	1993-01-01 00:00:00+00	UFIR	0.294700749	1.294700749	22366.85199	0.000374733
1322	1993-02-01 00:00:00+00	UFIR	0.267200378	1.267200378	28958.38003	0.000289436
1323	1993-03-01 00:00:00+00	UFIR	0.25960045	1.25960045	36696.07011	0.000228406
1324	1993-04-01 00:00:00+00	UFIR	0.273401817	1.273401817	46222.38642	0.000181332
1325	1993-05-01 00:00:00+00	UFIR	0.288099882	1.288099882	58859.67088	0.0001424
1326	1993-06-01 00:00:00+00	UFIR	0.303398349	1.303398349	75817.13511	0.00011055
1327	1993-07-01 00:00:00+00	UFIR	0.306576	1.306576	98819.92874	0.0000848
1328	1993-08-01 00:00:00+00	UFIR	0.319934568	1.319934568	129.1157472	0.06491545
1329	1993-09-01 00:00:00+00	UFIR	0.343838528	1.343838528	170.424338	0.049180809
1330	1993-10-01 00:00:00+00	UFIR	0.351646912	1.351646912	229.0227915	0.036597261
1331	1993-11-01 00:00:00+00	UFIR	0.339019389	1.339019389	309.5579491	0.027076051
1332	1993-12-01 00:00:00+00	UFIR	0.366892352	1.366892352	414.5040957	0.020220806
1333	1994-01-01 00:00:00+00	UFIR	0.391702625	1.391702625	566.5824784	0.014793269
1334	1994-02-01 00:00:00+00	UFIR	0.396984517	1.396984517	788.5143224	0.010629619
1335	1994-03-01 00:00:00+00	UFIR	0.436311908	1.436311908	1101.5423	0.007608974
1336	1994-04-01 00:00:00+00	UFIR	0.412499564	1.412499564	1582.158322	0.005297578
1337	1994-05-01 00:00:00+00	UFIR	0.442096538	1.442096538	2234.797941	0.003750499
1338	1994-06-01 00:00:00+00	UFIR	0.446501	1.446501	3222.794374	0.002600727
1339	1994-07-01 00:00:00+00	UFIR	0.052153791	1.052153791	1.695191013	4.944343615
1340	1994-08-01 00:00:00+00	UFIR	0.050076129	1.050076129	1.783601651	4.699259419
1341	1994-09-01 00:00:00+00	UFIR	0.016271951	1.016271951	1.872917518	4.475160694
1342	1994-10-01 00:00:00+00	UFIR	0.019023462	1.019023462	1.90339354	4.403507043
1343	1994-11-01 00:00:00+00	UFIR	0.029558183	1.029558183	1.939602675	4.321300938
1344	1994-12-01 00:00:00+00	UFIR	0.022514355	1.022514355	1.996933806	4.197238203
1345	1995-01-01 00:00:00+00	UFIR	0.0	1.0	2.041893482	4.104820811
1346	1995-02-01 00:00:00+00	UFIR	0.0	1.0	2.041893482	4.104820811
1347	1995-03-01 00:00:00+00	UFIR	0.043446136	1.043446136	2.041893482	4.104820811
1348	1995-04-01 00:00:00+00	UFIR	0.0	1.0	2.130605863	3.933907722
1349	1995-05-01 00:00:00+00	UFIR	0.0	1.0	2.130605863	3.933907722
1350	1995-06-01 00:00:00+00	UFIR	0.071236369	1.071236369	2.130605863	3.933907722
1351	1995-07-01 00:00:00+00	UFIR	0.0	1.0	2.282382488	3.672305979
1352	1995-08-01 00:00:00+00	UFIR	0.0	1.0	2.282382488	3.672305979
1353	1995-09-01 00:00:00+00	UFIR	0.051295611	1.051295611	2.282382488	3.672305979
1354	1995-10-01 00:00:00+00	UFIR	0.0	1.0	2.399458692	3.493124048
1355	1995-11-01 00:00:00+00	UFIR	0.0	1.0	2.399458692	3.493124048
1356	1995-12-01 00:00:00+00	UFIR	0.042127767	1.042127767	2.399458692	3.493124048
1357	1996-01-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	3.35191534
1358	1996-02-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	3.35191534
1359	1996-03-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	3.35191534
1360	1996-04-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	3.35191534
1361	1996-05-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	3.35191534
1362	1996-06-01 00:00:00+00	UFIR	0.067575721	1.067575721	2.500542528	3.35191534
1363	1996-07-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	3.13974482
1364	1996-08-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	3.13974482
1365	1996-09-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	3.13974482
1366	1996-10-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	3.13974482
1367	1996-11-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	3.13974482
1368	1996-12-01 00:00:00+00	UFIR	0.029501526	1.029501526	2.669518492	3.13974482
1369	1997-01-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.049771896
1370	1997-02-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.049771896
1371	1997-03-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.049771896
1372	1997-04-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.049771896
1373	1997-05-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.049771896
1374	1997-06-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.049771896
1375	1997-07-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.049771896
1376	1997-08-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.049771896
1377	1997-09-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.049771896
1378	1997-10-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.049771896
1379	1997-11-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	3.049771896
1380	1997-12-01 00:00:00+00	UFIR	0.055226175	1.055226175	2.748273361	3.049771896
1381	1998-01-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.890159445
1382	1998-02-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.890159445
1383	1998-03-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.890159445
1384	1998-04-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.890159445
1385	1998-05-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.890159445
1386	1998-06-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.890159445
1387	1998-07-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.890159445
1388	1998-08-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.890159445
1389	1998-09-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.890159445
1390	1998-10-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.890159445
1391	1998-11-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.890159445
1392	1998-12-01 00:00:00+00	UFIR	0.016543544	1.016543544	2.900049986	2.890159445
1393	1999-01-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.843124097
1394	1999-02-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.843124097
1395	1999-03-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.843124097
1396	1999-04-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.843124097
1397	1999-05-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.843124097
1398	1999-06-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.843124097
1399	1999-07-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.843124097
1400	1999-08-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.843124097
1401	1999-09-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.843124097
1402	1999-10-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.843124097
1403	1999-11-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.843124097
1404	1999-12-01 00:00:00+00	UFIR	0.08915046	1.08915046	2.948027091	2.843124097
1405	2000-01-01 00:00:00+00	 UFIR	0.0	1.0	3.210845063	2.610405265
1406	2000-02-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.610405265
1407	2000-03-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.610405265
1408	2000-04-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.610405265
1409	2000-05-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.610405265
1410	2000-06-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.610405265
1411	2000-07-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.610405265
1412	2000-08-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.610405265
1413	2000-09-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.610405265
1414	2000-10-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.610405265
1415	2000-11-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.610405265
1416	2000-12-01 00:00:00+00	IPCA-E	0.0603555700960778	1.06035557	3.210845063	2.610405265
1417	2001-01-01 00:00:00+00	IPCA-E	0.0063	1.0063	3.404637447	2.461820675
1418	2001-02-01 00:00:00+00	IPCA-E	0.005	1.005	3.426086663	2.446408303
1419	2001-03-01 00:00:00+00	IPCA-E	0.0036	1.0036	3.443217097	2.434237117
1420	2001-04-01 00:00:00+00	IPCA-E	0.005	1.005	3.455612678	2.425505298
1421	2001-05-01 00:00:00+00	IPCA-E	0.0049	1.0049	3.472890742	2.413438108
1422	2001-06-01 00:00:00+00	IPCA-E	0.0038	1.0038	3.489907906	2.401669925
1423	2001-07-01 00:00:00+00	IPCA-E	0.0094	1.0094	3.503169556	2.392578128
1424	2001-08-01 00:00:00+00	IPCA-E	0.0118	1.0118	3.53609935	2.370297333
1425	2001-09-01 00:00:00+00	IPCA-E	0.0038	1.0038	3.577825322	2.342654016
1426	2001-10-01 00:00:00+00	IPCA-E	0.0037	1.0037	3.591421059	2.33378563
1427	2001-11-01 00:00:00+00	IPCA-E	0.0099	1.0099	3.604709316	2.325182455
1428	2001-12-01 00:00:00+00	IPCA-E	0.0055	1.0055	3.640395939	2.302388806
1429	2002-01-01 00:00:00+00	IPCA-E	0.0062	1.0062	3.660418116	2.289794934
1430	2002-02-01 00:00:00+00	IPCA-E	0.0044	1.0044	3.683112709	2.275685683
1431	2002-03-01 00:00:00+00	IPCA-E	0.004	1.004	3.699318405	2.26571653
1432	2002-04-01 00:00:00+00	IPCA-E	0.0078	1.0078	3.714115678	2.256689771
1433	2002-05-01 00:00:00+00	IPCA-E	0.0042	1.0042	3.743085781	2.239223825
1434	2002-06-01 00:00:00+00	IPCA-E	0.0033	1.0033	3.758806741	2.22985842
1435	2002-07-01 00:00:00+00	IPCA-E	0.0077	1.0077	3.771210803	2.22252409
1436	2002-08-01 00:00:00+00	IPCA-E	0.01	1.01	3.800249126	2.205541421
1437	2002-09-01 00:00:00+00	IPCA-E	0.0062	1.0062	3.838251618	2.183704377
1438	2002-10-01 00:00:00+00	IPCA-E	0.009	1.009	3.862048778	2.170248835
1439	2002-11-01 00:00:00+00	IPCA-E	0.0208	1.0208	3.896807217	2.150890817
1440	2002-12-01 00:00:00+00	IPCA-E	0.0305	1.0305	3.977860807	2.107063888
1441	2003-01-01 00:00:00+00		0.0197	1.0197	4.099185561	2.044700522
1442	2003-02-01 00:00:00+00		0.0183	1.0183	4.099185561	2.044700522
1443	2003-03-01 00:00:00+00		0.0178	1.0178	4.099185561	2.044700522
1444	2003-04-01 00:00:00+00		0.0187	1.0187	4.099185561	2.044700522
1445	2003-05-01 00:00:00+00		0.0197	1.0197	4.099185561	2.044700522
1446	2003-06-01 00:00:00+00		0.0186	1.0186	4.099185561	2.044700522
1447	2003-07-01 00:00:00+00		0.0208	1.0208	4.099185561	2.044700522
1448	2003-08-01 00:00:00+00		0.0177	1.0177	4.099185561	2.044700522
1449	2003-09-01 00:00:00+00		0.0168	1.0168	4.099185561	2.044700522
1450	2003-10-01 00:00:00+00		0.0164	1.0164	4.099185561	2.044700522
1451	2003-11-01 00:00:00+00		0.0134	1.0134	4.099185561	2.044700522
1452	2003-12-01 00:00:00+00		0.0137	1.0137	4.099185561	2.044700522
1453	2004-01-01 00:00:00+00		0.0127	1.0127	4.099185561	2.044700522
1454	2004-02-01 00:00:00+00		0.0108	1.0108	4.099185561	2.044700522
1455	2004-03-01 00:00:00+00		0.0138	1.0138	4.099185561	2.044700522
1456	2004-04-01 00:00:00+00		0.0118	1.0118	4.099185561	2.044700522
1457	2004-05-01 00:00:00+00		0.0123	1.0123	4.099185561	2.044700522
1458	2004-06-01 00:00:00+00		0.0123	1.0123	4.099185561	2.044700522
1459	2004-07-01 00:00:00+00		0.0129	1.0129	4.099185561	2.044700522
1460	2004-08-01 00:00:00+00		0.0129	1.0129	4.099185561	2.044700522
1461	2004-09-01 00:00:00+00		0.0125	1.0125	4.099185561	2.044700522
1462	2004-10-01 00:00:00+00		0.0121	1.0121	4.099185561	2.044700522
1463	2004-11-01 00:00:00+00		0.0125	1.0125	4.099185561	2.044700522
1464	2004-12-01 00:00:00+00		0.0148	1.0148	4.099185561	2.044700522
1465	2005-01-01 00:00:00+00		0.0138	1.0138	4.099185561	2.044700522
1466	2005-02-01 00:00:00+00		0.0122	1.0122	4.099185561	2.044700522
1467	2005-03-01 00:00:00+00		0.0153	1.0153	4.099185561	2.044700522
1468	2005-04-01 00:00:00+00		0.0141	1.0141	4.099185561	2.044700522
1469	2005-05-01 00:00:00+00		0.015	1.015	4.099185561	2.044700522
1470	2005-06-01 00:00:00+00		0.0159	1.0159	4.099185561	2.044700522
1471	2005-07-01 00:00:00+00		0.0151	1.0151	4.099185561	2.044700522
1472	2005-08-01 00:00:00+00		0.0166	1.0166	4.099185561	2.044700522
1473	2005-09-01 00:00:00+00		0.015	1.015	4.099185561	2.044700522
1474	2005-10-01 00:00:00+00		0.0141	1.0141	4.099185561	2.044700522
1475	2005-11-01 00:00:00+00		0.0138	1.0138	4.099185561	2.044700522
1476	2005-12-01 00:00:00+00		0.0147	1.0147	4.099185561	2.044700522
1477	2006-01-01 00:00:00+00		0.0143	1.0143	4.099185561	2.044700522
1478	2006-02-01 00:00:00+00		0.0115	1.0115	4.099185561	2.044700522
1479	2006-03-01 00:00:00+00		0.0142	1.0142	4.099185561	2.044700522
1480	2006-04-01 00:00:00+00		0.0108	1.0108	4.099185561	2.044700522
1481	2006-05-01 00:00:00+00		0.0128	1.0128	4.099185561	2.044700522
1482	2006-06-01 00:00:00+00		0.0118	1.0118	4.099185561	2.044700522
1483	2006-07-01 00:00:00+00		0.0117	1.0117	4.099185561	2.044700522
1484	2006-08-01 00:00:00+00		0.0126	1.0126	4.099185561	2.044700522
1485	2006-09-01 00:00:00+00		0.0106	1.0106	4.099185561	2.044700522
1486	2006-10-01 00:00:00+00		0.0109	1.0109	4.099185561	2.044700522
1487	2006-11-01 00:00:00+00		0.0102	1.0102	4.099185561	2.044700522
1488	2006-12-01 00:00:00+00		0.0099	1.0099	4.099185561	2.044700522
1489	2007-01-01 00:00:00+00		0.0108	1.0108	4.099185561	2.044700522
1490	2007-02-01 00:00:00+00		0.0087	1.0087	4.099185561	2.044700522
1491	2007-03-01 00:00:00+00		0.0105	1.0105	4.099185561	2.044700522
1492	2007-04-01 00:00:00+00		0.0094	1.0094	4.099185561	2.044700522
1493	2007-05-01 00:00:00+00		0.0103	1.0103	4.099185561	2.044700522
1494	2007-06-01 00:00:00+00		0.0091	1.0091	4.099185561	2.044700522
1495	2007-07-01 00:00:00+00		0.0097	1.0097	4.099185561	2.044700522
1496	2007-08-01 00:00:00+00		0.0099	1.0099	4.099185561	2.044700522
1497	2007-09-01 00:00:00+00		0.008	1.008	4.099185561	2.044700522
1498	2007-10-01 00:00:00+00		0.0093	1.0093	4.099185561	2.044700522
1499	2007-11-01 00:00:00+00		0.0084	1.0084	4.099185561	2.044700522
1500	2007-12-01 00:00:00+00		0.0084	1.0084	4.099185561	2.044700522
1501	2008-01-01 00:00:00+00		0.0093	1.0093	4.099185561	2.044700522
1502	2008-02-01 00:00:00+00		0.008	1.008	4.099185561	2.044700522
1503	2008-03-01 00:00:00+00		0.0084	1.0084	4.099185561	2.044700522
1504	2008-04-01 00:00:00+00		0.009	1.009	4.099185561	2.044700522
1505	2008-05-01 00:00:00+00		0.0088	1.0088	4.099185561	2.044700522
1506	2008-06-01 00:00:00+00		0.0096	1.0096	4.099185561	2.044700522
1507	2008-07-01 00:00:00+00		0.0107	1.0107	4.099185561	2.044700522
1508	2008-08-01 00:00:00+00		0.0102	1.0102	4.099185561	2.044700522
1509	2008-09-01 00:00:00+00		0.011	1.011	4.099185561	2.044700522
1510	2008-10-01 00:00:00+00		0.0118	1.0118	4.099185561	2.044700522
1511	2008-11-01 00:00:00+00		0.0102	1.0102	4.099185561	2.044700522
1512	2008-12-01 00:00:00+00		0.0112	1.0112	4.099185561	2.044700522
1513	2009-01-01 00:00:00+00		0.0105	1.0105	4.099185561	2.044700522
1514	2009-02-01 00:00:00+00		0.0086	1.0086	4.099185561	2.044700522
1515	2009-03-01 00:00:00+00		0.0097	1.0097	4.099185561	2.044700522
1516	2009-04-01 00:00:00+00		0.0084	1.0084	4.099185561	2.044700522
1517	2009-05-01 00:00:00+00		0.0077	1.0077	4.099185561	2.044700522
1518	2009-06-01 00:00:00+00		0.0076	1.0076	4.099185561	2.044700522
1519	2009-07-01 00:00:00+00	IPCA-E	0.0022	1.0022	4.099185561	2.044700522
1520	2009-08-01 00:00:00+00	IPCA-E	0.0023	1.0023	4.10820377	2.040212056
1521	2009-09-01 00:00:00+00	IPCA-E	0.0019	1.0019	4.117652638	2.035530336
1522	2009-10-01 00:00:00+00	IPCA-E	0.0018	1.0018	4.125476178	2.031670163
1523	2009-11-01 00:00:00+00	IPCA-E	0.0044	1.0044	4.132902035	2.028019727
1524	2009-12-01 00:00:00+00	IPCA-E	0.0038	1.0038	4.151086804	2.019135531
1525	2010-01-01 00:00:00+00	IPCA-E	0.0052	1.0052	4.166860934	2.011491862
1526	2010-02-01 00:00:00+00	IPCA-E	0.0094	1.0094	4.188528611	2.001086214
1527	2010-03-01 00:00:00+00	IPCA-E	0.0055	1.0055	4.22790078	1.982451173
1528	2010-04-01 00:00:00+00	IPCA-E	0.0048	1.0048	4.251154234	1.971607332
1529	2010-05-01 00:00:00+00	IPCA-E	0.0063	1.0063	4.271559775	1.962188826
1530	2010-06-01 00:00:00+00	IPCA-E	0.0019	1.0019	4.298470601	1.949904428
1531	2010-07-01 00:00:00+00	IPCA-E	-0.0009	0.9991	4.306637695	1.946206635
1532	2010-08-01 00:00:00+00	IPCA-E	-0.0005	0.9995	4.302761721	1.947959799
1533	2010-09-01 00:00:00+00	IPCA-E	0.0031	1.0031	4.300610341	1.948934266
1534	2010-10-01 00:00:00+00	IPCA-E	0.0062	1.0062	4.313942233	1.942911242
1535	2010-11-01 00:00:00+00	IPCA-E	0.0086	1.0086	4.340688674	1.930939417
1536	2010-12-01 00:00:00+00	IPCA-E	0.0069	1.0069	4.378018597	1.914474933
1537	2011-01-01 00:00:00+00	IPCA-E	0.0076	1.0076	4.408226925	1.901355579
1538	2011-02-01 00:00:00+00	IPCA-E	0.0097	1.0097	4.44172945	1.887014271
1539	2011-03-01 00:00:00+00	IPCA-E	0.006	1.006	4.484814226	1.868886076
1540	2011-04-01 00:00:00+00	IPCA-E	0.0077	1.0077	4.511723111	1.857739638
1541	2011-05-01 00:00:00+00	IPCA-E	0.007	1.007	4.546463379	1.843544347
1542	2011-06-01 00:00:00+00	IPCA-E	0.0023	1.0023	4.578288623	1.830729242
1543	2011-07-01 00:00:00+00	IPCA-E	0.001	1.001	4.588818686	1.826528227
1544	2011-08-01 00:00:00+00	IPCA-E	0.0027	1.0027	4.593407505	1.824703523
1545	2011-09-01 00:00:00+00	IPCA-E	0.0053	1.0053	4.605809705	1.81979009
1546	2011-10-01 00:00:00+00	IPCA-E	0.0042	1.0042	4.630220497	1.810196051
1547	2011-11-01 00:00:00+00	IPCA-E	0.0046	1.0046	4.649667423	1.802625026
1548	2011-12-01 00:00:00+00	IPCA-E	0.0056	1.0056	4.671055893	1.79437092
1549	2012-01-01 00:00:00+00	IPCA-E	0.0065	1.0065	4.697213806	1.784378401
1550	2012-02-01 00:00:00+00	IPCA-E	0.0053	1.0053	4.727745696	1.772854844
1551	2012-03-01 00:00:00+00	IPCA-E	0.0025	1.0025	4.752802748	1.76350825
1552	2012-04-01 00:00:00+00	IPCA-E	0.0043	1.0043	4.764684755	1.759110474
1553	2012-05-01 00:00:00+00	IPCA-E	0.0051	1.0051	4.785172899	1.751578686
1554	2012-06-01 00:00:00+00	IPCA-E	0.0018	1.0018	4.809577281	1.742690962
1555	2012-07-01 00:00:00+00	IPCA-E	0.0033	1.0033	4.81823452	1.739559754
1556	2012-08-01 00:00:00+00	IPCA-E	0.0039	1.0039	4.834134694	1.733838089
1557	2012-09-01 00:00:00+00	IPCA-E	0.0048	1.0048	4.852987819	1.727102389
1558	2012-10-01 00:00:00+00	IPCA-E	0.0065	1.0065	4.876282161	1.7188519
1559	2012-11-01 00:00:00+00	IPCA-E	0.0054	1.0054	4.907977995	1.707751516
1560	2012-12-01 00:00:00+00	IPCA-E	0.0069	1.0069	4.934481076	1.698579188
1561	2013-01-01 00:00:00+00	IPCA-E	0.0088	1.0088	4.968528996	1.686939307
1562	2013-02-01 00:00:00+00	IPCA-E	0.0068	1.0068	5.012252051	1.672223738
1563	2013-03-01 00:00:00+00	IPCA-E	0.0049	1.0049	5.046335365	1.660929418
1564	2013-04-01 00:00:00+00	IPCA-E	0.0051	1.0051	5.071062408	1.652830548
1565	2013-05-01 00:00:00+00	IPCA-E	0.0046	1.0046	5.096924826	1.644443884
1566	2013-06-01 00:00:00+00	IPCA-E	0.0038	1.0038	5.120370681	1.636914079
1567	2013-07-01 00:00:00+00	IPCA-E	0.0007	1.0007	5.139828089	1.630717354
1568	2013-08-01 00:00:00+00	IPCA-E	0.0016	1.0016	5.143425969	1.62957665
1569	2013-09-01 00:00:00+00	IPCA-E	0.0027	1.0027	5.15165545	1.626973492
1570	2013-10-01 00:00:00+00	IPCA-E	0.0048	1.0048	5.16556492	1.622592493
1571	2013-11-01 00:00:00+00	IPCA-E	0.0057	1.0057	5.190359632	1.614841255
1572	2013-12-01 00:00:00+00	IPCA-E	0.0075	1.0075	5.219944682	1.605688828
1573	2014-01-01 00:00:00+00	IPCA-E	0.0067	1.0067	5.259094267	1.59373581
1574	2014-02-01 00:00:00+00	IPCA-E	0.007	1.007	5.294330198	1.583128846
1575	2014-03-01 00:00:00+00	IPCA-E	0.0073	1.0073	5.33139051	1.572123979
1576	2014-04-01 00:00:00+00	IPCA-E	0.0078	1.0078	5.37030966	1.560730645
1577	2014-05-01 00:00:00+00	IPCA-E	0.0058	1.0058	5.412198076	1.548651166
1578	2014-06-01 00:00:00+00	IPCA-E	0.0047	1.0047	5.443588825	1.539720785
1579	2014-07-01 00:00:00+00	IPCA-E	0.0017	1.0017	5.469173692	1.532517951
1580	2014-08-01 00:00:00+00	IPCA-E	0.0014	1.0014	5.478471287	1.529917092
1581	2014-09-01 00:00:00+00	IPCA-E	0.0039	1.0039	5.486141147	1.527778202
1582	2014-10-01 00:00:00+00	IPCA-E	0.0048	1.0048	5.507537098	1.521843015
1583	2014-11-01 00:00:00+00	IPCA-E	0.0038	1.0038	5.533973276	1.514573064
1584	2014-12-01 00:00:00+00	IPCA-E	0.0079	1.0079	5.555002374	1.508839474
1585	2015-01-01 00:00:00+00	IPCA-E	0.0089	1.0089	5.598886893	1.497013071
1586	2015-02-01 00:00:00+00	IPCA-E	0.0133	1.0133	5.648716986	1.483807187
1587	2015-03-01 00:00:00+00	IPCA-E	0.0124	1.0124	5.723844922	1.464331577
1588	2015-04-01 00:00:00+00	IPCA-E	0.0107	1.0107	5.794820599	1.446396263
1589	2015-05-01 00:00:00+00	IPCA-E	0.006	1.006	5.85682518	1.431083668
1590	2015-06-01 00:00:00+00	IPCA-E	0.0099	1.0099	5.891966131	1.422548377
1591	2015-07-01 00:00:00+00	IPCA-E	0.0059	1.0059	5.950296595	1.408603206
1592	2015-08-01 00:00:00+00	IPCA-E	0.0043	1.0043	5.985403345	1.400341193
1593	2015-09-01 00:00:00+00	IPCA-E	0.0039	1.0039	6.01114058	1.394345507
1594	2015-10-01 00:00:00+00	IPCA-E	0.0066	1.0066	6.034584028	1.388928685
1595	2015-11-01 00:00:00+00	IPCA-E	0.0085	1.0085	6.074412282	1.379821861
1596	2015-12-01 00:00:00+00	IPCA-E	0.0118	1.0118	6.126044787	1.368192227
1597	2016-01-01 00:00:00+00	IPCA-E	0.0092	1.0092	6.198332115	1.352235844
1598	2016-02-01 00:00:00+00	IPCA-E	0.0142	1.0142	6.255356771	1.339908684
1599	2016-03-01 00:00:00+00	IPCA-E	0.0043	1.0043	6.344182837	1.321148377
1600	2016-04-01 00:00:00+00	IPCA-E	0.0051	1.0051	6.371462823	1.315491763
1601	2016-05-01 00:00:00+00	IPCA-E	0.0086	1.0086	6.403957284	1.308816797
1602	2016-06-01 00:00:00+00	IPCA-E	0.004	1.004	6.459031316	1.297656947
1603	2016-07-01 00:00:00+00	IPCA-E	0.0054	1.0054	6.484867441	1.292486999
1604	2016-08-01 00:00:00+00	IPCA-E	0.0045	1.0045	6.519885726	1.285545056
1605	2016-09-01 00:00:00+00	IPCA-E	0.0023	1.0023	6.549225211	1.279786019
1606	2016-10-01 00:00:00+00	IPCA-E	0.0019	1.0019	6.564288429	1.276849265
1607	2016-11-01 00:00:00+00	IPCA-E	0.0026	1.0026	6.576760577	1.274427853
1608	2016-12-01 00:00:00+00	IPCA-E	0.0019	1.0019	6.593860155	1.271122933
1609	2017-01-01 00:00:00+00	IPCA-E	0.0031	1.0031	6.606388489	1.268712379
1610	2017-02-01 00:00:00+00	IPCA-E	0.0054	1.0054	6.626868293	1.264791526
1611	2017-03-01 00:00:00+00	IPCA-E	0.0015	1.0015	6.662653382	1.257998335
1612	2017-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	6.672647362	1.256114163
1613	2017-05-01 00:00:00+00	IPCA-E	0.0024	1.0024	6.686659922	1.253481851
1614	2017-06-01 00:00:00+00	IPCA-E	0.0016	1.0016	6.702707906	1.250480698
1615	2017-07-01 00:00:00+00	IPCA-E	-0.0018	0.9982	6.713432238	1.248483125
1616	2017-08-01 00:00:00+00	IPCA-E	0.0035	1.0035	6.70134806	1.250734447
1617	2017-09-01 00:00:00+00	IPCA-E	0.0011	1.0011	6.724802778	1.246372144
1618	2017-10-01 00:00:00+00	IPCA-E	0.0034	1.0034	6.732200062	1.245002641
1619	2017-11-01 00:00:00+00	IPCA-E	0.0032	1.0032	6.755089542	1.240783976
1620	2017-12-01 00:00:00+00	IPCA-E	0.0035	1.0035	6.776705828	1.236826132
1621	2018-01-01 00:00:00+00	IPCA-E	0.0039	1.0039	6.800424299	1.232512339
1622	2018-02-01 00:00:00+00	IPCA-E	0.0038	1.0038	6.826945953	1.227724215
1623	2018-03-01 00:00:00+00	IPCA-E	0.001	1.001	6.852888348	1.223076524
1624	2018-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	6.859741236	1.221854669
1625	2018-05-01 00:00:00+00	IPCA-E	0.0014	1.0014	6.874146693	1.219294151
1626	2018-06-01 00:00:00+00	IPCA-E	0.0111	1.0111	6.883770498	1.217589526
1627	2018-07-01 00:00:00+00	IPCA-E	0.0064	1.0064	6.960180351	1.204222655
1628	2018-08-01 00:00:00+00	IPCA-E	0.0013	1.0013	7.004725505	1.196564641
1629	2018-09-01 00:00:00+00	IPCA-E	0.0009	1.0009	7.013831648	1.195011126
1630	2018-10-01 00:00:00+00	IPCA-E	0.0058	1.0058	7.020144097	1.193936584
1631	2018-11-01 00:00:00+00	IPCA-E	0.0019	1.0019	7.060860933	1.187051684
1632	2018-12-01 00:00:00+00	IPCA-E	-0.0016	0.9984	7.074276568	1.184800563
1633	2019-01-01 00:00:00+00	IPCA-E	0.003	1.003	7.062957726	1.186699282
1634	2019-02-01 00:00:00+00	IPCA-E	0.0034	1.0034	7.084146599	1.183149832
1635	2019-03-01 00:00:00+00	IPCA-E	0.0054	1.0054	7.108232697	1.179140754
1636	2019-04-01 00:00:00+00	IPCA-E	0.0072	1.0072	7.146617154	1.172807593
1637	2019-05-01 00:00:00+00	IPCA-E	0.0035	1.0035	7.198072797	1.164423742
1638	2019-06-01 00:00:00+00	IPCA-E	0.0006	1.0006	7.223266052	1.160362473
1639	2019-07-01 00:00:00+00	IPCA-E	0.0009	1.0009	7.227600012	1.159666673
1640	2019-08-01 00:00:00+00	IPCA-E	0.0008	1.0008	7.234104852	1.158623911
1641	2019-09-01 00:00:00+00	IPCA-E	0.0009	1.0009	7.239892136	1.157697753
1642	2019-10-01 00:00:00+00	IPCA-E	0.0009	1.0009	7.246408039	1.156656762
1643	2019-11-01 00:00:00+00	IPCA-E	0.0014	1.0014	7.252929806	1.155616707
1644	2019-12-01 00:00:00+00	IPCA-E	0.0105	1.0105	7.263083908	1.154001106
1645	2020-01-01 00:00:00+00	IPCA-E	0.0071	1.0071	7.339346289	1.142010001
1646	2020-02-01 00:00:00+00	IPCA-E	0.0022	1.0022	7.391455647	1.133958892
1647	2020-03-01 00:00:00+00	IPCA-E	0.0002	1.0002	7.40771685	1.131469659
1648	2020-04-01 00:00:00+00	IPCA-E	-0.0001	0.9999	7.409198393	1.13124341
1649	2020-05-01 00:00:00+00	IPCA-E	-0.0059	0.9941	7.408457473	1.131356546
1650	2020-06-01 00:00:00+00	IPCA-E	0.0002	1.0002	7.364747574	1.138071166
1651	2020-07-01 00:00:00+00	IPCA-E	0.003	1.003	7.366220524	1.137843597
1652	2020-08-01 00:00:00+00	IPCA-E	0.0023	1.0023	7.388319185	1.134440276
1653	2020-09-01 00:00:00+00	IPCA-E	0.0045	1.0045	7.405312319	1.131837051
1654	2020-10-01 00:00:00+00	IPCA-E	0.0094	1.0094	7.438636225	1.126766602
1655	2020-11-01 00:00:00+00	IPCA-E	0.0081	1.0081	7.508559405	1.116273629
1656	2020-12-01 00:00:00+00	IPCA-E	0.0106	1.0106	7.569378737	1.107304463
1657	2021-01-01 00:00:00+00	IPCA-E	0.0078	1.0078	7.649614151	1.095690148
1658	2021-02-01 00:00:00+00	IPCA-E	0.0048	1.0048	7.709281142	1.08720991
1659	2021-03-01 00:00:00+00	IPCA-E	0.0093	1.0093	7.746285691	1.082016232
1660	2021-04-01 00:00:00+00	IPCA-E	0.006	1.006	7.818326148	1.072046203
1661	2021-05-01 00:00:00+00	IPCA-E	0.0044	1.0044	7.865236105	1.065652289
1662	2021-06-01 00:00:00+00	IPCA-E	0.0083	1.0083	7.899843144	1.06098396
1663	2021-07-01 00:00:00+00	IPCA-E	0.0072	1.0072	7.965411842	1.052250282
1664	2021-08-01 00:00:00+00	IPCA-E	0.0089	1.0089	8.022762807	1.044728239
1665	2021-09-01 00:00:00+00	IPCA-E	0.0114	1.0114	8.094165396	1.035512181
1666	2021-10-01 00:00:00+00	IPCA-E	0.012	1.012	8.186438882	1.0238404
1667	2021-11-01 00:00:00+00	IPCA-E	0.0117	1.0117	8.284676148	1.0117
1668	2021-12-01 00:00:00+00	IPCA-E	0.0078	1.0078	8.381606859	1.0
\.


--
-- Data for Name: t210_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t210_tabela_pnep (id, data, indexador, variacao_mensal, numero_indice, fator_vigente, indice_correcao) FROM stdin;
328	1964-10-01 00:00:00+00	ORTN	0.0	1.0	1620.6956	0.004549313
329	1964-11-01 00:00:00+00	ORTN	0.0	1.0	1620.6956	0.004549313
330	1964-12-01 00:00:00+00	ORTN	0.130000001	1.130000001	1620.6956	0.004549313
331	1965-01-01 00:00:00+00	ORTN	0.0	1.0	1831.38603	0.004025941
332	1965-02-01 00:00:00+00	ORTN	0.0	1.0	1831.38603	0.004025941
333	1965-03-01 00:00:00+00	ORTN	0.185840713	1.185840713	1831.38603	0.004025941
334	1965-04-01 00:00:00+00	ORTN	0.0	1.0	2171.732116	0.00339501
335	1965-05-01 00:00:00+00	ORTN	0.0	1.0	2171.732116	0.00339501
336	1965-06-01 00:00:00+00	ORTN	0.134328344	1.134328344	2171.732116	0.00339501
337	1965-07-01 00:00:00+00	ORTN	0.0	1.0	2463.457294	0.002992969
338	1965-08-01 00:00:00+00	ORTN	0.032894753	1.032894753	2463.457294	0.002992969
339	1965-09-01 00:00:00+00	ORTN	0.012738835	1.012738835	2544.492113	0.002897651
340	1965-10-01 00:00:00+00	ORTN	0.009433975	1.009433975	2576.905977	0.002861203
341	1965-11-01 00:00:00+00	ORTN	0.015576314	1.015576314	2601.216445	0.002834463
342	1965-12-01 00:00:00+00	ORTN	0.018404928	1.018404928	2641.73381	0.002790989
343	1966-01-01 00:00:00+00	ORTN	0.027108437	1.027108437	2690.354731	0.00274055
344	1966-02-01 00:00:00+00	ORTN	0.014662738	1.014662738	2763.286043	0.002668219
345	1966-03-01 00:00:00+00	ORTN	0.017341059	1.017341059	2803.803383	0.002629661
346	1966-04-01 00:00:00+00	ORTN	0.038636354	1.038636354	2852.424302	0.002584837
347	1966-05-01 00:00:00+00	ORTN	0.044310705	1.044310705	2962.631578	0.002488683
348	1966-06-01 00:00:00+00	ORTN	0.040859093	1.040859093	3093.907873	0.002383087
349	1966-07-01 00:00:00+00	ORTN	0.028183186	1.028183186	3220.322141	0.002289538
350	1966-08-01 00:00:00+00	ORTN	0.028389642	1.028389642	3311.081079	0.002226781
351	1966-09-01 00:00:00+00	ORTN	0.02855781	1.02855781	3405.081486	0.002165308
352	1966-10-01 00:00:00+00	ORTN	0.026376703	1.026376703	3502.323156	0.002105189
353	1966-11-01 00:00:00+00	ORTN	0.022993684	1.022993684	3594.702894	0.002051088
354	1966-12-01 00:00:00+00	ORTN	0.023799027	1.023799027	3677.358356	0.002004986
355	1967-01-01 00:00:00+00	ORTN	0.023676	1.023676	3764.875907	0.001958378
356	1967-02-01 00:00:00+00	ORTN	0.021026072	1.021026072	3.854013109	1.913084118
357	1967-03-01 00:00:00+00	ORTN	0.014827018	1.014827018	3.935047868	1.873687822
358	1967-04-01 00:00:00+00	ORTN	0.015016234	1.015016234	3.993392894	1.846312513
359	1967-05-01 00:00:00+00	ORTN	0.017992803	1.017992803	4.053358615	1.818998013
360	1967-06-01 00:00:00+00	ORTN	0.028279654	1.028279654	4.126289898	1.786847617
361	1967-07-01 00:00:00+00	ORTN	0.025210084	1.025210084	4.24297995	1.737705894
362	1967-08-01 00:00:00+00	ORTN	0.015275708	1.015275708	4.349945831	1.694975422
363	1967-09-01 00:00:00+00	ORTN	0.004770642	1.004770642	4.416394333	1.669473039
364	1967-10-01 00:00:00+00	ORTN	0.006939372	1.006939372	4.43746337	1.661546396
365	1967-11-01 00:00:00+00	ORTN	0.014145811	1.014145811	4.468256578	1.650095768
366	1967-12-01 00:00:00+00	ORTN	0.018597997	1.018597997	4.53146369	1.62707941
367	1968-01-01 00:00:00+00	ORTN	0.01755618	1.01755618	4.615739838	1.5973715
368	1968-02-01 00:00:00+00	ORTN	0.014492754	1.014492754	4.696774597	1.569811605
369	1968-03-01 00:00:00+00	ORTN	0.01462585	1.01462585	4.764843794	1.547385725
370	1968-04-01 00:00:00+00	ORTN	0.018773047	1.018773047	4.834533686	1.525080131
371	1968-05-01 00:00:00+00	ORTN	0.026653504	1.026653504	4.925292615	1.496977306
372	1968-06-01 00:00:00+00	ORTN	0.028525641	1.028525641	5.056568924	1.458113472
373	1968-07-01 00:00:00+00	ORTN	0.022436896	1.022436896	5.200810794	1.417673428
374	1968-08-01 00:00:00+00	ORTN	0.018287108	1.018287108	5.317500846	1.386563253
375	1968-09-01 00:00:00+00	ORTN	0.014067644	1.014067644	5.414742556	1.361662386
376	1968-10-01 00:00:00+00	ORTN	0.015053129	1.015053129	5.490915229	1.342772737
377	1968-11-01 00:00:00+00	ORTN	0.016283803	1.016283803	5.573570683	1.322859561
378	1968-12-01 00:00:00+00	ORTN	0.019170243	1.019170243	5.664329612	1.301663528
379	1969-01-01 00:00:00+00	ORTN	0.018248175	1.018248175	5.772916188	1.277179683
380	1969-02-01 00:00:00+00	ORTN	0.017645437	1.017645437	5.878261374	1.254291158
381	1969-03-01 00:00:00+00	ORTN	0.014088323	1.014088323	5.981985865	1.232542409
382	1969-04-01 00:00:00+00	ORTN	0.015495592	1.015495592	6.066262014	1.215419191
383	1969-05-01 00:00:00+00	ORTN	0.012365167	1.012365167	6.160262333	1.196872937
384	1969-06-01 00:00:00+00	ORTN	0.013513514	1.013513514	6.236435006	1.182254166
385	1969-07-01 00:00:00+00	ORTN	0.006923077	1.006923077	6.320711155	1.166490777
386	1969-08-01 00:00:00+00	ORTN	0.007384772	1.007384772	6.364469925	1.158470596
387	1969-09-01 00:00:00+00	ORTN	0.009100101	1.009100101	6.411470084	1.149978269
388	1969-10-01 00:00:00+00	ORTN	0.016282565	1.016282565	6.469815111	1.139607723
389	1969-11-01 00:00:00+00	ORTN	0.020951442	1.020951442	6.575160296	1.121349281
390	1969-12-01 00:00:00+00	ORTN	0.022452921	1.022452921	6.712919386	1.098337526
391	1970-01-01 00:00:00+00	ORTN	0.022432113	1.022432113	6.863644036	1.074218189
392	1970-02-01 00:00:00+00	ORTN	0.020092379	1.020092379	7.017610077	1.050649892
393	1970-03-01 00:00:00+00	ORTN	0.0113199	1.0113199	7.158610557	1.029955633
394	1970-04-01 00:00:00+00	ORTN	0.00917842	1.00917842	7.239645315	1.018427139
395	1970-05-01 00:00:00+00	ORTN	0.00931677	1.00931677	7.306093817	1.009164603
396	1970-06-01 00:00:00+00	ORTN	0.015384615	1.015384615	7.374163014	0.999849238
397	1970-07-01 00:00:00+00	ORTN	0.008874459	1.008874459	7.487611676	0.984700007
398	1970-08-01 00:00:00+00	ORTN	0.009440034	1.009440034	7.554060178	0.976038196
399	1970-09-01 00:00:00+00	ORTN	0.011902232	1.011902232	7.625370765	0.966910527
400	1970-10-01 00:00:00+00	ORTN	0.018903592	1.018903592	7.716129695	0.955537499
401	1970-11-01 00:00:00+00	ORTN	0.021232736	1.021232736	7.86199226	0.93780953
402	1970-12-01 00:00:00+00	ORTN	0.019580137	1.019580137	8.028923862	0.91831127
403	1971-01-01 00:00:00+00	ORTN	0.018412196	1.018412196	8.186131294	0.900675912
404	1971-02-01 00:00:00+00	ORTN	0.013219285	1.013219285	8.336855944	0.884392308
405	1971-03-01 00:00:00+00	ORTN	0.009976976	1.009976976	8.447063216	0.872853805
406	1971-04-01 00:00:00+00	ORTN	0.011588146	1.011588146	8.531339364	0.864231389
407	1971-05-01 00:00:00+00	ORTN	0.0142723	1.0142723	8.63020177	0.854331274
408	1971-06-01 00:00:00+00	ORTN	0.019811146	1.019811146	8.753374602	0.842309578
409	1971-07-01 00:00:00+00	ORTN	0.019970951	1.019970951	8.926788985	0.825946629
410	1971-08-01 00:00:00+00	ORTN	0.021003916	1.021003916	9.105065454	0.809774659
411	1971-09-01 00:00:00+00	ORTN	0.02179219	1.02179219	9.296307483	0.793116114
412	1971-10-01 00:00:00+00	ORTN	0.020133083	1.020133083	9.49889438	0.776200995
413	1971-11-01 00:00:00+00	ORTN	0.016390701	1.016390701	9.69013641	0.760882093
414	1971-12-01 00:00:00+00	ORTN	0.012341616	1.012341616	9.848964536	0.74861182
415	1972-01-01 00:00:00+00	ORTN	0.012028609	1.012028609	9.970516673	0.739485376
416	1972-02-01 00:00:00+00	ORTN	0.013331192	1.013331192	10.09044812	0.730696118
417	1972-03-01 00:00:00+00	ORTN	0.011412268	1.011412268	10.22496582	0.721083219
418	1972-04-01 00:00:00+00	ORTN	0.013320796	1.013320796	10.34165587	0.712946879
419	1972-05-01 00:00:00+00	ORTN	0.016857408	1.016857408	10.47941496	0.703574703
420	1972-06-01 00:00:00+00	ORTN	0.017946768	1.017946768	10.65607073	0.691910879
421	1972-07-01 00:00:00+00	ORTN	0.014343344	1.014343344	10.84731276	0.679712241
422	1972-08-01 00:00:00+00	ORTN	0.008395935	1.008395935	11.0028995	0.670100756
423	1972-09-01 00:00:00+00	ORTN	0.007157464	1.007157464	11.09527912	0.664521477
424	1972-10-01 00:00:00+00	ORTN	0.009572154	1.009572154	11.17469318	0.659798989
425	1972-11-01 00:00:00+00	ORTN	0.006608246	1.006608246	11.28165906	0.653543174
426	1972-12-01 00:00:00+00	ORTN	0.011417154	1.011417154	11.35621104	0.649252752
427	1973-01-01 00:00:00+00	ORTN	0.00987724	1.00987724	11.48586666	0.641923809
428	1973-02-01 00:00:00+00	ORTN	0.010479251	1.010479251	11.59931532	0.635645387
429	1973-03-01 00:00:00+00	ORTN	0.012029867	1.012029867	11.72086746	0.629053378
430	1973-04-01 00:00:00+00	ORTN	0.011476978	1.011476978	11.86186793	0.621575903
431	1973-05-01 00:00:00+00	ORTN	0.012697555	1.012697555	11.99800633	0.614523035
432	1973-06-01 00:00:00+00	ORTN	0.011071095	1.011071095	12.15035167	0.606817931
433	1973-07-01 00:00:00+00	ORTN	0.008970976	1.008970976	12.28486937	0.600173355
434	1973-08-01 00:00:00+00	ORTN	0.008368201	1.008368201	12.39507665	0.594837086
435	1973-09-01 00:00:00+00	ORTN	0.009725104	1.009725104	12.49880114	0.589900678
436	1973-10-01 00:00:00+00	ORTN	0.006806215	1.006806215	12.62035327	0.584219087
437	1973-11-01 00:00:00+00	ORTN	0.008545918	1.008545918	12.70625012	0.580269647
438	1973-12-01 00:00:00+00	ORTN	0.019602883	1.019602883	12.81483669	0.575352729
439	1974-01-01 00:00:00+00	ORTN	0.010543289	1.010543289	13.06604444	0.564290999
440	1974-02-01 00:00:00+00	ORTN	0.014974837	1.014974837	13.20380353	0.558403588
441	1974-03-01 00:00:00+00	ORTN	0.012577095	1.012577095	13.40152835	0.550164957
442	1974-04-01 00:00:00+00	ORTN	0.016362116	1.016362116	13.57008064	0.543331426
443	1974-05-01 00:00:00+00	ORTN	0.021269095	1.021269095	13.79211588	0.534584493
444	1974-06-01 00:00:00+00	ORTN	0.03325279	1.03325279	14.08546171	0.52345116
445	1974-07-01 00:00:00+00	ORTN	0.043986637	1.043986637	14.55384261	0.506605126
446	1974-08-01 00:00:00+00	ORTN	0.04768	1.04768	15.1940172	0.485260163
447	1974-09-01 00:00:00+00	ORTN	0.037466911	1.037466911	15.91846794	0.463175935
448	1974-10-01 00:00:00+00	ORTN	0.021589794	1.021589794	16.51488376	0.446448875
449	1974-11-01 00:00:00+00	ORTN	0.012584054	1.012584054	16.8714367	0.437013836
450	1974-12-01 00:00:00+00	ORTN	0.012807134	1.012807134	17.08374777	0.431582775
451	1975-01-01 00:00:00+00	ORTN	0.015174223	1.015174223	17.30254161	0.426125331
452	1975-02-01 00:00:00+00	ORTN	0.01660823	1.01660823	17.56509423	0.419755862
453	1975-03-01 00:00:00+00	ORTN	0.018787439	1.018787439	17.85681936	0.412898351
454	1975-04-01 00:00:00+00	ORTN	0.019955457	1.019955457	18.19230326	0.405284101
455	1975-05-01 00:00:00+00	ORTN	0.023058782	1.023058782	18.55533898	0.397354706
456	1975-06-01 00:00:00+00	ORTN	0.018270298	1.018270298	18.9832025	0.388398705
457	1975-07-01 00:00:00+00	ORTN	0.017104049	1.017104049	19.33003127	0.381429868
458	1975-08-01 00:00:00+00	ORTN	0.015579919	1.015579919	19.66065308	0.375015583
459	1975-09-01 00:00:00+00	ORTN	0.020292208	1.020292208	19.96696447	0.369262503
460	1975-10-01 00:00:00+00	ORTN	0.021718377	1.021718377	20.37213826	0.36191838
461	1975-11-01 00:00:00+00	ORTN	0.019465857	1.019465857	20.81458805	0.354225183
462	1975-12-01 00:00:00+00	ORTN	0.018406782	1.018406782	21.21976183	0.347461547
463	1976-01-01 00:00:00+00	ORTN	0.01919904	1.01919904	21.61034937	0.341181493
464	1976-02-01 00:00:00+00	ORTN	0.022369389	1.022369389	22.02524733	0.334754528
465	1976-03-01 00:00:00+00	ORTN	0.023751259	1.023751259	22.51793867	0.327430116
466	1976-04-01 00:00:00+00	ORTN	0.025239033	1.025239033	23.05276807	0.319833664
467	1976-05-01 00:00:00+00	ORTN	0.02976068	1.02976068	23.63459764	0.311960093
468	1976-06-01 00:00:00+00	ORTN	0.0294999	1.0294999	24.33797934	0.302944265
469	1976-07-01 00:00:00+00	ORTN	0.025549806	1.025549806	25.0559473	0.294263521
470	1976-08-01 00:00:00+00	ORTN	0.027877641	1.027877641	25.69612189	0.286932452
471	1976-09-01 00:00:00+00	ORTN	0.032889489	1.032889489	26.41246915	0.279150398
472	1976-10-01 00:00:00+00	ORTN	0.03606012	1.03606012	27.28116176	0.270261631
473	1976-11-01 00:00:00+00	ORTN	0.030275229	1.030275229	28.26492373	0.260855162
474	1976-12-01 00:00:00+00	ORTN	0.022094835	1.022094835	29.12065078	0.253189784
475	1977-01-01 00:00:00+00	ORTN	0.017315546	1.017315546	29.76406676	0.247716528
476	1977-02-01 00:00:00+00	ORTN	0.019697051	1.019697051	30.27944783	0.243500189
477	1977-03-01 00:00:00+00	ORTN	0.022675975	1.022675975	30.87586365	0.2387966
478	1977-04-01 00:00:00+00	ORTN	0.02884566	1.02884566	31.57600396	0.233501721
479	1977-05-01 00:00:00+00	ORTN	0.032177601	1.032177601	32.48683464	0.226955053
480	1977-06-01 00:00:00+00	ORTN	0.033349444	1.033349444	33.53218303	0.219879847
481	1977-07-01 00:00:00+00	ORTN	0.026707203	1.026707203	34.6504627	0.212783631
482	1977-08-01 00:00:00+00	ORTN	0.020500205	1.020500205	35.57587963	0.207248601
483	1977-09-01 00:00:00+00	ORTN	0.014017231	1.014017231	36.30519247	0.20308531
484	1977-10-01 00:00:00+00	ORTN	0.013867488	1.013867488	36.81409075	0.200277967
485	1977-11-01 00:00:00+00	ORTN	0.014937038	1.014937038	37.32460973	0.197538603
486	1977-12-01 00:00:00+00	ORTN	0.019594421	1.019594421	37.88212886	0.194631387
487	1978-01-01 00:00:00+00	ORTN	0.021106076	1.021106076	38.62440724	0.190890988
488	1978-02-01 00:00:00+00	ORTN	0.023176495	1.023176495	39.43961691	0.186945306
489	1978-03-01 00:00:00+00	ORTN	0.025784168	1.025784168	40.353689	0.182710712
490	1978-04-01 00:00:00+00	ORTN	0.02920794	1.02920794	41.3941753	0.178118086
491	1978-05-01 00:00:00+00	ORTN	0.030471336	1.030471336	42.60321389	0.173063264
492	1978-06-01 00:00:00+00	ORTN	0.03012404	1.03012404	43.90139071	0.167945734
493	1978-07-01 00:00:00+00	ORTN	0.030604931	1.030604931	45.22387798	0.163034476
494	1978-08-01 00:00:00+00	ORTN	0.027783573	1.027783573	46.60795164	0.158192991
495	1978-09-01 00:00:00+00	ORTN	0.026119024	1.026119024	47.90288708	0.153916637
496	1978-10-01 00:00:00+00	ORTN	0.023739655	1.023739655	49.15406375	0.149998814
497	1978-11-01 00:00:00+00	ORTN	0.025604689	1.025604689	50.32096428	0.146520469
498	1978-12-01 00:00:00+00	ORTN	0.026315789	1.026315789	51.60941693	0.142862518
499	1979-01-01 00:00:00+00	ORTN	0.022581238	1.022581238	52.96755948	0.139199377
500	1979-02-01 00:00:00+00	ORTN	0.023249551	1.023249551	54.16363253	0.136125495
501	1979-03-01 00:00:00+00	ORTN	0.024972951	1.024972951	55.42291268	0.133032548
502	1979-04-01 00:00:00+00	ORTN	0.037459702	1.037459702	56.80698634	0.129791276
503	1979-05-01 00:00:00+00	ORTN	0.038224617	1.038224617	58.93495911	0.125104885
504	1979-06-01 00:00:00+00	ORTN	0.033267999	1.033267999	61.18772537	0.120498862
505	1979-07-01 00:00:00+00	ORTN	0.027198154	1.027198154	63.22331853	0.116619175
506	1979-08-01 00:00:00+00	ORTN	0.028773927	1.028773927	64.94287608	0.113531333
507	1979-09-01 00:00:00+00	ORTN	0.040170774	1.040170774	66.81153764	0.110355958
508	1979-10-01 00:00:00+00	ORTN	0.045872201	1.045872201	69.49540883	0.106094077
509	1979-11-01 00:00:00+00	ORTN	0.045131224	1.045131224	72.68331622	0.101440766
510	1979-12-01 00:00:00+00	ORTN	0.040792815	1.040792815	75.96360322	0.097060315
511	1980-01-01 00:00:00+00	ORTN	0.042022836	1.042022836	79.06237243	0.093256135
512	1980-02-01 00:00:00+00	ORTN	0.037003521	1.037003521	82.38479753	0.089495289
513	1980-03-01 00:00:00+00	ORTN	0.036992071	1.036992071	85.43332509	0.086301818
514	1980-04-01 00:00:00+00	ORTN	0.036989609	1.036989609	88.59368068	0.083223219
515	1980-05-01 00:00:00+00	ORTN	0.033994284	1.033994284	91.87072632	0.080254631
516	1980-06-01 00:00:00+00	ORTN	0.032006551	1.032006551	94.99380592	0.077616127
517	1980-07-01 00:00:00+00	ORTN	0.032005819	1.032005819	98.03423006	0.075208948
518	1980-08-01 00:00:00+00	ORTN	0.032006408	1.032006408	101.1718959	0.072876476
519	1980-09-01 00:00:00+00	ORTN	0.030004812	1.030004812	104.4100448	0.070616302
520	1980-10-01 00:00:00+00	ORTN	0.031994093	1.031994093	107.5428486	0.068559196
521	1980-11-01 00:00:00+00	ORTN	0.031995211	1.031995211	110.9835844	0.06643371
522	1980-12-01 00:00:00+00	ORTN	0.044997877	1.044997877	114.5345276	0.064374049
523	1981-01-01 00:00:00+00	ORTN	0.05000677	1.05000677	119.6883382	0.061602086
524	1981-02-01 00:00:00+00	ORTN	0.064996196	1.064996196	125.6735655	0.058668275
525	1981-03-01 00:00:00+00	ORTN	0.063003281	1.063003281	133.8418692	0.055087779
526	1981-04-01 00:00:00+00	ORTN	0.059998178	1.059998178	142.2743461	0.051822774
527	1981-05-01 00:00:00+00	ORTN	0.059998064	1.059998064	150.8105477	0.048889493
528	1981-06-01 00:00:00+00	ORTN	0.059998379	1.059998379	159.8588886	0.046122248
529	1981-07-01 00:00:00+00	ORTN	0.059997704	1.059997704	169.4501628	0.043511621
530	1981-08-01 00:00:00+00	ORTN	0.058000308	1.058000308	179.6167835	0.041048788
531	1981-09-01 00:00:00+00	ORTN	0.057003966	1.057003966	190.0346122	0.038798465
532	1981-10-01 00:00:00+00	ORTN	0.057003848	1.057003848	200.8673388	0.036706073
533	1981-11-01 00:00:00+00	ORTN	0.054998322	1.054998322	212.31755	0.034726528
534	1981-12-01 00:00:00+00	ORTN	0.052000955	1.052000955	223.9946589	0.032916192
535	1982-01-01 00:00:00+00	ORTN	0.050001375	1.050001375	235.6425951	0.031289128
536	1982-02-01 00:00:00+00	ORTN	0.049998035	1.049998035	247.4250488	0.02979913
537	1982-03-01 00:00:00+00	ORTN	0.050000313	1.050000313	259.7958151	0.028380177
538	1982-04-01 00:00:00+00	ORTN	0.054998394	1.054998394	272.785687	0.027028732
539	1982-05-01 00:00:00+00	ORTN	0.054997719	1.054997719	287.7884618	0.02561969
540	1982-06-01 00:00:00+00	ORTN	0.055002483	1.055002483	303.6161708	0.024284119
541	1982-07-01 00:00:00+00	ORTN	0.059997675	1.059997675	320.3158141	0.023018068
542	1982-08-01 00:00:00+00	ORTN	0.070000334	1.070000334	339.5340181	0.021715206
543	1982-09-01 00:00:00+00	ORTN	0.069997859	1.069997859	363.3015127	0.020294579
544	1982-10-01 00:00:00+00	ORTN	0.070000625	1.070000625	388.7318409	0.018966934
545	1982-11-01 00:00:00+00	ORTN	0.065000289	1.065000289	415.9433128	0.017726096
546	1982-12-01 00:00:00+00	ORTN	0.064999069	1.064999069	442.9797485	0.016644217
547	1983-01-01 00:00:00+00	ORTN	0.060001442	1.060001442	471.7730196	0.015628387
548	1983-02-01 00:00:00+00	ORTN	0.06699853	1.06699853	500.0800812	0.014743741
549	1983-03-01 00:00:00+00	ORTN	0.090000367	1.090000367	533.5847117	0.013817958
550	1983-04-01 00:00:00+00	ORTN	0.09000092	1.09000092	581.6075313	0.012677022
551	1983-05-01 00:00:00+00	ORTN	0.080000305	1.080000305	633.952744	0.011630285
552	1983-06-01 00:00:00+00	ORTN	0.077999031	1.077999031	684.6691571	0.01076878
553	1983-07-01 00:00:00+00	ORTN	0.089999008	1.089999008	738.0726877	0.0099896
554	1983-08-01 00:00:00+00	ORTN	0.084999531	1.084999531	804.4984973	0.009164779
555	1983-09-01 00:00:00+00	ORTN	0.094999109	1.094999109	872.8804926	0.008446805
556	1983-10-01 00:00:00+00	ORTN	0.097000584	1.097000584	955.8033614	0.007713983
557	1983-11-01 00:00:00+00	ORTN	0.083999661	1.083999661	1048.516845	0.007031886
558	1983-12-01 00:00:00+00	ORTN	0.076000397	1.076000397	1136.591905	0.006486982
559	1984-01-01 00:00:00+00	ORTN	0.098000526	1.098000526	1222.973341	0.006028791
560	1984-02-01 00:00:00+00	ORTN	0.123000568	1.123000568	1342.825373	0.0054907
561	1984-03-01 00:00:00+00	ORTN	0.099999888	1.099999888	1507.993656	0.004889312
562	1984-04-01 00:00:00+00	ORTN	0.088999887	1.088999887	1658.792853	0.004444829
563	1984-05-01 00:00:00+00	ORTN	0.088999714	1.088999714	1806.42523	0.00408157
564	1984-06-01 00:00:00+00	ORTN	0.09199967	1.09199967	1967.196558	0.003747999
565	1984-07-01 00:00:00+00	ORTN	0.102999932	1.102999932	2148.177993	0.003432235
566	1984-08-01 00:00:00+00	ORTN	0.106000028	1.106000028	2369.44018	0.003111727
567	1984-09-01 00:00:00+00	ORTN	0.104974079	1.104974079	2620.600906	0.002813496
568	1984-10-01 00:00:00+00	ORTN	0.1260262	1.1260262	2895.696073	0.00254621
569	1984-11-01 00:00:00+00	ORTN	0.098999888	1.098999888	3260.629646	0.002261235
570	1984-12-01 00:00:00+00	ORTN	0.105000086	1.105000086	3583.431615	0.002057539
571	1985-01-01 00:00:00+00	ORTN	0.126000021	1.126000021	3959.692242	0.001862026
572	1985-02-01 00:00:00+00	ORTN	0.101999988	1.101999988	4458.613548	0.001653665
573	1985-03-01 00:00:00+00	ORTN	0.126999835	1.126999835	4913.392075	0.001500603
574	1985-04-01 00:00:00+00	ORTN	0.118292994	1.118292994	5537.392058	0.001331502
575	1985-05-01 00:00:00+00	ORTN	0.100058988	1.100058988	6192.426742	0.001190656
576	1985-06-01 00:00:00+00	ORTN	0.092082024	1.092082024	6812.034697	0.001082357
577	1985-07-01 00:00:00+00	ORTN	0.076139997	1.076139997	7439.300637	0.000991095
578	1985-08-01 00:00:00+00	ORTN	0.08179703	1.08179703	8005.728966	0.000920972
579	1985-09-01 00:00:00+00	ORTN	0.090999965	1.090999965	8660.573814	0.000851335
580	1985-10-01 00:00:00+00	ORTN	0.090000051	1.090000051	9448.685731	0.000780326
581	1985-11-01 00:00:00+00	ORTN	0.111199992	1.111199992	10299.06792	0.000715895
582	1985-12-01 00:00:00+00	ORTN	0.133600014	1.133600014	11444.3242	0.000644254
583	1986-01-01 00:00:00+00	ORTN	0.162300164	1.162300164	12973.28606	0.000568326
584	1986-02-01 00:00:00+00	ORTN	0.143601	1.143601	15.07885252	0.488966336
585	1986-03-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.427567251
586	1986-04-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.427567251
587	1986-05-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.427567251
588	1986-06-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.427567251
589	1986-07-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.427567251
590	1986-08-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.427567251
591	1986-09-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.427567251
592	1986-10-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.427567251
593	1986-11-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.427567251
594	1986-12-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.427567251
595	1987-01-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.427567251
596	1987-02-01 00:00:00+00	OTN	0.706860902	1.706860902	17.24419083	0.427567251
597	1987-03-01 00:00:00+00	OTN	0.145146193	1.145146193	29.43343511	0.250499177
598	1987-04-01 00:00:00+00	OTN	0.209597538	1.209597538	33.70558615	0.218748644
599	1987-05-01 00:00:00+00	OTN	0.234417237	1.234417237	40.77019403	0.180844155
600	1987-06-01 00:00:00+00	OTN	0.180208031	1.180208031	50.32743025	0.146501644
601	1987-07-01 00:00:00+00	OTN	0.030505607	1.030505607	59.39683736	0.124132051
602	1987-08-01 00:00:00+00	OTN	0.063600498	1.063600498	61.20877395	0.120457425
603	1987-09-01 00:00:00+00	OTN	0.056809978	1.056809978	65.10168245	0.113254389
604	1987-10-01 00:00:00+00	OTN	0.091799957	1.091799957	68.80010762	0.107166275
605	1987-11-01 00:00:00+00	OTN	0.128398206	1.128398206	75.11595455	0.098155596
606	1987-12-01 00:00:00+00	OTN	0.141398497	1.141398497	84.76070832	0.086986664
607	1988-01-01 00:00:00+00	OTN	0.165108722	1.165108722	96.74574507	0.0762106
608	1988-02-01 00:00:00+00	OTN	0.17961179	1.17961179	112.7193114	0.06541072
609	1988-03-01 00:00:00+00	OTN	0.160100924	1.160100924	132.9650287	0.055451056
610	1988-04-01 00:00:00+00	OTN	0.192798681	1.192798681	154.2528526	0.047798476
611	1988-05-01 00:00:00+00	OTN	0.177799112	1.177799112	183.9925991	0.040072543
612	1988-06-01 00:00:00+00	OTN	0.195300349	1.195300349	216.7063199	0.034023241
613	1988-07-01 00:00:00+00	OTN	0.240398932	1.240398932	259.0291398	0.028464177
614	1988-08-01 00:00:00+00	OTN	0.206599817	1.206599817	321.2994684	0.022947599
615	1988-09-01 00:00:00+00	OTN	0.240098492	1.240098492	387.6798797	0.019018401
616	1988-10-01 00:00:00+00	OTN	0.272499575	1.272499575	480.7612341	0.015336202
617	1988-11-01 00:00:00+00	OTN	0.269200707	1.269200707	611.7684659	0.012052029
618	1988-12-01 00:00:00+00	OTN	0.287901	1.287901	776.4569697	0.009495763
619	1989-01-01 00:00:00+00	IPC	0.4272	1.4272	0.999999708	7.373053423
620	1989-02-01 00:00:00+00	IPC	0.1014	1.1014	1.427199583	5.166096849
621	1989-03-01 00:00:00+00	BTN	0.060907336	1.060907336	1.571917621	4.690481977
622	1989-04-01 00:00:00+00	BTN	0.073059776	1.073059776	1.667658935	4.421198552
623	1989-05-01 00:00:00+00	BTN	0.099372562	1.099372562	1.789497724	4.120179183
624	1989-06-01 00:00:00+00	BTN	0.248341817	1.248341817	1.967324698	3.74775515
625	1989-07-01 00:00:00+00	BTN	0.287594217	1.287594217	2.455893688	3.00218666
626	1989-08-01 00:00:00+00	BTN	0.293412024	1.293412024	3.162194511	2.331624839
627	1989-09-01 00:00:00+00	BTN	0.359511797	1.359511797	4.090020404	1.802693029
628	1989-10-01 00:00:00+00	BTN	0.376210877	1.376210877	5.560430989	1.325985573
629	1989-11-01 00:00:00+00	BTN	0.414204703	1.414204703	7.652325606	0.963504645
630	1989-12-01 00:00:00+00	BTN	0.535499972	1.535499972	10.82195486	0.681304936
631	1990-01-01 00:00:00+00	BTN	0.56109498	1.56109498	16.61711139	0.443702344
632	1990-02-01 00:00:00+00	BTN	0.727802864	1.727802864	25.94088917	0.284225079
633	1990-03-01 00:00:00+00	IPC	0.843200001	1.843200001	44.82074259	0.164500873
634	1990-04-01 00:00:00+00	IPC	0.447999999	1.447999999	82.61359279	0.089247435
635	1990-05-01 00:00:00+00	IPC	0.078700001	1.078700001	119.6244823	0.061634969
636	1990-06-01 00:00:00+00	IPC	0.095499999	1.095499999	129.0389291	0.057138193
637	1990-07-01 00:00:00+00	IPC	0.1292	1.1292	141.3621468	0.052157182
638	1990-08-01 00:00:00+00	IPC	0.1203	1.1203	159.6261362	0.046189499
639	1990-09-01 00:00:00+00	IPC	0.127600001	1.127600001	178.8291604	0.041229581
640	1990-10-01 00:00:00+00	IPC	0.142	1.142	201.6477614	0.036564012
641	1990-11-01 00:00:00+00	IPC	0.1558	1.1558	230.2817435	0.032017524
642	1990-12-01 00:00:00+00	IPC	0.183000001	1.183000001	266.1596392	0.027701613
643	1991-01-01 00:00:00+00	IPC	0.199100001	1.199100001	314.8668535	0.02341641
644	1991-02-01 00:00:00+00	IPC	0.218699997	1.218699997	377.5568443	0.019528321
645	1991-03-01 00:00:00+00	INPC	0.1179	1.1179	460.1285252	0.016023895
646	1991-04-01 00:00:00+00	INPC	0.0501	1.0501	514.3776783	0.014333925
647	1991-05-01 00:00:00+00	INPC	0.0668	1.0668	540.148	0.013650058
648	1991-06-01 00:00:00+00	INPC	0.1083	1.1083	576.2298864	0.01279533
649	1991-07-01 00:00:00+00	INPC	0.1214	1.1214	638.6355831	0.011545005
650	1991-08-01 00:00:00+00	INPC	0.1562	1.1562	716.1659429	0.010295172
651	1991-09-01 00:00:00+00	INPC	0.1562	1.1562	828.0310632	0.008904317
652	1991-10-01 00:00:00+00	INPC	0.2108	1.2108	957.3695153	0.007701364
653	1991-11-01 00:00:00+00	INPC	0.2648	1.2648	1159.183009	0.006360558
654	1991-12-01 00:00:00+00	IPCA-E	0.2288	1.2288	1466.13467	0.005028905
655	1992-01-01 00:00:00+00	UFIR	0.25600448	1.25600448	1801.586282	0.004092533
656	1992-02-01 00:00:00+00	UFIR	0.261004647	1.261004647	2262.800442	0.003258375
657	1992-03-01 00:00:00+00	UFIR	0.220295228	1.220295228	2853.401872	0.002583951
658	1992-04-01 00:00:00+00	UFIR	0.198299849	1.198299849	3481.992689	0.00211748
659	1992-05-01 00:00:00+00	UFIR	0.234496999	1.234496999	4172.471315	0.001767071
660	1992-06-01 00:00:00+00	UFIR	0.23269963	1.23269963	5150.903316	0.001431409
661	1992-07-01 00:00:00+00	UFIR	0.210100325	1.210100325	6349.516614	0.001161199
662	1992-08-01 00:00:00+00	UFIR	0.231398186	1.231398186	7683.552118	0.000959589
663	1992-09-01 00:00:00+00	UFIR	0.233300251	1.233300251	9461.512144	0.000779268
664	1992-10-01 00:00:00+00	UFIR	0.254799402	1.254799402	11668.8853	0.000631856
665	1992-11-01 00:00:00+00	UFIR	0.236999035	1.236999035	14642.1103	0.000503551
666	1992-12-01 00:00:00+00	UFIR	0.23490011	1.23490011	18112.2763	0.000407075
667	1993-01-01 00:00:00+00	UFIR	0.294700749	1.294700749	22366.85199	0.000329642
668	1993-02-01 00:00:00+00	UFIR	0.267200378	1.267200378	28958.38003	0.000254609
669	1993-03-01 00:00:00+00	UFIR	0.25960045	1.25960045	36696.07011	0.000200922
670	1993-04-01 00:00:00+00	UFIR	0.273401817	1.273401817	46222.38642	0.000159513
671	1993-05-01 00:00:00+00	UFIR	0.288099882	1.288099882	58859.67088	0.000125265
672	1993-06-01 00:00:00+00	UFIR	0.303398349	1.303398349	75817.13511	0.0000972478
673	1993-07-01 00:00:00+00	UFIR	0.306576	1.306576	98819.92874	0.000074611
674	1993-08-01 00:00:00+00	UFIR	0.319934568	1.319934568	129.1157472	0.057104199
675	1993-09-01 00:00:00+00	UFIR	0.343838528	1.343838528	170.424338	0.043262901
676	1993-10-01 00:00:00+00	UFIR	0.351646912	1.351646912	229.0227915	0.032193526
677	1993-11-01 00:00:00+00	UFIR	0.339019389	1.339019389	309.5579491	0.023818
678	1993-12-01 00:00:00+00	UFIR	0.366892352	1.366892352	414.5040957	0.017787644
679	1994-01-01 00:00:00+00	UFIR	0.391702625	1.391702625	566.5824784	0.0130132
680	1994-02-01 00:00:00+00	UFIR	0.396984517	1.396984517	788.5143224	0.009350561
681	1994-03-01 00:00:00+00	UFIR	0.436311908	1.436311908	1101.5423	0.006693389
682	1994-04-01 00:00:00+00	UFIR	0.412499564	1.412499564	1582.158322	0.004660122
683	1994-05-01 00:00:00+00	UFIR	0.442096538	1.442096538	2234.797941	0.003299203
684	1994-06-01 00:00:00+00	UFIR	0.446501	1.446501	3222.794374	0.002287782
685	1994-07-01 00:00:00+00	UFIR	0.052153791	1.052153791	1.695191013	4.349392613
686	1994-08-01 00:00:00+00	UFIR	0.050076129	1.050076129	1.783601651	4.133799307
687	1994-09-01 00:00:00+00	UFIR	0.016271951	1.016271951	1.872917518	3.936666296
688	1994-10-01 00:00:00+00	UFIR	0.019023462	1.019023462	1.90339354	3.873634702
689	1994-11-01 00:00:00+00	UFIR	0.029558183	1.029558183	1.939602675	3.801320427
690	1994-12-01 00:00:00+00	UFIR	0.022514355	1.022514355	1.996933806	3.692186114
691	1995-01-01 00:00:00+00	UFIR	0.0	1.0	2.041893482	3.610889272
692	1995-02-01 00:00:00+00	UFIR	0.0	1.0	2.041893482	3.610889272
693	1995-03-01 00:00:00+00	UFIR	0.043446136	1.043446136	2.041893482	3.610889272
694	1995-04-01 00:00:00+00	UFIR	0.0	1.0	2.130605863	3.460542091
695	1995-05-01 00:00:00+00	UFIR	0.0	1.0	2.130605863	3.460542091
696	1995-06-01 00:00:00+00	UFIR	0.071236369	1.071236369	2.130605863	3.460542091
697	1995-07-01 00:00:00+00	UFIR	0.0	1.0	2.282382488	3.230418787
698	1995-08-01 00:00:00+00	UFIR	0.0	1.0	2.282382488	3.230418787
699	1995-09-01 00:00:00+00	UFIR	0.051295611	1.051295611	2.282382488	3.230418787
700	1995-10-01 00:00:00+00	UFIR	0.0	1.0	2.399458692	3.072797749
701	1995-11-01 00:00:00+00	UFIR	0.0	1.0	2.399458692	3.072797749
702	1995-12-01 00:00:00+00	UFIR	0.042127767	1.042127767	2.399458692	3.072797749
703	1996-01-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	2.948580632
704	1996-02-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	2.948580632
705	1996-03-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	2.948580632
706	1996-04-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	2.948580632
707	1996-05-01 00:00:00+00	UFIR	0.0	1.0	2.500542528	2.948580632
708	1996-06-01 00:00:00+00	UFIR	0.067575721	1.067575721	2.500542528	2.948580632
709	1996-07-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	2.761940511
710	1996-08-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	2.761940511
711	1996-09-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	2.761940511
712	1996-10-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	2.761940511
713	1996-11-01 00:00:00+00	UFIR	0.0	1.0	2.669518492	2.761940511
714	1996-12-01 00:00:00+00	UFIR	0.029501526	1.029501526	2.669518492	2.761940511
715	1997-01-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	2.682793994
716	1997-02-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	2.682793994
717	1997-03-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	2.682793994
718	1997-04-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	2.682793994
719	1997-05-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	2.682793994
720	1997-06-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	2.682793994
721	1997-07-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	2.682793994
722	1997-08-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	2.682793994
723	1997-09-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	2.682793994
724	1997-10-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	2.682793994
725	1997-11-01 00:00:00+00	UFIR	0.0	1.0	2.748273361	2.682793994
726	1997-12-01 00:00:00+00	UFIR	0.055226175	1.055226175	2.748273361	2.682793994
727	1998-01-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.54238765
728	1998-02-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.54238765
729	1998-03-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.54238765
730	1998-04-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.54238765
731	1998-05-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.54238765
732	1998-06-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.54238765
733	1998-07-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.54238765
734	1998-08-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.54238765
735	1998-09-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.54238765
736	1998-10-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.54238765
737	1998-11-01 00:00:00+00	UFIR	0.0	1.0	2.900049986	2.54238765
738	1998-12-01 00:00:00+00	UFIR	0.016543544	1.016543544	2.900049986	2.54238765
739	1999-01-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.501012047
740	1999-02-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.501012047
741	1999-03-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.501012047
742	1999-04-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.501012047
743	1999-05-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.501012047
744	1999-06-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.501012047
745	1999-07-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.501012047
746	1999-08-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.501012047
747	1999-09-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.501012047
748	1999-10-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.501012047
749	1999-11-01 00:00:00+00	UFIR	0.0	1.0	2.948027091	2.501012047
750	1999-12-01 00:00:00+00	UFIR	0.08915046	1.08915046	2.948027091	2.501012047
751	2000-01-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.296296185
752	2000-02-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.296296185
753	2000-03-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.296296185
754	2000-04-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.296296185
755	2000-05-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.296296185
756	2000-06-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.296296185
757	2000-07-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.296296185
758	2000-08-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.296296185
759	2000-09-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.296296185
760	2000-10-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.296296185
761	2000-11-01 00:00:00+00	UFIR	0.0	1.0	3.210845063	2.296296185
762	2000-12-01 00:00:00+00	IPCA-E	0.06035557	1.06035557	3.210845063	2.296296185
763	2001-01-01 00:00:00+00	IPCA-E	0.0063	1.0063	3.404637447	2.165590722
764	2001-02-01 00:00:00+00	IPCA-E	0.005	1.005	3.426086663	2.152032915
765	2001-03-01 00:00:00+00	IPCA-E	0.0036	1.0036	3.443217097	2.141326283
766	2001-04-01 00:00:00+00	IPCA-E	0.005	1.005	3.455612678	2.133645161
767	2001-05-01 00:00:00+00	IPCA-E	0.0049	1.0049	3.472890742	2.123030011
768	2001-06-01 00:00:00+00	IPCA-E	0.0038	1.0038	3.489907906	2.112677889
769	2001-07-01 00:00:00+00	IPCA-E	0.0094	1.0094	3.503169556	2.104680105
770	2001-08-01 00:00:00+00	IPCA-E	0.0118	1.0118	3.53609935	2.085080349
771	2001-09-01 00:00:00+00	IPCA-E	0.0038	1.0038	3.577825322	2.060763342
772	2001-10-01 00:00:00+00	IPCA-E	0.0037	1.0037	3.591421059	2.052962086
773	2001-11-01 00:00:00+00	IPCA-E	0.0099	1.0099	3.604709316	2.045394128
774	2001-12-01 00:00:00+00	IPCA-E	0.0055	1.0055	3.640395939	2.02534323
775	2002-01-01 00:00:00+00	IPCA-E	0.0062	1.0062	3.660418116	2.014264774
776	2002-02-01 00:00:00+00	IPCA-E	0.0044	1.0044	3.683112709	2.001853283
777	2002-03-01 00:00:00+00	IPCA-E	0.004	1.004	3.699318405	1.993083715
778	2002-04-01 00:00:00+00	IPCA-E	0.0078	1.0078	3.714115678	1.985143142
779	2002-05-01 00:00:00+00	IPCA-E	0.0042	1.0042	3.743085781	1.969778867
780	2002-06-01 00:00:00+00	IPCA-E	0.0033	1.0033	3.758806741	1.961540398
781	2002-07-01 00:00:00+00	IPCA-E	0.0077	1.0077	3.771210803	1.955088605
782	2002-08-01 00:00:00+00	IPCA-E	0.01	1.01	3.800249126	1.940149454
783	2002-09-01 00:00:00+00	IPCA-E	0.0062	1.0062	3.838251618	1.920940054
784	2002-10-01 00:00:00+00	IPCA-E	0.009	1.009	3.862048778	1.909103611
785	2002-11-01 00:00:00+00	IPCA-E	0.0208	1.0208	3.896807217	1.892074937
786	2002-12-01 00:00:00+00	IPCA-E	0.0305	1.0305	3.977860807	1.853521686
787	2003-01-01 00:00:00+00		0.0197	1.0197	4.099185561	1.79866248
788	2003-02-01 00:00:00+00		0.0183	1.0183	4.099185561	1.79866248
789	2003-03-01 00:00:00+00		0.0178	1.0178	4.099185561	1.79866248
790	2003-04-01 00:00:00+00		0.0187	1.0187	4.099185561	1.79866248
791	2003-05-01 00:00:00+00		0.0197	1.0197	4.099185561	1.79866248
792	2003-06-01 00:00:00+00		0.0186	1.0186	4.099185561	1.79866248
793	2003-07-01 00:00:00+00		0.0208	1.0208	4.099185561	1.79866248
794	2003-08-01 00:00:00+00		0.0177	1.0177	4.099185561	1.79866248
795	2003-09-01 00:00:00+00		0.0168	1.0168	4.099185561	1.79866248
796	2003-10-01 00:00:00+00		0.0164	1.0164	4.099185561	1.79866248
797	2003-11-01 00:00:00+00		0.0134	1.0134	4.099185561	1.79866248
798	2003-12-01 00:00:00+00		0.0137	1.0137	4.099185561	1.79866248
799	2004-01-01 00:00:00+00		0.0127	1.0127	4.099185561	1.79866248
800	2004-02-01 00:00:00+00		0.0108	1.0108	4.099185561	1.79866248
801	2004-03-01 00:00:00+00		0.0138	1.0138	4.099185561	1.79866248
802	2004-04-01 00:00:00+00		0.0118	1.0118	4.099185561	1.79866248
803	2004-05-01 00:00:00+00		0.0123	1.0123	4.099185561	1.79866248
804	2004-06-01 00:00:00+00		0.0123	1.0123	4.099185561	1.79866248
805	2004-07-01 00:00:00+00		0.0129	1.0129	4.099185561	1.79866248
806	2004-08-01 00:00:00+00		0.0129	1.0129	4.099185561	1.79866248
807	2004-09-01 00:00:00+00		0.0125	1.0125	4.099185561	1.79866248
808	2004-10-01 00:00:00+00		0.0121	1.0121	4.099185561	1.79866248
809	2004-11-01 00:00:00+00		0.0125	1.0125	4.099185561	1.79866248
810	2004-12-01 00:00:00+00		0.0148	1.0148	4.099185561	1.79866248
811	2005-01-01 00:00:00+00		0.0138	1.0138	4.099185561	1.79866248
812	2005-02-01 00:00:00+00		0.0122	1.0122	4.099185561	1.79866248
813	2005-03-01 00:00:00+00		0.0153	1.0153	4.099185561	1.79866248
814	2005-04-01 00:00:00+00		0.0141	1.0141	4.099185561	1.79866248
815	2005-05-01 00:00:00+00		0.015	1.015	4.099185561	1.79866248
816	2005-06-01 00:00:00+00		0.0159	1.0159	4.099185561	1.79866248
817	2005-07-01 00:00:00+00		0.0151	1.0151	4.099185561	1.79866248
818	2005-08-01 00:00:00+00		0.0166	1.0166	4.099185561	1.79866248
819	2005-09-01 00:00:00+00		0.015	1.015	4.099185561	1.79866248
820	2005-10-01 00:00:00+00		0.0141	1.0141	4.099185561	1.79866248
821	2005-11-01 00:00:00+00		0.0138	1.0138	4.099185561	1.79866248
822	2005-12-01 00:00:00+00		0.0147	1.0147	4.099185561	1.79866248
823	2006-01-01 00:00:00+00		0.0143	1.0143	4.099185561	1.79866248
824	2006-02-01 00:00:00+00		0.0115	1.0115	4.099185561	1.79866248
825	2006-03-01 00:00:00+00		0.0142	1.0142	4.099185561	1.79866248
826	2006-04-01 00:00:00+00		0.0108	1.0108	4.099185561	1.79866248
827	2006-05-01 00:00:00+00		0.0128	1.0128	4.099185561	1.79866248
828	2006-06-01 00:00:00+00		0.0118	1.0118	4.099185561	1.79866248
829	2006-07-01 00:00:00+00		0.0117	1.0117	4.099185561	1.79866248
830	2006-08-01 00:00:00+00		0.0126	1.0126	4.099185561	1.79866248
831	2006-09-01 00:00:00+00		0.0106	1.0106	4.099185561	1.79866248
832	2006-10-01 00:00:00+00		0.0109	1.0109	4.099185561	1.79866248
833	2006-11-01 00:00:00+00		0.0102	1.0102	4.099185561	1.79866248
834	2006-12-01 00:00:00+00		0.0099	1.0099	4.099185561	1.79866248
835	2007-01-01 00:00:00+00		0.0108	1.0108	4.099185561	1.79866248
836	2007-02-01 00:00:00+00		0.0087	1.0087	4.099185561	1.79866248
837	2007-03-01 00:00:00+00		0.0105	1.0105	4.099185561	1.79866248
838	2007-04-01 00:00:00+00		0.0094	1.0094	4.099185561	1.79866248
839	2007-05-01 00:00:00+00		0.0103	1.0103	4.099185561	1.79866248
840	2007-06-01 00:00:00+00		0.0091	1.0091	4.099185561	1.79866248
841	2007-07-01 00:00:00+00		0.0097	1.0097	4.099185561	1.79866248
842	2007-08-01 00:00:00+00		0.0099	1.0099	4.099185561	1.79866248
843	2007-09-01 00:00:00+00		0.008	1.008	4.099185561	1.79866248
844	2007-10-01 00:00:00+00		0.0093	1.0093	4.099185561	1.79866248
845	2007-11-01 00:00:00+00		0.0084	1.0084	4.099185561	1.79866248
846	2007-12-01 00:00:00+00		0.0084	1.0084	4.099185561	1.79866248
847	2008-01-01 00:00:00+00		0.0093	1.0093	4.099185561	1.79866248
848	2008-02-01 00:00:00+00		0.008	1.008	4.099185561	1.79866248
849	2008-03-01 00:00:00+00		0.0084	1.0084	4.099185561	1.79866248
850	2008-04-01 00:00:00+00		0.009	1.009	4.099185561	1.79866248
851	2008-05-01 00:00:00+00		0.0088	1.0088	4.099185561	1.79866248
852	2008-06-01 00:00:00+00		0.0096	1.0096	4.099185561	1.79866248
853	2008-07-01 00:00:00+00		0.0107	1.0107	4.099185561	1.79866248
854	2008-08-01 00:00:00+00		0.0102	1.0102	4.099185561	1.79866248
855	2008-09-01 00:00:00+00		0.011	1.011	4.099185561	1.79866248
856	2008-10-01 00:00:00+00		0.0118	1.0118	4.099185561	1.79866248
857	2008-11-01 00:00:00+00		0.0102	1.0102	4.099185561	1.79866248
858	2008-12-01 00:00:00+00		0.0112	1.0112	4.099185561	1.79866248
859	2009-01-01 00:00:00+00		0.0105	1.0105	4.099185561	1.79866248
860	2009-02-01 00:00:00+00		0.0086	1.0086	4.099185561	1.79866248
861	2009-03-01 00:00:00+00		0.0097	1.0097	4.099185561	1.79866248
862	2009-04-01 00:00:00+00		0.0084	1.0084	4.099185561	1.79866248
863	2009-05-01 00:00:00+00		0.0077	1.0077	4.099185561	1.79866248
864	2009-06-01 00:00:00+00		0.0076	1.0076	4.099185561	1.79866248
865	2009-07-01 00:00:00+00	TR	0.001051	1.001051	4.099185561	1.79866248
866	2009-08-01 00:00:00+00	TR	0.000197	1.000197	4.103493805	1.796774071
867	2009-09-01 00:00:00+00	TR	0.0	1.0	4.104302194	1.796420176
868	2009-10-01 00:00:00+00	TR	0.0	1.0	4.104302194	1.796420176
869	2009-11-01 00:00:00+00	TR	0.0	1.0	4.104302194	1.796420176
870	2009-12-01 00:00:00+00	TR	0.000533	1.000533	4.104302194	1.796420176
871	2010-01-01 00:00:00+00	TR	0.0	1.0	4.106489787	1.795463194
872	2010-02-01 00:00:00+00	TR	0.0	1.0	4.106489787	1.795463194
873	2010-03-01 00:00:00+00	TR	0.000792	1.000792	4.106489787	1.795463194
874	2010-04-01 00:00:00+00	TR	0.0	1.0	4.109742127	1.794042312
875	2010-05-01 00:00:00+00	TR	0.00051	1.00051	4.109742127	1.794042312
876	2010-06-01 00:00:00+00	TR	0.000589	1.000589	4.111838095	1.793127817
877	2010-07-01 00:00:00+00	TR	0.001151	1.001151	4.114259968	1.792072287
878	2010-08-01 00:00:00+00	TR	0.000909	1.000909	4.118995481	1.790011983
879	2010-09-01 00:00:00+00	TR	0.000702	1.000702	4.122739648	1.78838634
880	2010-10-01 00:00:00+00	TR	0.000472	1.000472	4.125633811	1.787131773
881	2010-11-01 00:00:00+00	TR	0.000336	1.000336	4.12758111	1.786288645
882	2010-12-01 00:00:00+00	TR	0.001406	1.001406	4.128967978	1.785688654
883	2011-01-01 00:00:00+00	TR	0.000715	1.000715	4.134773306	1.7831815
884	2011-02-01 00:00:00+00	TR	0.000524	1.000524	4.137729669	1.781907437
885	2011-03-01 00:00:00+00	TR	0.001212	1.001212	4.13989784	1.780974206
886	2011-04-01 00:00:00+00	TR	0.000369	1.000369	4.144915396	1.778818278
887	2011-05-01 00:00:00+00	TR	0.00157	1.00157	4.14644487	1.778162137
888	2011-06-01 00:00:00+00	TR	0.001114	1.001114	4.152954788	1.775374798
889	2011-07-01 00:00:00+00	TR	0.001229	1.001229	4.15758118	1.773399231
890	2011-08-01 00:00:00+00	TR	0.002076	1.002076	4.162690847	1.771222399
891	2011-09-01 00:00:00+00	TR	0.001003	1.001003	4.171332593	1.767552959
892	2011-10-01 00:00:00+00	TR	0.00062	1.00062	4.17551644	1.76578188
893	2011-11-01 00:00:00+00	TR	0.000645	1.000645	4.17810526	1.764687773
894	2011-12-01 00:00:00+00	TR	0.000937	1.000937	4.180800138	1.763550284
895	2012-01-01 00:00:00+00	TR	0.000864	1.000864	4.184717548	1.761899384
896	2012-02-01 00:00:00+00	TR	0.0	1.0	4.188333144	1.760378417
897	2012-03-01 00:00:00+00	TR	0.001068	1.001068	4.188333144	1.760378417
898	2012-04-01 00:00:00+00	TR	0.000227	1.000227	4.192806283	1.758500338
899	2012-05-01 00:00:00+00	TR	0.000468	1.000468	4.19375805	1.758101249
900	2012-06-01 00:00:00+00	TR	0.0	1.0	4.195720729	1.757278843
901	2012-07-01 00:00:00+00	TR	0.000144	1.000144	4.195720729	1.757278843
902	2012-08-01 00:00:00+00	TR	0.000123	1.000123	4.196324913	1.757025831
903	2012-09-01 00:00:00+00	TR	0.0	1.0	4.196841061	1.756809744
904	2012-10-01 00:00:00+00	TR	0.0	1.0	4.196841061	1.756809744
905	2012-11-01 00:00:00+00	TR	0.0	1.0	4.196841061	1.756809744
906	2012-12-01 00:00:00+00	TR	0.0	1.0	4.196841061	1.756809744
907	2013-01-01 00:00:00+00	TR	0.0	1.0	4.196841061	1.756809744
908	2013-02-01 00:00:00+00	TR	0.0	1.0	4.196841061	1.756809744
909	2013-03-01 00:00:00+00	TR	0.0	1.0	4.196841061	1.756809744
910	2013-04-01 00:00:00+00	TR	0.0	1.0	4.196841061	1.756809744
911	2013-05-01 00:00:00+00	TR	0.0	1.0	4.196841061	1.756809744
912	2013-06-01 00:00:00+00	TR	0.0	1.0	4.196841061	1.756809744
913	2013-07-01 00:00:00+00	TR	0.000209	1.000209	4.196841061	1.756809744
914	2013-08-01 00:00:00+00	TR	0.0	1.0	4.197718201	1.756442647
915	2013-09-01 00:00:00+00	TR	0.000079	1.000079	4.197718201	1.756442647
916	2013-10-01 00:00:00+00	TR	0.00092	1.00092	4.19804982	1.756303899
917	2013-11-01 00:00:00+00	TR	0.000207	1.000207	4.201912026	1.754689585
918	2013-12-01 00:00:00+00	TR	0.000494	1.000494	4.202781822	1.754326439
919	2014-01-01 00:00:00+00	IPCA-E	0.0067	1.0067	4.204857996	1.75346023
920	2014-02-01 00:00:00+00	IPCA-E	0.007	1.007	4.233030545	1.741790235
921	2014-03-01 00:00:00+00	IPCA-E	0.0073	1.0073	4.262661759	1.729682458
922	2014-04-01 00:00:00+00	IPCA-E	0.0078	1.0078	4.29377919	1.717147283
923	2014-05-01 00:00:00+00	IPCA-E	0.0058	1.0058	4.327270667	1.703857197
924	2014-06-01 00:00:00+00	IPCA-E	0.0047	1.0047	4.352368837	1.694031812
925	2014-07-01 00:00:00+00	IPCA-E	0.0017	1.0017	4.372824971	1.686107109
926	2014-08-01 00:00:00+00	IPCA-E	0.0014	1.0014	4.380258773	1.683245591
927	2014-09-01 00:00:00+00	IPCA-E	0.0039	1.0039	4.386391135	1.680892342
928	2014-10-01 00:00:00+00	IPCA-E	0.0048	1.0048	4.403498061	1.674362329
929	2014-11-01 00:00:00+00	IPCA-E	0.0038	1.0038	4.424634852	1.666363783
930	2014-12-01 00:00:00+00	IPCA-E	0.0079	1.0079	4.441448464	1.660055572
931	2015-01-01 00:00:00+00	IPCA-E	0.0089	1.0089	4.476535907	1.647043925
932	2015-02-01 00:00:00+00	IPCA-E	0.0133	1.0133	4.516377076	1.632514545
933	2015-03-01 00:00:00+00	IPCA-E	0.0124	1.0124	4.576444891	1.611087087
934	2015-04-01 00:00:00+00	IPCA-E	0.0107	1.0107	4.633192808	1.591354294
935	2015-05-01 00:00:00+00	IPCA-E	0.006	1.006	4.682767971	1.574507068
936	2015-06-01 00:00:00+00	IPCA-E	0.0099	1.0099	4.710864579	1.56511637
937	2015-07-01 00:00:00+00	IPCA-E	0.0059	1.0059	4.757502138	1.549773611
938	2015-08-01 00:00:00+00	IPCA-E	0.0043	1.0043	4.785571401	1.540683578
939	2015-09-01 00:00:00+00	IPCA-E	0.0039	1.0039	4.806149358	1.534087004
940	2015-10-01 00:00:00+00	IPCA-E	0.0066	1.0066	4.82489334	1.528127307
941	2015-11-01 00:00:00+00	IPCA-E	0.0085	1.0085	4.856737637	1.518107796
942	2015-12-01 00:00:00+00	IPCA-E	0.0118	1.0118	4.898019906	1.505312638
943	2016-01-01 00:00:00+00	IPCA-E	0.0092	1.0092	4.955816541	1.487757105
944	2016-02-01 00:00:00+00	IPCA-E	0.0142	1.0142	5.001410054	1.474194515
945	2016-03-01 00:00:00+00	IPCA-E	0.0043	1.0043	5.072430076	1.453554048
946	2016-04-01 00:00:00+00	IPCA-E	0.0051	1.0051	5.094241526	1.447330526
947	2016-05-01 00:00:00+00	IPCA-E	0.0086	1.0086	5.120222157	1.439986595
948	2016-06-01 00:00:00+00	IPCA-E	0.004	1.004	5.164256068	1.427708303
949	2016-07-01 00:00:00+00	IPCA-E	0.0054	1.0054	5.184913092	1.422020222
950	2016-08-01 00:00:00+00	IPCA-E	0.0045	1.0045	5.212911623	1.414382557
951	2016-09-01 00:00:00+00	IPCA-E	0.0023	1.0023	5.236369725	1.408046348
952	2016-10-01 00:00:00+00	IPCA-E	0.0019	1.0019	5.248413376	1.404815273
953	2016-11-01 00:00:00+00	IPCA-E	0.0026	1.0026	5.258385361	1.402151186
954	2016-12-01 00:00:00+00	IPCA-E	0.0019	1.0019	5.272057163	1.398515047
955	2017-01-01 00:00:00+00	IPCA-E	0.0031	1.0031	5.282074072	1.395862907
956	2017-02-01 00:00:00+00	IPCA-E	0.0054	1.0054	5.298448501	1.391549105
957	2017-03-01 00:00:00+00	IPCA-E	0.0015	1.0015	5.327060123	1.384075099
958	2017-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	5.335050713	1.382002096
959	2017-05-01 00:00:00+00	IPCA-E	0.0024	1.0024	5.34625432	1.379105974
960	2017-06-01 00:00:00+00	IPCA-E	0.0016	1.0016	5.35908533	1.375804044
961	2017-07-01 00:00:00+00	IPCA-E	-0.0018	0.9982	5.367659867	1.373606274
962	2017-08-01 00:00:00+00	IPCA-E	0.0035	1.0035	5.357998079	1.376083224
963	2017-09-01 00:00:00+00	IPCA-E	0.0011	1.0011	5.376751072	1.371283731
964	2017-10-01 00:00:00+00	IPCA-E	0.0034	1.0034	5.382665498	1.369776976
965	2017-11-01 00:00:00+00	IPCA-E	0.0032	1.0032	5.400966561	1.365135515
966	2017-12-01 00:00:00+00	IPCA-E	0.0035	1.0035	5.418249654	1.360781016
967	2018-01-01 00:00:00+00	IPCA-E	0.0039	1.0039	5.437213528	1.356034894
968	2018-02-01 00:00:00+00	IPCA-E	0.0038	1.0038	5.458418661	1.350766903
969	2018-03-01 00:00:00+00	IPCA-E	0.001	1.001	5.479160651	1.34565342
970	2018-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	5.484639812	1.344309111
971	2018-05-01 00:00:00+00	IPCA-E	0.0014	1.0014	5.496157556	1.341491978
972	2018-06-01 00:00:00+00	IPCA-E	0.0111	1.0111	5.503852176	1.339616514
973	2018-07-01 00:00:00+00	IPCA-E	0.0064	1.0064	5.564944935	1.324910013
974	2018-08-01 00:00:00+00	IPCA-E	0.0013	1.0013	5.600560583	1.316484512
975	2018-09-01 00:00:00+00	IPCA-E	0.0009	1.0009	5.607841312	1.314775305
976	2018-10-01 00:00:00+00	IPCA-E	0.0058	1.0058	5.612888369	1.313593071
977	2018-11-01 00:00:00+00	IPCA-E	0.0019	1.0019	5.645443122	1.306018165
978	2018-12-01 00:00:00+00	IPCA-E	-0.0016	0.9984	5.656169463	1.303541437
979	2019-01-01 00:00:00+00	IPCA-E	0.003	1.003	5.647119592	1.305630445
980	2019-02-01 00:00:00+00	IPCA-E	0.0034	1.0034	5.664060951	1.30172527
981	2019-03-01 00:00:00+00	IPCA-E	0.0054	1.0054	5.683318758	1.297314401
982	2019-04-01 00:00:00+00	IPCA-E	0.0072	1.0072	5.71400868	1.290346529
983	2019-05-01 00:00:00+00	IPCA-E	0.0035	1.0035	5.755149542	1.281122448
984	2019-06-01 00:00:00+00	IPCA-E	0.0006	1.0006	5.775292566	1.276654158
985	2019-07-01 00:00:00+00	IPCA-E	0.0009	1.0009	5.778757741	1.275888625
986	2019-08-01 00:00:00+00	IPCA-E	0.0008	1.0008	5.783958623	1.274741358
987	2019-09-01 00:00:00+00	IPCA-E	0.0009	1.0009	5.78858579	1.27372238
988	2019-10-01 00:00:00+00	IPCA-E	0.0009	1.0009	5.793795517	1.272577061
989	2019-11-01 00:00:00+00	IPCA-E	0.0014	1.0014	5.799009933	1.271432771
990	2019-12-01 00:00:00+00	IPCA-E	0.0105	1.0105	5.807128547	1.269655254
991	2020-01-01 00:00:00+00	IPCA-E	0.0071	1.0071	5.868103397	1.256462399
992	2020-02-01 00:00:00+00	IPCA-E	0.0022	1.0022	5.909766931	1.247604407
993	2020-03-01 00:00:00+00	IPCA-E	0.0002	1.0002	5.922768418	1.244865703
994	2020-04-01 00:00:00+00	IPCA-E	-0.0001	0.9999	5.923952972	1.244616779
995	2020-05-01 00:00:00+00	IPCA-E	-0.0059	0.9941	5.923360577	1.244741253
996	2020-06-01 00:00:00+00	IPCA-E	0.0002	1.0002	5.888412749	1.252128813
997	2020-07-01 00:00:00+00	IPCA-E	0.003	1.003	5.889590432	1.251878438
998	2020-08-01 00:00:00+00	IPCA-E	0.0023	1.0023	5.907259203	1.248134036
999	2020-09-01 00:00:00+00	IPCA-E	0.0045	1.0045	5.920845899	1.245269915
1000	2020-10-01 00:00:00+00	IPCA-E	0.0094	1.0094	5.947489706	1.239691304
1001	2020-11-01 00:00:00+00	IPCA-E	0.0081	1.0081	6.003396109	1.228146725
1002	2020-12-01 00:00:00+00	IPCA-E	0.0106	1.0106	6.052023617	1.218278668
1003	2021-01-01 00:00:00+00	IPCA-E	0.0078	1.0078	6.116175068	1.205500364
1004	2021-02-01 00:00:00+00	IPCA-E	0.0048	1.0048	6.163881233	1.196170236
1005	2021-03-01 00:00:00+00	IPCA-E	0.0093	1.0093	6.193467863	1.190456047
1006	2021-04-01 00:00:00+00	IPCA-E	0.006	1.006	6.251067114	1.179486819
1007	2021-05-01 00:00:00+00	IPCA-E	0.0044	1.0044	6.288573517	1.172452107
1008	2021-06-01 00:00:00+00	IPCA-E	0.0083	1.0083	6.31624324	1.167315917
1009	2021-07-01 00:00:00+00	IPCA-E	0.0072	1.0072	6.368668059	1.157706949
1010	2021-08-01 00:00:00+00	IPCA-E	0.0089	1.0089	6.414522469	1.149431046
1011	2021-09-01 00:00:00+00	IPCA-E	0.0114	1.0114	6.471611719	1.139291352
1012	2021-10-01 00:00:00+00	IPCA-E	0.012	1.012	6.545388093	1.126449824
1013	2021-11-01 00:00:00+00	IPCA-E	0.0117	1.0117	6.62393275	1.113092712
1014	2021-12-01 00:00:00+00	IPCA-E	0.0078	1.0078	6.701432763	1.100220136
1015	2022-01-01 00:00:00+00	IPCA-E	0.0058	1.0058	6.753703939	1.091704839
1016	2022-02-01 00:00:00+00	IPCA-E	0.0099	1.0099	6.792875422	1.085409464
1017	2022-03-01 00:00:00+00	IPCA-E	0.0095	1.0095	6.860124888	1.074769248
1018	2022-04-01 00:00:00+00	IPCA-E	0.0173	1.0173	6.925296075	1.064655025
1019	2022-05-01 00:00:00+00	IPCA-E	0.0059	1.0059	7.045103697	1.046549715
1020	2022-06-01 00:00:00+00	IPCA-E	0.0069	1.0069	7.086669809	1.040411289
1021	2022-07-01 00:00:00+00	IPCA-E	0.0013	1.0013	7.13556783	1.033281645
1022	2022-08-01 00:00:00+00	IPCA-E	-0.0073	0.9927	7.144844069	1.031940123
1023	2022-09-01 00:00:00+00	IPCA-E	-0.0037	0.9963	7.092686707	1.039528683
1024	2022-10-01 00:00:00+00	IPCA-E	0.0016	1.0016	7.066443766	1.043389223
1025	2022-11-01 00:00:00+00	IPCA-E	0.0053	1.0053	7.077750076	1.041722467
1026	2022-12-01 00:00:00+00	IPCA-E	0.0052	1.0052	7.115262151	1.036230445
1027	2023-01-01 00:00:00+00	IPCA-E	0.0055	1.0055	7.152261515	1.030869922
1028	2023-02-01 00:00:00+00	IPCA-E	0.0076	1.0076	7.191598953	1.025231151
1029	2023-03-01 00:00:00+00	IPCA-E	0.0069	1.0069	7.246255105	1.017498164
1030	2023-04-01 00:00:00+00	IPCA-E	0.0057	1.0057	7.296254265	1.010525538
1031	2023-05-01 00:00:00+00	IPCA-E	0.0051	1.0051	7.337842915	1.004798189
1032	2023-06-01 00:00:00+00	IPCA-E	0.0004	1.0004	7.375265913	0.99969972
1033	2023-07-01 00:00:00+00	IPCA-E	-0.0007	0.9993	7.37821602	0.9993
1034	2023-08-01 00:00:00+00	IPCA-E	0	1.0	7.373051269	1.0
\.


--
-- Data for Name: t212_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t212_tabela_pnep (id, data, indexador, variacao_mensal, numero_indice, fator_vigente, indice_correcao) FROM stdin;
1	1964-10-01 00:00:00+00	ORTN	0.0	1.0	1620.6956	0.008655556
2	1964-11-01 00:00:00+00	ORTN	0.0	1.0	1620.6956	0.008655556
3	1964-12-01 00:00:00+00	ORTN	0.130000001	1.130000001	1620.6956	0.008655556
4	1965-01-01 00:00:00+00	ORTN	0.0	1.0	1831.38603	0.007659784
5	1965-02-01 00:00:00+00	ORTN	0.0	1.0	1831.38603	0.007659784
6	1965-03-01 00:00:00+00	ORTN	0.185840713	1.185840713	1831.38603	0.007659784
7	1965-04-01 00:00:00+00	ORTN	0.0	1.0	2171.732116	0.00645937
8	1965-05-01 00:00:00+00	ORTN	0.0	1.0	2171.732116	0.00645937
9	1965-06-01 00:00:00+00	ORTN	0.134328344	1.134328344	2171.732116	0.00645937
10	1965-07-01 00:00:00+00	ORTN	0.0	1.0	2463.457294	0.005694445
11	1965-08-01 00:00:00+00	ORTN	0.032894753	1.032894753	2463.457294	0.005694445
12	1965-09-01 00:00:00+00	ORTN	0.012738835	1.012738835	2544.492113	0.005513093
13	1965-10-01 00:00:00+00	ORTN	0.009433975	1.009433975	2576.905977	0.005443746
14	1965-11-01 00:00:00+00	ORTN	0.015576314	1.015576314	2601.216445	0.00539287
15	1965-12-01 00:00:00+00	ORTN	0.018404928	1.018404928	2641.73381	0.005310157
16	1966-01-01 00:00:00+00	ORTN	0.027108437	1.027108437	2690.354731	0.00521419
17	1966-02-01 00:00:00+00	ORTN	0.014662738	1.014662738	2763.286043	0.005076572
18	1966-03-01 00:00:00+00	ORTN	0.017341059	1.017341059	2803.803383	0.005003211
19	1966-04-01 00:00:00+00	ORTN	0.038636354	1.038636354	2852.424302	0.004917929
20	1966-05-01 00:00:00+00	ORTN	0.044310705	1.044310705	2962.631578	0.004734987
21	1966-06-01 00:00:00+00	ORTN	0.040859093	1.040859093	3093.907873	0.004534078
22	1966-07-01 00:00:00+00	ORTN	0.028183186	1.028183186	3220.322141	0.004356092
23	1966-08-01 00:00:00+00	ORTN	0.028389642	1.028389642	3311.081079	0.004236689
24	1966-09-01 00:00:00+00	ORTN	0.02855781	1.02855781	3405.081486	0.004119731
25	1966-10-01 00:00:00+00	ORTN	0.026376703	1.026376703	3502.323156	0.004005347
26	1966-11-01 00:00:00+00	ORTN	0.022993684	1.022993684	3594.702894	0.003902415
27	1966-12-01 00:00:00+00	ORTN	0.023799027	1.023799027	3677.358356	0.003814701
28	1967-01-01 00:00:00+00	ORTN	0.023676	1.023676	3764.875907	0.003726025
29	1967-02-01 00:00:00+00	ORTN	0.021026072	1.021026072	3.854013109	3.639847763
30	1967-03-01 00:00:00+00	ORTN	0.014827018	1.014827018	3.935047868	3.564892084
31	1967-04-01 00:00:00+00	ORTN	0.015016234	1.015016234	3.993392894	3.512807622
32	1967-05-01 00:00:00+00	ORTN	0.017992803	1.017992803	4.053358615	3.460838856
33	1967-06-01 00:00:00+00	ORTN	0.028279654	1.028279654	4.126289898	3.399669277
34	1967-07-01 00:00:00+00	ORTN	0.025210084	1.025210084	4.24297995	3.306171879
35	1967-08-01 00:00:00+00	ORTN	0.015275708	1.015275708	4.349945831	3.224872571
36	1967-09-01 00:00:00+00	ORTN	0.004770642	1.004770642	4.416394333	3.176351552
37	1967-10-01 00:00:00+00	ORTN	0.006939372	1.006939372	4.43746337	3.161270263
38	1967-11-01 00:00:00+00	ORTN	0.014145811	1.014145811	4.468256578	3.139484215
39	1967-12-01 00:00:00+00	ORTN	0.018597997	1.018597997	4.53146369	3.095693126
40	1968-01-01 00:00:00+00	ORTN	0.01755618	1.01755618	4.615739838	3.039170639
41	1968-02-01 00:00:00+00	ORTN	0.014492754	1.014492754	4.696774597	2.986734983
42	1968-03-01 00:00:00+00	ORTN	0.01462585	1.01462585	4.764843794	2.94406734
43	1968-04-01 00:00:00+00	ORTN	0.018773047	1.018773047	4.834533686	2.901628555
44	1968-05-01 00:00:00+00	ORTN	0.026653504	1.026653504	4.925292615	2.848159914
45	1968-06-01 00:00:00+00	ORTN	0.028525641	1.028525641	5.056568924	2.774217301
46	1968-07-01 00:00:00+00	ORTN	0.022436896	1.022436896	5.200810794	2.69727578
47	1968-08-01 00:00:00+00	ORTN	0.018287108	1.018287108	5.317500846	2.638085334
48	1968-09-01 00:00:00+00	ORTN	0.014067644	1.014067644	5.414742556	2.590708764
49	1968-10-01 00:00:00+00	ORTN	0.015053129	1.015053129	5.490915229	2.554769179
50	1968-11-01 00:00:00+00	ORTN	0.016283803	1.016283803	5.573570683	2.516882227
51	1968-12-01 00:00:00+00	ORTN	0.019170243	1.019170243	5.664329612	2.476554501
52	1969-01-01 00:00:00+00	ORTN	0.018248175	1.018248175	5.772916188	2.429971359
53	1969-02-01 00:00:00+00	ORTN	0.017645437	1.017645437	5.878261374	2.386423485
54	1969-03-01 00:00:00+00	ORTN	0.014088323	1.014088323	5.981985865	2.345044156
55	1969-04-01 00:00:00+00	ORTN	0.015495592	1.015495592	6.066262014	2.312465397
56	1969-05-01 00:00:00+00	ORTN	0.012365167	1.012365167	6.160262333	2.277179158
57	1969-06-01 00:00:00+00	ORTN	0.013513514	1.013513514	6.236435006	2.249365379
58	1969-07-01 00:00:00+00	ORTN	0.006923077	1.006923077	6.320711155	2.219373841
59	1969-08-01 00:00:00+00	ORTN	0.007384772	1.007384772	6.364469925	2.204114586
60	1969-09-01 00:00:00+00	ORTN	0.009100101	1.009100101	6.411470084	2.187957022
61	1969-10-01 00:00:00+00	ORTN	0.016282565	1.016282565	6.469815111	2.168225947
62	1969-11-01 00:00:00+00	ORTN	0.020951442	1.020951442	6.575160296	2.133487301
63	1969-12-01 00:00:00+00	ORTN	0.022452921	1.022452921	6.712919386	2.089704968
64	1970-01-01 00:00:00+00	ORTN	0.022432113	1.022432113	6.863644036	2.043815343
65	1970-02-01 00:00:00+00	ORTN	0.020092379	1.020092379	7.017610077	1.998974129
66	1970-03-01 00:00:00+00	ORTN	0.0113199	1.0113199	7.158610557	1.959601082
67	1970-04-01 00:00:00+00	ORTN	0.00917842	1.00917842	7.239645315	1.937666886
68	1970-05-01 00:00:00+00	ORTN	0.00931677	1.00931677	7.306093817	1.920043917
69	1970-06-01 00:00:00+00	ORTN	0.015384615	1.015384615	7.374163014	1.902320435
70	1970-07-01 00:00:00+00	ORTN	0.008874459	1.008874459	7.487611676	1.873497398
71	1970-08-01 00:00:00+00	ORTN	0.009440034	1.009440034	7.554060178	1.857017374
72	1970-09-01 00:00:00+00	ORTN	0.011902232	1.011902232	7.625370765	1.839651005
73	1970-10-01 00:00:00+00	ORTN	0.018903592	1.018903592	7.716129695	1.818012598
74	1970-11-01 00:00:00+00	ORTN	0.021232736	1.021232736	7.86199226	1.784283236
75	1970-12-01 00:00:00+00	ORTN	0.019580137	1.019580137	8.028923862	1.747185704
76	1971-01-01 00:00:00+00	ORTN	0.018412196	1.018412196	8.186131294	1.713632544
77	1971-02-01 00:00:00+00	ORTN	0.013219285	1.013219285	8.336855944	1.68265124
78	1971-03-01 00:00:00+00	ORTN	0.009976976	1.009976976	8.447063216	1.660698001
79	1971-04-01 00:00:00+00	ORTN	0.011588146	1.011588146	8.531339364	1.644292929
80	1971-05-01 00:00:00+00	ORTN	0.0142723	1.0142723	8.63020177	1.625456898
81	1971-06-01 00:00:00+00	ORTN	0.019811146	1.019811146	8.753374602	1.602584332
82	1971-07-01 00:00:00+00	ORTN	0.019970951	1.019970951	8.926788985	1.571452066
83	1971-08-01 00:00:00+00	ORTN	0.021003916	1.021003916	9.105065454	1.540683158
84	1971-09-01 00:00:00+00	ORTN	0.02179219	1.02179219	9.296307483	1.50898849
85	1971-10-01 00:00:00+00	ORTN	0.020133083	1.020133083	9.49889438	1.476805661
86	1971-11-01 00:00:00+00	ORTN	0.016390701	1.016390701	9.69013641	1.447659806
87	1971-12-01 00:00:00+00	ORTN	0.012341616	1.012341616	9.848964536	1.424314296
88	1972-01-01 00:00:00+00	ORTN	0.012028609	1.012028609	9.970516673	1.406950257
89	1972-02-01 00:00:00+00	ORTN	0.013331192	1.013331192	10.09044812	1.390227751
90	1972-03-01 00:00:00+00	ORTN	0.011412268	1.011412268	10.22496582	1.37193818
91	1972-04-01 00:00:00+00	ORTN	0.013320796	1.013320796	10.34165587	1.356457919
92	1972-05-01 00:00:00+00	ORTN	0.016857408	1.016857408	10.47941496	1.33862635
93	1972-06-01 00:00:00+00	ORTN	0.017946768	1.017946768	10.65607073	1.316434674
94	1972-07-01 00:00:00+00	ORTN	0.014343344	1.014343344	10.84731276	1.293225456
95	1972-08-01 00:00:00+00	ORTN	0.008395935	1.008395935	11.0028995	1.274938574
96	1972-09-01 00:00:00+00	ORTN	0.007157464	1.007157464	11.09527912	1.264323397
97	1972-10-01 00:00:00+00	ORTN	0.009572154	1.009572154	11.17469318	1.255338358
98	1972-11-01 00:00:00+00	ORTN	0.006608246	1.006608246	11.28165906	1.243435998
99	1972-12-01 00:00:00+00	ORTN	0.011417154	1.011417154	11.35621104	1.23527301
100	1973-01-01 00:00:00+00	ORTN	0.00987724	1.00987724	11.48586666	1.221328909
101	1973-02-01 00:00:00+00	ORTN	0.010479251	1.010479251	11.59931532	1.209383538
102	1973-03-01 00:00:00+00	ORTN	0.012029867	1.012029867	11.72086746	1.196841535
103	1973-04-01 00:00:00+00	ORTN	0.011476978	1.011476978	11.86186793	1.182614835
104	1973-05-01 00:00:00+00	ORTN	0.012697555	1.012697555	11.99800633	1.169195999
105	1973-06-01 00:00:00+00	ORTN	0.011071095	1.011071095	12.15035167	1.154536212
106	1973-07-01 00:00:00+00	ORTN	0.008970976	1.008970976	12.28486937	1.141894192
107	1973-08-01 00:00:00+00	ORTN	0.008368201	1.008368201	12.39507665	1.131741368
108	1973-09-01 00:00:00+00	ORTN	0.009725104	1.009725104	12.49880114	1.122349323
109	1973-10-01 00:00:00+00	ORTN	0.006806215	1.006806215	12.62035327	1.111539486
110	1973-11-01 00:00:00+00	ORTN	0.008545918	1.008545918	12.70625012	1.104025252
111	1973-12-01 00:00:00+00	ORTN	0.019602883	1.019602883	12.81483669	1.094670289
112	1974-01-01 00:00:00+00	ORTN	0.010543289	1.010543289	13.06604444	1.07362416
113	1974-02-01 00:00:00+00	ORTN	0.014974837	1.014974837	13.20380353	1.06242273
114	1974-03-01 00:00:00+00	ORTN	0.012577095	1.012577095	13.40152835	1.046747851
115	1974-04-01 00:00:00+00	ORTN	0.016362116	1.016362116	13.57008064	1.033746325
116	1974-05-01 00:00:00+00	ORTN	0.021269095	1.021269095	13.79211588	1.017104345
117	1974-06-01 00:00:00+00	ORTN	0.03325279	1.03325279	14.08546171	0.995921986
118	1974-07-01 00:00:00+00	ORTN	0.043986637	1.043986637	14.55384261	0.963870599
119	1974-08-01 00:00:00+00	ORTN	0.04768	1.04768	15.1940172	0.923259518
120	1974-09-01 00:00:00+00	ORTN	0.037466911	1.037466911	15.91846794	0.881241904
121	1974-10-01 00:00:00+00	ORTN	0.021589794	1.021589794	16.51488376	0.849416877
122	1974-11-01 00:00:00+00	ORTN	0.012584054	1.012584054	16.8714367	0.831465704
123	1974-12-01 00:00:00+00	ORTN	0.012807134	1.012807134	17.08374777	0.821132528
124	1975-01-01 00:00:00+00	ORTN	0.015174223	1.015174223	17.30254161	0.810749155
125	1975-02-01 00:00:00+00	ORTN	0.01660823	1.01660823	17.56509423	0.798630557
126	1975-03-01 00:00:00+00	ORTN	0.018787439	1.018787439	17.85681936	0.785583407
127	1975-04-01 00:00:00+00	ORTN	0.019955457	1.019955457	18.19230326	0.771096479
128	1975-05-01 00:00:00+00	ORTN	0.023058782	1.023058782	18.55533898	0.756009955
129	1975-06-01 00:00:00+00	ORTN	0.018270298	1.018270298	18.9832025	0.738970202
130	1975-07-01 00:00:00+00	ORTN	0.017104049	1.017104049	19.33003127	0.725711242
131	1975-08-01 00:00:00+00	ORTN	0.015579919	1.015579919	19.66065308	0.713507376
132	1975-09-01 00:00:00+00	ORTN	0.020292208	1.020292208	19.96696447	0.702561524
133	1975-10-01 00:00:00+00	ORTN	0.021718377	1.021718377	20.37213826	0.688588542
134	1975-11-01 00:00:00+00	ORTN	0.019465857	1.019465857	20.81458805	0.673951412
135	1975-12-01 00:00:00+00	ORTN	0.018406782	1.018406782	21.21976183	0.661082867
136	1976-01-01 00:00:00+00	ORTN	0.01919904	1.01919904	21.61034937	0.649134392
137	1976-02-01 00:00:00+00	ORTN	0.022369389	1.022369389	22.02524733	0.6369064
138	1976-03-01 00:00:00+00	ORTN	0.023751259	1.023751259	22.51793867	0.622970921
139	1976-04-01 00:00:00+00	ORTN	0.025239033	1.025239033	23.05276807	0.608517856
140	1976-05-01 00:00:00+00	ORTN	0.02976068	1.02976068	23.63459764	0.593537542
141	1976-06-01 00:00:00+00	ORTN	0.0294999	1.0294999	24.33797934	0.576383963
142	1976-07-01 00:00:00+00	ORTN	0.025549806	1.025549806	25.0559473	0.559867916
143	1976-08-01 00:00:00+00	ORTN	0.027877641	1.027877641	25.69612189	0.545919772
144	1976-09-01 00:00:00+00	ORTN	0.032889489	1.032889489	26.41246915	0.531113578
145	1976-10-01 00:00:00+00	ORTN	0.03606012	1.03606012	27.28116176	0.514201745
146	1976-11-01 00:00:00+00	ORTN	0.030275229	1.030275229	28.26492373	0.49630493
147	1976-12-01 00:00:00+00	ORTN	0.022094835	1.022094835	29.12065078	0.481720725
148	1977-01-01 00:00:00+00	ORTN	0.017315546	1.017315546	29.76406676	0.471307268
149	1977-02-01 00:00:00+00	ORTN	0.019697051	1.019697051	30.27944783	0.463285231
150	1977-03-01 00:00:00+00	ORTN	0.022675975	1.022675975	30.87586365	0.454336149
151	1977-04-01 00:00:00+00	ORTN	0.02884566	1.02884566	31.57600396	0.444262074
152	1977-05-01 00:00:00+00	ORTN	0.032177601	1.032177601	32.48683464	0.431806335
153	1977-06-01 00:00:00+00	ORTN	0.033349444	1.033349444	33.53218303	0.418344996
154	1977-07-01 00:00:00+00	ORTN	0.026707203	1.026707203	34.6504627	0.404843685
155	1977-08-01 00:00:00+00	ORTN	0.020500205	1.020500205	35.57587963	0.394312696
156	1977-09-01 00:00:00+00	ORTN	0.014017231	1.014017231	36.30519247	0.386391589
157	1977-10-01 00:00:00+00	ORTN	0.013867488	1.013867488	36.81409075	0.381050318
158	1977-11-01 00:00:00+00	ORTN	0.014937038	1.014937038	37.32460973	0.375838384
159	1977-12-01 00:00:00+00	ORTN	0.019594421	1.019594421	37.88212886	0.370307092
160	1978-01-01 00:00:00+00	ORTN	0.021106076	1.021106076	38.62440724	0.363190583
161	1978-02-01 00:00:00+00	ORTN	0.023176495	1.023176495	39.43961691	0.3556835
162	1978-03-01 00:00:00+00	ORTN	0.025784168	1.025784168	40.353689	0.347626731
163	1978-04-01 00:00:00+00	ORTN	0.02920794	1.02920794	41.3941753	0.338888766
164	1978-05-01 00:00:00+00	ORTN	0.030471336	1.030471336	42.60321389	0.329271426
165	1978-06-01 00:00:00+00	ORTN	0.03012404	1.03012404	43.90139071	0.319534775
166	1978-07-01 00:00:00+00	ORTN	0.030604931	1.030604931	45.22387798	0.310190581
167	1978-08-01 00:00:00+00	ORTN	0.027783573	1.027783573	46.60795164	0.300979136
168	1978-09-01 00:00:00+00	ORTN	0.026119024	1.026119024	47.90288708	0.292842913
169	1978-10-01 00:00:00+00	ORTN	0.023739655	1.023739655	49.15406375	0.285388835
170	1978-11-01 00:00:00+00	ORTN	0.025604689	1.025604689	50.32096428	0.27877091
171	1978-12-01 00:00:00+00	ORTN	0.026315789	1.026315789	51.60941693	0.271811267
172	1979-01-01 00:00:00+00	ORTN	0.022581238	1.022581238	52.96755948	0.264841747
173	1979-02-01 00:00:00+00	ORTN	0.023249551	1.023249551	54.16363253	0.258993357
174	1979-03-01 00:00:00+00	ORTN	0.024972951	1.024972951	55.42291268	0.253108693
175	1979-04-01 00:00:00+00	ORTN	0.037459702	1.037459702	56.80698634	0.246941827
176	1979-05-01 00:00:00+00	ORTN	0.038224617	1.038224617	58.93495911	0.238025464
177	1979-06-01 00:00:00+00	ORTN	0.033267999	1.033267999	61.18772537	0.229262011
178	1979-07-01 00:00:00+00	ORTN	0.027198154	1.027198154	63.22331853	0.221880492
179	1979-08-01 00:00:00+00	ORTN	0.028773927	1.028773927	64.94287608	0.21600554
180	1979-09-01 00:00:00+00	ORTN	0.040170774	1.040170774	66.81153764	0.209964049
181	1979-10-01 00:00:00+00	ORTN	0.045872201	1.045872201	69.49540883	0.201855363
182	1979-11-01 00:00:00+00	ORTN	0.045131224	1.045131224	72.68331622	0.193001939
183	1979-12-01 00:00:00+00	ORTN	0.040792815	1.040792815	75.96360322	0.184667662
184	1980-01-01 00:00:00+00	ORTN	0.042022836	1.042022836	79.06237243	0.177429801
185	1980-02-01 00:00:00+00	ORTN	0.037003521	1.037003521	82.38479753	0.170274388
186	1980-03-01 00:00:00+00	ORTN	0.036992071	1.036992071	85.43332509	0.164198467
187	1980-04-01 00:00:00+00	ORTN	0.036989609	1.036989609	88.59368068	0.158341102
188	1980-05-01 00:00:00+00	ORTN	0.033994284	1.033994284	91.87072632	0.152693045
189	1980-06-01 00:00:00+00	ORTN	0.032006551	1.032006551	94.99380592	0.147673007
190	1980-07-01 00:00:00+00	ORTN	0.032005819	1.032005819	98.03423006	0.143093091
191	1980-08-01 00:00:00+00	ORTN	0.032006408	1.032006408	101.1718959	0.138655314
192	1980-09-01 00:00:00+00	ORTN	0.030004812	1.030004812	104.4100448	0.13435509
193	1980-10-01 00:00:00+00	ORTN	0.031994093	1.031994093	107.5428486	0.130441226
194	1980-11-01 00:00:00+00	ORTN	0.031995211	1.031995211	110.9835844	0.12639726
195	1980-12-01 00:00:00+00	ORTN	0.044997877	1.044997877	114.5345276	0.122478534
196	1981-01-01 00:00:00+00	ORTN	0.05000677	1.05000677	119.6883382	0.117204576
197	1981-02-01 00:00:00+00	ORTN	0.064996196	1.064996196	125.6735655	0.111622686
198	1981-03-01 00:00:00+00	ORTN	0.063003281	1.063003281	133.8418692	0.104810409
199	1981-04-01 00:00:00+00	ORTN	0.059998178	1.059998178	142.2743461	0.098598387
200	1981-05-01 00:00:00+00	ORTN	0.059998064	1.059998064	150.8105477	0.093017506
201	1981-06-01 00:00:00+00	ORTN	0.059998379	1.059998379	159.8588886	0.087752524
202	1981-07-01 00:00:00+00	ORTN	0.059997704	1.059997704	169.4501628	0.082785527
203	1981-08-01 00:00:00+00	ORTN	0.058000308	1.058000308	179.6167835	0.078099723
204	1981-09-01 00:00:00+00	ORTN	0.057003966	1.057003966	190.0346122	0.073818242
205	1981-10-01 00:00:00+00	ORTN	0.057003848	1.057003848	200.8673388	0.069837242
206	1981-11-01 00:00:00+00	ORTN	0.054998322	1.054998322	212.31755	0.066070944
207	1981-12-01 00:00:00+00	ORTN	0.052000955	1.052000955	223.9946589	0.062626587
208	1982-01-01 00:00:00+00	ORTN	0.050001375	1.050001375	235.6425951	0.059530922
209	1982-02-01 00:00:00+00	ORTN	0.049998035	1.049998035	247.4250488	0.056696042
210	1982-03-01 00:00:00+00	ORTN	0.050000313	1.050000313	259.7958151	0.053996332
211	1982-04-01 00:00:00+00	ORTN	0.054998394	1.054998394	272.785687	0.051425062
212	1982-05-01 00:00:00+00	ORTN	0.054997719	1.054997719	287.7884618	0.048744209
213	1982-06-01 00:00:00+00	ORTN	0.055002483	1.055002483	303.6161708	0.046203142
214	1982-07-01 00:00:00+00	ORTN	0.059997675	1.059997675	320.3158141	0.043794344
215	1982-08-01 00:00:00+00	ORTN	0.070000334	1.070000334	339.5340181	0.04131551
216	1982-09-01 00:00:00+00	ORTN	0.069997859	1.069997859	363.3015127	0.038612614
217	1982-10-01 00:00:00+00	ORTN	0.070000625	1.070000625	388.7318409	0.036086627
218	1982-11-01 00:00:00+00	ORTN	0.065000289	1.065000289	415.9433128	0.0337258
219	1982-12-01 00:00:00+00	ORTN	0.064999069	1.064999069	442.9797485	0.031667409
220	1983-01-01 00:00:00+00	ORTN	0.060001442	1.060001442	471.7730196	0.029734683
221	1983-02-01 00:00:00+00	ORTN	0.06699853	1.06699853	500.0800812	0.028051549
222	1983-03-01 00:00:00+00	ORTN	0.090000367	1.090000367	533.5847117	0.026290148
223	1983-04-01 00:00:00+00	ORTN	0.09000092	1.09000092	581.6075313	0.024119394
224	1983-05-01 00:00:00+00	ORTN	0.080000305	1.080000305	633.952744	0.022127865
225	1983-06-01 00:00:00+00	ORTN	0.077999031	1.077999031	684.6691571	0.020488758
226	1983-07-01 00:00:00+00	ORTN	0.089999008	1.089999008	738.0726877	0.019006287
227	1983-08-01 00:00:00+00	ORTN	0.084999531	1.084999531	804.4984973	0.017436976
228	1983-09-01 00:00:00+00	ORTN	0.094999109	1.094999109	872.8804926	0.016070953
229	1983-10-01 00:00:00+00	ORTN	0.097000584	1.097000584	955.8033614	0.014676681
230	1983-11-01 00:00:00+00	ORTN	0.083999661	1.083999661	1048.516845	0.013378918
231	1983-12-01 00:00:00+00	ORTN	0.076000397	1.076000397	1136.591905	0.012342179
232	1984-01-01 00:00:00+00	ORTN	0.098000526	1.098000526	1222.973341	0.011470423
233	1984-02-01 00:00:00+00	ORTN	0.123000568	1.123000568	1342.825373	0.010446646
234	1984-03-01 00:00:00+00	ORTN	0.099999888	1.099999888	1507.993656	0.00930244
235	1984-04-01 00:00:00+00	ORTN	0.088999887	1.088999887	1658.792853	0.008456765
236	1984-05-01 00:00:00+00	ORTN	0.088999714	1.088999714	1806.42523	0.007765625
237	1984-06-01 00:00:00+00	ORTN	0.09199967	1.09199967	1967.196558	0.007130971
238	1984-07-01 00:00:00+00	ORTN	0.102999932	1.102999932	2148.177993	0.006530195
239	1984-08-01 00:00:00+00	ORTN	0.106000028	1.106000028	2369.44018	0.005920395
240	1984-09-01 00:00:00+00	ORTN	0.104974079	1.104974079	2620.600906	0.005352979
241	1984-10-01 00:00:00+00	ORTN	0.1260262	1.1260262	2895.696073	0.004844438
242	1984-11-01 00:00:00+00	ORTN	0.098999888	1.098999888	3260.629646	0.004302243
243	1984-12-01 00:00:00+00	ORTN	0.105000086	1.105000086	3583.431615	0.003914689
244	1985-01-01 00:00:00+00	ORTN	0.126000021	1.126000021	3959.692242	0.003542705
245	1985-02-01 00:00:00+00	ORTN	0.101999988	1.101999988	4458.613548	0.003146274
246	1985-03-01 00:00:00+00	ORTN	0.126999835	1.126999835	4913.392075	0.002855058
247	1985-04-01 00:00:00+00	ORTN	0.118292994	1.118292994	5537.392058	0.002533326
248	1985-05-01 00:00:00+00	ORTN	0.100058988	1.100058988	6192.426742	0.002265351
249	1985-06-01 00:00:00+00	ORTN	0.092082024	1.092082024	6812.034697	0.0020593
250	1985-07-01 00:00:00+00	ORTN	0.076139997	1.076139997	7439.300637	0.001885664
251	1985-08-01 00:00:00+00	ORTN	0.08179703	1.08179703	8005.728966	0.001752248
252	1985-09-01 00:00:00+00	ORTN	0.090999965	1.090999965	8660.573814	0.001619757
253	1985-10-01 00:00:00+00	ORTN	0.090000051	1.090000051	9448.685731	0.001484653
254	1985-11-01 00:00:00+00	ORTN	0.111199992	1.111199992	10299.06792	0.001362067
255	1985-12-01 00:00:00+00	ORTN	0.133600014	1.133600014	11444.3242	0.001225762
256	1986-01-01 00:00:00+00	ORTN	0.162300164	1.162300164	12973.28606	0.001081301
257	1986-02-01 00:00:00+00	ORTN	0.143601	1.143601	15.07885252	0.930310909
258	1986-03-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.813492563
259	1986-04-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.813492563
260	1986-05-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.813492563
261	1986-06-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.813492563
262	1986-07-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.813492563
263	1986-08-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.813492563
264	1986-09-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.813492563
265	1986-10-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.813492563
266	1986-11-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.813492563
267	1986-12-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.813492563
268	1987-01-01 00:00:00+00	OTN	0.0	1.0	17.24419083	0.813492563
269	1987-02-01 00:00:00+00	OTN	0.706860902	1.706860902	17.24419083	0.813492563
270	1987-03-01 00:00:00+00	OTN	0.145146193	1.145146193	29.43343511	0.476601557
271	1987-04-01 00:00:00+00	OTN	0.209597538	1.209597538	33.70558615	0.416192762
272	1987-05-01 00:00:00+00	OTN	0.234417237	1.234417237	40.77019403	0.344075404
273	1987-06-01 00:00:00+00	OTN	0.180208031	1.180208031	50.32743025	0.278735094
274	1987-07-01 00:00:00+00	OTN	0.030505607	1.030505607	59.39683736	0.236174544
275	1987-08-01 00:00:00+00	OTN	0.063600498	1.063600498	61.20877395	0.229183172
276	1987-09-01 00:00:00+00	OTN	0.056809978	1.056809978	65.10168245	0.215478625
277	1987-10-01 00:00:00+00	OTN	0.091799957	1.091799957	68.80010762	0.203895335
278	1987-11-01 00:00:00+00	OTN	0.128398206	1.128398206	75.11595455	0.186751551
279	1987-12-01 00:00:00+00	OTN	0.141398497	1.141398497	84.76070832	0.16550146
280	1988-01-01 00:00:00+00	OTN	0.165108722	1.165108722	96.74574507	0.144998842
281	1988-02-01 00:00:00+00	OTN	0.17961179	1.17961179	112.7193114	0.124450911
282	1988-03-01 00:00:00+00	OTN	0.160100924	1.160100924	132.9650287	0.105501583
283	1988-04-01 00:00:00+00	OTN	0.192798681	1.192798681	154.2528526	0.090941728
284	1988-05-01 00:00:00+00	OTN	0.177799112	1.177799112	183.9925991	0.076242311
285	1988-06-01 00:00:00+00	OTN	0.195300349	1.195300349	216.7063199	0.064732865
286	1988-07-01 00:00:00+00	OTN	0.240398932	1.240398932	259.0291398	0.05415615
287	1988-08-01 00:00:00+00	OTN	0.206599817	1.206599817	321.2994684	0.043660268
288	1988-09-01 00:00:00+00	OTN	0.240098492	1.240098492	387.6798797	0.036184547
289	1988-10-01 00:00:00+00	OTN	0.272499575	1.272499575	480.7612341	0.029178769
290	1988-11-01 00:00:00+00	OTN	0.269200707	1.269200707	611.7684659	0.022930278
291	1988-12-01 00:00:00+00	OTN	0.287901	1.287901	776.4569697	0.018066708
292	1989-01-01 00:00:00+00	IPC	0.4272	1.4272	0.999999708	14.02802509
293	1989-02-01 00:00:00+00	IPC	0.1014	1.1014	1.427199583	9.829053457
294	1989-03-01 00:00:00+00	BTN	0.060907336	1.060907336	1.571917621	8.924145139
295	1989-04-01 00:00:00+00	BTN	0.073059776	1.073059776	1.667658935	8.411804535
296	1989-05-01 00:00:00+00	BTN	0.099372562	1.099372562	1.789497724	7.839082893
297	1989-06-01 00:00:00+00	BTN	0.248341817	1.248341817	1.967324698	7.13050622
298	1989-07-01 00:00:00+00	BTN	0.287594217	1.287594217	2.455893688	5.711982185
299	1989-08-01 00:00:00+00	BTN	0.293412024	1.293412024	3.162194511	4.436166386
300	1989-09-01 00:00:00+00	BTN	0.359511797	1.359511797	4.090020404	3.429816874
301	1989-10-01 00:00:00+00	BTN	0.376210877	1.376210877	5.560430989	2.522829799
302	1989-11-01 00:00:00+00	BTN	0.414204703	1.414204703	7.652325606	1.833170949
303	1989-12-01 00:00:00+00	BTN	0.535499972	1.535499972	10.82195486	1.296255729
304	1990-01-01 00:00:00+00	BTN	0.56109498	1.56109498	16.61711139	0.844191308
305	1990-02-01 00:00:00+00	BTN	0.727802864	1.727802864	25.94088917	0.540768703
306	1990-03-01 00:00:00+00	IPC	0.843200001	1.843200001	44.82074259	0.312980557
307	1990-04-01 00:00:00+00	IPC	0.447999999	1.447999999	82.61359279	0.16980282
308	1990-05-01 00:00:00+00	IPC	0.078700001	1.078700001	119.6244823	0.117267141
309	1990-06-01 00:00:00+00	IPC	0.095499999	1.095499999	129.0389291	0.108711542
310	1990-07-01 00:00:00+00	IPC	0.1292	1.1292	141.3621468	0.099234635
311	1990-08-01 00:00:00+00	IPC	0.1203	1.1203	159.6261362	0.087880477
312	1990-09-01 00:00:00+00	IPC	0.127600001	1.127600001	178.8291604	0.0784437
313	1990-10-01 00:00:00+00	IPC	0.142	1.142	201.6477614	0.069566956
314	1990-11-01 00:00:00+00	IPC	0.1558	1.1558	230.2817435	0.060916774
315	1990-12-01 00:00:00+00	IPC	0.183000001	1.183000001	266.1596392	0.05270529
316	1991-01-01 00:00:00+00	IPC	0.199100001	1.199100001	314.8668535	0.044552232
317	1991-02-01 00:00:00+00	IPC	0.218699997	1.218699997	377.5568443	0.037154726
318	1991-03-01 00:00:00+00	IPC	0.066000002	1.066000002	460.1285252	0.03048718
319	1991-04-01 00:00:00+00	IPC	0.086199998	1.086199998	490.4970088	0.028599606
320	1991-05-01 00:00:00+00	IPC	0.070500004	1.070500004	532.7778501	0.026329963
321	1991-06-01 00:00:00+00	IPC	0.117200001	1.117200001	570.3386904	0.024595948
322	1991-07-01 00:00:00+00	IPC	0.1331	1.1331	637.1823857	0.022015707
323	1991-08-01 00:00:00+00	IPC	0.154900003	1.154900003	721.991361	0.019429624
324	1991-09-01 00:00:00+00	IPC	0.168699995	1.168699995	833.8278248	0.016823642
325	1991-10-01 00:00:00+00	IPC	0.239800002	1.239800002	974.4945745	0.014395176
326	1991-11-01 00:00:00+00	IPC	0.253600005	1.253600005	1208.178376	0.011610886
327	1991-12-01 00:00:00+00	IPC	0.237999993	1.237999993	1514.572417	0.009262034
328	1992-01-01 00:00:00+00	UFIR	0.25600448	1.25600448	1875.040643	0.007481449
329	1992-02-01 00:00:00+00	UFIR	0.261004647	1.261004647	2355.059447	0.005956546
330	1992-03-01 00:00:00+00	UFIR	0.220295228	1.220295228	2969.740906	0.004723651
331	1992-04-01 00:00:00+00	UFIR	0.198299849	1.198299849	3623.960658	0.003870909
332	1992-05-01 00:00:00+00	UFIR	0.234496999	1.234496999	4342.591511	0.003230334
333	1992-06-01 00:00:00+00	UFIR	0.23269963	1.23269963	5360.916187	0.002616721
334	1992-07-01 00:00:00+00	UFIR	0.210100325	1.210100325	6608.399403	0.002122756
335	1992-08-01 00:00:00+00	UFIR	0.231398186	1.231398186	7996.826265	0.001754199
336	1992-09-01 00:00:00+00	UFIR	0.233300251	1.233300251	9847.27736	0.001424558
337	1992-10-01 00:00:00+00	UFIR	0.254799402	1.254799402	12144.64964	0.001155078
338	1992-11-01 00:00:00+00	UFIR	0.236999035	1.236999035	15239.0991	0.000920528
339	1992-12-01 00:00:00+00	UFIR	0.23490011	1.23490011	18850.75088	0.000744162
340	1993-01-01 00:00:00+00	UFIR	0.294700749	1.294700749	23278.79433	0.000602609
341	1993-02-01 00:00:00+00	UFIR	0.267200378	1.267200378	30139.07245	0.000465443
342	1993-03-01 00:00:00+00	UFIR	0.25960045	1.25960045	38192.244	0.0003673
343	1993-04-01 00:00:00+00	UFIR	0.273401817	1.273401817	48106.96773	0.000291601
344	1993-05-01 00:00:00+00	UFIR	0.288099882	1.288099882	61259.50013	0.000228993
345	1993-06-01 00:00:00+00	UFIR	0.303398349	1.303398349	78908.35489	0.000177776
346	1993-07-01 00:00:00+00	UFIR	0.306576	1.306576	102849.0195	0.000136394
347	1993-08-01 00:00:00+00	UFIR	0.319934568	1.319934568	134.3800605	0.104390644
348	1993-09-01 00:00:00+00	UFIR	0.343838528	1.343838528	177.3728871	0.079087741
349	1993-10-01 00:00:00+00	UFIR	0.351646912	1.351646912	238.3605195	0.058852116
350	1993-11-01 00:00:00+00	UFIR	0.339019389	1.339019389	322.1792603	0.043541043
351	1993-12-01 00:00:00+00	UFIR	0.366892352	1.366892352	431.4042761	0.032517112
352	1994-01-01 00:00:00+00	UFIR	0.391702625	1.391702625	589.6832057	0.02378908
353	1994-02-01 00:00:00+00	UFIR	0.396984517	1.396984517	820.6636652	0.017093508
354	1994-03-01 00:00:00+00	UFIR	0.436311908	1.436311908	1146.454434	0.012236004
355	1994-04-01 00:00:00+00	UFIR	0.412499564	1.412499564	1646.666155	0.008519044
356	1994-05-01 00:00:00+00	UFIR	0.442096538	1.442096538	2325.915227	0.006031183
357	1994-06-01 00:00:00+00	UFIR	0.446501	1.446501	3354.194297	0.004182233
358	1994-07-01 00:00:00+00	UFIR	0.052153791	1.052153791	1.76430742	7.951007197
359	1994-08-01 00:00:00+00	UFIR	0.050076129	1.050076129	1.856322741	7.556886894
360	1994-09-01 00:00:00+00	UFIR	0.016271951	1.016271951	1.949280199	7.196513361
361	1994-10-01 00:00:00+00	UFIR	0.019023462	1.019023462	1.98099879	7.081287006
362	1994-11-01 00:00:00+00	UFIR	0.029558183	1.029558183	2.018684246	6.949091231
363	1994-12-01 00:00:00+00	UFIR	0.022514355	1.022514355	2.078352884	6.749585741
364	1995-01-01 00:00:00+00	UFIR	0.0	1.0	2.125145659	6.600969179
365	1995-02-01 00:00:00+00	UFIR	0.0	1.0	2.125145659	6.600969179
366	1995-03-01 00:00:00+00	UFIR	0.043446136	1.043446136	2.125145659	6.600969179
367	1995-04-01 00:00:00+00	UFIR	0.0	1.0	2.217475025	6.326123556
368	1995-05-01 00:00:00+00	UFIR	0.0	1.0	2.217475025	6.326123556
369	1995-06-01 00:00:00+00	UFIR	0.071236369	1.071236369	2.217475025	6.326123556
370	1995-07-01 00:00:00+00	UFIR	0.0	1.0	2.375439894	5.905441358
371	1995-08-01 00:00:00+00	UFIR	0.0	1.0	2.375439894	5.905441358
372	1995-09-01 00:00:00+00	UFIR	0.051295611	1.051295611	2.375439894	5.905441358
373	1995-10-01 00:00:00+00	UFIR	0.0	1.0	2.497289534	5.617298596
374	1995-11-01 00:00:00+00	UFIR	0.0	1.0	2.497289534	5.617298596
375	1995-12-01 00:00:00+00	UFIR	0.042127767	1.042127767	2.497289534	5.617298596
376	1996-01-01 00:00:00+00	UFIR	0.0	1.0	2.602494765	5.390220638
377	1996-02-01 00:00:00+00	UFIR	0.0	1.0	2.602494765	5.390220638
378	1996-03-01 00:00:00+00	UFIR	0.0	1.0	2.602494765	5.390220638
379	1996-04-01 00:00:00+00	UFIR	0.0	1.0	2.602494765	5.390220638
380	1996-05-01 00:00:00+00	UFIR	0.0	1.0	2.602494765	5.390220638
381	1996-06-01 00:00:00+00	UFIR	0.067575721	1.067575721	2.602494765	5.390220638
382	1996-07-01 00:00:00+00	UFIR	0.0	1.0	2.778360225	5.049028872
383	1996-08-01 00:00:00+00	UFIR	0.0	1.0	2.778360225	5.049028872
384	1996-09-01 00:00:00+00	UFIR	0.0	1.0	2.778360225	5.049028872
385	1996-10-01 00:00:00+00	UFIR	0.0	1.0	2.778360225	5.049028872
386	1996-11-01 00:00:00+00	UFIR	0.0	1.0	2.778360225	5.049028872
387	1996-12-01 00:00:00+00	UFIR	0.029501526	1.029501526	2.778360225	5.049028872
388	1997-01-01 00:00:00+00	UFIR	0.0	1.0	2.860326091	4.904343262
389	1997-02-01 00:00:00+00	UFIR	0.0	1.0	2.860326091	4.904343262
390	1997-03-01 00:00:00+00	UFIR	0.0	1.0	2.860326091	4.904343262
391	1997-04-01 00:00:00+00	UFIR	0.0	1.0	2.860326091	4.904343262
392	1997-05-01 00:00:00+00	UFIR	0.0	1.0	2.860326091	4.904343262
393	1997-06-01 00:00:00+00	UFIR	0.0	1.0	2.860326091	4.904343262
394	1997-07-01 00:00:00+00	UFIR	0.0	1.0	2.860326091	4.904343262
395	1997-08-01 00:00:00+00	UFIR	0.0	1.0	2.860326091	4.904343262
396	1997-09-01 00:00:00+00	UFIR	0.0	1.0	2.860326091	4.904343262
397	1997-10-01 00:00:00+00	UFIR	0.0	1.0	2.860326091	4.904343262
398	1997-11-01 00:00:00+00	UFIR	0.0	1.0	2.860326091	4.904343262
399	1997-12-01 00:00:00+00	UFIR	0.055226175	1.055226175	2.860326091	4.904343262
400	1998-01-01 00:00:00+00	UFIR	0.0	1.0	3.01829096	4.647670215
401	1998-02-01 00:00:00+00	UFIR	0.0	1.0	3.01829096	4.647670215
402	1998-03-01 00:00:00+00	UFIR	0.0	1.0	3.01829096	4.647670215
403	1998-04-01 00:00:00+00	UFIR	0.0	1.0	3.01829096	4.647670215
404	1998-05-01 00:00:00+00	UFIR	0.0	1.0	3.01829096	4.647670215
405	1998-06-01 00:00:00+00	UFIR	0.0	1.0	3.01829096	4.647670215
406	1998-07-01 00:00:00+00	UFIR	0.0	1.0	3.01829096	4.647670215
407	1998-08-01 00:00:00+00	UFIR	0.0	1.0	3.01829096	4.647670215
408	1998-09-01 00:00:00+00	UFIR	0.0	1.0	3.01829096	4.647670215
409	1998-10-01 00:00:00+00	UFIR	0.0	1.0	3.01829096	4.647670215
410	1998-11-01 00:00:00+00	UFIR	0.0	1.0	3.01829096	4.647670215
411	1998-12-01 00:00:00+00	UFIR	0.016543544	1.016543544	3.01829096	4.647670215
412	1999-01-01 00:00:00+00	UFIR	0.0	1.0	3.068224189	4.572032593
413	1999-02-01 00:00:00+00	UFIR	0.0	1.0	3.068224189	4.572032593
414	1999-03-01 00:00:00+00	UFIR	0.0	1.0	3.068224189	4.572032593
415	1999-04-01 00:00:00+00	UFIR	0.0	1.0	3.068224189	4.572032593
416	1999-05-01 00:00:00+00	UFIR	0.0	1.0	3.068224189	4.572032593
417	1999-06-01 00:00:00+00	UFIR	0.0	1.0	3.068224189	4.572032593
418	1999-07-01 00:00:00+00	UFIR	0.0	1.0	3.068224189	4.572032593
419	1999-08-01 00:00:00+00	UFIR	0.0	1.0	3.068224189	4.572032593
420	1999-09-01 00:00:00+00	UFIR	0.0	1.0	3.068224189	4.572032593
421	1999-10-01 00:00:00+00	UFIR	0.0	1.0	3.068224189	4.572032593
422	1999-11-01 00:00:00+00	UFIR	0.0	1.0	3.068224189	4.572032593
423	1999-12-01 00:00:00+00	UFIR	0.08915046	1.08915046	3.068224189	4.572032593
424	2000-01-01 00:00:00+00	UFIR	0.0	1.0	3.341757788	4.197797052
425	2000-02-01 00:00:00+00	UFIR	0.0	1.0	3.341757788	4.197797052
426	2000-03-01 00:00:00+00	UFIR	0.0	1.0	3.341757788	4.197797052
427	2000-04-01 00:00:00+00	UFIR	0.0	1.0	3.341757788	4.197797052
428	2000-05-01 00:00:00+00	UFIR	0.0	1.0	3.341757788	4.197797052
429	2000-06-01 00:00:00+00	UFIR	0.0	1.0	3.341757788	4.197797052
430	2000-07-01 00:00:00+00	UFIR	0.0	1.0	3.341757788	4.197797052
431	2000-08-01 00:00:00+00	UFIR	0.0	1.0	3.341757788	4.197797052
432	2000-09-01 00:00:00+00	UFIR	0.0	1.0	3.341757788	4.197797052
433	2000-10-01 00:00:00+00	UFIR	0.0	1.0	3.341757788	4.197797052
434	2000-11-01 00:00:00+00	UFIR	0.0	1.0	3.341757788	4.197797052
435	2000-12-01 00:00:00+00	IPCA-E acum. 2000	0.06035557	1.06035557	3.341757788	4.197797052
436	2001-01-01 00:00:00+00	IPCA-E	0.0063	1.0063	3.543451485	3.958857925
437	2001-02-01 00:00:00+00	IPCA-E	0.005	1.005	3.565775229	3.934073264
438	2001-03-01 00:00:00+00	IPCA-E	0.0036	1.0036	3.583604105	3.91450076
439	2001-04-01 00:00:00+00	IPCA-E	0.005	1.005	3.59650508	3.900459107
440	2001-05-01 00:00:00+00	IPCA-E	0.0049	1.0049	3.614487605	3.881053838
441	2001-06-01 00:00:00+00	IPCA-E	0.0038	1.0038	3.632198595	3.862129404
442	2001-07-01 00:00:00+00	IPCA-E	0.0094	1.0094	3.646000949	3.84750887
443	2001-08-01 00:00:00+00	IPCA-E	0.0118	1.0118	3.680273358	3.811679087
444	2001-09-01 00:00:00+00	IPCA-E	0.0038	1.0038	3.723700584	3.767225822
445	2001-10-01 00:00:00+00	IPCA-E	0.0037	1.0037	3.737850646	3.752964557
446	2001-11-01 00:00:00+00	IPCA-E	0.0099	1.0099	3.751680693	3.739129777
447	2001-12-01 00:00:00+00	IPCA-E	0.0055	1.0055	3.788822332	3.702475271
448	2002-01-01 00:00:00+00	IPCA-E	0.0062	1.0062	3.809660855	3.682223045
449	2002-02-01 00:00:00+00	IPCA-E	0.0044	1.0044	3.833280753	3.659533934
450	2002-03-01 00:00:00+00	IPCA-E	0.004	1.004	3.850147188	3.643502523
451	2002-04-01 00:00:00+00	IPCA-E	0.0078	1.0078	3.865547777	3.628986577
452	2002-05-01 00:00:00+00	IPCA-E	0.0042	1.0042	3.895699049	3.60089956
453	2002-06-01 00:00:00+00	IPCA-E	0.0033	1.0033	3.912060985	3.585839036
454	2002-07-01 00:00:00+00	IPCA-E	0.0077	1.0077	3.924970787	3.574044689
455	2002-08-01 00:00:00+00	IPCA-E	0.01	1.01	3.955193062	3.546734831
456	2002-09-01 00:00:00+00	IPCA-E	0.0062	1.0062	3.994744992	3.511618644
457	2002-10-01 00:00:00+00	IPCA-E	0.009	1.009	4.019512411	3.489980763
458	2002-11-01 00:00:00+00	IPCA-E	0.0208	1.0208	4.055688023	3.458851104
459	2002-12-01 00:00:00+00	IPCA-E	0.0305	1.0305	4.140046334	3.388372946
460	2003-01-01 00:00:00+00	IPCA-E	0.0198	1.0198	4.266317747	3.288086314
461	2003-02-01 00:00:00+00	IPCA-E	0.0219	1.0219	4.350790838	3.224246238
462	2003-03-01 00:00:00+00	IPCA-E	0.0114	1.0114	4.446073158	3.155148486
463	2003-04-01 00:00:00+00	IPCA-E	0.0114	1.0114	4.496758392	3.119585215
464	2003-05-01 00:00:00+00	IPCA-E	0.0085	1.0085	4.548021437	3.084422795
465	2003-06-01 00:00:00+00	IPCA-E	0.0022	1.0022	4.58667962	3.058426173
466	2003-07-01 00:00:00+00	IPCA-E	-0.0018	0.9982	4.596770315	3.051712405
467	2003-08-01 00:00:00+00	IPCA-E	0.0027	1.0027	4.588496128	3.057215393
468	2003-09-01 00:00:00+00	IPCA-E	0.0057	1.0057	4.600885068	3.048983138
469	2003-10-01 00:00:00+00	IPCA-E	0.0066	1.0066	4.627110113	3.031702435
470	2003-11-01 00:00:00+00	IPCA-E	0.0017	1.0017	4.657649039	3.011824394
471	2003-12-01 00:00:00+00	IPCA-E	0.0046	1.0046	4.665567043	3.006712982
472	2004-01-01 00:00:00+00	IPCA-E	0.0068	1.0068	4.687028651	2.992945432
473	2004-02-01 00:00:00+00	IPCA-E	0.009	1.009	4.718900446	2.972730863
474	2004-03-01 00:00:00+00	IPCA-E	0.004	1.004	4.76137055	2.946214928
475	2004-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	4.780416032	2.93447702
476	2004-05-01 00:00:00+00	IPCA-E	0.0054	1.0054	4.790454906	2.928327532
477	2004-06-01 00:00:00+00	IPCA-E	0.0056	1.0056	4.816323362	2.912599495
478	2004-07-01 00:00:00+00	IPCA-E	0.0093	1.0093	4.843294773	2.896379768
479	2004-08-01 00:00:00+00	IPCA-E	0.0079	1.0079	4.888337414	2.869691636
480	2004-09-01 00:00:00+00	IPCA-E	0.0049	1.0049	4.92695528	2.847198766
481	2004-10-01 00:00:00+00	IPCA-E	0.0032	1.0032	4.951097361	2.83331552
482	2004-11-01 00:00:00+00	IPCA-E	0.0063	1.0063	4.966940873	2.824277831
483	2004-12-01 00:00:00+00	IPCA-E	0.0084	1.0084	4.9982326	2.806596274
484	2005-01-01 00:00:00+00	IPCA-E	0.0068	1.0068	5.040217754	2.783217249
485	2005-02-01 00:00:00+00	IPCA-E	0.0074	1.0074	5.074491234	2.764419199
486	2005-03-01 00:00:00+00	IPCA-E	0.0035	1.0035	5.11204247	2.744112764
487	2005-04-01 00:00:00+00	IPCA-E	0.0074	1.0074	5.129934618	2.734541868
488	2005-05-01 00:00:00+00	IPCA-E	0.0083	1.0083	5.167896135	2.714454902
489	2005-06-01 00:00:00+00	IPCA-E	0.0012	1.0012	5.210789672	2.692110385
490	2005-07-01 00:00:00+00	IPCA-E	0.0011	1.0011	5.21704262	2.688883725
491	2005-08-01 00:00:00+00	IPCA-E	0.0028	1.0028	5.222781367	2.685929203
492	2005-09-01 00:00:00+00	IPCA-E	0.0016	1.0016	5.237405155	2.6784296
493	2005-10-01 00:00:00+00	IPCA-E	0.0056	1.0056	5.245785003	2.674150958
494	2005-11-01 00:00:00+00	IPCA-E	0.0078	1.0078	5.275161399	2.659259107
495	2005-12-01 00:00:00+00	IPCA-E	0.0038	1.0038	5.316307658	2.638677424
496	2006-01-01 00:00:00+00	IPCA-E	0.0051	1.0051	5.336509627	2.628688408
497	2006-02-01 00:00:00+00	IPCA-E	0.0052	1.0052	5.363725826	2.615350122
498	2006-03-01 00:00:00+00	IPCA-E	0.0037	1.0037	5.391617201	2.601820654
499	2006-04-01 00:00:00+00	IPCA-E	0.0017	1.0017	5.411566184	2.592229406
500	2006-05-01 00:00:00+00	IPCA-E	0.0027	1.0027	5.420765847	2.587830095
501	2006-06-01 00:00:00+00	IPCA-E	-0.0015	0.9985	5.435401914	2.580861768
502	2006-07-01 00:00:00+00	IPCA-E	-0.0002	0.9998	5.427248812	2.584738876
503	2006-08-01 00:00:00+00	IPCA-E	0.0019	1.0019	5.426163362	2.585255927
504	2006-09-01 00:00:00+00	IPCA-E	0.0005	1.0005	5.436473072	2.580353256
505	2006-10-01 00:00:00+00	IPCA-E	0.0029	1.0029	5.439191309	2.579063724
506	2006-11-01 00:00:00+00	IPCA-E	0.0037	1.0037	5.454964964	2.571606067
507	2006-12-01 00:00:00+00	IPCA-E	0.0035	1.0035	5.475148334	2.5621262
508	2007-01-01 00:00:00+00	IPCA-E	0.0052	1.0052	5.494311353	2.553190035
509	2007-02-01 00:00:00+00	IPCA-E	0.0046	1.0046	5.522881772	2.539982127
510	2007-03-01 00:00:00+00	IPCA-E	0.0041	1.0041	5.548287028	2.52835171
511	2007-04-01 00:00:00+00	IPCA-E	0.0022	1.0022	5.571035005	2.518027796
512	2007-05-01 00:00:00+00	IPCA-E	0.0026	1.0026	5.583291282	2.512500295
513	2007-06-01 00:00:00+00	IPCA-E	0.0029	1.0029	5.597807839	2.505984735
514	2007-07-01 00:00:00+00	IPCA-E	0.0024	1.0024	5.614041482	2.498738393
515	2007-08-01 00:00:00+00	IPCA-E	0.0042	1.0042	5.627515182	2.49275578
516	2007-09-01 00:00:00+00	IPCA-E	0.0029	1.0029	5.651150745	2.482329994
517	2007-10-01 00:00:00+00	IPCA-E	0.0024	1.0024	5.667539083	2.475152053
518	2007-11-01 00:00:00+00	IPCA-E	0.0023	1.0023	5.681141176	2.46922591
519	2007-12-01 00:00:00+00	IPCA-E	0.007	1.007	5.694207801	2.463559723
520	2008-01-01 00:00:00+00	IPCA-E	0.007	1.007	5.734067256	2.44643468
521	2008-02-01 00:00:00+00	IPCA-E	0.0064	1.0064	5.774205726	2.42942868
522	2008-03-01 00:00:00+00	IPCA-E	0.0023	1.0023	5.811160643	2.413979213
523	2008-04-01 00:00:00+00	IPCA-E	0.0059	1.0059	5.824526313	2.408439801
524	2008-05-01 00:00:00+00	IPCA-E	0.0056	1.0056	5.858891018	2.394313352
525	2008-06-01 00:00:00+00	IPCA-E	0.009	1.009	5.891700808	2.380979865
526	2008-07-01 00:00:00+00	IPCA-E	0.0063	1.0063	5.944726115	2.359742185
527	2008-08-01 00:00:00+00	IPCA-E	0.0035	1.0035	5.982177889	2.344968881
528	2008-09-01 00:00:00+00	IPCA-E	0.0026	1.0026	6.003115512	2.336790116
529	2008-10-01 00:00:00+00	IPCA-E	0.003	1.003	6.018723612	2.330730217
530	2008-11-01 00:00:00+00	IPCA-E	0.0049	1.0049	6.036779783	2.323758941
531	2008-12-01 00:00:00+00	IPCA-E	0.0029	1.0029	6.066360004	2.312428043
532	2009-01-01 00:00:00+00	IPCA-E	0.004	1.004	6.083952448	2.305741393
533	2009-02-01 00:00:00+00	IPCA-E	0.0063	1.0063	6.108288258	2.296555172
534	2009-03-01 00:00:00+00	IPCA-E	0.0011	1.0011	6.146770474	2.282177455
535	2009-04-01 00:00:00+00	IPCA-E	0.0036	1.0036	6.153531922	2.279669818
536	2009-05-01 00:00:00+00	IPCA-E	0.0059	1.0059	6.175684636	2.271492445
537	2009-06-01 00:00:00+00	IPCA-E	0.0038	1.0038	6.212121176	2.258169246
538	2009-07-01 00:00:00+00	IPCA-E	0.0022	1.0022	6.235727236	2.249620688
539	2009-08-01 00:00:00+00	IPCA-E	0.0023	1.0023	6.249445836	2.244682386
540	2009-09-01 00:00:00+00	IPCA-E	0.0019	1.0019	6.263819562	2.239531464
541	2009-10-01 00:00:00+00	IPCA-E	0.0018	1.0018	6.275720819	2.235284424
542	2009-11-01 00:00:00+00	IPCA-E	0.0044	1.0044	6.287017116	2.231268141
543	2009-12-01 00:00:00+00	IPCA-E	0.0038	1.0038	6.314679992	2.221493569
544	2010-01-01 00:00:00+00	IPCA-E	0.0052	1.0052	6.338675776	2.213083851
545	2010-02-01 00:00:00+00	IPCA-E	0.0094	1.0094	6.37163689	2.201635347
546	2010-03-01 00:00:00+00	IPCA-E	0.0055	1.0055	6.431530276	2.181132699
547	2010-04-01 00:00:00+00	IPCA-E	0.0048	1.0048	6.466903693	2.169202088
548	2010-05-01 00:00:00+00	IPCA-E	0.0063	1.0063	6.497944831	2.158839658
549	2010-06-01 00:00:00+00	IPCA-E	0.0019	1.0019	6.538881883	2.145324116
550	2010-07-01 00:00:00+00	IPCA-E	-0.0009	0.9991	6.551305759	2.14125573
551	2010-08-01 00:00:00+00	IPCA-E	-0.0005	0.9995	6.545409584	2.143184596
552	2010-09-01 00:00:00+00	IPCA-E	0.0031	1.0031	6.542136879	2.144256724
553	2010-10-01 00:00:00+00	IPCA-E	0.0062	1.0062	6.562417503	2.137630071
554	2010-11-01 00:00:00+00	IPCA-E	0.0086	1.0086	6.603104492	2.124458429
555	2010-12-01 00:00:00+00	IPCA-E	0.0069	1.0069	6.65989119	2.106343872
556	2011-01-01 00:00:00+00	IPCA-E	0.0076	1.0076	6.705844439	2.091909695
557	2011-02-01 00:00:00+00	IPCA-E	0.0097	1.0097	6.756808857	2.076131098
558	2011-03-01 00:00:00+00	IPCA-E	0.006	1.006	6.822349903	2.056186093
559	2011-04-01 00:00:00+00	IPCA-E	0.0077	1.0077	6.863284002	2.043922558
560	2011-05-01 00:00:00+00	IPCA-E	0.007	1.007	6.916131289	2.028304612
561	2011-06-01 00:00:00+00	IPCA-E	0.0023	1.0023	6.964544208	2.014205176
562	2011-07-01 00:00:00+00	IPCA-E	0.001	1.001	6.98056266	2.009583135
563	2011-08-01 00:00:00+00	IPCA-E	0.0027	1.0027	6.987543223	2.007575559
564	2011-09-01 00:00:00+00	IPCA-E	0.0053	1.0053	7.006409589	2.002169701
565	2011-10-01 00:00:00+00	IPCA-E	0.0042	1.0042	7.04354356	1.991614146
566	2011-11-01 00:00:00+00	IPCA-E	0.0046	1.0046	7.073126443	1.983284352
567	2011-12-01 00:00:00+00	IPCA-E	0.0056	1.0056	7.105662825	1.974203018
568	2012-01-01 00:00:00+00	IPCA-E	0.0065	1.0065	7.145454537	1.963209047
569	2012-02-01 00:00:00+00	IPCA-E	0.0053	1.0053	7.191899991	1.950530598
570	2012-03-01 00:00:00+00	IPCA-E	0.0025	1.0025	7.230017061	1.940247288
571	2012-04-01 00:00:00+00	IPCA-E	0.0043	1.0043	7.248092104	1.935408766
572	2012-05-01 00:00:00+00	IPCA-E	0.0051	1.0051	7.2792589	1.927122141
573	2012-06-01 00:00:00+00	IPCA-E	0.0018	1.0018	7.31638312	1.917343688
574	2012-07-01 00:00:00+00	IPCA-E	0.0033	1.0033	7.32955261	1.91389867
575	2012-08-01 00:00:00+00	IPCA-E	0.0039	1.0039	7.353740133	1.907603578
576	2012-09-01 00:00:00+00	IPCA-E	0.0048	1.0048	7.38241972	1.900192826
577	2012-10-01 00:00:00+00	IPCA-E	0.0065	1.0065	7.417855335	1.891115472
578	2012-11-01 00:00:00+00	IPCA-E	0.0054	1.0054	7.466071394	1.878902605
579	2012-12-01 00:00:00+00	IPCA-E	0.0069	1.0069	7.50638818	1.868811026
580	2013-01-01 00:00:00+00	IPCA-E	0.0088	1.0088	7.558182258	1.856004594
581	2013-02-01 00:00:00+00	IPCA-E	0.0068	1.0068	7.624694262	1.839814229
582	2013-03-01 00:00:00+00	IPCA-E	0.0049	1.0049	7.676542183	1.82738799
583	2013-04-01 00:00:00+00	IPCA-E	0.0051	1.0051	7.71415724	1.818477451
584	2013-05-01 00:00:00+00	IPCA-E	0.0046	1.0046	7.753499442	1.809250275
585	2013-06-01 00:00:00+00	IPCA-E	0.0038	1.0038	7.789165539	1.800965832
586	2013-07-01 00:00:00+00	IPCA-E	0.0007	1.0007	7.818764368	1.794148069
587	2013-08-01 00:00:00+00	IPCA-E	0.0016	1.0016	7.824237503	1.792893044
588	2013-09-01 00:00:00+00	IPCA-E	0.0027	1.0027	7.836756283	1.790028998
589	2013-10-01 00:00:00+00	IPCA-E	0.0048	1.0048	7.857915525	1.785208933
590	2013-11-01 00:00:00+00	IPCA-E	0.0057	1.0057	7.89563352	1.776680865
591	2013-12-01 00:00:00+00	IPCA-E	0.0075	1.0075	7.940638631	1.766611182
592	2014-01-01 00:00:00+00	IPCA-E	0.0067	1.0067	8.00019342	1.75346023
593	2014-02-01 00:00:00+00	IPCA-E	0.007	1.007	8.053794716	1.741790235
594	2014-03-01 00:00:00+00	IPCA-E	0.0073	1.0073	8.110171279	1.729682458
595	2014-04-01 00:00:00+00	IPCA-E	0.0078	1.0078	8.16937553	1.717147283
596	2014-05-01 00:00:00+00	IPCA-E	0.0058	1.0058	8.233096659	1.703857197
597	2014-06-01 00:00:00+00	IPCA-E	0.0047	1.0047	8.280848619	1.694031812
598	2014-07-01 00:00:00+00	IPCA-E	0.0017	1.0017	8.319768608	1.686107109
599	2014-08-01 00:00:00+00	IPCA-E	0.0014	1.0014	8.333912215	1.683245591
600	2014-09-01 00:00:00+00	IPCA-E	0.0039	1.0039	8.345579692	1.680892342
601	2014-10-01 00:00:00+00	IPCA-E	0.0048	1.0048	8.378127453	1.674362329
602	2014-11-01 00:00:00+00	IPCA-E	0.0038	1.0038	8.418342464	1.666363783
603	2014-12-01 00:00:00+00	IPCA-E	0.0079	1.0079	8.450332166	1.660055572
604	2015-01-01 00:00:00+00	IPCA-E	0.0089	1.0089	8.51708979	1.647043925
605	2015-02-01 00:00:00+00	IPCA-E	0.0133	1.0133	8.592891889	1.632514545
606	2015-03-01 00:00:00+00	IPCA-E	0.0124	1.0124	8.707177351	1.611087087
607	2015-04-01 00:00:00+00	IPCA-E	0.0107	1.0107	8.81514635	1.591354294
608	2015-05-01 00:00:00+00	IPCA-E	0.006	1.006	8.909468416	1.574507068
609	2015-06-01 00:00:00+00	IPCA-E	0.0099	1.0099	8.962925227	1.56511637
610	2015-07-01 00:00:00+00	IPCA-E	0.0059	1.0059	9.051658186	1.549773611
611	2015-08-01 00:00:00+00	IPCA-E	0.0043	1.0043	9.10506297	1.540683578
612	2015-09-01 00:00:00+00	IPCA-E	0.0039	1.0039	9.14421474	1.534087004
613	2015-10-01 00:00:00+00	IPCA-E	0.0066	1.0066	9.179877178	1.528127307
614	2015-11-01 00:00:00+00	IPCA-E	0.0085	1.0085	9.240464367	1.518107796
615	2015-12-01 00:00:00+00	IPCA-E	0.0118	1.0118	9.319008314	1.505312638
616	2016-01-01 00:00:00+00	IPCA-E	0.0092	1.0092	9.428972613	1.487757105
617	2016-02-01 00:00:00+00	IPCA-E	0.0142	1.0142	9.515719161	1.474194515
618	2016-03-01 00:00:00+00	IPCA-E	0.0043	1.0043	9.650842373	1.453554048
619	2016-04-01 00:00:00+00	IPCA-E	0.0051	1.0051	9.692340995	1.447330526
620	2016-05-01 00:00:00+00	IPCA-E	0.0086	1.0086	9.741771934	1.439986595
621	2016-06-01 00:00:00+00	IPCA-E	0.004	1.004	9.825551173	1.427708303
622	2016-07-01 00:00:00+00	IPCA-E	0.0054	1.0054	9.864853377	1.422020222
623	2016-08-01 00:00:00+00	IPCA-E	0.0045	1.0045	9.918123585	1.414382557
624	2016-09-01 00:00:00+00	IPCA-E	0.0023	1.0023	9.962755142	1.408046348
625	2016-10-01 00:00:00+00	IPCA-E	0.0019	1.0019	9.985669478	1.404815273
626	2016-11-01 00:00:00+00	IPCA-E	0.0026	1.0026	10.00464225	1.402151186
627	2016-12-01 00:00:00+00	IPCA-E	0.0019	1.0019	10.03065432	1.398515047
628	2017-01-01 00:00:00+00	IPCA-E	0.0031	1.0031	10.04971256	1.395862907
629	2017-02-01 00:00:00+00	IPCA-E	0.0054	1.0054	10.08086667	1.391549105
630	2017-03-01 00:00:00+00	IPCA-E	0.0015	1.0015	10.13530335	1.384075099
631	2017-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	10.15050631	1.382002096
632	2017-05-01 00:00:00+00	IPCA-E	0.0024	1.0024	10.17182237	1.379105974
633	2017-06-01 00:00:00+00	IPCA-E	0.0016	1.0016	10.19623474	1.375804044
634	2017-07-01 00:00:00+00	IPCA-E	-0.0018	0.9982	10.21254872	1.373606274
635	2017-08-01 00:00:00+00	IPCA-E	0.0035	1.0035	10.19416613	1.376083224
636	2017-09-01 00:00:00+00	IPCA-E	0.0011	1.0011	10.22984571	1.371283731
637	2017-10-01 00:00:00+00	IPCA-E	0.0034	1.0034	10.24109854	1.369776976
638	2017-11-01 00:00:00+00	IPCA-E	0.0032	1.0032	10.27591828	1.365135515
639	2017-12-01 00:00:00+00	IPCA-E	0.0035	1.0035	10.30880122	1.360781016
640	2018-01-01 00:00:00+00	IPCA-E	0.0039	1.0039	10.34488202	1.356034894
641	2018-02-01 00:00:00+00	IPCA-E	0.0038	1.0038	10.38522706	1.350766903
642	2018-03-01 00:00:00+00	IPCA-E	0.001	1.001	10.42469092	1.34565342
643	2018-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	10.43511562	1.344309111
644	2018-05-01 00:00:00+00	IPCA-E	0.0014	1.0014	10.45702936	1.341491978
645	2018-06-01 00:00:00+00	IPCA-E	0.0111	1.0111	10.4716692	1.339616514
646	2018-07-01 00:00:00+00	IPCA-E	0.0064	1.0064	10.58790473	1.324910013
647	2018-08-01 00:00:00+00	IPCA-E	0.0013	1.0013	10.65566732	1.316484512
648	2018-09-01 00:00:00+00	IPCA-E	0.0009	1.0009	10.66951969	1.314775305
649	2018-10-01 00:00:00+00	IPCA-E	0.0058	1.0058	10.67912225	1.313593071
650	2018-11-01 00:00:00+00	IPCA-E	0.0019	1.0019	10.74106116	1.306018165
651	2018-12-01 00:00:00+00	IPCA-E	-0.0016	0.9984	10.76146918	1.303541437
652	2019-01-01 00:00:00+00	IPCA-E	0.003	1.003	10.74425083	1.305630445
653	2019-02-01 00:00:00+00	IPCA-E	0.0034	1.0034	10.77648358	1.30172527
654	2019-03-01 00:00:00+00	IPCA-E	0.0054	1.0054	10.81312362	1.297314401
655	2019-04-01 00:00:00+00	IPCA-E	0.0072	1.0072	10.87151449	1.290346529
656	2019-05-01 00:00:00+00	IPCA-E	0.0035	1.0035	10.9497894	1.281122448
657	2019-06-01 00:00:00+00	IPCA-E	0.0006	1.0006	10.98811366	1.276654158
658	2019-07-01 00:00:00+00	IPCA-E	0.0009	1.0009	10.99470653	1.275888625
659	2019-08-01 00:00:00+00	IPCA-E	0.0008	1.0008	11.00460176	1.274741358
660	2019-09-01 00:00:00+00	IPCA-E	0.0009	1.0009	11.01340544	1.27372238
661	2019-10-01 00:00:00+00	IPCA-E	0.0009	1.0009	11.02331751	1.272577061
662	2019-11-01 00:00:00+00	IPCA-E	0.0014	1.0014	11.0332385	1.271432771
663	2019-12-01 00:00:00+00	IPCA-E	0.0105	1.0105	11.04868503	1.269655254
664	2020-01-01 00:00:00+00	IPCA-E	0.0071	1.0071	11.16469622	1.256462399
665	2020-02-01 00:00:00+00	IPCA-E	0.0022	1.0022	11.24396557	1.247604407
666	2020-03-01 00:00:00+00	IPCA-E	0.0002	1.0002	11.26870229	1.244865703
667	2020-04-01 00:00:00+00	IPCA-E	-0.0001	0.9999	11.27095603	1.244616779
668	2020-05-01 00:00:00+00	IPCA-E	-0.0059	0.9941	11.26982893	1.244741253
669	2020-06-01 00:00:00+00	IPCA-E	0.0002	1.0002	11.20333694	1.252128813
670	2020-07-01 00:00:00+00	IPCA-E	0.003	1.003	11.20557761	1.251878438
671	2020-08-01 00:00:00+00	IPCA-E	0.0023	1.0023	11.23919434	1.248134036
672	2020-09-01 00:00:00+00	IPCA-E	0.0045	1.0045	11.26504449	1.245269915
673	2020-10-01 00:00:00+00	IPCA-E	0.0094	1.0094	11.31573719	1.239691304
674	2020-11-01 00:00:00+00	IPCA-E	0.0081	1.0081	11.42210512	1.228146725
675	2020-12-01 00:00:00+00	IPCA-E	0.0106	1.0106	11.51462417	1.218278668
676	2021-01-01 00:00:00+00	IPCA-E	0.0078	1.0078	11.63667919	1.205500364
677	2021-02-01 00:00:00+00	IPCA-E	0.0048	1.0048	11.72744529	1.196170236
678	2021-03-01 00:00:00+00	IPCA-E	0.0093	1.0093	11.78373702	1.190456047
679	2021-04-01 00:00:00+00	IPCA-E	0.006	1.006	11.89332578	1.179486819
680	2021-05-01 00:00:00+00	IPCA-E	0.0044	1.0044	11.96468573	1.172452107
681	2021-06-01 00:00:00+00	IPCA-E	0.0083	1.0083	12.01733035	1.167315917
682	2021-07-01 00:00:00+00	IPCA-E	0.0072	1.0072	12.11707419	1.157706949
683	2021-08-01 00:00:00+00	IPCA-E	0.0089	1.0089	12.20431713	1.149431046
684	2021-09-01 00:00:00+00	IPCA-E	0.0114	1.0114	12.31293555	1.139291352
685	2021-10-01 00:00:00+00	IPCA-E	0.012	1.012	12.45330301	1.126449824
686	2021-11-01 00:00:00+00	IPCA-E	0.0117	1.0117	12.60274265	1.113092712
687	2021-12-01 00:00:00+00	IPCA-E	0.0078	1.0078	12.75019474	1.100220136
688	2022-01-01 00:00:00+00	IPCA-E	0.0058	1.0058	12.84964626	1.091704839
689	2022-02-01 00:00:00+00	IPCA-E	0.0099	1.0099	12.92417421	1.085409464
690	2022-03-01 00:00:00+00	IPCA-E	0.0095	1.0095	13.05212353	1.074769248
691	2022-04-01 00:00:00+00	IPCA-E	0.0173	1.0173	13.1761187	1.064655025
692	2022-05-01 00:00:00+00	IPCA-E	0.0059	1.0059	13.40406556	1.046549715
693	2022-06-01 00:00:00+00	IPCA-E	0.0069	1.0069	13.48314954	1.040411289
694	2022-07-01 00:00:00+00	IPCA-E	0.0013	1.0013	13.57618328	1.033281645
695	2022-08-01 00:00:00+00	IPCA-E	-0.0073	0.9927	13.59383231	1.031940123
696	2022-09-01 00:00:00+00	IPCA-E	-0.0037	0.9963	13.49459734	1.039528683
697	2022-10-01 00:00:00+00	IPCA-E	0.0016	1.0016	13.44466733	1.043389223
698	2022-11-01 00:00:00+00	IPCA-E	0.0053	1.0053	13.4661788	1.041722467
699	2022-12-01 00:00:00+00	IPCA-E	0.0052	1.0052	13.53754954	1.036230445
700	2023-01-01 00:00:00+00	IPCA-E	0.0055	1.0055	13.6079448	1.030869922
701	2023-02-01 00:00:00+00	IPCA-E	0.0076	1.0076	13.6827885	1.025231151
702	2023-03-01 00:00:00+00	IPCA-E	0.0069	1.0069	13.78677769	1.017498164
703	2023-04-01 00:00:00+00	IPCA-E	0.0057	1.0057	13.88190646	1.010525538
704	2023-05-01 00:00:00+00	IPCA-E	0.0051	1.0051	13.96103332	1.004798189
705	2023-06-01 00:00:00+00	IPCA-E	0.0004	1.0004	14.03223459	0.99969972
706	2023-07-01 00:00:00+00	IPCA-E	-0.0007	0.9993	14.03784749	0.9993
707	2023-08-01 00:00:00+00	IPCA-E	0	0	14.02802099	1.0
\.


--
-- Data for Name: t214_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t214_tabela_pnep (id, data, indexador, variacao_mensal, numero_indice, fator_vigente, indice_correcao) FROM stdin;
1	1979-04-01 00:00:00+00	INPC	0.0345	1.0345	1.0	0.448299008
2	1979-05-01 00:00:00+00	INPC	0.0176	1.0176	1.0345	0.433348485
3	1979-06-01 00:00:00+00	INPC	0.03	1.03	1.0527072	0.425853464
4	1979-07-01 00:00:00+00	INPC	0.0536	1.0536	1.084288416	0.413449965
5	1979-08-01 00:00:00+00	INPC	0.0579	1.0579	1.142406275	0.392416444
6	1979-09-01 00:00:00+00	INPC	0.0661	1.0661	1.208551598	0.370939072
7	1979-10-01 00:00:00+00	INPC	0.0506	1.0506	1.288436859	0.347940223
8	1979-11-01 00:00:00+00	INPC	0.061	1.061	1.353631764	0.331182394
9	1979-12-01 00:00:00+00	INPC	0.0451	1.0451	1.436203302	0.312141747
10	1980-01-01 00:00:00+00	INPC	0.0656	1.0656	1.500976071	0.298671656
11	1980-02-01 00:00:00+00	INPC	0.0415	1.0415	1.599440101	0.280284962
12	1980-03-01 00:00:00+00	INPC	0.0512	1.0512	1.665816865	0.269116622
13	1980-04-01 00:00:00+00	INPC	0.0485	1.0485	1.751106689	0.256008963
14	1980-05-01 00:00:00+00	INPC	0.0553	1.0553	1.836035363	0.24416687
15	1980-06-01 00:00:00+00	INPC	0.0552	1.0552	1.937568119	0.231371999
16	1980-07-01 00:00:00+00	INPC	0.0551	1.0551	2.044521879	0.219268384
17	1980-08-01 00:00:00+00	INPC	0.0515	1.0515	2.157175034	0.207817632
18	1980-09-01 00:00:00+00	INPC	0.0445	1.0445	2.268269548	0.197639213
19	1980-10-01 00:00:00+00	INPC	0.0965	1.0965	2.369207543	0.189218969
20	1980-11-01 00:00:00+00	INPC	0.0803	1.0803	2.597836071	0.172566319
21	1980-12-01 00:00:00+00	INPC	0.068	1.068	2.806442308	0.159739257
22	1981-01-01 00:00:00+00	INPC	0.0621	1.0621	2.997280385	0.149568592
23	1981-02-01 00:00:00+00	INPC	0.0605	1.0605	3.183411497	0.140823456
24	1981-03-01 00:00:00+00	INPC	0.0535	1.0535	3.376007892	0.13278968
25	1981-04-01 00:00:00+00	INPC	0.0654	1.0654	3.556624314	0.126046208
26	1981-05-01 00:00:00+00	INPC	0.0551	1.0551	3.789227545	0.118308812
27	1981-06-01 00:00:00+00	INPC	0.0507	1.0507	3.998013982	0.112130425
28	1981-07-01 00:00:00+00	INPC	0.062	1.062	4.200713291	0.106719735
29	1981-08-01 00:00:00+00	INPC	0.0612	1.0612	4.461157515	0.100489392
30	1981-09-01 00:00:00+00	INPC	0.0528	1.0528	4.734180355	0.094694113
31	1981-10-01 00:00:00+00	INPC	0.0462	1.0462	4.984145078	0.089945016
32	1981-11-01 00:00:00+00	INPC	0.0523	1.0523	5.214412581	0.08597306
33	1981-12-01 00:00:00+00	INPC	0.0569	1.0569	5.487126359	0.081700143
34	1982-01-01 00:00:00+00	INPC	0.0671	1.0671	5.799343848	0.077301678
35	1982-02-01 00:00:00+00	INPC	0.0658	1.0658	6.188479821	0.072440894
36	1982-03-01 00:00:00+00	INPC	0.0524	1.0524	6.595681793	0.067968562
37	1982-04-01 00:00:00+00	INPC	0.0565	1.0565	6.941295519	0.064584343
38	1982-05-01 00:00:00+00	INPC	0.0666	1.0666	7.333478716	0.061130471
39	1982-06-01 00:00:00+00	INPC	0.0714	1.0714	7.821888398	0.057313399
40	1982-07-01 00:00:00+00	INPC	0.0639	1.0639	8.38037123	0.053493932
41	1982-08-01 00:00:00+00	INPC	0.0557	1.0557	8.915876951	0.050280977
42	1982-09-01 00:00:00+00	INPC	0.043	1.043	9.412491297	0.047628093
43	1982-10-01 00:00:00+00	INPC	0.0391	1.0391	9.817228423	0.045664518
44	1982-11-01 00:00:00+00	INPC	0.0526	1.0526	10.20108205	0.043946221
45	1982-12-01 00:00:00+00	INPC	0.0819	1.0819	10.73765897	0.041750163
46	1983-01-01 00:00:00+00	INPC	0.0914	1.0914	11.61707324	0.038589669
47	1983-02-01 00:00:00+00	INPC	0.0804	1.0804	12.67887373	0.035357952
48	1983-03-01 00:00:00+00	INPC	0.0722	1.0722	13.69825518	0.032726723
49	1983-04-01 00:00:00+00	INPC	0.0657	1.0657	14.68726921	0.030522965
50	1983-05-01 00:00:00+00	INPC	0.0671	1.0671	15.65222279	0.028641236
51	1983-06-01 00:00:00+00	INPC	0.1083	1.1083	16.70248694	0.026840255
52	1983-07-01 00:00:00+00	INPC	0.1143	1.1143	18.51136628	0.0242175
53	1983-08-01 00:00:00+00	INPC	0.0985	1.0985	20.62721544	0.021733375
54	1983-09-01 00:00:00+00	INPC	0.1127	1.1127	22.65899617	0.019784593
55	1983-10-01 00:00:00+00	INPC	0.101	1.101	25.21266503	0.017780707
56	1983-11-01 00:00:00+00	INPC	0.0737	1.0737	27.7591442	0.016149598
57	1983-12-01 00:00:00+00	INPC	0.0834	1.0834	29.80499313	0.015041071
58	1984-01-01 00:00:00+00	INPC	0.0939	1.0939	32.29072956	0.013883211
59	1984-02-01 00:00:00+00	INPC	0.0974	1.0974	35.32282906	0.012691481
60	1984-03-01 00:00:00+00	INPC	0.0983	1.0983	38.76327261	0.011565045
61	1984-04-01 00:00:00+00	INPC	0.0952	1.0952	42.57370231	0.010529951
62	1984-05-01 00:00:00+00	INPC	0.0871	1.0871	46.62671877	0.009614638
63	1984-06-01 00:00:00+00	INPC	0.0996	1.0996	50.68790598	0.008844299
64	1984-07-01 00:00:00+00	INPC	0.0911	1.0911	55.73642141	0.008043197
65	1984-08-01 00:00:00+00	INPC	0.0857	1.0857	60.8140094	0.00737164
66	1984-09-01 00:00:00+00	INPC	0.111	1.111	66.02577001	0.006789758
67	1984-10-01 00:00:00+00	INPC	0.1049	1.1049	73.35463048	0.006111393
68	1984-11-01 00:00:00+00	INPC	0.1033	1.1033	81.04953122	0.005531173
69	1984-12-01 00:00:00+00	INPC	0.1162	1.1162	89.42194779	0.0050133
70	1985-01-01 00:00:00+00	INPC	0.1184	1.1184	99.81277812	0.004491399
71	1985-02-01 00:00:00+00	INPC	0.1095	1.1095	111.6306111	0.004015915
72	1985-03-01 00:00:00+00	INPC	0.0994	1.0994	123.854163	0.003619572
73	1985-04-01 00:00:00+00	INPC	0.0858	1.0858	136.1652668	0.003292315
74	1985-05-01 00:00:00+00	INPC	0.072	1.072	147.8482467	0.003032156
75	1985-06-01 00:00:00+00	INPC	0.0833	1.0833	158.4933204	0.002828504
76	1985-07-01 00:00:00+00	INPC	0.1008	1.1008	171.695814	0.002611007
77	1985-08-01 00:00:00+00	INPC	0.1161	1.1161	189.0027521	0.002371918
78	1985-09-01 00:00:00+00	INPC	0.1009	1.1009	210.9459716	0.002125184
79	1985-10-01 00:00:00+00	INPC	0.1025	1.1025	232.2304201	0.001930406
80	1985-11-01 00:00:00+00	INPC	0.1418	1.1418	256.0340382	0.001750935
81	1985-12-01 00:00:00+00	INPC	0.1575	1.1575	292.3396648	0.001533487
82	1986-01-01 00:00:00+00	INPC	0.1501	1.1501	338.383162	0.001324827
83	1986-02-01 00:00:00+00	INPC	0.1246	1.1246	0.389174475	1.151922948
84	1986-03-01 00:00:00+00	INPC	0.0318	1.0318	0.437665614	1.024295703
85	1986-04-01 00:00:00+00	INPC	0.0043	1.0043	0.451583381	0.992726985
86	1986-05-01 00:00:00+00	INPC	0.0108	1.0108	0.453525189	0.988476536
87	1986-06-01 00:00:00+00	INPC	0.0097	1.0097	0.458423261	0.977915054
88	1986-07-01 00:00:00+00	INPC	0.0091	1.0091	0.462869967	0.968520406
89	1986-08-01 00:00:00+00	INPC	0.0143	1.0143	0.467082084	0.95978635
90	1986-09-01 00:00:00+00	INPC	0.0119	1.0119	0.473761357	0.946254905
91	1986-10-01 00:00:00+00	INPC	0.0143	1.0143	0.479399117	0.935126895
92	1986-11-01 00:00:00+00	INPC	0.0329	1.0329	0.486254525	0.921943108
93	1986-12-01 00:00:00+00	INPC	0.0727	1.0727	0.502252299	0.892577315
94	1987-01-01 00:00:00+00	INPC	0.1682	1.1682	0.538766041	0.832084753
95	1987-02-01 00:00:00+00	INPC	0.1394	1.1394	0.629386489	0.712279364
96	1987-03-01 00:00:00+00	INPC	0.144	1.144	0.717122965	0.625135478
97	1987-04-01 00:00:00+00	INPC	0.2096	1.2096	0.820388673	0.546447096
98	1987-05-01 00:00:00+00	INPC	0.2314	1.2314	0.992342138	0.451758512
99	1987-06-01 00:00:00+00	INPC	0.213	1.213	1.221970109	0.366865772
100	1987-07-01 00:00:00+00	INPC	0.0993	1.0993	1.482249742	0.30244499
101	1987-08-01 00:00:00+00	INPC	0.0509	1.0509	1.629437142	0.27512507
102	1987-09-01 00:00:00+00	INPC	0.0715	1.0715	1.712375492	0.261799477
103	1987-10-01 00:00:00+00	INPC	0.1088	1.1088	1.83481034	0.24432989
104	1987-11-01 00:00:00+00	INPC	0.1493	1.1493	2.034437705	0.22035524
105	1987-12-01 00:00:00+00	INPC	0.1397	1.1397	2.338179254	0.191729957
106	1988-01-01 00:00:00+00	INPC	0.1897	1.1897	2.664822896	0.168228444
107	1988-02-01 00:00:00+00	INPC	0.1581	1.1581	3.1703398	0.141404088
108	1988-03-01 00:00:00+00	INPC	0.1809	1.1809	3.671570522	0.122100067
109	1988-04-01 00:00:00+00	INPC	0.1833	1.1833	4.335757629	0.103395772
110	1988-05-01 00:00:00+00	INPC	0.1824	1.1824	5.130502003	0.08737917
111	1988-06-01 00:00:00+00	INPC	0.2228	1.2228	6.066305568	0.07389984
112	1988-07-01 00:00:00+00	INPC	0.2302	1.2302	7.417878448	0.060434936
113	1988-08-01 00:00:00+00	INPC	0.2063	1.2063	9.125474067	0.049126106
114	1988-09-01 00:00:00+00	INPC	0.2693	1.2693	11.00805937	0.040724618
115	1988-10-01 00:00:00+00	INPC	0.2669	1.2669	13.97252975	0.032084312
116	1988-11-01 00:00:00+00	INPC	0.2815	1.2815	17.70179795	0.025325055
117	1988-12-01 00:00:00+00	INPC	0.2843	1.2843	22.68485407	0.019762041
118	1989-01-01 00:00:00+00	INPC	0.3548	1.3548	0.029134158	15.3874022
119	1989-02-01 00:00:00+00	INPC	0.1635	1.1635	0.039470957	11.35769279
120	1989-03-01 00:00:00+00	INPC	0.059	1.059	0.045924459	9.761661189
121	1989-04-01 00:00:00+00	INPC	0.0806	1.0806	0.048634002	9.217810376
122	1989-05-01 00:00:00+00	INPC	0.1667	1.1667	0.052553903	8.530270569
123	1989-06-01 00:00:00+00	INPC	0.294	1.294	0.061314638	7.311451589
124	1989-07-01 00:00:00+00	INPC	0.274	1.274	0.079341142	5.650271707
125	1989-08-01 00:00:00+00	INPC	0.3318	1.3318	0.101080614	4.435064134
126	1989-09-01 00:00:00+00	INPC	0.3635	1.3635	0.134619162	3.330127748
127	1989-10-01 00:00:00+00	INPC	0.3876	1.3876	0.183553228	2.442337915
128	1989-11-01 00:00:00+00	INPC	0.4847	1.4847	0.254698459	1.760116687
129	1989-12-01 00:00:00+00	INPC	0.5128	1.5128	0.378150802	1.185503258
130	1990-01-01 00:00:00+00	INPC	0.6819	1.6819	0.572066534	0.783648373
131	1990-02-01 00:00:00+00	INPC	0.7399	1.7399	0.962158703	0.46593042
132	1990-03-01 00:00:00+00	INPC	0.8218	1.8218	1.674059927	0.267791494
133	1990-04-01 00:00:00+00	INPC	0.1467	1.1467	3.049802375	0.146992806
134	1990-05-01 00:00:00+00	INPC	0.0731	1.0731	3.497208383	0.128187674
135	1990-06-01 00:00:00+00	INPC	0.1164	1.1164	3.752854316	0.119455478
136	1990-07-01 00:00:00+00	INPC	0.1262	1.1262	4.189686558	0.107000608
137	1990-08-01 00:00:00+00	INPC	0.1218	1.1218	4.718425002	0.095010307
138	1990-09-01 00:00:00+00	INPC	0.1426	1.1426	5.293129167	0.084694515
139	1990-10-01 00:00:00+00	INPC	0.1443	1.1443	6.047929386	0.074124379
140	1990-11-01 00:00:00+00	INPC	0.1692	1.1692	6.920645597	0.06477705
141	1990-12-01 00:00:00+00	INPC	0.1914	1.1914	8.091618832	0.055402883
142	1991-01-01 00:00:00+00	INPC	0.2095	1.2095	9.640354676	0.046502336
143	1991-02-01 00:00:00+00	INPC	0.202	1.202	11.66000898	0.03844757
144	1991-03-01 00:00:00+00	INPC	0.1179	1.1179	14.0153308	0.031986331
145	1991-04-01 00:00:00+00	INPC	0.0501	1.0501	15.6677383	0.028612873
146	1991-05-01 00:00:00+00	INPC	0.0668	1.0668	16.45269198	0.02724776
147	1991-06-01 00:00:00+00	INPC	0.1083	1.1083	17.55173181	0.025541583
148	1991-07-01 00:00:00+00	INPC	0.1214	1.1214	19.45258436	0.02304573
149	1991-08-01 00:00:00+00	INPC	0.1562	1.1562	21.81412811	0.020550856
150	1991-09-01 00:00:00+00	INPC	0.1562	1.1562	25.22149492	0.017774482
151	1991-10-01 00:00:00+00	INPC	0.2108	1.2108	29.16109242	0.01537319
152	1991-11-01 00:00:00+00	INPC	0.2648	1.2648	35.3082507	0.012696721
153	1991-12-01 00:00:00+00	INPC	0.2415	1.2415	44.65787549	0.010038521
154	1992-01-01 00:00:00+00	INPC	0.2592	1.2592	55.44275242	0.0080858
155	1992-02-01 00:00:00+00	INPC	0.2448	1.2448	69.81351385	0.006421379
156	1992-03-01 00:00:00+00	INPC	0.2162	1.2162	86.90386204	0.005158563
157	1992-04-01 00:00:00+00	INPC	0.2084	1.2084	105.692477	0.004241541
158	1992-05-01 00:00:00+00	INPC	0.245	1.245	127.7187892	0.003510047
159	1992-06-01 00:00:00+00	INPC	0.2085	1.2085	159.0098926	0.002819315
160	1992-07-01 00:00:00+00	INPC	0.2208	1.2208	192.1634552	0.002332905
161	1992-08-01 00:00:00+00	INPC	0.2238	1.2238	234.5931461	0.001910964
162	1992-09-01 00:00:00+00	INPC	0.2398	1.2398	287.0950922	0.0015615
163	1992-10-01 00:00:00+00	INPC	0.2607	1.2607	355.9404953	0.001259477
164	1992-11-01 00:00:00+00	INPC	0.2289	1.2289	448.7341824	0.00099903
165	1992-12-01 00:00:00+00	INPC	0.2558	1.2558	551.4494368	0.000812947
166	1993-01-01 00:00:00+00	INPC	0.2877	1.2877	692.5102027	0.000647354
167	1993-02-01 00:00:00+00	INPC	0.2479	1.2479	891.745388	0.000502721
168	1993-03-01 00:00:00+00	INPC	0.2758	1.2758	1112.80907	0.000402853
169	1993-04-01 00:00:00+00	INPC	0.2837	1.2837	1419.721811	0.000315765
170	1993-05-01 00:00:00+00	INPC	0.2678	1.2678	1822.496889	0.000245981
171	1993-06-01 00:00:00+00	INPC	0.3037	1.3037	2310.561556	0.000194022
172	1993-07-01 00:00:00+00	INPC	0.3101	1.3101	3012.2791	0.000148824
173	1993-08-01 00:00:00+00	INPC	0.3334	1.3334	3.946386849	0.11359733
174	1993-09-01 00:00:00+00	INPC	0.3563	1.3563	5.262112225	0.085193738
175	1993-10-01 00:00:00+00	INPC	0.3412	1.3412	7.137002811	0.062813343
176	1993-11-01 00:00:00+00	INPC	0.36	1.36	9.57214817	0.046833689
177	1993-12-01 00:00:00+00	INPC	0.3773	1.3773	13.01812151	0.034436536
178	1994-01-01 00:00:00+00	INPC	0.4132	1.4132	17.92985876	0.02500293
179	1994-02-01 00:00:00+00	INPC	0.4057	1.4057	25.33847639	0.017692422
180	1994-03-01 00:00:00+00	INPC	0.4308	1.4308	35.61829627	0.0125862
181	1994-04-01 00:00:00+00	INPC	0.4286	1.4286	50.9626583	0.008796617
182	1994-05-01 00:00:00+00	INPC	0.4273	1.4273	72.80525365	0.006157509
183	1994-06-01 00:00:00+00	INPC	0.4824	1.4824	103.9149385	0.004314096
184	1994-07-01 00:00:00+00	INPC	0.0775	1.0775	0.05601582	8.003078566
185	1994-08-01 00:00:00+00	INPC	0.0185	1.0185	0.060357046	7.427451105
186	1994-09-01 00:00:00+00	INPC	0.014	1.014	0.061473651	7.292539131
187	1994-10-01 00:00:00+00	INPC	0.0282	1.0282	0.062334282	7.191853186
188	1994-11-01 00:00:00+00	INPC	0.0296	1.0296	0.064092109	6.994605317
189	1994-12-01 00:00:00+00	INPC	0.017	1.017	0.065989236	6.793517207
190	1995-01-01 00:00:00+00	INPC	0.0144	1.0144	0.067111053	6.679957922
191	1995-02-01 00:00:00+00	INPC	0.0101	1.0101	0.068077452	6.585132021
192	1995-03-01 00:00:00+00	INPC	0.0162	1.0162	0.068765034	6.51928722
193	1995-04-01 00:00:00+00	INPC	0.0249	1.0249	0.069879028	6.415358414
194	1995-05-01 00:00:00+00	INPC	0.021	1.021	0.071619015	6.25949694
195	1995-06-01 00:00:00+00	INPC	0.0218	1.0218	0.073123015	6.130751166
196	1995-07-01 00:00:00+00	INPC	0.0246	1.0246	0.074717096	5.999952208
197	1995-08-01 00:00:00+00	INPC	0.0102	1.0102	0.076555137	5.855897138
198	1995-09-01 00:00:00+00	INPC	0.0117	1.0117	0.077335999	5.796770083
199	1995-10-01 00:00:00+00	INPC	0.014	1.014	0.078240831	5.729732216
200	1995-11-01 00:00:00+00	INPC	0.0151	1.0151	0.079336202	5.650623488
201	1995-12-01 00:00:00+00	INPC	0.0165	1.0165	0.080534179	5.566568306
202	1996-01-01 00:00:00+00	INPC	0.0146	1.0146	0.081862993	5.476210827
203	1996-02-01 00:00:00+00	INPC	0.0071	1.0071	0.083058193	5.397408661
204	1996-03-01 00:00:00+00	INPC	0.0029	1.0029	0.083647906	5.359357225
205	1996-04-01 00:00:00+00	INPC	0.0093	1.0093	0.083890485	5.343860031
206	1996-05-01 00:00:00+00	INPC	0.0128	1.0128	0.084670666	5.294620064
207	1996-06-01 00:00:00+00	INPC	0.0133	1.0133	0.085754451	5.227705434
208	1996-07-01 00:00:00+00	INPC	0.012	1.012	0.086894985	5.159089544
209	1996-08-01 00:00:00+00	INPC	0.005	1.005	0.087937725	5.097914569
210	1996-09-01 00:00:00+00	INPC	0.0002	1.0002	0.088377413	5.07255181
211	1996-10-01 00:00:00+00	INPC	0.0038	1.0038	0.088395089	5.071537502
212	1996-11-01 00:00:00+00	INPC	0.0034	1.0034	0.08873099	5.052338615
213	1996-12-01 00:00:00+00	INPC	0.0033	1.0033	0.089032676	5.035218871
214	1997-01-01 00:00:00+00	INPC	0.0081	1.0081	0.089326483	5.018657302
215	1997-02-01 00:00:00+00	INPC	0.0045	1.0045	0.090050028	4.978332806
216	1997-03-01 00:00:00+00	INPC	0.0068	1.0068	0.090455253	4.956030668
217	1997-04-01 00:00:00+00	INPC	0.006	1.006	0.091070349	4.922557279
218	1997-05-01 00:00:00+00	INPC	0.0011	1.0011	0.091616771	4.89319809
219	1997-06-01 00:00:00+00	INPC	0.0035	1.0035	0.091717549	4.887821487
220	1997-07-01 00:00:00+00	INPC	0.0018	1.0018	0.092038561	4.870773779
221	1997-08-01 00:00:00+00	INPC	-0.0003	0.9997	0.09220423	4.862022139
222	1997-09-01 00:00:00+00	INPC	0.001	1.001	0.092176569	4.863481183
223	1997-10-01 00:00:00+00	INPC	0.0029	1.0029	0.092268745	4.85862256
224	1997-11-01 00:00:00+00	INPC	0.0015	1.0015	0.092536325	4.844573298
225	1997-12-01 00:00:00+00	INPC	0.0057	1.0057	0.092675129	4.837317322
226	1998-01-01 00:00:00+00	INPC	0.0085	1.0085	0.093203377	4.809900887
227	1998-02-01 00:00:00+00	INPC	0.0054	1.0054	0.093995606	4.769361316
228	1998-03-01 00:00:00+00	INPC	0.0049	1.0049	0.094503182	4.743745092
229	1998-04-01 00:00:00+00	INPC	0.0045	1.0045	0.094966248	4.720614083
230	1998-05-01 00:00:00+00	INPC	0.0072	1.0072	0.095393596	4.699466484
231	1998-06-01 00:00:00+00	INPC	0.0015	1.0015	0.09608043	4.665872204
232	1998-07-01 00:00:00+00	INPC	-0.0028	0.9972	0.096224551	4.658883878
233	1998-08-01 00:00:00+00	INPC	-0.0049	0.9951	0.095955122	4.671965381
234	1998-09-01 00:00:00+00	INPC	-0.0031	0.9969	0.095484942	4.694970738
235	1998-10-01 00:00:00+00	INPC	0.0011	1.0011	0.095188939	4.709570406
236	1998-11-01 00:00:00+00	INPC	-0.0018	0.9982	0.095293646	4.704395571
237	1998-12-01 00:00:00+00	INPC	0.0042	1.0042	0.095122118	4.712878753
238	1999-01-01 00:00:00+00	INPC	0.0065	1.0065	0.095521631	4.69316745
239	1999-02-01 00:00:00+00	INPC	0.0129	1.0129	0.096142521	4.662858867
240	1999-03-01 00:00:00+00	INPC	0.0128	1.0128	0.09738276	4.603474052
241	1999-04-01 00:00:00+00	INPC	0.0047	1.0047	0.098629259	4.545294285
242	1999-05-01 00:00:00+00	INPC	0.0005	1.0005	0.099092817	4.524031338
243	1999-06-01 00:00:00+00	INPC	0.0007	1.0007	0.099142363	4.521770452
244	1999-07-01 00:00:00+00	INPC	0.0074	1.0074	0.099211763	4.518607427
245	1999-08-01 00:00:00+00	INPC	0.0055	1.0055	0.09994593	4.485415354
246	1999-09-01 00:00:00+00	INPC	0.0039	1.0039	0.100495632	4.460880511
247	1999-10-01 00:00:00+00	INPC	0.0096	1.0096	0.100887565	4.443550663
248	1999-11-01 00:00:00+00	INPC	0.0094	1.0094	0.101856086	4.4012982
249	1999-12-01 00:00:00+00	INPC	0.0074	1.0074	0.102813533	4.360311274
250	2000-01-01 00:00:00+00	INPC	0.0061	1.0061	0.103574353	4.328281988
251	2000-02-01 00:00:00+00	INPC	0.0005	1.0005	0.104206157	4.302039546
252	2000-03-01 00:00:00+00	INPC	0.0013	1.0013	0.10425826	4.299889602
253	2000-04-01 00:00:00+00	INPC	0.0009	1.0009	0.104393796	4.294307003
254	2000-05-01 00:00:00+00	INPC	-0.0005	0.9995	0.10448775	4.290445602
255	2000-06-01 00:00:00+00	INPC	0.003	1.003	0.104435506	4.292591897
256	2000-07-01 00:00:00+00	INPC	0.0139	1.0139	0.104748813	4.27975264
257	2000-08-01 00:00:00+00	INPC	0.0121	1.0121	0.106204821	4.221079633
258	2000-09-01 00:00:00+00	INPC	0.0043	1.0043	0.1074899	4.170615189
259	2000-10-01 00:00:00+00	INPC	0.0016	1.0016	0.107952106	4.152758328
260	2000-11-01 00:00:00+00	INPC	0.0029	1.0029	0.10812483	4.146124529
261	2000-12-01 00:00:00+00	INPC	0.0055	1.0055	0.108438392	4.134135536
262	2001-01-01 00:00:00+00	INPC	0.0077	1.0077	0.109034803	4.111522164
263	2001-02-01 00:00:00+00	INPC	0.0049	1.0049	0.109874371	4.080105353
264	2001-03-01 00:00:00+00	INPC	0.0048	1.0048	0.110412755	4.060210322
265	2001-04-01 00:00:00+00	INPC	0.0084	1.0084	0.110942736	4.040814413
266	2001-05-01 00:00:00+00	INPC	0.0057	1.0057	0.111874655	4.007154317
267	2001-06-01 00:00:00+00	INPC	0.006	1.006	0.112512341	3.984442992
268	2001-07-01 00:00:00+00	INPC	0.0111	1.0111	0.113187415	3.960678918
269	2001-08-01 00:00:00+00	INPC	0.0079	1.0079	0.114443795	3.91719802
270	2001-09-01 00:00:00+00	INPC	0.0044	1.0044	0.115347901	3.886494712
271	2001-10-01 00:00:00+00	INPC	0.0094	1.0094	0.115855432	3.869469048
272	2001-11-01 00:00:00+00	INPC	0.0129	1.0129	0.116944473	3.833434761
273	2001-12-01 00:00:00+00	INPC	0.0074	1.0074	0.118453057	3.78461325
274	2002-01-01 00:00:00+00	INPC	0.0107	1.0107	0.119329609	3.756812835
275	2002-02-01 00:00:00+00	INPC	0.0031	1.0031	0.120606436	3.717040502
276	2002-03-01 00:00:00+00	INPC	0.0062	1.0062	0.120980316	3.705553287
277	2002-04-01 00:00:00+00	INPC	0.0068	1.0068	0.121730394	3.68272042
278	2002-05-01 00:00:00+00	INPC	0.0009	1.0009	0.122558161	3.65784706
279	2002-06-01 00:00:00+00	INPC	0.0061	1.0061	0.122668463	3.654557958
280	2002-07-01 00:00:00+00	INPC	0.0115	1.0115	0.123416741	3.632400316
281	2002-08-01 00:00:00+00	INPC	0.0086	1.0086	0.124836033	3.591102636
282	2002-09-01 00:00:00+00	INPC	0.0083	1.0083	0.125909623	3.560482486
283	2002-10-01 00:00:00+00	INPC	0.0157	1.0157	0.126954673	3.531173744
284	2002-11-01 00:00:00+00	INPC	0.0339	1.0339	0.128947861	3.476591262
285	2002-12-01 00:00:00+00	INPC	0.027	1.027	0.133319194	3.36259915
286	2003-01-01 00:00:00+00	INPC	0.0247	1.0247	0.136918812	3.274195862
287	2003-02-01 00:00:00+00	INPC	0.0146	1.0146	0.140300707	3.195272628
288	2003-03-01 00:00:00+00	INPC	0.0137	1.0137	0.142349097	3.149292951
289	2003-04-01 00:00:00+00	INPC	0.0138	1.0138	0.14429928	3.10673074
290	2003-05-01 00:00:00+00	INPC	0.0099	1.0099	0.14629061	3.064441448
291	2003-06-01 00:00:00+00	INPC	-0.0006	0.9994	0.147738887	3.034400879
292	2003-07-01 00:00:00+00	INPC	0.0004	1.0004	0.147650243	3.036222613
293	2003-08-01 00:00:00+00	INPC	0.0018	1.0018	0.147709304	3.035008609
294	2003-09-01 00:00:00+00	INPC	0.0082	1.0082	0.14797518	3.02955541
295	2003-10-01 00:00:00+00	INPC	0.0039	1.0039	0.149188577	3.004915106
296	2003-11-01 00:00:00+00	INPC	0.0037	1.0037	0.149770412	2.993241464
297	2003-12-01 00:00:00+00	INPC	0.0054	1.0054	0.150324563	2.982207297
298	2004-01-01 00:00:00+00	INPC	0.0083	1.0083	0.151136315	2.966189872
299	2004-02-01 00:00:00+00	INPC	0.0039	1.0039	0.152390747	2.941773155
300	2004-03-01 00:00:00+00	INPC	0.0057	1.0057	0.152985071	2.93034481
301	2004-04-01 00:00:00+00	INPC	0.0041	1.0041	0.153857086	2.913736512
302	2004-05-01 00:00:00+00	INPC	0.004	1.004	0.1544879	2.901838972
303	2004-06-01 00:00:00+00	INPC	0.005	1.005	0.155105851	2.89027786
304	2004-07-01 00:00:00+00	INPC	0.0073	1.0073	0.155881381	2.875898369
305	2004-08-01 00:00:00+00	INPC	0.005	1.005	0.157019315	2.855056456
306	2004-09-01 00:00:00+00	INPC	0.0017	1.0017	0.157804411	2.840852195
307	2004-10-01 00:00:00+00	INPC	0.0017	1.0017	0.158072679	2.836030943
308	2004-11-01 00:00:00+00	INPC	0.0044	1.0044	0.158341402	2.831217872
309	2004-12-01 00:00:00+00	INPC	0.0086	1.0086	0.159038104	2.818815086
310	2005-01-01 00:00:00+00	INPC	0.0057	1.0057	0.160405832	2.794779978
311	2005-02-01 00:00:00+00	INPC	0.0044	1.0044	0.161320145	2.77894002
312	2005-03-01 00:00:00+00	INPC	0.0073	1.0073	0.162029954	2.766766249
313	2005-04-01 00:00:00+00	INPC	0.0091	1.0091	0.163212773	2.746715228
314	2005-05-01 00:00:00+00	INPC	0.007	1.007	0.164698009	2.721945523
315	2005-06-01 00:00:00+00	INPC	-0.0011	0.9989	0.165850895	2.703024353
316	2005-07-01 00:00:00+00	INPC	0.0003	1.0003	0.165668459	2.706000954
317	2005-08-01 00:00:00+00	INPC	0.0	1.0	0.16571816	2.705189397
318	2005-09-01 00:00:00+00	INPC	0.0015	1.0015	0.16571816	2.705189397
319	2005-10-01 00:00:00+00	INPC	0.0058	1.0058	0.165966737	2.70113769
320	2005-11-01 00:00:00+00	INPC	0.0054	1.0054	0.166929344	2.685561434
321	2005-12-01 00:00:00+00	INPC	0.004	1.004	0.167830762	2.671137293
322	2006-01-01 00:00:00+00	INPC	0.0038	1.0038	0.168502085	2.660495312
323	2006-02-01 00:00:00+00	INPC	0.0023	1.0023	0.169142393	2.650423701
324	2006-03-01 00:00:00+00	INPC	0.0027	1.0027	0.169531421	2.644341716
325	2006-04-01 00:00:00+00	INPC	0.0012	1.0012	0.169989156	2.637221218
326	2006-05-01 00:00:00+00	INPC	0.0013	1.0013	0.170193143	2.634060346
327	2006-06-01 00:00:00+00	INPC	-0.0007	0.9993	0.170414394	2.630640513
328	2006-07-01 00:00:00+00	INPC	0.0011	1.0011	0.170295104	2.632483251
329	2006-08-01 00:00:00+00	INPC	-0.0002	0.9998	0.170482428	2.629590702
330	2006-09-01 00:00:00+00	INPC	0.0016	1.0016	0.170448332	2.630116725
331	2006-10-01 00:00:00+00	INPC	0.0043	1.0043	0.170721049	2.625915261
332	2006-11-01 00:00:00+00	INPC	0.0042	1.0042	0.17145515	2.61467217
333	2006-12-01 00:00:00+00	INPC	0.0062	1.0062	0.172175261	2.603736477
334	2007-01-01 00:00:00+00	INPC	0.0049	1.0049	0.173242748	2.587692782
335	2007-02-01 00:00:00+00	INPC	0.0042	1.0042	0.174091637	2.575074915
336	2007-03-01 00:00:00+00	INPC	0.0044	1.0044	0.174822822	2.564304834
337	2007-04-01 00:00:00+00	INPC	0.0026	1.0026	0.175592043	2.553071321
338	2007-05-01 00:00:00+00	INPC	0.0026	1.0026	0.176048582	2.546450549
339	2007-06-01 00:00:00+00	INPC	0.0031	1.0031	0.176506308	2.539846947
340	2007-07-01 00:00:00+00	INPC	0.0032	1.0032	0.177053478	2.531997754
341	2007-08-01 00:00:00+00	INPC	0.0059	1.0059	0.177620049	2.523921206
342	2007-09-01 00:00:00+00	INPC	0.0025	1.0025	0.178668007	2.509117413
343	2007-10-01 00:00:00+00	INPC	0.003	1.003	0.179114677	2.502860263
344	2007-11-01 00:00:00+00	INPC	0.0043	1.0043	0.179652021	2.49537414
345	2007-12-01 00:00:00+00	INPC	0.0097	1.0097	0.180424525	2.484689974
346	2008-01-01 00:00:00+00	INPC	0.0069	1.0069	0.182174643	2.460820019
347	2008-02-01 00:00:00+00	INPC	0.0048	1.0048	0.183431648	2.443956718
348	2008-03-01 00:00:00+00	INPC	0.0051	1.0051	0.18431212	2.432281766
349	2008-04-01 00:00:00+00	INPC	0.0064	1.0064	0.185252112	2.419940071
350	2008-05-01 00:00:00+00	INPC	0.0096	1.0096	0.186437725	2.404550945
351	2008-06-01 00:00:00+00	INPC	0.0091	1.0091	0.188227527	2.381686752
352	2008-07-01 00:00:00+00	INPC	0.0058	1.0058	0.189940398	2.360208852
353	2008-08-01 00:00:00+00	INPC	0.0021	1.0021	0.191042052	2.34659858
354	2008-09-01 00:00:00+00	INPC	0.0015	1.0015	0.19144324	2.34168105
355	2008-10-01 00:00:00+00	INPC	0.005	1.005	0.191730405	2.338173789
356	2008-11-01 00:00:00+00	INPC	0.0038	1.0038	0.192689057	2.326541084
357	2008-12-01 00:00:00+00	INPC	0.0029	1.0029	0.193421276	2.317733696
358	2009-01-01 00:00:00+00	INPC	0.0064	1.0064	0.193982197	2.311031704
359	2009-02-01 00:00:00+00	INPC	0.0031	1.0031	0.195223683	2.296335159
360	2009-03-01 00:00:00+00	INPC	0.002	1.002	0.195828877	2.289238519
361	2009-04-01 00:00:00+00	INPC	0.0055	1.0055	0.196220535	2.284669181
362	2009-05-01 00:00:00+00	INPC	0.006	1.006	0.197299748	2.272172234
363	2009-06-01 00:00:00+00	INPC	0.0042	1.0042	0.198483546	2.258620511
364	2009-07-01 00:00:00+00	IPCA-E	0.0022	1.0022	0.199317177	2.24917398
365	2009-08-01 00:00:00+00	IPCA-E	0.0023	1.0023	0.199755675	2.244236659
366	2009-09-01 00:00:00+00	IPCA-E	0.0019	1.0019	0.200215113	2.23908676
367	2009-10-01 00:00:00+00	IPCA-E	0.0018	1.0018	0.200595521	2.234840563
368	2009-11-01 00:00:00+00	IPCA-E	0.0044	1.0044	0.200956593	2.230825077
369	2009-12-01 00:00:00+00	IPCA-E	0.0038	1.0038	0.201840802	2.221052447
370	2010-01-01 00:00:00+00	IPCA-E	0.0052	1.0052	0.202607797	2.212644398
371	2010-02-01 00:00:00+00	IPCA-E	0.0094	1.0094	0.203661358	2.201198167
372	2010-03-01 00:00:00+00	IPCA-E	0.0055	1.0055	0.205575775	2.180699591
373	2010-04-01 00:00:00+00	IPCA-E	0.0048	1.0048	0.206706442	2.168771349
374	2010-05-01 00:00:00+00	IPCA-E	0.0063	1.0063	0.207698632	2.158410976
375	2010-06-01 00:00:00+00	IPCA-E	0.0019	1.0019	0.209007134	2.144898118
376	2010-07-01 00:00:00+00	IPCA-E	-0.0009	0.9991	0.209404247	2.14083054
377	2010-08-01 00:00:00+00	IPCA-E	-0.0005	0.9995	0.209215784	2.142759023
378	2010-09-01 00:00:00+00	IPCA-E	0.0031	1.0031	0.209111176	2.143830939
379	2010-10-01 00:00:00+00	IPCA-E	0.0062	1.0062	0.20975942	2.137205601
380	2010-11-01 00:00:00+00	IPCA-E	0.0086	1.0086	0.211059929	2.124036574
381	2010-12-01 00:00:00+00	IPCA-E	0.0069	1.0069	0.212875044	2.105925614
382	2011-01-01 00:00:00+00	IPCA-E	0.0076	1.0076	0.214343882	2.091494304
383	2011-02-01 00:00:00+00	IPCA-E	0.0097	1.0097	0.215972895	2.07571884
384	2011-03-01 00:00:00+00	IPCA-E	0.006	1.006	0.218067833	2.055777796
385	2011-04-01 00:00:00+00	IPCA-E	0.0077	1.0077	0.219376239	2.043516696
386	2011-05-01 00:00:00+00	IPCA-E	0.007	1.007	0.221065437	2.027901851
387	2011-06-01 00:00:00+00	IPCA-E	0.0023	1.0023	0.222612895	2.013805215
388	2011-07-01 00:00:00+00	IPCA-E	0.001	1.001	0.223124904	2.009184091
389	2011-08-01 00:00:00+00	IPCA-E	0.0027	1.0027	0.223348029	2.007176914
390	2011-09-01 00:00:00+00	IPCA-E	0.0053	1.0053	0.223951069	2.00177213
391	2011-10-01 00:00:00+00	IPCA-E	0.0042	1.0042	0.22513801	1.991218671
392	2011-11-01 00:00:00+00	IPCA-E	0.0046	1.0046	0.226083589	1.982890531
393	2011-12-01 00:00:00+00	IPCA-E	0.0056	1.0056	0.227123574	1.973811
394	2012-01-01 00:00:00+00	IPCA-E	0.0065	1.0065	0.228395466	1.962819212
395	2012-02-01 00:00:00+00	IPCA-E	0.0053	1.0053	0.229880036	1.950143281
396	2012-03-01 00:00:00+00	IPCA-E	0.0025	1.0025	0.2310984	1.939862012
397	2012-04-01 00:00:00+00	IPCA-E	0.0043	1.0043	0.231676146	1.935024451
398	2012-05-01 00:00:00+00	IPCA-E	0.0051	1.0051	0.232672354	1.926739471
399	2012-06-01 00:00:00+00	IPCA-E	0.0018	1.0018	0.233858983	1.91696296
400	2012-07-01 00:00:00+00	IPCA-E	0.0033	1.0033	0.234279929	1.913518627
401	2012-08-01 00:00:00+00	IPCA-E	0.0039	1.0039	0.235053053	1.907224785
402	2012-09-01 00:00:00+00	IPCA-E	0.0048	1.0048	0.23596976	1.899815505
403	2012-10-01 00:00:00+00	IPCA-E	0.0065	1.0065	0.237102415	1.890739953
404	2012-11-01 00:00:00+00	IPCA-E	0.0054	1.0054	0.23864358	1.878529511
405	2012-12-01 00:00:00+00	IPCA-E	0.0069	1.0069	0.239932256	1.868439935
406	2013-01-01 00:00:00+00	IPCA-E	0.0088	1.0088	0.241587788	1.855636047
407	2013-02-01 00:00:00+00	IPCA-E	0.0068	1.0068	0.243713761	1.839448896
408	2013-03-01 00:00:00+00	IPCA-E	0.0049	1.0049	0.245371014	1.827025125
409	2013-04-01 00:00:00+00	IPCA-E	0.0051	1.0051	0.246573332	1.818116355
410	2013-05-01 00:00:00+00	IPCA-E	0.0046	1.0046	0.247830856	1.808891011
411	2013-06-01 00:00:00+00	IPCA-E	0.0038	1.0038	0.248970878	1.800608213
412	2013-07-01 00:00:00+00	IPCA-E	0.0007	1.0007	0.249916967	1.793791805
413	2013-08-01 00:00:00+00	IPCA-E	0.0016	1.0016	0.250091909	1.792537029
414	2013-09-01 00:00:00+00	IPCA-E	0.0027	1.0027	0.250492056	1.789673551
415	2013-10-01 00:00:00+00	IPCA-E	0.0048	1.0048	0.251168385	1.784854444
416	2013-11-01 00:00:00+00	IPCA-E	0.0057	1.0057	0.252373993	1.776328069
417	2013-12-01 00:00:00+00	IPCA-E	0.0075	1.0075	0.253812525	1.766260385
418	2014-01-01 00:00:00+00	IPCA-E	0.0067	1.0067	0.255716119	1.753112045
419	2014-02-01 00:00:00+00	IPCA-E	0.007	1.007	0.257429417	1.741444367
420	2014-03-01 00:00:00+00	IPCA-E	0.0073	1.0073	0.259231423	1.729338994
421	2014-04-01 00:00:00+00	IPCA-E	0.0078	1.0078	0.261123812	1.716806308
422	2014-05-01 00:00:00+00	IPCA-E	0.0058	1.0058	0.263160578	1.703518861
423	2014-06-01 00:00:00+00	IPCA-E	0.0047	1.0047	0.264686909	1.693695428
424	2014-07-01 00:00:00+00	IPCA-E	0.0017	1.0017	0.265930938	1.685772298
425	2014-08-01 00:00:00+00	IPCA-E	0.0014	1.0014	0.26638302	1.682911349
426	2014-09-01 00:00:00+00	IPCA-E	0.0039	1.0039	0.266755957	1.680558567
427	2014-10-01 00:00:00+00	IPCA-E	0.0048	1.0048	0.267796305	1.67402985
428	2014-11-01 00:00:00+00	IPCA-E	0.0038	1.0038	0.269081727	1.666032892
429	2014-12-01 00:00:00+00	IPCA-E	0.0079	1.0079	0.270104238	1.659725934
430	2015-01-01 00:00:00+00	IPCA-E	0.0089	1.0089	0.272238061	1.646716871
431	2015-02-01 00:00:00+00	IPCA-E	0.0133	1.0133	0.27466098	1.632190376
432	2015-03-01 00:00:00+00	IPCA-E	0.0124	1.0124	0.278313971	1.610767173
433	2015-04-01 00:00:00+00	IPCA-E	0.0107	1.0107	0.281765064	1.591038298
434	2015-05-01 00:00:00+00	IPCA-E	0.006	1.006	0.28477995	1.574194418
435	2015-06-01 00:00:00+00	IPCA-E	0.0099	1.0099	0.28648863	1.564805584
436	2015-07-01 00:00:00+00	IPCA-E	0.0059	1.0059	0.289324867	1.549465872
437	2015-08-01 00:00:00+00	IPCA-E	0.0043	1.0043	0.291031884	1.540377644
438	2015-09-01 00:00:00+00	IPCA-E	0.0039	1.0039	0.292283321	1.53378238
439	2015-10-01 00:00:00+00	IPCA-E	0.0066	1.0066	0.293423226	1.527823867
440	2015-11-01 00:00:00+00	IPCA-E	0.0085	1.0085	0.295359819	1.517806345
441	2015-12-01 00:00:00+00	IPCA-E	0.0118	1.0118	0.297870378	1.505013728
442	2016-01-01 00:00:00+00	IPCA-E	0.0092	1.0092	0.301385248	1.48746168
443	2016-02-01 00:00:00+00	IPCA-E	0.0142	1.0142	0.304157993	1.473901784
444	2016-03-01 00:00:00+00	IPCA-E	0.0043	1.0043	0.308477036	1.453265415
445	2016-04-01 00:00:00+00	IPCA-E	0.0051	1.0051	0.309803487	1.447043129
446	2016-05-01 00:00:00+00	IPCA-E	0.0086	1.0086	0.311383485	1.439700656
447	2016-06-01 00:00:00+00	IPCA-E	0.004	1.004	0.314061383	1.427424803
448	2016-07-01 00:00:00+00	IPCA-E	0.0054	1.0054	0.315317629	1.421737851
449	2016-08-01 00:00:00+00	IPCA-E	0.0045	1.0045	0.317020344	1.414101702
450	2016-09-01 00:00:00+00	IPCA-E	0.0023	1.0023	0.318446935	1.407766752
451	2016-10-01 00:00:00+00	IPCA-E	0.0019	1.0019	0.319179363	1.404536318
452	2016-11-01 00:00:00+00	IPCA-E	0.0026	1.0026	0.319785804	1.40187276
453	2016-12-01 00:00:00+00	IPCA-E	0.0019	1.0019	0.320617247	1.398237343
454	2017-01-01 00:00:00+00	IPCA-E	0.0031	1.0031	0.32122642	1.39558573
455	2017-02-01 00:00:00+00	IPCA-E	0.0054	1.0054	0.322222222	1.391272784
456	2017-03-01 00:00:00+00	IPCA-E	0.0015	1.0015	0.323962222	1.383800263
457	2017-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	0.324448165	1.381727672
458	2017-05-01 00:00:00+00	IPCA-E	0.0024	1.0024	0.325129506	1.378832124
459	2017-06-01 00:00:00+00	IPCA-E	0.0016	1.0016	0.325909817	1.37553085
460	2017-07-01 00:00:00+00	IPCA-E	-0.0018	0.9982	0.326431273	1.373333516
461	2017-08-01 00:00:00+00	IPCA-E	0.0035	1.0035	0.325843697	1.375809974
462	2017-09-01 00:00:00+00	IPCA-E	0.0011	1.0011	0.32698415	1.371011434
463	2017-10-01 00:00:00+00	IPCA-E	0.0034	1.0034	0.327343832	1.369504979
464	2017-11-01 00:00:00+00	IPCA-E	0.0032	1.0032	0.328456801	1.36486444
465	2017-12-01 00:00:00+00	IPCA-E	0.0035	1.0035	0.329507863	1.360510805
466	2018-01-01 00:00:00+00	IPCA-E	0.0039	1.0039	0.330661141	1.355765626
467	2018-02-01 00:00:00+00	IPCA-E	0.0038	1.0038	0.331950719	1.350498681
468	2018-03-01 00:00:00+00	IPCA-E	0.001	1.001	0.333212132	1.345386213
469	2018-04-01 00:00:00+00	IPCA-E	0.0021	1.0021	0.333545344	1.344042171
470	2018-05-01 00:00:00+00	IPCA-E	0.0014	1.0014	0.334245789	1.341225597
471	2018-06-01 00:00:00+00	IPCA-E	0.0111	1.0111	0.334713733	1.339350506
472	2018-07-01 00:00:00+00	IPCA-E	0.0064	1.0064	0.338429056	1.324646926
473	2018-08-01 00:00:00+00	IPCA-E	0.0013	1.0013	0.340595002	1.316223098
474	2018-09-01 00:00:00+00	IPCA-E	0.0009	1.0009	0.341037775	1.314514229
475	2018-10-01 00:00:00+00	IPCA-E	0.0058	1.0058	0.341344709	1.31333223
476	2018-11-01 00:00:00+00	IPCA-E	0.0019	1.0019	0.343324508	1.305758829
477	2018-12-01 00:00:00+00	IPCA-E	-0.0016	0.9984	0.343976825	1.303282592
478	2019-01-01 00:00:00+00	IPCA-E	0.003	1.003	0.343426462	1.305371186
479	2019-02-01 00:00:00+00	IPCA-E	0.0034	1.0034	0.344456741	1.301466786
480	2019-03-01 00:00:00+00	IPCA-E	0.0054	1.0054	0.345627894	1.297056793
481	2019-04-01 00:00:00+00	IPCA-E	0.0072	1.0072	0.347494285	1.290090305
482	2019-05-01 00:00:00+00	IPCA-E	0.0035	1.0035	0.349996244	1.280868055
483	2019-06-01 00:00:00+00	IPCA-E	0.0006	1.0006	0.351221231	1.276400653
484	2019-07-01 00:00:00+00	IPCA-E	0.0009	1.0009	0.351431963	1.275635271
485	2019-08-01 00:00:00+00	IPCA-E	0.0008	1.0008	0.351748252	1.274488232
486	2019-09-01 00:00:00+00	IPCA-E	0.0009	1.0009	0.352029651	1.273469456
487	2019-10-01 00:00:00+00	IPCA-E	0.0009	1.0009	0.352346477	1.272324365
488	2019-11-01 00:00:00+00	IPCA-E	0.0014	1.0014	0.352663589	1.271180302
489	2019-12-01 00:00:00+00	IPCA-E	0.0105	1.0105	0.353157318	1.269403138
490	2020-01-01 00:00:00+00	IPCA-E	0.0071	1.0071	0.35686547	1.256212902
491	2020-02-01 00:00:00+00	IPCA-E	0.0022	1.0022	0.359399215	1.24735667
492	2020-03-01 00:00:00+00	IPCA-E	0.0002	1.0002	0.360189893	1.244618509
493	2020-04-01 00:00:00+00	IPCA-E	-0.0001	0.9999	0.360261931	1.244369635
494	2020-05-01 00:00:00+00	IPCA-E	-0.0059	0.9941	0.360225905	1.244494085
495	2020-06-01 00:00:00+00	IPCA-E	0.0002	1.0002	0.358100572	1.251880178
496	2020-07-01 00:00:00+00	IPCA-E	0.003	1.003	0.358172192	1.251629852
497	2020-08-01 00:00:00+00	IPCA-E	0.0023	1.0023	0.359246709	1.247886193
498	2020-09-01 00:00:00+00	IPCA-E	0.0045	1.0045	0.360072976	1.245022641
499	2020-10-01 00:00:00+00	IPCA-E	0.0094	1.0094	0.361693305	1.239445138
500	2020-11-01 00:00:00+00	IPCA-E	0.0081	1.0081	0.365093222	1.227902851
501	2020-12-01 00:00:00+00	IPCA-E	0.0106	1.0106	0.368050477	1.218036754
502	2021-01-01 00:00:00+00	IPCA-E	0.0078	1.0078	0.371951812	1.205260987
503	2021-02-01 00:00:00+00	IPCA-E	0.0048	1.0048	0.374853036	1.195932712
504	2021-03-01 00:00:00+00	IPCA-E	0.0093	1.0093	0.376652331	1.190219658
505	2021-04-01 00:00:00+00	IPCA-E	0.006	1.006	0.380155197	1.179252608
506	2021-05-01 00:00:00+00	IPCA-E	0.0044	1.0044	0.382436129	1.172219293
507	2021-06-01 00:00:00+00	IPCA-E	0.0083	1.0083	0.384118847	1.167084122
508	2021-07-01 00:00:00+00	IPCA-E	0.007	1.007	0.387307034	1.157477063
509	2021-08-01 00:00:00+00	IPCA-E	0.0089	1.0089	0.390018183	1.149431046
510	2021-09-01 00:00:00+00	IPCA-E	0.0114	1.0114	0.393489345	1.139291352
511	2021-10-01 00:00:00+00	IPCA-E	0.012	1.012	0.397975124	1.126449824
512	2021-11-01 00:00:00+00	IPCA-E	0.0117	1.0117	0.402750825	1.113092712
513	2021-12-01 00:00:00+00	IPCA-E	0.0078	1.0078	0.40746301	1.100220136
514	2022-01-01 00:00:00+00	IPCA-E	0.0058	1.0058	0.410641221	1.091704839
515	2022-02-01 00:00:00+00	IPCA-E	0.0099	1.0099	0.41302294	1.085409464
516	2022-03-01 00:00:00+00	IPCA-E	0.0095	1.0095	0.417111867	1.074769248
517	2022-04-01 00:00:00+00	IPCA-E	0.0173	1.0173	0.42107443	1.064655025
518	2022-05-01 00:00:00+00	IPCA-E	0.0059	1.0059	0.428359018	1.046549715
519	2022-06-01 00:00:00+00	IPCA-E	0.0069	1.0069	0.430886336	1.040411289
520	2022-07-01 00:00:00+00	IPCA-E	0.0013	1.0013	0.433859452	1.033281645
521	2022-08-01 00:00:00+00	IPCA-E	-0.0073	0.9927	0.434423469	1.031940123
522	2022-09-01 00:00:00+00	IPCA-E	-0.0037	0.9963	0.431252178	1.039528683
523	2022-10-01 00:00:00+00	IPCA-E	0.0016	1.0016	0.429656545	1.043389223
524	2022-11-01 00:00:00+00	IPCA-E	0.0053	1.0053	0.430343995	1.041722467
525	2022-12-01 00:00:00+00	IPCA-E	0.0052	1.0052	0.432624818	1.036230445
526	2023-01-01 00:00:00+00	IPCA-E	0.0055	1.0055	0.434874467	1.030869922
527	2023-02-01 00:00:00+00	IPCA-E	0.0076	1.0076	0.437266277	1.025231151
528	2023-03-01 00:00:00+00	IPCA-E	0.0069	1.0069	0.4405895	1.017498164
529	2023-04-01 00:00:00+00	IPCA-E	0.0057	1.0057	0.443629568	1.010525538
530	2023-05-01 00:00:00+00	IPCA-E	0.0051	1.0051	0.446158257	1.004798189
531	2023-06-01 00:00:00+00	IPCA-E	0.0004	1.0004	0.448433664	0.99969972
532	2023-07-01 00:00:00+00	IPCA-E	-0.0007	0.9993	0.448613037	0.9993
533	2023-08-01 00:00:00+00	IPCA-E	0	1.0	0.448299008	1.0
\.


--
-- Data for Name: t216_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t216_tabela_pnep (id, data, indexador, variacao_mensal, numero_indice, fator_vigente, indice_correcao) FROM stdin;
\.


--
-- Data for Name: t218_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t218_tabela_pnep (id, data, indexador, variacao_mensal, numero_indice, fator_vigente, indice_correcao) FROM stdin;
\.


--
-- Data for Name: t220_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t220_tabela_pnep (id, data, indexador, variacao_mensal, numero_indice, fator_vigente, indice_correcao) FROM stdin;
\.


--
-- Data for Name: t222_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t222_tabela_pnep (id, data, indexador, variacao_mensal, numero_indice, fator_vigente, indice_correcao) FROM stdin;
\.


--
-- Data for Name: t224_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t224_tabela_pnep (id, data, indexador, variacao_mensal, numero_indice, fator_vigente, indice_correcao) FROM stdin;
\.


--
-- Data for Name: t226_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t226_tabela_pnep (id, data, indexador, variacao_mensal, numero_indice, fator_vigente, indice_correcao) FROM stdin;
\.


--
-- Data for Name: t228_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t228_tabela_pnep (id, data, indexador, variacao_mensal, numero_indice, fator_vigente, indice_correcao) FROM stdin;
\.


--
-- Data for Name: t230_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t230_tabela_pnep (id, data, indexador, variacao_mensal, numero_indice, fator_vigente, indice_correcao) FROM stdin;
\.


--
-- Data for Name: t232_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t232_tabela_pnep (id, data, indexador, variacao_mensal, numero_indice, fator_vigente, indice_correcao) FROM stdin;
\.


--
-- Data for Name: t234_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t234_tabela_pnep (id, data, indexador, variacao_mensal, numero_indice, fator_vigente, indice_correcao) FROM stdin;
\.


--
-- Data for Name: t236_tabela_pnep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t236_tabela_pnep (id, data, selic, selic_ac_mes_atualiza, selic_ac_mensal) FROM stdin;
1	2021-12-01 00:00:00+00	0.0077	0	0.1989
2	2022-01-01 00:00:00+00	0.0073	0.0077	0.1912
3	2022-02-01 00:00:00+00	0.0076	0.015	0.1839
4	2022-03-01 00:00:00+00	0.0093	0.0226	0.1763
5	2022-04-01 00:00:00+00	0.0083	0.0319	0.167
6	2022-05-01 00:00:00+00	0.0103	0.0402	0.1587
7	2022-06-01 00:00:00+00	0.0102	0.0505	0.1484
8	2022-07-01 00:00:00+00	0.0103	0.0607	0.1382
9	2022-08-01 00:00:00+00	0.0117	0.071	0.1279
10	2022-09-01 00:00:00+00	0.0107	0.0827	0.1162
11	2022-10-01 00:00:00+00	0.0102	0.0934	0.1055
12	2022-11-01 00:00:00+00	0.0102	0.1036	0.0953
13	2022-12-01 00:00:00+00	0.0112	0.1138	0.0851
14	2023-01-01 00:00:00+00	0.0112	0.125	0.0739
15	2023-02-01 00:00:00+00	0.0092	0.1362	0.0627
16	2023-03-01 00:00:00+00	0.0117	0.1454	0.0535
17	2023-04-01 00:00:00+00	0.0092	0.1571	0.0418
18	2023-05-01 00:00:00+00	0.0112	0.1663	0.0326
19	2023-06-01 00:00:00+00	0.0107	0.1775	0.0214
20	2023-07-01 00:00:00+00	0.0107	0.1882	0.0107
21	2023-08-01 00:00:00+00	0	0.1989	0.1989
\.


--
-- Data for Name: t300_juros_poupanca; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t300_juros_poupanca (id, data, meta_selic_copom, taxa_mensal) FROM stdin;
\.


--
-- Data for Name: t302_juros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t302_juros (id, data, juros_mensal, juros_acumulados) FROM stdin;
\.


--
-- Data for Name: t304_juros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t304_juros (id, data, juros_mensal, juros_acumulados) FROM stdin;
\.


--
-- Data for Name: t306_juros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t306_juros (id, data, juros_mensal, juros_acumulados) FROM stdin;
\.


--
-- Data for Name: t308_juros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t308_juros (id, data, juros_mensal, juros_acumulados) FROM stdin;
\.


--
-- Data for Name: t310_juros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t310_juros (id, data, juros_mensal, juros_acumulados) FROM stdin;
\.


--
-- Data for Name: tr; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tr (id, data, valor) FROM stdin;
1	1991-02-01 00:00:00+00	7.0
2	1991-03-01 00:00:00+00	8.5
3	1991-04-01 00:00:00+00	8.93
4	1991-05-01 00:00:00+00	8.99
5	1991-06-01 00:00:00+00	9.4
6	1991-07-01 00:00:00+00	10.05
7	1991-08-01 00:00:00+00	11.95
8	1991-09-01 00:00:00+00	16.78
9	1991-10-01 00:00:00+00	19.77
10	1991-11-01 00:00:00+00	30.52
11	1991-12-01 00:00:00+00	28.42
12	1992-01-01 00:00:00+00	25.48
13	1992-02-01 00:00:00+00	25.61
14	1992-03-01 00:00:00+00	24.27
15	1992-04-01 00:00:00+00	21.08
16	1992-05-01 00:00:00+00	19.81
17	1992-06-01 00:00:00+00	21.05
18	1992-07-01 00:00:00+00	23.69
19	1992-08-01 00:00:00+00	23.22
20	1992-09-01 00:00:00+00	25.38
21	1992-10-01 00:00:00+00	25.07
22	1992-11-01 00:00:00+00	23.29
23	1992-12-01 00:00:00+00	23.95
24	1993-01-01 00:00:00+00	26.76
25	1993-02-01 00:00:00+00	26.4
26	1993-03-01 00:00:00+00	25.81
27	1993-04-01 00:00:00+00	28.22
28	1993-05-01 00:00:00+00	28.68
29	1993-06-01 00:00:00+00	30.08
30	1993-07-01 00:00:00+00	30.37
31	1993-08-01 00:00:00+00	33.34
32	1993-09-01 00:00:00+00	34.62
33	1993-10-01 00:00:00+00	36.53
34	1993-11-01 00:00:00+00	36.16
35	1993-12-01 00:00:00+00	36.8
36	1994-01-01 00:00:00+00	41.44
37	1994-02-01 00:00:00+00	39.86
38	1994-03-01 00:00:00+00	41.85
39	1994-04-01 00:00:00+00	45.97
40	1994-05-01 00:00:00+00	46.44
41	1994-06-01 00:00:00+00	46.8754
42	1994-07-01 00:00:00+00	5.0262
43	1994-08-01 00:00:00+00	2.1312
44	1994-09-01 00:00:00+00	2.4391
45	1994-10-01 00:00:00+00	2.5551
46	1994-11-01 00:00:00+00	2.921
47	1994-12-01 00:00:00+00	2.8731
48	1995-01-01 00:00:00+00	2.1013
49	1995-02-01 00:00:00+00	1.8531
50	1995-03-01 00:00:00+00	2.2998
51	1995-04-01 00:00:00+00	3.4667
52	1995-05-01 00:00:00+00	3.2471
53	1995-06-01 00:00:00+00	2.8863
54	1995-07-01 00:00:00+00	2.9905
55	1995-08-01 00:00:00+00	2.6045
56	1995-09-01 00:00:00+00	1.9393
57	1995-10-01 00:00:00+00	1.654
58	1995-11-01 00:00:00+00	1.4387
59	1995-12-01 00:00:00+00	1.34
60	1996-01-01 00:00:00+00	1.2526
61	1996-02-01 00:00:00+00	0.9625
62	1996-03-01 00:00:00+00	0.8139
63	1996-04-01 00:00:00+00	0.6597
64	1996-05-01 00:00:00+00	0.5888
65	1996-06-01 00:00:00+00	0.6099
66	1996-07-01 00:00:00+00	0.5851
67	1996-08-01 00:00:00+00	0.6275
68	1996-09-01 00:00:00+00	0.662
69	1996-10-01 00:00:00+00	0.7419
70	1996-11-01 00:00:00+00	0.8146
71	1996-12-01 00:00:00+00	0.8717
72	1997-01-01 00:00:00+00	0.744
73	1997-02-01 00:00:00+00	0.6616
74	1997-03-01 00:00:00+00	0.6316
75	1997-04-01 00:00:00+00	0.6211
76	1997-05-01 00:00:00+00	0.6354
77	1997-06-01 00:00:00+00	0.6535
78	1997-07-01 00:00:00+00	0.658
79	1997-08-01 00:00:00+00	0.627
80	1997-09-01 00:00:00+00	0.6474
81	1997-10-01 00:00:00+00	0.6553
82	1997-11-01 00:00:00+00	1.5334
83	1997-12-01 00:00:00+00	1.3085
84	1998-01-01 00:00:00+00	1.1459
85	1998-02-01 00:00:00+00	0.4461
86	1998-03-01 00:00:00+00	0.8995
87	1998-04-01 00:00:00+00	0.472
88	1998-05-01 00:00:00+00	0.4543
89	1998-06-01 00:00:00+00	0.4913
90	1998-07-01 00:00:00+00	0.5503
91	1998-08-01 00:00:00+00	0.3749
92	1998-09-01 00:00:00+00	0.4512
93	1998-10-01 00:00:00+00	0.8892
94	1998-11-01 00:00:00+00	0.6136
95	1998-12-01 00:00:00+00	0.7434
96	1999-01-01 00:00:00+00	0.5163
97	1999-02-01 00:00:00+00	0.8298
98	1999-03-01 00:00:00+00	1.1614
99	1999-04-01 00:00:00+00	0.6092
100	1999-05-01 00:00:00+00	0.5761
101	1999-06-01 00:00:00+00	0.3108
102	1999-07-01 00:00:00+00	0.2933
103	1999-08-01 00:00:00+00	0.2945
104	1999-09-01 00:00:00+00	0.2715
105	1999-10-01 00:00:00+00	0.2265
106	1999-11-01 00:00:00+00	0.1998
107	1999-12-01 00:00:00+00	0.2998
108	2000-01-01 00:00:00+00	0.2149
109	2000-02-01 00:00:00+00	0.2328
110	2000-03-01 00:00:00+00	0.2242
111	2000-04-01 00:00:00+00	0.1301
112	2000-05-01 00:00:00+00	0.2492
113	2000-06-01 00:00:00+00	0.214
114	2000-07-01 00:00:00+00	0.1547
115	2000-08-01 00:00:00+00	0.2025
116	2000-09-01 00:00:00+00	0.1038
117	2000-10-01 00:00:00+00	0.1316
118	2000-11-01 00:00:00+00	0.1197
119	2000-12-01 00:00:00+00	0.0991
120	2001-01-01 00:00:00+00	0.1369
121	2001-02-01 00:00:00+00	0.0368
122	2001-03-01 00:00:00+00	0.1724
123	2001-04-01 00:00:00+00	0.1546
124	2001-05-01 00:00:00+00	0.1827
125	2001-06-01 00:00:00+00	0.1458
126	2001-07-01 00:00:00+00	0.2441
127	2001-08-01 00:00:00+00	0.3436
128	2001-09-01 00:00:00+00	0.1627
129	2001-10-01 00:00:00+00	0.2913
130	2001-11-01 00:00:00+00	0.1928
131	2001-12-01 00:00:00+00	0.1983
132	2002-01-01 00:00:00+00	0.2591
133	2002-02-01 00:00:00+00	0.1171
134	2002-03-01 00:00:00+00	0.1758
135	2002-04-01 00:00:00+00	0.2357
136	2002-05-01 00:00:00+00	0.2102
137	2002-06-01 00:00:00+00	0.1582
138	2002-07-01 00:00:00+00	0.2656
139	2002-08-01 00:00:00+00	0.2481
140	2002-09-01 00:00:00+00	0.1955
141	2002-10-01 00:00:00+00	0.2768
142	2002-11-01 00:00:00+00	0.2644
143	2002-12-01 00:00:00+00	0.3609
144	2003-01-01 00:00:00+00	0.4878
145	2003-02-01 00:00:00+00	0.4116
146	2003-03-01 00:00:00+00	0.3782
147	2003-04-01 00:00:00+00	0.4184
148	2003-05-01 00:00:00+00	0.465
149	2003-06-01 00:00:00+00	0.4166
150	2003-07-01 00:00:00+00	0.5465
151	2003-08-01 00:00:00+00	0.4038
152	2003-09-01 00:00:00+00	0.3364
153	2003-10-01 00:00:00+00	0.3213
154	2003-11-01 00:00:00+00	0.1776
155	2003-12-01 00:00:00+00	0.1899
156	2004-01-01 00:00:00+00	0.128
157	2004-02-01 00:00:00+00	0.0458
158	2004-03-01 00:00:00+00	0.1778
159	2004-04-01 00:00:00+00	0.0874
160	2004-05-01 00:00:00+00	0.1546
161	2004-06-01 00:00:00+00	0.1761
162	2004-07-01 00:00:00+00	0.1952
163	2004-08-01 00:00:00+00	0.2005
164	2004-09-01 00:00:00+00	0.1728
165	2004-10-01 00:00:00+00	0.1108
166	2004-11-01 00:00:00+00	0.1146
167	2004-12-01 00:00:00+00	0.24
168	2005-01-01 00:00:00+00	0.188
169	2005-02-01 00:00:00+00	0.0962
170	2005-03-01 00:00:00+00	0.2635
171	2005-04-01 00:00:00+00	0.2003
172	2005-05-01 00:00:00+00	0.2527
173	2005-06-01 00:00:00+00	0.2993
174	2005-07-01 00:00:00+00	0.2575
175	2005-08-01 00:00:00+00	0.3466
176	2005-09-01 00:00:00+00	0.2637
177	2005-10-01 00:00:00+00	0.21
178	2005-11-01 00:00:00+00	0.1929
179	2005-12-01 00:00:00+00	0.2269
180	2006-01-01 00:00:00+00	0.2326
181	2006-02-01 00:00:00+00	0.0725
182	2006-03-01 00:00:00+00	0.2073
183	2006-04-01 00:00:00+00	0.0855
184	2006-05-01 00:00:00+00	0.1888
185	2006-06-01 00:00:00+00	0.1937
186	2006-07-01 00:00:00+00	0.1751
187	2006-08-01 00:00:00+00	0.2436
188	2006-09-01 00:00:00+00	0.1521
189	2006-10-01 00:00:00+00	0.1875
190	2006-11-01 00:00:00+00	0.1282
191	2006-12-01 00:00:00+00	0.1522
192	2007-01-01 00:00:00+00	0.2189
193	2007-02-01 00:00:00+00	0.0721
194	2007-03-01 00:00:00+00	0.1876
195	2007-04-01 00:00:00+00	0.1272
196	2007-05-01 00:00:00+00	0.1689
197	2007-06-01 00:00:00+00	0.0954
198	2007-07-01 00:00:00+00	0.1469
199	2007-08-01 00:00:00+00	0.1466
200	2007-09-01 00:00:00+00	0.0352
201	2007-10-01 00:00:00+00	0.1142
202	2007-11-01 00:00:00+00	0.059
203	2007-12-01 00:00:00+00	0.064
204	2008-01-01 00:00:00+00	0.101
205	2008-02-01 00:00:00+00	0.0243
206	2008-03-01 00:00:00+00	0.0409
207	2008-04-01 00:00:00+00	0.0955
208	2008-05-01 00:00:00+00	0.0736
209	2008-06-01 00:00:00+00	0.1146
210	2008-07-01 00:00:00+00	0.1914
211	2008-08-01 00:00:00+00	0.1574
212	2008-09-01 00:00:00+00	0.197
213	2008-10-01 00:00:00+00	0.2506
214	2008-11-01 00:00:00+00	0.1618
215	2008-12-01 00:00:00+00	0.2149
216	2009-01-01 00:00:00+00	0.184
217	2009-02-01 00:00:00+00	0.0451
218	2009-03-01 00:00:00+00	0.1438
219	2009-04-01 00:00:00+00	0.0454
220	2009-05-01 00:00:00+00	0.0449
221	2009-06-01 00:00:00+00	0.0656
222	2009-07-01 00:00:00+00	0.1051
223	2009-08-01 00:00:00+00	0.0197
224	2009-09-01 00:00:00+00	0.0
225	2009-10-01 00:00:00+00	0.0
226	2009-11-01 00:00:00+00	0.0
227	2009-12-01 00:00:00+00	0.0533
228	2010-01-01 00:00:00+00	0.0
229	2010-02-01 00:00:00+00	0.0
230	2010-03-01 00:00:00+00	0.0792
231	2010-04-01 00:00:00+00	0.0
232	2010-05-01 00:00:00+00	0.051
233	2010-06-01 00:00:00+00	0.0589
234	2010-07-01 00:00:00+00	0.1151
235	2010-08-01 00:00:00+00	0.0909
236	2010-09-01 00:00:00+00	0.0702
237	2010-10-01 00:00:00+00	0.0472
238	2010-11-01 00:00:00+00	0.0336
239	2010-12-01 00:00:00+00	0.1406
240	2011-01-01 00:00:00+00	0.0715
241	2011-02-01 00:00:00+00	0.0524
242	2011-03-01 00:00:00+00	0.1212
243	2011-04-01 00:00:00+00	0.0369
244	2011-05-01 00:00:00+00	0.157
245	2011-06-01 00:00:00+00	0.1114
246	2011-07-01 00:00:00+00	0.1229
247	2011-08-01 00:00:00+00	0.2076
248	2011-09-01 00:00:00+00	0.1003
249	2011-10-01 00:00:00+00	0.062
250	2011-11-01 00:00:00+00	0.0645
251	2011-12-01 00:00:00+00	0.0937
252	2012-01-01 00:00:00+00	0.0864
253	2012-02-01 00:00:00+00	0.0
254	2012-03-01 00:00:00+00	0.1068
255	2012-04-01 00:00:00+00	0.0227
256	2012-05-01 00:00:00+00	0.0468
257	2012-06-01 00:00:00+00	0.0
258	2012-07-01 00:00:00+00	0.0144
259	2012-08-01 00:00:00+00	0.0123
260	2012-09-01 00:00:00+00	0.0
261	2012-10-01 00:00:00+00	0.0
262	2012-11-01 00:00:00+00	0.0
263	2012-12-01 00:00:00+00	0.0
264	2013-01-01 00:00:00+00	0.0
265	2013-02-01 00:00:00+00	0.0
266	2013-03-01 00:00:00+00	0.0
267	2013-04-01 00:00:00+00	0.0
268	2013-05-01 00:00:00+00	0.0
269	2013-06-01 00:00:00+00	0.0
270	2013-07-01 00:00:00+00	0.0209
271	2013-08-01 00:00:00+00	0.0
272	2013-09-01 00:00:00+00	0.0079
273	2013-10-01 00:00:00+00	0.092
274	2013-11-01 00:00:00+00	0.0207
275	2013-12-01 00:00:00+00	0.0494
276	2014-01-01 00:00:00+00	0.1126
277	2014-02-01 00:00:00+00	0.0537
278	2014-03-01 00:00:00+00	0.0266
279	2014-04-01 00:00:00+00	0.0459
280	2014-05-01 00:00:00+00	0.0604
281	2014-06-01 00:00:00+00	0.0465
282	2014-07-01 00:00:00+00	0.1054
283	2014-08-01 00:00:00+00	0.0602
284	2014-09-01 00:00:00+00	0.0873
285	2014-10-01 00:00:00+00	0.1038
286	2014-11-01 00:00:00+00	0.0483
287	2014-12-01 00:00:00+00	0.1053
288	2015-01-01 00:00:00+00	0.0878
289	2015-02-01 00:00:00+00	0.0168
290	2015-03-01 00:00:00+00	0.1296
291	2015-04-01 00:00:00+00	0.1074
292	2015-05-01 00:00:00+00	0.1153
293	2015-06-01 00:00:00+00	0.1813
294	2015-07-01 00:00:00+00	0.2305
295	2015-08-01 00:00:00+00	0.1867
296	2015-09-01 00:00:00+00	0.192
297	2015-10-01 00:00:00+00	0.179
298	2015-11-01 00:00:00+00	0.1297
299	2015-12-01 00:00:00+00	0.225
300	2016-01-01 00:00:00+00	0.132
301	2016-02-01 00:00:00+00	0.0957
302	2016-03-01 00:00:00+00	0.2168
303	2016-04-01 00:00:00+00	0.1304
304	2016-05-01 00:00:00+00	0.1533
305	2016-06-01 00:00:00+00	0.2043
306	2016-07-01 00:00:00+00	0.1621
307	2016-08-01 00:00:00+00	0.2545
308	2016-09-01 00:00:00+00	0.1575
309	2016-10-01 00:00:00+00	0.1601
310	2016-11-01 00:00:00+00	0.1428
311	2016-12-01 00:00:00+00	0.1849
312	2017-01-01 00:00:00+00	0.17
313	2017-02-01 00:00:00+00	0.0302
314	2017-03-01 00:00:00+00	0.1519
315	2017-04-01 00:00:00+00	0.0
316	2017-05-01 00:00:00+00	0.0764
317	2017-06-01 00:00:00+00	0.0536
318	2017-07-01 00:00:00+00	0.0623
319	2017-08-01 00:00:00+00	0.0509
320	2017-09-01 00:00:00+00	0.0
321	2017-10-01 00:00:00+00	0.0
322	2017-11-01 00:00:00+00	0.0
323	2017-12-01 00:00:00+00	0.0
324	2018-01-01 00:00:00+00	0.0
325	2018-02-01 00:00:00+00	0.0
326	2018-03-01 00:00:00+00	0.0
327	2018-04-01 00:00:00+00	0.0
328	2018-05-01 00:00:00+00	0.0
329	2018-06-01 00:00:00+00	0.0
330	2018-07-01 00:00:00+00	0.0
331	2018-08-01 00:00:00+00	0.0
332	2018-09-01 00:00:00+00	0.0
333	2018-10-01 00:00:00+00	0.0
334	2018-11-01 00:00:00+00	0.0
335	2018-12-01 00:00:00+00	0.0
336	2019-01-01 00:00:00+00	0.0
337	2019-02-01 00:00:00+00	0.0
338	2019-03-01 00:00:00+00	0.0
339	2019-04-01 00:00:00+00	0.0
340	2019-05-01 00:00:00+00	0.0
341	2019-06-01 00:00:00+00	0.0
342	2019-07-01 00:00:00+00	0.0
343	2019-08-01 00:00:00+00	0.0
344	2019-09-01 00:00:00+00	0.0
345	2019-10-01 00:00:00+00	0.0
346	2019-11-01 00:00:00+00	0.0
347	2019-12-01 00:00:00+00	0.0
348	2020-01-01 00:00:00+00	0.0
349	2020-02-01 00:00:00+00	0.0
350	2020-03-01 00:00:00+00	0.0
351	2020-04-01 00:00:00+00	0.0
352	2020-05-01 00:00:00+00	0.0
353	2020-06-01 00:00:00+00	0.0
354	2020-07-01 00:00:00+00	0.0
355	2020-08-01 00:00:00+00	0.0
356	2020-09-01 00:00:00+00	0.0
357	2020-10-01 00:00:00+00	0.0
358	2020-11-01 00:00:00+00	0.0
359	2020-12-01 00:00:00+00	0.0
360	2021-01-01 00:00:00+00	0.0
361	2021-02-01 00:00:00+00	0.0
362	2021-03-01 00:00:00+00	0.0
363	2021-04-01 00:00:00+00	0.0
364	2021-05-01 00:00:00+00	0.0
365	2021-06-01 00:00:00+00	0.0
366	2021-07-01 00:00:00+00	0.0
367	2021-08-01 00:00:00+00	0.0
368	2021-09-01 00:00:00+00	0.0
369	2021-10-01 00:00:00+00	0.0
370	2021-11-01 00:00:00+00	0.0
371	2021-12-01 00:00:00+00	0.0488
372	2022-01-01 00:00:00+00	0.0605
373	2022-02-01 00:00:00+00	0.0
374	2022-03-01 00:00:00+00	0.0971
375	2022-04-01 00:00:00+00	0.0555
376	2022-05-01 00:00:00+00	0.1663
377	2022-06-01 00:00:00+00	0.1484
378	2022-07-01 00:00:00+00	0.1631
379	2022-08-01 00:00:00+00	0.2409
380	2022-09-01 00:00:00+00	0.1805
381	2022-10-01 00:00:00+00	0.1494
382	2022-11-01 00:00:00+00	0.1507
383	2022-12-01 00:00:00+00	0.2072
384	2023-01-01 00:00:00+00	0.2081
385	2023-02-01 00:00:00+00	0.083
386	2023-03-01 00:00:00+00	0.2392
387	2023-04-01 00:00:00+00	0.0821
388	2023-05-01 00:00:00+00	0.2147
389	2023-06-01 00:00:00+00	0.1799
390	2023-07-01 00:00:00+00	0.1581
396	2023-08-01 00:00:00+00	0.2160
397	2023-09-01 00:00:00+00	0.1130
398	2023-10-01 00:00:00+00	0.1056
399	2023-11-01 00:00:00+00	0.1056
400	2023-12-01 00:00:00+00	0.0775
401	2024-01-01 00:00:00+00	0.0690
402	2024-02-01 00:00:00+00	0.0875
\.


--
-- Name: descricao_tabelas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.descricao_tabelas_id_seq', 16, true);


--
-- Name: indexadores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.indexadores_id_seq', 14, true);


--
-- Name: inpc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inpc_id_seq', 544, true);


--
-- Name: ipca15_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ipca15_id_seq', 287, true);


--
-- Name: ipca_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ipca_id_seq', 534, true);


--
-- Name: logatualizacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.logatualizacao_id_seq', 7, true);


--
-- Name: regra_atualizacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.regra_atualizacao_id_seq', 1, false);


--
-- Name: selic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.selic_id_seq', 458, true);


--
-- Name: seliccopom_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seliccopom_id_seq', 8975, true);


--
-- Name: serie_historica_moedas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.serie_historica_moedas_id_seq', 1, false);


--
-- Name: t200_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t200_tabela_pnep_id_seq', 707, true);


--
-- Name: t202_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t202_tabela_pnep_id_seq', 2081, true);


--
-- Name: t204_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t204_tabela_pnep_id_seq', 707, true);


--
-- Name: t206_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t206_tabela_pnep_id_seq', 707, true);


--
-- Name: t208_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t208_tabela_pnep_id_seq', 1668, true);


--
-- Name: t210_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t210_tabela_pnep_id_seq', 1034, true);


--
-- Name: t212_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t212_tabela_pnep_id_seq', 707, true);


--
-- Name: t214_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t214_tabela_pnep_id_seq', 533, true);


--
-- Name: t216_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t216_tabela_pnep_id_seq', 1, false);


--
-- Name: t218_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t218_tabela_pnep_id_seq', 1, false);


--
-- Name: t220_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t220_tabela_pnep_id_seq', 1, false);


--
-- Name: t222_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t222_tabela_pnep_id_seq', 1, false);


--
-- Name: t224_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t224_tabela_pnep_id_seq', 1, false);


--
-- Name: t226_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t226_tabela_pnep_id_seq', 1, false);


--
-- Name: t228_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t228_tabela_pnep_id_seq', 1, false);


--
-- Name: t230_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t230_tabela_pnep_id_seq', 1, false);


--
-- Name: t232_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t232_tabela_pnep_id_seq', 1, false);


--
-- Name: t234_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t234_tabela_pnep_id_seq', 1, false);


--
-- Name: t236_tabela_pnep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t236_tabela_pnep_id_seq', 21, true);


--
-- Name: t300_juros_poupanca_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t300_juros_poupanca_id_seq', 1, false);


--
-- Name: t302_juros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t302_juros_id_seq', 1, false);


--
-- Name: t304_juros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t304_juros_id_seq', 1, false);


--
-- Name: t306_juros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t306_juros_id_seq', 1, false);


--
-- Name: t308_juros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t308_juros_id_seq', 1, false);


--
-- Name: t310_juros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t310_juros_id_seq', 1, false);


--
-- Name: tr_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tr_id_seq', 402, true);


--
-- Name: descricao_tabelas descricao_tabelas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.descricao_tabelas
    ADD CONSTRAINT descricao_tabelas_pkey PRIMARY KEY (id);


--
-- Name: indexadores indexadores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indexadores
    ADD CONSTRAINT indexadores_pkey PRIMARY KEY (id);


--
-- Name: inpc inpc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inpc
    ADD CONSTRAINT inpc_pkey PRIMARY KEY (id);


--
-- Name: igpm ipca15_copy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.igpm
    ADD CONSTRAINT ipca15_copy_pkey PRIMARY KEY (id);


--
-- Name: ipca15 ipca15_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ipca15
    ADD CONSTRAINT ipca15_pkey PRIMARY KEY (id);


--
-- Name: ipca ipca_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ipca
    ADD CONSTRAINT ipca_pkey PRIMARY KEY (id);


--
-- Name: logatualizacao logatualizacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logatualizacao
    ADD CONSTRAINT logatualizacao_pkey PRIMARY KEY (id);


--
-- Name: regra_atualizacao regra_atualizacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regra_atualizacao
    ADD CONSTRAINT regra_atualizacao_pkey PRIMARY KEY (id);


--
-- Name: selic selic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.selic
    ADD CONSTRAINT selic_pkey PRIMARY KEY (id);


--
-- Name: seliccopom seliccopom_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seliccopom
    ADD CONSTRAINT seliccopom_pkey PRIMARY KEY (id);


--
-- Name: serie_historica_moedas serie_historica_moedas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.serie_historica_moedas
    ADD CONSTRAINT serie_historica_moedas_pkey PRIMARY KEY (id);


--
-- Name: t200_tabela_pnep t200_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t200_tabela_pnep
    ADD CONSTRAINT t200_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t202_tabela_pnep t202_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t202_tabela_pnep
    ADD CONSTRAINT t202_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t204_tabela_pnep t204_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t204_tabela_pnep
    ADD CONSTRAINT t204_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t206_tabela_pnep t206_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t206_tabela_pnep
    ADD CONSTRAINT t206_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t208_tabela_pnep t208_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t208_tabela_pnep
    ADD CONSTRAINT t208_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t210_tabela_pnep t210_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t210_tabela_pnep
    ADD CONSTRAINT t210_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t212_tabela_pnep t212_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t212_tabela_pnep
    ADD CONSTRAINT t212_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t214_tabela_pnep t214_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t214_tabela_pnep
    ADD CONSTRAINT t214_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t216_tabela_pnep t216_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t216_tabela_pnep
    ADD CONSTRAINT t216_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t218_tabela_pnep t218_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t218_tabela_pnep
    ADD CONSTRAINT t218_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t220_tabela_pnep t220_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t220_tabela_pnep
    ADD CONSTRAINT t220_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t222_tabela_pnep t222_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t222_tabela_pnep
    ADD CONSTRAINT t222_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t224_tabela_pnep t224_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t224_tabela_pnep
    ADD CONSTRAINT t224_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t226_tabela_pnep t226_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t226_tabela_pnep
    ADD CONSTRAINT t226_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t228_tabela_pnep t228_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t228_tabela_pnep
    ADD CONSTRAINT t228_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t230_tabela_pnep t230_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t230_tabela_pnep
    ADD CONSTRAINT t230_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t232_tabela_pnep t232_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t232_tabela_pnep
    ADD CONSTRAINT t232_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t234_tabela_pnep t234_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t234_tabela_pnep
    ADD CONSTRAINT t234_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t236_tabela_pnep t236_tabela_pnep_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t236_tabela_pnep
    ADD CONSTRAINT t236_tabela_pnep_pkey PRIMARY KEY (id);


--
-- Name: t300_juros_poupanca t300_juros_poupanca_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t300_juros_poupanca
    ADD CONSTRAINT t300_juros_poupanca_pkey PRIMARY KEY (id);


--
-- Name: t302_juros t302_juros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t302_juros
    ADD CONSTRAINT t302_juros_pkey PRIMARY KEY (id);


--
-- Name: t304_juros t304_juros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t304_juros
    ADD CONSTRAINT t304_juros_pkey PRIMARY KEY (id);


--
-- Name: t306_juros t306_juros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t306_juros
    ADD CONSTRAINT t306_juros_pkey PRIMARY KEY (id);


--
-- Name: t308_juros t308_juros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t308_juros
    ADD CONSTRAINT t308_juros_pkey PRIMARY KEY (id);


--
-- Name: t310_juros t310_juros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t310_juros
    ADD CONSTRAINT t310_juros_pkey PRIMARY KEY (id);


--
-- Name: tr tr_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tr
    ADD CONSTRAINT tr_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

