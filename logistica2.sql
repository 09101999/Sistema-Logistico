--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.1

-- Started on 2019-09-03 21:12:33

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 198 (class 1259 OID 35421)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    idcliente smallint NOT NULL,
    razaosocial integer NOT NULL,
    nomefantasia character varying(30),
    cnpj integer,
    endereco character varying(50),
    bairro character varying(50),
    cidade character varying(50),
    estado character varying(50),
    cep integer,
    email character varying(50),
    telefone integer,
    inscricaoestadual character varying(50),
    filial character varying(30),
    tipoestabelecimento character varying(40)
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 35433)
-- Name: cubagem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cubagem (
    idcub integer NOT NULL
);


ALTER TABLE public.cubagem OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 35418)
-- Name: empresa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empresa (
    idempresa integer NOT NULL,
    razaosocial integer NOT NULL,
    nomefantasia character varying(50),
    cnpj integer NOT NULL,
    "endereço" character varying(100),
    bairro character varying(50),
    cidade character varying(50),
    estado character varying(50),
    cep integer,
    email character varying(50),
    telefone integer,
    rntrc character varying(20),
    inscricaoestadual character varying(20),
    filial character varying(50)
);


ALTER TABLE public.empresa OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 27227)
-- Name: funcionario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionario (
    idfunc integer NOT NULL,
    senha character(15) NOT NULL,
    nome character varying(50) NOT NULL,
    telefone character(15) NOT NULL,
    endereco character varying(100),
    email character varying(50),
    cpf character(15) NOT NULL,
    rg character(15),
    funcao character varying(50) NOT NULL
);


ALTER TABLE public.funcionario OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 35427)
-- Name: ordemservico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ordemservico (
    idos integer NOT NULL,
    qntdvol double precision,
    unidade integer,
    pesoliq double precision,
    especvol character varying(15),
    fragilidade character varying(10),
    dataemissao date,
    idempresa character varying(50) NOT NULL,
    idcliente character varying(50) NOT NULL,
    idtransporte character varying(50) NOT NULL,
    cidadeorigem character varying(50) NOT NULL,
    cidadedestino character varying(50) NOT NULL,
    dataprev date,
    observacoes character varying(100),
    numeroos integer NOT NULL
);


ALTER TABLE public.ordemservico OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 35430)
-- Name: rotas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rotas (
    idrotas integer NOT NULL,
    idos integer,
    endorigem character varying(50),
    enddestino character varying(50),
    uforigem character varying(20),
    ufdestino character varying(20),
    cidadedestino character varying(50),
    cidadeorigem character varying(50),
    optrajetos character varying(100)
);


ALTER TABLE public.rotas OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 35424)
-- Name: transporte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transporte (
    idtransporte integer NOT NULL,
    tipotransporte character varying(20) NOT NULL,
    cavalo character varying(20) NOT NULL,
    quantidade double precision,
    placa character varying(10),
    marca character varying(20),
    classificacao character varying(20),
    emplacado character varying(20),
    renavam character varying(20),
    chassi character varying(17) NOT NULL,
    anomodelo character varying(20),
    qntdeixo integer,
    largura double precision,
    altura double precision,
    comprimento double precision,
    pesomax double precision,
    nomeprop character varying(50),
    cpf integer,
    telefone integer,
    numcnh character varying(20),
    categoriahab character varying(10),
    validadecnh date,
    antt character varying(20),
    tipocarroceria character varying(25)
);


ALTER TABLE public.transporte OWNER TO postgres;

--
-- TOC entry 2844 (class 0 OID 35421)
-- Dependencies: 198
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cliente VALUES (1, 22, 'Beca Auto Pecas', 508, 'Rua Dr. Genaro Resende', 'Centro', 'Cambara', 'Parana', 86390000, 'lipe_rsilva@hotmail.com', 35326824, '0981237', 'Beca-Ourinhos', 'comercial');


--
-- TOC entry 2848 (class 0 OID 35433)
-- Dependencies: 202
-- Data for Name: cubagem; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2843 (class 0 OID 35418)
-- Dependencies: 197
-- Data for Name: empresa; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2842 (class 0 OID 27227)
-- Dependencies: 196
-- Data for Name: funcionario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.funcionario VALUES (1, '123456         ', 'giovana', '99343804       ', 'Rua A', 'giovana@hotmail.com', '120555         ', '123456         ', 'analista');


--
-- TOC entry 2846 (class 0 OID 35427)
-- Dependencies: 200
-- Data for Name: ordemservico; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2847 (class 0 OID 35430)
-- Dependencies: 201
-- Data for Name: rotas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2845 (class 0 OID 35424)
-- Dependencies: 199
-- Data for Name: transporte; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2712 (class 2606 OID 35449)
-- Name: cliente  clientecp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT " clientecp" PRIMARY KEY (idcliente) INCLUDE (idcliente);


--
-- TOC entry 2720 (class 2606 OID 35445)
-- Name: cubagem cubagemcp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cubagem
    ADD CONSTRAINT cubagemcp PRIMARY KEY (idcub) INCLUDE (idcub);


--
-- TOC entry 2710 (class 2606 OID 35441)
-- Name: empresa empresacp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT empresacp PRIMARY KEY (idempresa) INCLUDE (idempresa);


--
-- TOC entry 2708 (class 2606 OID 27231)
-- Name: funcionario funcionariocp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionariocp PRIMARY KEY (idfunc) INCLUDE (idfunc);


--
-- TOC entry 2716 (class 2606 OID 35443)
-- Name: ordemservico ordemservicocp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordemservico
    ADD CONSTRAINT ordemservicocp PRIMARY KEY (idos) INCLUDE (idos);


--
-- TOC entry 2718 (class 2606 OID 35447)
-- Name: rotas rotascp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rotas
    ADD CONSTRAINT rotascp PRIMARY KEY (idrotas) INCLUDE (idrotas);


--
-- TOC entry 2714 (class 2606 OID 35439)
-- Name: transporte transportecp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transporte
    ADD CONSTRAINT transportecp PRIMARY KEY (idtransporte) INCLUDE (idtransporte);


-- Completed on 2019-09-03 21:12:33

--
-- PostgreSQL database dump complete
--

