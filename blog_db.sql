PGDMP                          z           blog    14.2    14.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    25780    blog    DATABASE     `   CREATE DATABASE blog WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Czech_Czechia.1250';
    DROP DATABASE blog;
                postgres    false            �            1259    25807 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    25806    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    216            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    215            �            1259    25816    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    25815    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    218            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    217            �            1259    25800    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    25799    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    214            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    213            �            1259    25823 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    25832    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    25831    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    222            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    221            �            1259    25822    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    220            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    219            �            1259    25839    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    25838 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    224            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    223            �            1259    25960 	   blog_post    TABLE     .  CREATE TABLE public.blog_post (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    content text NOT NULL,
    perex text NOT NULL,
    image character varying(100) NOT NULL,
    author_id integer NOT NULL,
    category_id_id bigint,
    state_id_id bigint,
    date date NOT NULL
);
    DROP TABLE public.blog_post;
       public         heap    postgres    false            �            1259    25959    blog_post_id_seq    SEQUENCE     y   CREATE SEQUENCE public.blog_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.blog_post_id_seq;
       public          postgres    false    235            �           0    0    blog_post_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.blog_post_id_seq OWNED BY public.blog_post.id;
          public          postgres    false    234            �            1259    25969    blog_post_tags    TABLE     x   CREATE TABLE public.blog_post_tags (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    tag_id bigint NOT NULL
);
 "   DROP TABLE public.blog_post_tags;
       public         heap    postgres    false            �            1259    25968    blog_post_tags_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.blog_post_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.blog_post_tags_id_seq;
       public          postgres    false    237            �           0    0    blog_post_tags_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.blog_post_tags_id_seq OWNED BY public.blog_post_tags.id;
          public          postgres    false    236            �            1259    25937    blog_postcategory    TABLE     l   CREATE TABLE public.blog_postcategory (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);
 %   DROP TABLE public.blog_postcategory;
       public         heap    postgres    false            �            1259    25936    blog_postcategory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_postcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.blog_postcategory_id_seq;
       public          postgres    false    229            �           0    0    blog_postcategory_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.blog_postcategory_id_seq OWNED BY public.blog_postcategory.id;
          public          postgres    false    228            �            1259    25944    blog_poststate    TABLE     i   CREATE TABLE public.blog_poststate (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);
 "   DROP TABLE public.blog_poststate;
       public         heap    postgres    false            �            1259    25943    blog_poststate_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.blog_poststate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.blog_poststate_id_seq;
       public          postgres    false    231            �           0    0    blog_poststate_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.blog_poststate_id_seq OWNED BY public.blog_poststate.id;
          public          postgres    false    230            �            1259    25951    blog_tag    TABLE     c   CREATE TABLE public.blog_tag (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.blog_tag;
       public         heap    postgres    false            �            1259    25950    blog_tag_id_seq    SEQUENCE     x   CREATE SEQUENCE public.blog_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.blog_tag_id_seq;
       public          postgres    false    233            �           0    0    blog_tag_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.blog_tag_id_seq OWNED BY public.blog_tag.id;
          public          postgres    false    232            �            1259    25898    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    25897    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    226            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    225            �            1259    25791    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    25790    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    211            �            1259    25782    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    25781    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    210            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209            �            1259    25927    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �           2604    25810    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    25819    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    25803    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    25826    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    25835    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    25842    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    25963    blog_post id    DEFAULT     l   ALTER TABLE ONLY public.blog_post ALTER COLUMN id SET DEFAULT nextval('public.blog_post_id_seq'::regclass);
 ;   ALTER TABLE public.blog_post ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    25972    blog_post_tags id    DEFAULT     v   ALTER TABLE ONLY public.blog_post_tags ALTER COLUMN id SET DEFAULT nextval('public.blog_post_tags_id_seq'::regclass);
 @   ALTER TABLE public.blog_post_tags ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    25940    blog_postcategory id    DEFAULT     |   ALTER TABLE ONLY public.blog_postcategory ALTER COLUMN id SET DEFAULT nextval('public.blog_postcategory_id_seq'::regclass);
 C   ALTER TABLE public.blog_postcategory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    25947    blog_poststate id    DEFAULT     v   ALTER TABLE ONLY public.blog_poststate ALTER COLUMN id SET DEFAULT nextval('public.blog_poststate_id_seq'::regclass);
 @   ALTER TABLE public.blog_poststate ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    25954    blog_tag id    DEFAULT     j   ALTER TABLE ONLY public.blog_tag ALTER COLUMN id SET DEFAULT nextval('public.blog_tag_id_seq'::regclass);
 :   ALTER TABLE public.blog_tag ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    25901    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    25794    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    25785    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �          0    25807 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216   L�       �          0    25816    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218   i�       �          0    25800    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214   ��       �          0    25823 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    220   +�       �          0    25832    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222   N�       �          0    25839    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    224   k�       �          0    25960 	   blog_post 
   TABLE DATA           r   COPY public.blog_post (id, name, content, perex, image, author_id, category_id_id, state_id_id, date) FROM stdin;
    public          postgres    false    235   ��       �          0    25969    blog_post_tags 
   TABLE DATA           =   COPY public.blog_post_tags (id, post_id, tag_id) FROM stdin;
    public          postgres    false    237   ��       �          0    25937    blog_postcategory 
   TABLE DATA           5   COPY public.blog_postcategory (id, name) FROM stdin;
    public          postgres    false    229   ��       �          0    25944    blog_poststate 
   TABLE DATA           2   COPY public.blog_poststate (id, name) FROM stdin;
    public          postgres    false    231   /�       �          0    25951    blog_tag 
   TABLE DATA           ,   COPY public.blog_tag (id, name) FROM stdin;
    public          postgres    false    233   `�       �          0    25898    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   ��       �          0    25791    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   ��       �          0    25782    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   T�       �          0    25927    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    227   E�       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    215            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    217            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
          public          postgres    false    213            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    221            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          postgres    false    219            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 16, true);
          public          postgres    false    223            �           0    0    blog_post_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.blog_post_id_seq', 10, true);
          public          postgres    false    234            �           0    0    blog_post_tags_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.blog_post_tags_id_seq', 25, true);
          public          postgres    false    236            �           0    0    blog_postcategory_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.blog_postcategory_id_seq', 5, true);
          public          postgres    false    228            �           0    0    blog_poststate_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.blog_poststate_id_seq', 2, true);
          public          postgres    false    230            �           0    0    blog_tag_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.blog_tag_id_seq', 12, true);
          public          postgres    false    232            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 33, true);
          public          postgres    false    225            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
          public          postgres    false    211            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);
          public          postgres    false    209            �           2606    25925    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    216            �           2606    25855 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    218    218            �           2606    25821 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    218            �           2606    25812    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    216            �           2606    25846 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    214    214            �           2606    25805 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    214            �           2606    25837 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    222            �           2606    25870 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    222    222            �           2606    25828    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    220            �           2606    25844 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    224            �           2606    25884 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    224    224            �           2606    25920     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    220            �           2606    25967    blog_post blog_post_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_pkey;
       public            postgres    false    235            �           2606    25974 "   blog_post_tags blog_post_tags_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.blog_post_tags
    ADD CONSTRAINT blog_post_tags_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.blog_post_tags DROP CONSTRAINT blog_post_tags_pkey;
       public            postgres    false    237            �           2606    25995 :   blog_post_tags blog_post_tags_post_id_tag_id_4925ec37_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.blog_post_tags
    ADD CONSTRAINT blog_post_tags_post_id_tag_id_4925ec37_uniq UNIQUE (post_id, tag_id);
 d   ALTER TABLE ONLY public.blog_post_tags DROP CONSTRAINT blog_post_tags_post_id_tag_id_4925ec37_uniq;
       public            postgres    false    237    237            �           2606    25942 (   blog_postcategory blog_postcategory_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.blog_postcategory
    ADD CONSTRAINT blog_postcategory_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.blog_postcategory DROP CONSTRAINT blog_postcategory_pkey;
       public            postgres    false    229            �           2606    25949 "   blog_poststate blog_poststate_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.blog_poststate
    ADD CONSTRAINT blog_poststate_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.blog_poststate DROP CONSTRAINT blog_poststate_pkey;
       public            postgres    false    231            �           2606    25958    blog_tag blog_tag_name_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.blog_tag
    ADD CONSTRAINT blog_tag_name_key UNIQUE (name);
 D   ALTER TABLE ONLY public.blog_tag DROP CONSTRAINT blog_tag_name_key;
       public            postgres    false    233            �           2606    25956    blog_tag blog_tag_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.blog_tag
    ADD CONSTRAINT blog_tag_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.blog_tag DROP CONSTRAINT blog_tag_pkey;
       public            postgres    false    233            �           2606    25906 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    226            �           2606    25798 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    212    212            �           2606    25796 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    212            �           2606    25789 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            �           2606    25933 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    227            �           1259    25926    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    216            �           1259    25866 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    218            �           1259    25867 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    218            �           1259    25852 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    214            �           1259    25882 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    222            �           1259    25881 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    222            �           1259    25896 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    224            �           1259    25895 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    224            �           1259    25921     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    220            �           1259    25991    blog_post_author_id_dd7a8485    INDEX     W   CREATE INDEX blog_post_author_id_dd7a8485 ON public.blog_post USING btree (author_id);
 0   DROP INDEX public.blog_post_author_id_dd7a8485;
       public            postgres    false    235            �           1259    25992 !   blog_post_category_id_id_c890aa89    INDEX     a   CREATE INDEX blog_post_category_id_id_c890aa89 ON public.blog_post USING btree (category_id_id);
 5   DROP INDEX public.blog_post_category_id_id_c890aa89;
       public            postgres    false    235            �           1259    25993    blog_post_state_id_id_2d6937b5    INDEX     [   CREATE INDEX blog_post_state_id_id_2d6937b5 ON public.blog_post USING btree (state_id_id);
 2   DROP INDEX public.blog_post_state_id_id_2d6937b5;
       public            postgres    false    235            �           1259    26006    blog_post_tags_post_id_a1c71c8a    INDEX     ]   CREATE INDEX blog_post_tags_post_id_a1c71c8a ON public.blog_post_tags USING btree (post_id);
 3   DROP INDEX public.blog_post_tags_post_id_a1c71c8a;
       public            postgres    false    237            �           1259    26007    blog_post_tags_tag_id_0875c551    INDEX     [   CREATE INDEX blog_post_tags_tag_id_0875c551 ON public.blog_post_tags USING btree (tag_id);
 2   DROP INDEX public.blog_post_tags_tag_id_0875c551;
       public            postgres    false    237            �           1259    25975    blog_tag_name_c5718cc8_like    INDEX     d   CREATE INDEX blog_tag_name_c5718cc8_like ON public.blog_tag USING btree (name varchar_pattern_ops);
 /   DROP INDEX public.blog_tag_name_c5718cc8_like;
       public            postgres    false    233            �           1259    25917 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    226            �           1259    25918 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    226            �           1259    25935 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    227            �           1259    25934 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    227            �           2606    25861 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3258    214    218            �           2606    25856 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    218    216    3263            �           2606    25847 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3253    212    214            �           2606    25876 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3263    216    222            �           2606    25871 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    220    3271    222            �           2606    25890 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    224    3258    214            �           2606    25885 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    3271    224    220            �           2606    25976 6   blog_post blog_post_author_id_dd7a8485_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_author_id_dd7a8485_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_author_id_dd7a8485_fk_auth_user_id;
       public          postgres    false    235    3271    220            �           2606    25981 C   blog_post blog_post_category_id_id_c890aa89_fk_blog_postcategory_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_category_id_id_c890aa89_fk_blog_postcategory_id FOREIGN KEY (category_id_id) REFERENCES public.blog_postcategory(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_category_id_id_c890aa89_fk_blog_postcategory_id;
       public          postgres    false    3296    235    229            �           2606    25986 =   blog_post blog_post_state_id_id_2d6937b5_fk_blog_poststate_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_state_id_id_2d6937b5_fk_blog_poststate_id FOREIGN KEY (state_id_id) REFERENCES public.blog_poststate(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_state_id_id_2d6937b5_fk_blog_poststate_id;
       public          postgres    false    3298    235    231            �           2606    25996 >   blog_post_tags blog_post_tags_post_id_a1c71c8a_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post_tags
    ADD CONSTRAINT blog_post_tags_post_id_a1c71c8a_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.blog_post_tags DROP CONSTRAINT blog_post_tags_post_id_a1c71c8a_fk_blog_post_id;
       public          postgres    false    3307    235    237                        2606    26001 <   blog_post_tags blog_post_tags_tag_id_0875c551_fk_blog_tag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post_tags
    ADD CONSTRAINT blog_post_tags_tag_id_0875c551_fk_blog_tag_id FOREIGN KEY (tag_id) REFERENCES public.blog_tag(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.blog_post_tags DROP CONSTRAINT blog_post_tags_tag_id_0875c551_fk_blog_tag_id;
       public          postgres    false    3303    233    237            �           2606    25907 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    212    226    3253            �           2606    25912 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3271    220    226            �      x������ � �      �      x������ � �      �   �  x�e��n�0F���	�B���kT�P�JT�n��/8Nlӻ�>���'J�9��x��e*��ח)M��;^�B��=ΓST,1h�����%ko�Oa{��&�=��s۶�2�
ո ��S �	��~�%A����Htܐ-�uy>�EA<Cy�r�O^���)!�CH�*	@j�l���jj؏P�r>ui|9� ��gSG�f�'_�ه�V��Ù��W���&!�������kh�Ul��7�j��t�J��̘J;c��1�u��*#"���͏ޙ.&=��N�Sҙ�I�lJ:�2钌Ig�������N`U�c�����$�m���Ĺزz/��1-�O1�դ��m;��ێ��&~�6%��,�;eo�� Y�폶{[X��v;!��>i���-�� �����      �     x�m�AO�@�3�
ܚ����.$&"kSMS
6�4&e)m�����R=�L�.��R��_OY���&�!z+���9#g�EO񪝋ɝ~v��K�������s������VƼ� ���O���qL�1A�1�� �A%UY�ʐf��-�����X|��.av���'�p��S�M:}��o�":F��N�>U0���{?�H�m3����P��i`;�Sn� �^q��Q��`��!���ry�-�]n���2�W25�2�s��CU�/��]�      �      x������ � �      �   I   x�̹�0 ��:&����?G,W����J�:=F�̰Xa���rtG�e�r�BYy��:����~��      �      x��[˒Ǖ]7�"#f�MC�m�\��0G�����H��$��M��f>@��^0��M��kι�fV5���gl"�n4P�y��s�=�=����0���0^���C��a�Wvu׻!��7a,ܦk���8�Η��Mlw.�q\�o���2CpMW�a����9L�;L�4Ώ.�c���fX���{zWF�8�o��6n"�8���n�atb؆�	��ƵS�Y�W]���j���X�!.�+\۵w�k9����X�Ab����\b� ��[�#�66n@>2�qmô�X±���mj��Ä)�P�Ӏp�����#�/=F*�Է���͕�3��jD'���k����aB��%��'Mӕ�맱�{V��1�S`fw�?ƒSp��{�����h)��ޛz��ƭC�����m��9�X��zc�P���ߒ�����-��)}3����0s����n���M�����
�^S��uH����k7#�6�����.�#���" 9��#�3�e($�YN�#[yS�ӄi��a׆M&���4s|<Ai����]�;����a@�Eo�a���2�W�Cƈ����j����nr���}����>fh7|��[h��� h�e�2
 fF���z~`v��L̀��{�Q�Gŉ�09�?E���Fti�eQ����
�.6ʛ�	�Gy�HTW�^>
���S}�F?I�d���M��d�|��+a�
�d��)����I7S?�I��d�ues�Uil �f�6`�U|��u\�(���L�ZXeF��k�ȬZ6-�YV����S�ע����B��)�d,�R8�^�����RN���&��\x�y�\a��z9�P�A��!$���r��Lӛ���/�0SR��Skd(9�rU��'�,��Q��Uc�^�[(�0Ux�L�V�l�F՟\��T�{.dL"M�?��bI���.�U��kK���^�M�#ˁ���7��S����Tژ���*n�עEv�>k���!���47�T�vli-��	�IӓC �h�����Ru�F��?�����(X��[4�Ő�X�����W��d&i�߈�l{�H�X�ي�xs7�(T��-s�s�s\�`T�T�ҭb��HI����h�/�d�4y@����F�dƈ�7�C�0o��{�����Mkе���1��#d�"�}�����XF�[	��8"�0I�)�"f�V�h�ϭG|�Qt8�K{�"��I�3QDs��K�p�����;+��H�-��`�F"��l/�/� 鿊�yљ@fG3�U�!t*�=�W����\(�Sù�U����VʌE��?�~�Y�#"=a��u��������._\�ߣ�ˇ�~���ɃK[�Kư|��W����xlo?���_��v���c��~��p�-�9����8�o�B�۷�����nNC=��G�������o;w������Kx�vi�)t��K~�����~r�?_�j$x��P�}yre+�t�޾o��7�v�i8I� �|ކ�qS�����ڗ��䎧����k��m���Z}��ݱ�d9����BH���`����~��!7X�/?���h��~w?c���0N����wm� 1 �������:`��旟�:@x{�� &4@o��D�Ouw/�Gw�>�a@jn��u!��_��>��Ą���=G:}�X���]�=x����7��ۈw������aDI��ƽx���б�۽����_���}��Xe�έWo��W������_./����%����P�Ϡ��	�nG��׎u�H!K|]K[������]Ǳ� OU�� �j4b�꺒&��Ch�)���<�؂�#�����+x���*���8���N�p�+p鶟⸝j��6��]�7U8}F�]E�T^��m��E��� �a�a��޶�{��g� �C���P�q5��Jp�`쁀p��b�`t�&���Z�kCM�E|W�o<+��N*f!ź�:���n�R��?���9/�q�#b�2�]D(��3��b�T>u"��Jr׀_��퐮��r^uG�Ysq��غM�e�2wn�mʦn �x R�.�߶��儏���Uh��%5)Z˥~�ys7�d5���h�ե�2E)�붸p��~�qK�LŎ{�;�!ԭ�nb��k��5���޶����H ��#U�LP�Z)4R�����u��]��옂��N�u;�����}l���^/#Y��-�c�U�|��R�|��"�M�v]H��Nhk�uo������ u�	Y�lxq8�S�q,4l�4�4 ����
V&M.`7a������eJh�E��%BBˀ�<�4�����"9�to�6���}T�
��*�dƷ"r�7:��P��5ƯQ+R�[(��$Q JŽXs��:�H�9[#i*��'D�I�+47)񨔫��u;l��̲�9hc�늓��__��Rs!ȶ�F.XBȵ��aVK�L�;��"-D����0L��s���n�c���͋6
Ⱥ@k���&�@��d���:����Ns0�2al���d��	ֆ�T~j��� Q̼~S�+�Ne�����5\/��bA[Q�����K���!A��;�5���)�L����}��(�0�K�>���L��	��%��J�.#�}��e�M ����*U�cX���S�I����c5� _ס�6il���^I�sr��5-���- YY�T_�H��嘋�-��	e� }�bE�z��&�2�$�f�b+�4�ÕF#��*:�6���a���+E+��_S�K����'���l���e����Kd��|)�i��>���G�~w����t<hb�z_�Cc�_TJc�����ND���HU3v�Pr ����,d�>K�Ϯ�)MÛ[�6���%�J_a%{�$�,ZK̥���J�sE�V��|�%e���@�)��m�.@���k�N(�:1%�fF��8 $�yr8���(
�Vg�Ҍ�:f��׆4��T����Z@B��*4�nTLJ�Ń�|�S%���(��ڈ��"�ʔZ�]���|��"+� �aF����W�Qt/�%C\���#lΖ��-.`۳��z���)�p��Kh�EN�@�}|�Нvi��:|�۲�z�I��M��ҨlG�)�̊�y����Ŷ#o�����E���φy�v�-�k��+����m����E�+�&�d����i?R�Q]��M���L�O#M�:-G�U 'g��O���8s<y�)᫜�+�Y��4�֋���%�9}z���:�-"z��M3�+u�0�D��T�b��h����DnJ9���t�V�}�d�2h^D2O@��~��A���$�d
KYU�A墪�T��R�"�<+hp���B=�R�)�8#J���F3���bް�����m|�Y03�Y��˞�P��ݯ���A�]���-�Y�����1�@��G)�g�!�޵���͕n㲽+�'�<�\i	0���J���)(�,��1nF4|]gJc�4�9�&��6�����K�4���d�2nZG���h�F�;@�1Q�C��Ȕ,}��i�I�$5�M}Wg�����5�����/��
O�#�=d���.Hh��P�׼��m�n���)z2�L0u~ *`���+�Y��������d��dK����ѽ����X�F�<clm�'�O�\�m���-�����c�ˋ_ݷӟ_|yC���}����ZK�����w�+K�Kf���+�X;Y��69H��XH��{��	�r��N�'�d����K]/�����(6y9F�ڧ����^C4_87-�&m�3A`O�:"��@,(�\�8�gi_W�,��ýic�2�5*A�e�͉��T�3y���JN^Z.^�)U&�U>ISLs�k=Pz�]�lC)���Dxa�=wP5����مL�r@���!L�NI�iI���]��*�����������7�-�)�sjѲ|蹜��Am������EJ5U!���Y���=�"�P�4��\Te^�ښ,��1�|�& ��������Q�Ǟ�0$1p�S� �  �bO|j��*��3?�q�KL��U1��F.��UsY�Y>���u-��薋n���.�?a\:�8ר
��P�n'�_af-�WC��(�τ�(��M��S�g��G&��d��v4o	��7��Y��D�	�� Z�W��3�o��Ex�<����єnf��]��I�F=�~���;F}� �SB��b$�r�<�Y.͜��?�㽗��y�C�O�T��I�'�n2A*kN��?��Sy[�)_������U0�.L��IT������؞����O��@O���~K��Z
};�R�/��uF�w,ͲqK�v�<\�l@dG��G��<�I��R����y�����a+{PS�yOT޿�e� ���{� ����1�Ũ�0�8M���O]I%_��Y�R��,�G�>��0(P�D�x�m�I^}���@4_�O�X�7mv��Pz��cP~�X�U2��X�
#;�ܶ+"l�gQ����=��Cھ�$��x��B�g9�UK�HXs:$�T	-A�C��l�=1�� R�cu�h�v�2_�W��]4L*��?:�~r�bj�����v�|
}>�>�B�O�ϧ��S��)��������=�=�����U7v�\^��׿y�����_��?�:�G��񣋧m'�b�g��gz�-��-��-��-��#�_Y��/=����������i�̓�W<�	z�      �   N   x����0��XL`J��K��#�Zv8�dS�ɖ�r�"yB��;6�}������4�2����3<��#�� f      �   .   x�3�IM�����O��2�(�O/J����K�2�t�O1b���� �k      �   !   x�3�(M��,�HM�2�t)JL+����� b
�      �   =   x�3�t�2�����2��J,K�2��,����24��,HN.�,(�24KCy1z\\\ ���      �     x����n�P���SXa*=:3s�ޡv�]-+`��nbT�Q�"�������%�&�"�w�+(O�;E��$Dd���ȞH 8����/�8I�d������Z%��N5Z^_}x?#�	1	�6b
��?���[A�Q���ޔŌ\��Z
�U�\g''3Z3���+�Fk�we}��=m�r�$	C�+j䶵}��e�z��e�4�(ӕ�*]m��\�O <#��AXfX�*w�+׻8ϳb=� 9�B[guW��29"���"ihP�w6.�o�j�&� FHH��q�w6��b�Nf����""a�����o��6q�� ˛,�M*��e�1���?�Qk���<����UVuX^OWu�^L�ƩeҰK54�6J�i��[<lS�z��3�
��8�AǢd7�!�P�iұl]���g�������"��2@�.g�o�x���O�N2�>B��!)������Q��y9��j�zw3p@��,��44qR�њ�&��h}��'��ni�[�&s|Y��0K����p;P�(�U�����z>Vu@��U��BZ��JҼ���F��j���P���wsVl��,�ds@vM]9��o��W��*݅�t�gU��E��{����f���H� 0����~��o ��D�$�fN�{��I�Tww>�ER�a�������<�v����O[�g8G 9$�&�L_(�ٶ
�2\�]��c�� z�cOǲ�{�N�z�2l~��X�3��o��wy~4qDcO���tS��zU���������W�X,~bTG�      �   v   x�M�K�0C���T��.��H%e&nߨQ;�Y�ݓ[��#���Wr�VJ���$�ֈ�R������lO�g�')���h�#�DM�cl������y�G��x_ |�9�      �   �  x����n� ���StU�?˕���d�U����Tu�l�,|>Μ��я���4ٹBa�F�8�W� ^�|��I�H�iJ0��!8@e��㱂DO
R�vp�)�J
zU��}}��v�_V��6m��PTe�� WD�is\��{o:}�����CQ�%$��\��7t�ѣ�>	�E!Jx�M�ؠ'7��Q���|�ގ]�k��D��DΤu����B���
��RҒ��i��l�F��n��������~�)��L���c���%��N�݁�q�Lq6�ezךŇ9wކ���<��^���E
N�f�(dA���DI�I�)�$�n������N�ag/��)Fd����f��a�1�,c���݅'�bHq��d5��_	�ӭ�z�v_"&�j,$��$@E�.q�9�h�r�}��Ճ�n5�C�Y-A�lpa�M�-�^�j�5�� L������̩�c      �   �  x���َ�H����O��L��(. � f�*{I�&O�I:����.�������3
�"�٘�5���$��:#]�_�d79�zm��l�Ig�]�Wq��wSZ���x���nե�/V(G�v����u}v�!�C�J�1]��z���n�[b�����U���"���͎Zm�|uڝmۭ�`:^�EK45���u9�:V�rN�T��,AlŇ�o��9'V��uShZJ�w�-����03���/�4D
ҟ��X$a�r ��_����Te�V#�l_����PB�	!ɟHdkr$)K~m�֕�R�k��ᚸ4��o���y���]E�	?D��-��y�����	���I���N�����H$̿D��1��$~��*}�3�ز��t�F����/�����@\Cbg�|TW��f��Ny� �s��U��Ռ��/�디,����I��l��ׅ۲f��zW5�U�rힼ�<)g����v���q�Z��e��t��"jZY/�d�lN �-9�ϰ�.������{��������P���Eϊ��XQF�X� Ѡ�>Ka�jh�t\T��D��[H@��ϔ����w�Z'�]�d��~��W
���C�}�PB���,��/���-���#��!.�fL,��y�#�Vz-݇�س��)G6��|�W{ۛ^�	��0���y�)����D�İ��E���y������Q8=�4��qʻ8@�_��EK��(օ��כ����V�g�]���3#��9�u����	�[�1�N��Omzs&�����Nk5;_'�	�tLT�/�THx]{�����Ɲ򊖆�ē���x��靲]�s�n��1��E��%"�[v�_L�+�㶗��>8�����<�v���^Y��?B������HX��c�/�����0�     