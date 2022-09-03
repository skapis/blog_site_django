PGDMP                          z           blog    14.2    14.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    220   8�       �          0    25832    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222   Z�       �          0    25839    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    224   w�       �          0    25960 	   blog_post 
   TABLE DATA           r   COPY public.blog_post (id, name, content, perex, image, author_id, category_id_id, state_id_id, date) FROM stdin;
    public          postgres    false    235   ��       �          0    25969    blog_post_tags 
   TABLE DATA           =   COPY public.blog_post_tags (id, post_id, tag_id) FROM stdin;
    public          postgres    false    237   ��       �          0    25937    blog_postcategory 
   TABLE DATA           5   COPY public.blog_postcategory (id, name) FROM stdin;
    public          postgres    false    229   �       �          0    25944    blog_poststate 
   TABLE DATA           2   COPY public.blog_poststate (id, name) FROM stdin;
    public          postgres    false    231   J�       �          0    25951    blog_tag 
   TABLE DATA           ,   COPY public.blog_tag (id, name) FROM stdin;
    public          postgres    false    233   {�       �          0    25898    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   ��       �          0    25791    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   $�       �          0    25782    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   ��       �          0    25927    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    227   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
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
       public          postgres    false    3271    220    226            �      x^����� � �      �      x^����� � �      �   �  x^]�[n�0E��U���<���mT�Di
#ȴ��7����ć���ej��/U?��}�*����j�_q�Kh��e�-[G����%`��������N��ᷟy��uq������N��gXT�U�����i[�ע >C������SFX���� Z�RO7����:H�PS�|s<��	������	�x�l��4�<��ú�X�*�ޝЀ��Ԕ&�`2<��^��4�PШy�Qװ�x��=��¼���]�,�i�`�W0�u�Ъ ����=���5=n��t�k����tau�5IMN���]Q/>AkZN36±i8�YǪ�4�sq$�N�c����t+��-hMՏ�
H�0�?��b�7��p�KXB�ב`��Bk��<V�К/ �
:��</�� �����      �     x^m�Ko�@����+\�3Й3�$M��4Z"��(iҌ�� ��˯/�n��l��ɛ��b-71|�� ��p{j�Ӽq_���I��
��e1�_���g����j{�2J��b����H)�n0zD�4li:@ljٌ��0z@�P��B�k���m�R�"�O�L�;�s���O����j��0MN�6������t��.�5>/�bѸNo��}ov���`ⓗO��&u�������!}���:+G�_;�6X:���f��&��-����0��uﺢ(���_�      �      x^����� � �      �   I   x^̹�0 ��:&����?G,W����J�:=F�̰Xa���rtG�e�r�BYy��:����~��      �      x^�[M�Ǒ=EE�A�!��e�H�����J��P�F] ����C�/��� �N<���_`]F����Y���C!��4��2_�|��|z�2��^u�x�Y��]H�aڅ�k�>i�.��aյC\�q��P�i��Uj7!6i\���a�:C���Øb�n?a?��p�1�v�}����"|�ob�T�Bկ����J���*����+)�a����b;b�jک]-��]�L����V�ICB|sڮź+>���O�c�T0uu��#�Cj��i����f�:N��#�f��K���~�ncl�i�9��㟻
>����Ju���
���"��ZN����\|�����n���%�ɟ�v]݅~{��"�6�n��즯	����"��Mq�ur�)�����u���x{��N��=�7��MLk�_�Z|����_ҡ� ��}�	��Q�M�L���,�]M�)�����B\1�~۵+����\�C~��&�#,�" �A�$8���c$�N�+{xs��E�a��UI�05ch�xBi赩
��`׫��`*���G�$�eb�2��8&�s�NO31B��4 ����>灀��K;=��"~�X��6�j -`aX!L@!C��g,��pǾB~`�j��vVT����'Մ͑~�p��=�G�CX���=��z� �M\ŶBx�HD?���k���y	���Oc5F9����3���uʷ�]�/Ɉ S�'?7]M=�:�Q���������4�@h�U�6�ʍ|�eZ"Qt#NCyId(0#F����:9da-�[�ߜFN�_?��j)>%$�oHV�=�`>E�<K=8�ʏ�*�0��҉��8�?+�H3fZN
�p��z9���Q%�u�!�?�v��	��y@�ѽ9����Tb׺
�ţN�� ��g����1y��W���ψ"�9ߜ��"�l�!�?%�u�7��ٛq�5�4�f��Q	`��:����� �]��w^n��I��`$��_�V�j�Y�G���Vw|͙U�6�q��\�_!��
�F�vz�x��+�J�ƴFF`��L�  Zdgs��T�-5���89T}���bM���LTzda��S�<�9��� ���{�Dĸ$�Y�h�����v�9�s�c���������d��4�J�Wv�Z��	��`�P�GV��iL��*u �7�R%��AWx�I��%jX!أb�3�c܏��-EDU�J��e�hz+���k�1����aE{.���/�G���r�5���������('��Z�8�~�(�Ȋ��ra+�,�G
�")%�%�D9�O�}�}Y�����EQ���F�`����\�,I p�l�+-�s�9���S�"X)eɕ�W����>�w�{���˦�<����b�n.�^\�ד���O~���٣+?��iN�^�P��	�4�C{�.���o���ß(/oX������ �Ẻ�~���(4\�i[�����ow�i�Oӎ�e�����۶��6��!��x�7Vi��,`/�?���ގ�Sx��O�a��]������������4���j��4e6H$ >���چۻ��MU��C8�Cw�}j��U�{��з]��Iǁ���0���n���X��?����[�P=�E�V�����d
�i�=����wmZ�O ����a�2b���O?�GT���p�N"i��p�Z��'��m�� ����W"��z��Mlx�����ǟ��Ƨ���� N��`����^'|zj=���w#BBT��_��v�X;�;���;��I�
������5&Vѹ5�����$�͓G����!����KT��%B�Ha�������r����� �Tk�P��w�����V�p��mz��~	BC�B��:��f�fs��؆c���&ܠA�č{l`Ƹ�Vn�P[�*!���c8�h�]�S�S�^��ݴ���6?��
}���JO����hM�$1?A�r��ٺ�waU�������GD��q�`�;�O��1���v��Ok��lP8���>̀v�@
�8�]��ۺ�:Գ��ģ�~����98~���[ִq�`J���:�6�O1��K����07�+��y���&��B�@�êǱ0�ȕ��|Ƿ�li��]�uw�	�َ��o@!�a����K���{�3���vM>�V
�^#�� #��m����9D�}7���g���C�`�_$q46P-Z��5[i��PY{(,�\��9n�_�o:�LA�;��9�S�����S��:���g�^��,r;`��x����X�����O�/)�\�w�����|��2��(K�k�[�- ���s���H��<b��O����Ґh��}0����N���ɛ�C8d/��n>�'��%4�b3Ӊ%�{���OZܮ�YDD97l����?��Gt�`��J��$'��i�j2j2B�TK�ǃ���J��'�� ��*|�1w���CE��re�I�4�t#���ԴU-��;`�
v�w|�=ˈ�=c,�^���K
q���*�J�u�aZ"`��e��� *a�/Τ�9w�����<�C�1�%���rG��q��oR�^(@���1w͘����V�-�Yt���8�2��'��&��
�s�nу o�1����_2�&9�p���x��'i+6�y8�y��m7��A�o���8�
`
oN�����p/&�e�I��*u��v����a�Ȅ�
'����36�Y���<74�REë��Q&�Vs!f��!6����R��l}��ްz��i�l1%|X�s�H0/Q��_��H(%HlɎA)S�q�5l�y�4�ʹ ���x\#�-X�3�`kI�T��(|B���YFaߚ$,0���+�b�)�o.��
U( V��_g�v�h��D{�S׀]�U��i�ҹ�~���գ�_<}��sMNĜ�A�x�K�����R<���(Ӫ9G=��=P!L�8H�SÕf�B�����ĸ���Y4o.�Vh��Y�*+Y;X$�gNB/�EM���y�	U�����:R!/+���ʈ)o�t>��,W+�&�N0�)1+;��R p�J���ed���Mqfݡb���B�[/�8����a�p�J	Ȋ�rmը�~W���ÓR%���P����ud-�y��'}��S�'f�:�"��Ì4�wy�a��	D��:Q�Q$\x�"ɼ���=�'�g��E�!'j�u	�:���^f���Ik�fa��Y�~����9��l΍"�,$��`]fP���e�C��Mj�
/s�Lj,�j��7�g�Bn��kV�1�D+h��$�yR��t�B*fC�4M�A��d�2*��p	�	4��;^,��ʼ���)�k��YY��OJ6��\�^S5Ӥ�T��j��υ����H�OI�o�A�R=��%�l��X0�Di�szy�R��)�rP�#YI�{���eҠky���g>��%ʥ�\2-��U�2��A������Ş9���4x��5�G?ps6�R�Q��Y��.�t��(�Y�h�:�^o��H*�D��L�g���ƻ_���`����%��j��7���hG"(�q���(%�Q����\uCm\��I��!���8X%��:8���mނ��pZc3b��9�}�`ի�ԅ���og�Rxp]�騈Ւ�*�M�����fA� ����YSQR��kMV���dj���γ���;[�Y�.8��M7���O�G�=�y"��ՇF$6{�R�c��+�ۂ ��^�=%��0m. ����P�p���7�蝬�E�-6�lX��;h�6D�6��겄͗�]�R>rq�e��,���]Vi�~u�r�Ë/Ao����~�AU��X�̡P���i��������ܡ���(+O2�yZ�����3�5�Y6����@ެ5PMw�j���6��(6k�Q%�����N[˛���e��Vu-'�)g�x��0$A�Y%K��(��5��Oq �  �|w�=�3�ǂ�˚�g�\��f��y�|�ʦT�_� �#\ p 杼j��5��i�t!_e�1&�yPjB�%p�`rz+��
��w�tLI���
�� ��Rgr�m2^��#���ϙD+���r^�j~!Bw��̷E����΋�߽8:����m(E!6�E�歁�E8i�"��� �1%��oM%Xu�w�^ޔ�$	���� 3ܛ� >�_®��j�Rƙ3��,s�_.�jWE�l=rCV�^7=��%��
�tyrA������<���OT��UaA^��QM���Y�g�d(�Q�����3uH��k�$���]ZB��ם�Y�5�:AF�SB�D��$��k���jLy��I];�]MY3C��[:����F>,z��g�ȷZ�jt!��)������^��:��0��7
s�CZ.3��J��lp���c�	����E�����F��?�W���,w�b���0��ST�ɮM]�)���Le�=���o���m�]=�������#�3"�a�{��j���j��K!�s!ud� 柳۹�ӿ��f�D;�������}�
F�_��
A2���W�"�+� �b���8��'��y�����B\R����Xj���� �d'�L�ݡ@>�q����3�c3u��?�02�Y�	D.C�>%Dנ|�Xu��ٵ
F|)[����q�cc�S�b�f��f��r,kDn�jvk$��?�R5���0��OvÒy�c(��T��Y��3$��|��zl/vQ0���1S����]��v������<�>O�9D9O��S���<���0�Sh�u�B�2S��M�����'7/�������[]���=~vu������gO���~����)��O.�����������8K�_����"ɿZz�w��/�pu~��^�=�Hr~���"��E��E�������7]_㿘�c�۝E������o}�x����	z�      �   N   x^���0��XL`J��K��#�Zv8�dS�ɖ�r�"yB��;6�}������4�2����3<��#�� f      �   .   x^3�IM�����O��2�(�O/J����K�2�t�O1b���� �k      �   !   x^3�(M��,�HM�2�t)JL+����� b
�      �   =   x^3�t�2�����2��J,K�2��,����24��,HN.�,(�24KCy1z\\\ ���      �   L  x^�V�n�F<S_A(������!o�s���i��I
�X�os(�$�\^�����[��D���}
>Hd�����HL �{|����Y��2��>~N\c���:�a1���_g�4&�@;�L���?�XM�� 	c�*yxo7M=�c��B:gU�����fk&�Z z�aM�KӾ�sO�K8I��:��m?�v嶝���)��H�L/�S����k�~���Sh�9l>&�f�˪���3 'H���Y�x��W�p	� � J��������~S�X�F� Rho���%ԫbr��`dB
D�*:�ﲗ�����MV��,_��5�����YU,��LDʑ5U`oy/�?��fߦ�ǿ�U�~�M4ǣe�K�j�s�(<f�2��|iS��p��E��§e�|g�E��䆼�^�1ӵi=���~\}�gnF���21��?U���FOt:�T��&��!��er\��>kO��f�	���z�8�2�N�i ��$��PSԋ7�i�j���S�0Ҁ���1ӵ�[n9-���~���ʛ��<�U��zK���UAy!-�t���j&���s��Y^!�'������t�M���#�1=��t�:�M��2��/v��U�~_6�)��(+!�D)H� 0q����}[n %I��q�	�0�{��I�bI&�#��J��O�\����{���8p���.w�'�[�,����B���?2m��>m�t5wz���'\,��7�yO�t�=�u��>]�o~e��W,�L8�c |r�VU�WG��OH8�^;ӧ���n���G������bTG�      �   v   x^M�K�0C���T��.��H%e&nߨQ;�Y�ݓ[��#���Wr�VJ���$�ֈ�R������lO�g�')���h�#�DM�cl������y�G��x_ |�9�      �   �  x^���n�0���)��jd��y�+���M-����kcBR�(Y���3�1��]7���!�����mSx%��e�`5�{0Jh��*;��'�"\�<�*{l}�Ĉ���	~� l�)�g��_����qS'3��2����4��0���{cOx�����Z��!����e1�����m����
��h��E�]l�0dEy[����N��MQ���$���B���s���CQ(f��[JF�jB?�1�iQ��de�[Fc�1��bS��*�%#l�Е"�����o+����m	�qm�Z�|�����.��u�`O�BT�+�v)����QR�+�gR��B2z*t�/�R���u�a��a��#WũO9�c�>��q;wA�"��v�^�<7����3k	b�.,])�tO<E��%qS����Xt-T�͞*���' �H>�Yf���%�����]5��BM�^����+�X6t�*#/�� j.� °�%����v?̩�c      �   �  x^��ێ�@  ���W�{��ax�Aӄp�,02��_�ݦ�~C��ࢹ'�P'��ʶ�)/!Ȓ*oK6� ���v�Wo6�T)�)W�Te������4ho��K����s!ip����5������fn�.��h�S�>/f�v�M�-sI"JUy��.���+AҗG�Mt�Z�ڝ:c;l�h>�=S�+<wɝj�s>�&���m�,0CE��I9���;eNI0��v�������te��[!��4�?@�����e -�%�d�������ʛ	Ra�ȋ��q�Ҍ��[�?�����J�خs���	:�`�6��`�8<��k���_'�Ґ���; 2"�J^����H�롋>�0��,¸(��������#Z߭�Vl5+���Y߬���fe�9��#��\I��z��2��^Gm� y��.P%E|řִq
��D��*��ه�yS8fVW7��y^n{��A+4Cy���(�'Tf� 8[�0(��w�'��䘼����zE&�M����7/�-;M�x0�|X����ХE��~	��P�"X��ED�:)QJ	�V��2���C�-�I�?�W~-Sj��T��~�(�u�e�^r=י��q�ӹ���M�|GP��3�#�E�{����5�t�     