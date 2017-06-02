--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.6
-- Dumped by pg_dump version 9.5.6

-- Started on 2017-06-01 20:31:51 BRT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12397)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2205 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 16491)
-- Name: cnh; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cnh (
    num_cnh bigint NOT NULL,
    id_guia integer NOT NULL,
    categoria smallint NOT NULL,
    dt_vencimento date NOT NULL,
    status smallint NOT NULL
);


ALTER TABLE cnh OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 16494)
-- Name: pessoa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pessoa (
    cpf_cnpj bigint NOT NULL,
    tipo_pessoa smallint NOT NULL,
    nome character varying(50) NOT NULL,
    telefone character varying(18) NOT NULL,
    email character varying(80),
    senha character(32),
    dt_cadastro timestamp without time zone,
    dt_ult_acesso timestamp without time zone,
    status_usuario smallint,
    dt_ultimo_status timestamp without time zone,
    tipo_usuario smallint,
    rg integer,
    dt_nasc date,
    sexo character(1),
    nome_responsavel character varying(50),
    fone_responsavel character varying(18),
    num_cadastur integer,
    status_guia smallint,
    id integer NOT NULL
);


ALTER TABLE pessoa OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 16497)
-- Name: pessoa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pessoa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pessoa_id_seq OWNER TO postgres;

--
-- TOC entry 2206 (class 0 OID 0)
-- Dependencies: 183
-- Name: pessoa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pessoa_id_seq OWNED BY pessoa.id;


--
-- TOC entry 184 (class 1259 OID 16499)
-- Name: tb_bairro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_bairro (
    id integer NOT NULL,
    id_cidade integer NOT NULL,
    nome character varying(100) NOT NULL
);


ALTER TABLE tb_bairro OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 16502)
-- Name: tb_cidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_cidade (
    id integer NOT NULL,
    id_estado smallint NOT NULL,
    nome character varying(50) NOT NULL,
    ibge_cidade integer
);


ALTER TABLE tb_cidade OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16505)
-- Name: tb_estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_estado (
    id smallint NOT NULL,
    id_pais smallint NOT NULL,
    nome character varying(25) NOT NULL,
    sigla character(2)
);


ALTER TABLE tb_estado OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16508)
-- Name: tb_guia_idioma; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_guia_idioma (
    id_guia integer NOT NULL,
    id_idioma integer NOT NULL
);


ALTER TABLE tb_guia_idioma OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16511)
-- Name: tb_idioma; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_idioma (
    id smallint NOT NULL,
    sigla character(2) NOT NULL,
    nome character varying(16) NOT NULL
);


ALTER TABLE tb_idioma OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 16514)
-- Name: tb_pais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_pais (
    id smallint NOT NULL,
    id_idioma smallint NOT NULL,
    sigla character(3) NOT NULL,
    nome character varying(30) NOT NULL
);


ALTER TABLE tb_pais OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 16517)
-- Name: tb_rua; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_rua (
    id integer NOT NULL,
    id_bairro integer NOT NULL,
    nome character varying(100) NOT NULL,
    cep integer NOT NULL,
    tipo character varying(30)
);


ALTER TABLE tb_rua OWNER TO postgres;

--
-- TOC entry 2053 (class 2604 OID 16520)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pessoa ALTER COLUMN id SET DEFAULT nextval('pessoa_id_seq'::regclass);


--
-- TOC entry 2063 (class 2606 OID 16522)
-- Name: pk_bairro; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_bairro
    ADD CONSTRAINT pk_bairro PRIMARY KEY (id);


--
-- TOC entry 2065 (class 2606 OID 16524)
-- Name: pk_cidade; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_cidade
    ADD CONSTRAINT pk_cidade PRIMARY KEY (id);


--
-- TOC entry 2055 (class 2606 OID 16526)
-- Name: pk_cnh; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cnh
    ADD CONSTRAINT pk_cnh PRIMARY KEY (num_cnh);


--
-- TOC entry 2067 (class 2606 OID 16528)
-- Name: pk_estado; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_estado
    ADD CONSTRAINT pk_estado PRIMARY KEY (id);


--
-- TOC entry 2069 (class 2606 OID 16530)
-- Name: pk_guia_idioma; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_guia_idioma
    ADD CONSTRAINT pk_guia_idioma PRIMARY KEY (id_guia, id_idioma);


--
-- TOC entry 2071 (class 2606 OID 16532)
-- Name: pk_idiomas; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_idioma
    ADD CONSTRAINT pk_idiomas PRIMARY KEY (id);


--
-- TOC entry 2073 (class 2606 OID 16534)
-- Name: pk_pais; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_pais
    ADD CONSTRAINT pk_pais PRIMARY KEY (id);


--
-- TOC entry 2057 (class 2606 OID 16536)
-- Name: pk_pessoa; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT pk_pessoa PRIMARY KEY (id);


--
-- TOC entry 2075 (class 2606 OID 16538)
-- Name: pk_rua; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_rua
    ADD CONSTRAINT pk_rua PRIMARY KEY (id);


--
-- TOC entry 2059 (class 2606 OID 16540)
-- Name: un_pessoa; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT un_pessoa UNIQUE (cpf_cnpj, tipo_pessoa);


--
-- TOC entry 2061 (class 2606 OID 16542)
-- Name: un_pessoa_email; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT un_pessoa_email UNIQUE (email);


--
-- TOC entry 2077 (class 2606 OID 16543)
-- Name: fk_bairro_cidade; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_bairro
    ADD CONSTRAINT fk_bairro_cidade FOREIGN KEY (id_cidade) REFERENCES tb_cidade(id);


--
-- TOC entry 2078 (class 2606 OID 16548)
-- Name: fk_cidade_estado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_cidade
    ADD CONSTRAINT fk_cidade_estado FOREIGN KEY (id_estado) REFERENCES tb_estado(id);


--
-- TOC entry 2076 (class 2606 OID 16553)
-- Name: fk_cnh_guiapessoa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cnh
    ADD CONSTRAINT fk_cnh_guiapessoa FOREIGN KEY (id_guia) REFERENCES pessoa(id);


--
-- TOC entry 2079 (class 2606 OID 16558)
-- Name: fk_estado_pais; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_estado
    ADD CONSTRAINT fk_estado_pais FOREIGN KEY (id_pais) REFERENCES tb_pais(id);


--
-- TOC entry 2080 (class 2606 OID 16563)
-- Name: fk_guiaidioma_guia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_guia_idioma
    ADD CONSTRAINT fk_guiaidioma_guia FOREIGN KEY (id_guia) REFERENCES pessoa(id);


--
-- TOC entry 2081 (class 2606 OID 16568)
-- Name: fk_guiaidioma_idioma; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_guia_idioma
    ADD CONSTRAINT fk_guiaidioma_idioma FOREIGN KEY (id_idioma) REFERENCES tb_idioma(id);


--
-- TOC entry 2082 (class 2606 OID 16573)
-- Name: fk_pais_idioma; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_pais
    ADD CONSTRAINT fk_pais_idioma FOREIGN KEY (id_idioma) REFERENCES tb_idioma(id);


--
-- TOC entry 2083 (class 2606 OID 16578)
-- Name: fk_rua_bairro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_rua
    ADD CONSTRAINT fk_rua_bairro FOREIGN KEY (id_bairro) REFERENCES tb_bairro(id);


--
-- TOC entry 2204 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-06-01 20:31:51 BRT

--
-- PostgreSQL database dump complete
--

