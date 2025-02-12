PGDMP     *        
            w         	   logistica    11.2    11.1     #           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            $           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            %           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            &           1262    27226 	   logistica    DATABASE     �   CREATE DATABASE logistica WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE logistica;
             postgres    false            �            1259    35421    cliente    TABLE     �  CREATE TABLE public.cliente (
    idcliente integer NOT NULL,
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
    DROP TABLE public.cliente;
       public         postgres    false            �            1259    35433    cubagem    TABLE     <   CREATE TABLE public.cubagem (
    idcub integer NOT NULL
);
    DROP TABLE public.cubagem;
       public         postgres    false            �            1259    35418    empresa    TABLE     �  CREATE TABLE public.empresa (
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
    DROP TABLE public.empresa;
       public         postgres    false            �            1259    27227    funcionario    TABLE     X  CREATE TABLE public.funcionario (
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
    DROP TABLE public.funcionario;
       public         postgres    false            �            1259    35427    ordemservico    TABLE     <  CREATE TABLE public.ordemservico (
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
     DROP TABLE public.ordemservico;
       public         postgres    false            �            1259    35430    rotas    TABLE     Z  CREATE TABLE public.rotas (
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
    DROP TABLE public.rotas;
       public         postgres    false            �            1259    35424 
   transporte    TABLE     N  CREATE TABLE public.transporte (
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
    DROP TABLE public.transporte;
       public         postgres    false                      0    35421    cliente 
   TABLE DATA                     public       postgres    false    198   i                   0    35433    cubagem 
   TABLE DATA                     public       postgres    false    202   �                  0    35418    empresa 
   TABLE DATA                     public       postgres    false    197   �                  0    27227    funcionario 
   TABLE DATA                     public       postgres    false    196   �                  0    35427    ordemservico 
   TABLE DATA                     public       postgres    false    200   D!                 0    35430    rotas 
   TABLE DATA                     public       postgres    false    201   ^!                 0    35424 
   transporte 
   TABLE DATA                     public       postgres    false    199   x!       �
           2606    35437    cliente  clientecp 
   CONSTRAINT     m   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT " clientecp" PRIMARY KEY (idcliente) INCLUDE (idcliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT " clientecp";
       public         postgres    false    198    198            �
           2606    35445    cubagem cubagemcp 
   CONSTRAINT     b   ALTER TABLE ONLY public.cubagem
    ADD CONSTRAINT cubagemcp PRIMARY KEY (idcub) INCLUDE (idcub);
 ;   ALTER TABLE ONLY public.cubagem DROP CONSTRAINT cubagemcp;
       public         postgres    false    202    202            �
           2606    35441    empresa empresacp 
   CONSTRAINT     j   ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT empresacp PRIMARY KEY (idempresa) INCLUDE (idempresa);
 ;   ALTER TABLE ONLY public.empresa DROP CONSTRAINT empresacp;
       public         postgres    false    197    197            �
           2606    27231    funcionario funcionariocp 
   CONSTRAINT     l   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionariocp PRIMARY KEY (idfunc) INCLUDE (idfunc);
 C   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionariocp;
       public         postgres    false    196    196            �
           2606    35443    ordemservico ordemservicocp 
   CONSTRAINT     j   ALTER TABLE ONLY public.ordemservico
    ADD CONSTRAINT ordemservicocp PRIMARY KEY (idos) INCLUDE (idos);
 E   ALTER TABLE ONLY public.ordemservico DROP CONSTRAINT ordemservicocp;
       public         postgres    false    200    200            �
           2606    35447    rotas rotascp 
   CONSTRAINT     b   ALTER TABLE ONLY public.rotas
    ADD CONSTRAINT rotascp PRIMARY KEY (idrotas) INCLUDE (idrotas);
 7   ALTER TABLE ONLY public.rotas DROP CONSTRAINT rotascp;
       public         postgres    false    201    201            �
           2606    35439    transporte transportecp 
   CONSTRAINT     v   ALTER TABLE ONLY public.transporte
    ADD CONSTRAINT transportecp PRIMARY KEY (idtransporte) INCLUDE (idtransporte);
 A   ALTER TABLE ONLY public.transporte DROP CONSTRAINT transportecp;
       public         postgres    false    199    199               
   x���              
   x���             
   x���             }   x���v
Q���W((M��L�K+�K���K,��Ws�	uV�0�QP742615S�u�Pzf~Yb^"�iiilbla`�$T������!#�$713G/9?Wl����)��X� j��,.IT״��� ��+         
   x���             
   x���             
   x���         