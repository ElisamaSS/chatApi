PGDMP                         x            chat_api    12.3    12.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            
           1262    16426    chat_api    DATABASE     �   CREATE DATABASE chat_api WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE chat_api;
                postgres    false                        2615    16427    chat    SCHEMA        CREATE SCHEMA chat;
    DROP SCHEMA chat;
                postgres    false            �            1259    16428    cadastro    TABLE     �   CREATE TABLE chat.cadastro (
    id_cadastro integer NOT NULL,
    nome character varying(50) NOT NULL,
    telefone integer NOT NULL,
    senha character varying NOT NULL,
    data_registro timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE chat.cadastro;
       chat         heap    postgres    false    7            �            1259    16431    cadastro_id_cadastro_seq    SEQUENCE     �   CREATE SEQUENCE chat.cadastro_id_cadastro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE chat.cadastro_id_cadastro_seq;
       chat          postgres    false    7    203                       0    0    cadastro_id_cadastro_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE chat.cadastro_id_cadastro_seq OWNED BY chat.cadastro.id_cadastro;
          chat          postgres    false    204            �
           2604    16433    cadastro id_cadastro    DEFAULT     x   ALTER TABLE ONLY chat.cadastro ALTER COLUMN id_cadastro SET DEFAULT nextval('chat.cadastro_id_cadastro_seq'::regclass);
 A   ALTER TABLE chat.cadastro ALTER COLUMN id_cadastro DROP DEFAULT;
       chat          postgres    false    204    203                      0    16428    cadastro 
   TABLE DATA           S   COPY chat.cadastro (id_cadastro, nome, telefone, senha, data_registro) FROM stdin;
    chat          postgres    false    203   #                  0    0    cadastro_id_cadastro_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('chat.cadastro_id_cadastro_seq', 1, true);
          chat          postgres    false    204            �
           2606    16441    cadastro cadastro_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY chat.cadastro
    ADD CONSTRAINT cadastro_pkey PRIMARY KEY (id_cadastro);
 >   ALTER TABLE ONLY chat.cadastro DROP CONSTRAINT cadastro_pkey;
       chat            postgres    false    203               9   x�3�t��,N�M�442c##]S]#CK+K+C3=#KK#K]c�=... <}
�     