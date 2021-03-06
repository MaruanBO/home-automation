PGDMP         ,                x           domotica "   10.13 (Ubuntu 10.13-1.pgdg18.04+1)     12.3 (Ubuntu 12.3-1.pgdg18.04+1) F    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24632    domotica    DATABASE     z   CREATE DATABASE domotica WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_ES.UTF-8' LC_CTYPE = 'es_ES.UTF-8';
    DROP DATABASE domotica;
                domotica    false            �            1259    33382    accesibilidad    TABLE     �   CREATE TABLE public.accesibilidad (
    id integer NOT NULL,
    reconocimiento_voz boolean,
    telefono_visual boolean,
    interfaz_inal boolean,
    equipo_iris boolean,
    view_count bigint,
    num_contrato bigint
);
 !   DROP TABLE public.accesibilidad;
       public            domotica    false            �            1259    33385 "   accesibilidad_id_accesibilidad_seq    SEQUENCE     �   CREATE SEQUENCE public.accesibilidad_id_accesibilidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.accesibilidad_id_accesibilidad_seq;
       public          domotica    false    206            �           0    0 "   accesibilidad_id_accesibilidad_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.accesibilidad_id_accesibilidad_seq OWNED BY public.accesibilidad.id;
          public          domotica    false    207            �            1259    33387    energia    TABLE     l  CREATE TABLE public.energia (
    id integer NOT NULL,
    num_contrato integer NOT NULL,
    control_del_clima boolean,
    agua_caliente boolean,
    riego boolean,
    electrodomesticos boolean,
    sensor_de_movimiento boolean,
    control_de_luz boolean,
    persianas boolean,
    gestion_de_tarifas boolean,
    view_count bigint,
    consumo_total text
);
    DROP TABLE public.energia;
       public            domotica    false            �            1259    33393    energia_id_energia_seq    SEQUENCE     �   CREATE SEQUENCE public.energia_id_energia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.energia_id_energia_seq;
       public          domotica    false    208            �           0    0    energia_id_energia_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.energia_id_energia_seq OWNED BY public.energia.id;
          public          domotica    false    209            �            1259    24809    failed_jobs    TABLE     �   CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public            postgres    false            �            1259    24807    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    201                        0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    200            �            1259    33395    hogar    TABLE     �   CREATE TABLE public.hogar (
    num_contrato integer NOT NULL,
    direccion text,
    telefono integer,
    poblacion text,
    localidad text,
    email text,
    dni text,
    titular text
);
    DROP TABLE public.hogar;
       public            domotica    false            �            1259    33401 	   incidente    TABLE        CREATE TABLE public.incidente (
    id_incidente integer NOT NULL,
    id_seguridad integer NOT NULL,
    motivo text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    resolucion text,
    componente_afec text
);
    DROP TABLE public.incidente;
       public            domotica    false            �            1259    24981    jobs    TABLE     �   CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);
    DROP TABLE public.jobs;
       public            postgres    false            �            1259    24979    jobs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.jobs_id_seq;
       public          postgres    false    205                       0    0    jobs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;
          public          postgres    false    204            �            1259    33407    luces    TABLE     �   CREATE TABLE public.luces (
    salon boolean,
    "baño" boolean,
    habitacion boolean,
    cocina boolean,
    id_luces bigint NOT NULL
);
    DROP TABLE public.luces;
       public            domotica    false            �            1259    24788 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public            postgres    false            �            1259    24786    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    197                       0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    196            �            1259    24970    notifications    TABLE     `  CREATE TABLE public.notifications (
    id uuid NOT NULL,
    type character varying(255) NOT NULL,
    notifiable_type character varying(255) NOT NULL,
    notifiable_id bigint NOT NULL,
    data text NOT NULL,
    read_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.notifications;
       public            postgres    false            �            1259    24963    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public            postgres    false            �            1259    33410 	   seguridad    TABLE     R  CREATE TABLE public.seguridad (
    id integer NOT NULL,
    simulacion_prese boolean,
    fugas_gas boolean,
    vigilancia_auto boolean,
    control_rem boolean,
    incendios boolean,
    fallos_elec boolean,
    camara boolean,
    alarma boolean,
    sensores boolean,
    view_count bigint,
    sensor_pin character varying(260)
);
    DROP TABLE public.seguridad;
       public            domotica    false            �            1259    24796    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    last_login_ip text
);
    DROP TABLE public.users;
       public            postgres    false            �            1259    24794    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    199                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    198            M           2604    33413    accesibilidad id    DEFAULT     �   ALTER TABLE ONLY public.accesibilidad ALTER COLUMN id SET DEFAULT nextval('public.accesibilidad_id_accesibilidad_seq'::regclass);
 ?   ALTER TABLE public.accesibilidad ALTER COLUMN id DROP DEFAULT;
       public          domotica    false    207    206            N           2604    33414 
   energia id    DEFAULT     p   ALTER TABLE ONLY public.energia ALTER COLUMN id SET DEFAULT nextval('public.energia_id_energia_seq'::regclass);
 9   ALTER TABLE public.energia ALTER COLUMN id DROP DEFAULT;
       public          domotica    false    209    208            K           2604    33415    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            L           2604    33416    jobs id    DEFAULT     b   ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);
 6   ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            H           2604    33417    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    197    196    197            I           2604    33418    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    198    199    199            �          0    33382    accesibilidad 
   TABLE DATA           �   COPY public.accesibilidad (id, reconocimiento_voz, telefono_visual, interfaz_inal, equipo_iris, view_count, num_contrato) FROM stdin;
    public          domotica    false    206   QS       �          0    33387    energia 
   TABLE DATA           �   COPY public.energia (id, num_contrato, control_del_clima, agua_caliente, riego, electrodomesticos, sensor_de_movimiento, control_de_luz, persianas, gestion_de_tarifas, view_count, consumo_total) FROM stdin;
    public          domotica    false    208   wS       �          0    24809    failed_jobs 
   TABLE DATA           [   COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    201   �S       �          0    33395    hogar 
   TABLE DATA           m   COPY public.hogar (num_contrato, direccion, telefono, poblacion, localidad, email, dni, titular) FROM stdin;
    public          domotica    false    210   �S       �          0    33401 	   incidente 
   TABLE DATA           |   COPY public.incidente (id_incidente, id_seguridad, motivo, created_at, updated_at, resolucion, componente_afec) FROM stdin;
    public          domotica    false    211   CT       �          0    24981    jobs 
   TABLE DATA           c   COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
    public          postgres    false    205   U       �          0    33407    luces 
   TABLE DATA           M   COPY public.luces (salon, "baño", habitacion, cocina, id_luces) FROM stdin;
    public          domotica    false    212   %U       �          0    24788 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    197   HU       �          0    24970    notifications 
   TABLE DATA           x   COPY public.notifications (id, type, notifiable_type, notifiable_id, data, read_at, created_at, updated_at) FROM stdin;
    public          postgres    false    203   �V       �          0    24963    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    202   X       �          0    33410 	   seguridad 
   TABLE DATA           �   COPY public.seguridad (id, simulacion_prese, fugas_gas, vigilancia_auto, control_rem, incendios, fallos_elec, camara, alarma, sensores, view_count, sensor_pin) FROM stdin;
    public          domotica    false    213   �X       �          0    24796    users 
   TABLE DATA           �   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, last_login_ip) FROM stdin;
    public          postgres    false    199   Y                  0    0 "   accesibilidad_id_accesibilidad_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.accesibilidad_id_accesibilidad_seq', 1, false);
          public          domotica    false    207                       0    0    energia_id_energia_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.energia_id_energia_seq', 1, false);
          public          domotica    false    209                       0    0    failed_jobs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 228, true);
          public          postgres    false    200                       0    0    jobs_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.jobs_id_seq', 5180, true);
          public          postgres    false    204                       0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 24, true);
          public          postgres    false    196            	           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 14, true);
          public          postgres    false    198            _           2606    33420     accesibilidad accesibilidad_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.accesibilidad
    ADD CONSTRAINT accesibilidad_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.accesibilidad DROP CONSTRAINT accesibilidad_pkey;
       public            domotica    false    206            a           2606    33422    energia energia_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.energia
    ADD CONSTRAINT energia_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.energia DROP CONSTRAINT energia_pkey;
       public            domotica    false    208            V           2606    24818    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    201            c           2606    33424    hogar hogar_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.hogar
    ADD CONSTRAINT hogar_pkey PRIMARY KEY (num_contrato);
 :   ALTER TABLE ONLY public.hogar DROP CONSTRAINT hogar_pkey;
       public            domotica    false    210            e           2606    33426    incidente incidente_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.incidente
    ADD CONSTRAINT incidente_pkey PRIMARY KEY (id_incidente);
 B   ALTER TABLE ONLY public.incidente DROP CONSTRAINT incidente_pkey;
       public            domotica    false    211            \           2606    24989    jobs jobs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
       public            postgres    false    205            g           2606    33428    luces luces_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.luces
    ADD CONSTRAINT luces_pkey PRIMARY KEY (id_luces);
 :   ALTER TABLE ONLY public.luces DROP CONSTRAINT luces_pkey;
       public            domotica    false    212            P           2606    24793    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    197            Z           2606    24978     notifications notifications_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.notifications DROP CONSTRAINT notifications_pkey;
       public            postgres    false    203            i           2606    33430    seguridad seguridad_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.seguridad
    ADD CONSTRAINT seguridad_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.seguridad DROP CONSTRAINT seguridad_pkey;
       public            domotica    false    213            R           2606    24806    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    199            T           2606    24804    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    199            ]           1259    24990    jobs_queue_index    INDEX     B   CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);
 $   DROP INDEX public.jobs_queue_index;
       public            postgres    false    205            X           1259    24976 1   notifications_notifiable_type_notifiable_id_index    INDEX     �   CREATE INDEX notifications_notifiable_type_notifiable_id_index ON public.notifications USING btree (notifiable_type, notifiable_id);
 E   DROP INDEX public.notifications_notifiable_type_notifiable_id_index;
       public            postgres    false    203    203            W           1259    24969    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    202            j           2606    33431    accesibilidad acces_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.accesibilidad
    ADD CONSTRAINT acces_fk FOREIGN KEY (num_contrato) REFERENCES public.hogar(num_contrato) NOT VALID;
 @   ALTER TABLE ONLY public.accesibilidad DROP CONSTRAINT acces_fk;
       public          domotica    false    206    2915    210            k           2606    33436    energia fk_hogar    FK CONSTRAINT     �   ALTER TABLE ONLY public.energia
    ADD CONSTRAINT fk_hogar FOREIGN KEY (num_contrato) REFERENCES public.hogar(num_contrato) ON UPDATE CASCADE ON DELETE CASCADE;
 :   ALTER TABLE ONLY public.energia DROP CONSTRAINT fk_hogar;
       public          domotica    false    2915    208    210            l           2606    33441    incidente fk_seguridad    FK CONSTRAINT     �   ALTER TABLE ONLY public.incidente
    ADD CONSTRAINT fk_seguridad FOREIGN KEY (id_seguridad) REFERENCES public.seguridad(id) ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.incidente DROP CONSTRAINT fk_seguridad;
       public          domotica    false    213    2921    211            �      x�3�,�B�?�=... +��      �       x�3�4�,A��F��z&
��\1z\\\ ���      �      x������ � �      �   o   x�3�HL)JU�M��:�9OG��LG�Hׅ��������ӽ(1/1%�ӱ$�(-�37��41/�45/���!=713G/9?�������������B�)�4;�(���+F��� Ά �      �   �   x���1�0�99�/�*�T�3+�i�T��I�8B/Fځ��˃-�?��:�"s��;%&�B0q.$���@	1)g�iLט=؝�����k��1~�:�$�w��Yb� 	��	G�q�����2��O��_��U΀q�V�/Յ�^Q�-��8P*��zM�E_[��CU�      �      x������ � �      �      x�K�LC#�=... �      �   X  x�}�ю� E����� ���M&�S��J�f�~qW�1>�C`�E�\T(8
@����#������C0���3N�xն��]��2_Wl���|���YV%8r���*���j������(%f!ۋdu΁� ���x���H3�٩����v��\�u���n�R��s&x�SI�(��Xe^C�6���YȲqK2��A���Ue��:�W�M��h��ě ����}�5�ū�d����hwX���X���I����>�c���!�AzeU�eF/j�3�i<!�lC�&���ˡ+Y/�麂\n�s7c��ϼ��Z��RVb��6�c&k����m�o      �   \  x�픽j�0�g�)��(HW�$kJ(]3�K1��Cl����ӄ��!�.�h��ù�o��:�z)4�5A�4�9���nW�v����P�M_�5V��ڗ뵏]�er $�@�@,�s�`�%O]�U��U�oɜ�)i���ӵ�m}�7�Wİ���f��Ή�"g� FYFA� X�;��1c��Y��w���ڪ��R��n���ǦͲ����*�b�\CgS��B\53c����*/��C�FЈ�d�S@�q�i��2��S��%׊J�J�%%���c���n��z?h3�`��J�2'�Ve��p�: u^r�E�spB�� t�H��K���      �   y   x��M,*M�K*M��75uH�M���K���T1�T14P)J��,0�w����2w��N�H�
O�+twL��.���+v�4H���Ϗ�w��4202�50�52T02�25�21�ʥ�E1z\\\ ^?{      �   P   x�3�,���*F�*�*���9�A��Y�U^~a�y���>��9y����>FanEUf��e��^����ũ\1z\\\ +�
      �   /  x�]�͎�0E��)X��)ł��:�2V�?�q�Q��᧢<���3��]���w�	fA!�3���,A� ���1�f)@�.�]���EQ�":���ag}�1����[���5�Β��b�6K�:�M��ure���"�L=������5?w�wQK;ocs�=�o��6}?G�FT�ę��D{֓-#�(6��,���ދ��b���2UTV�{=����6,�,����Gxmgn���@`�Y��?U�ۣ��M���y�ZYj�m��X!�����j�)��Ϯn�     