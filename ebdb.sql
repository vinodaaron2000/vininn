PGDMP         1    
            y           ebdb    13.3    13.3 ?    
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    21578    ebdb    DATABASE     h   CREATE DATABASE ebdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE ebdb;
                postgres    false            ?            1259    21610 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    21608    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            ?            1259    21620    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    21618    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            ?            1259    21602    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    21600    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            ?            1259    21628 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            ?            1259    21638    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    21636    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    213                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    212            ?            1259    21626    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    211                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    210            ?            1259    21646    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    21644 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    215                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    214            ?            1259    21706    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            ?            1259    21704    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            ?            1259    21592    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    21590    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            ?            1259    21581    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    21579    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            ?            1259    21737    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    21971    viddis_category    TABLE     j   CREATE TABLE public.viddis_category (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);
 #   DROP TABLE public.viddis_category;
       public         heap    postgres    false            ?            1259    21969    viddis_category_id_seq    SEQUENCE        CREATE SEQUENCE public.viddis_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.viddis_category_id_seq;
       public          postgres    false    252                       0    0    viddis_category_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.viddis_category_id_seq OWNED BY public.viddis_category.id;
          public          postgres    false    251            ?            1259    21953    viddis_comment    TABLE     ?   CREATE TABLE public.viddis_comment (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    body text NOT NULL,
    date_added timestamp with time zone NOT NULL,
    "Post_id" bigint NOT NULL
);
 "   DROP TABLE public.viddis_comment;
       public         heap    postgres    false            ?            1259    21951    viddis_comment_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.viddis_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.viddis_comment_id_seq;
       public          postgres    false    250                       0    0    viddis_comment_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.viddis_comment_id_seq OWNED BY public.viddis_comment.id;
          public          postgres    false    249            ?            1259    21811    viddis_flowerfive    TABLE     ?   CREATE TABLE public.viddis_flowerfive (
    id bigint NOT NULL,
    descriptionfive character varying(2000) NOT NULL,
    flowpicfive character varying(100) NOT NULL
);
 %   DROP TABLE public.viddis_flowerfive;
       public         heap    postgres    false            ?            1259    21809    viddis_flowerfive_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.viddis_flowerfive_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.viddis_flowerfive_id_seq;
       public          postgres    false    230                       0    0    viddis_flowerfive_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.viddis_flowerfive_id_seq OWNED BY public.viddis_flowerfive.id;
          public          postgres    false    229            ?            1259    21822    viddis_flowerfour    TABLE     ?   CREATE TABLE public.viddis_flowerfour (
    id bigint NOT NULL,
    descriptionfour character varying(2000) NOT NULL,
    flowpicfour character varying(100) NOT NULL
);
 %   DROP TABLE public.viddis_flowerfour;
       public         heap    postgres    false            ?            1259    21820    viddis_flowerfour_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.viddis_flowerfour_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.viddis_flowerfour_id_seq;
       public          postgres    false    232                       0    0    viddis_flowerfour_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.viddis_flowerfour_id_seq OWNED BY public.viddis_flowerfour.id;
          public          postgres    false    231            ?            1259    21833    viddis_flowerone    TABLE     ?   CREATE TABLE public.viddis_flowerone (
    id bigint NOT NULL,
    descriptionone character varying(2000) NOT NULL,
    flowpicone character varying(100) NOT NULL
);
 $   DROP TABLE public.viddis_flowerone;
       public         heap    postgres    false            ?            1259    21831    viddis_flowerone_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.viddis_flowerone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.viddis_flowerone_id_seq;
       public          postgres    false    234                       0    0    viddis_flowerone_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.viddis_flowerone_id_seq OWNED BY public.viddis_flowerone.id;
          public          postgres    false    233            ?            1259    21783    viddis_flowers    TABLE     ?   CREATE TABLE public.viddis_flowers (
    id bigint NOT NULL,
    description character varying(2000) NOT NULL,
    flowpic character varying(100) NOT NULL
);
 "   DROP TABLE public.viddis_flowers;
       public         heap    postgres    false            ?            1259    21781    viddis_flowers_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.viddis_flowers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.viddis_flowers_id_seq;
       public          postgres    false    226                       0    0    viddis_flowers_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.viddis_flowers_id_seq OWNED BY public.viddis_flowers.id;
          public          postgres    false    225            ?            1259    21844    viddis_flowerseven    TABLE     ?   CREATE TABLE public.viddis_flowerseven (
    id bigint NOT NULL,
    descriptionseven character varying(2000) NOT NULL,
    flowpicseven character varying(100) NOT NULL
);
 &   DROP TABLE public.viddis_flowerseven;
       public         heap    postgres    false            ?            1259    21842    viddis_flowerseven_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.viddis_flowerseven_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.viddis_flowerseven_id_seq;
       public          postgres    false    236                       0    0    viddis_flowerseven_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.viddis_flowerseven_id_seq OWNED BY public.viddis_flowerseven.id;
          public          postgres    false    235            ?            1259    21855    viddis_flowersix    TABLE     ?   CREATE TABLE public.viddis_flowersix (
    id bigint NOT NULL,
    descriptionsix character varying(2000) NOT NULL,
    flowpicsix character varying(100) NOT NULL
);
 $   DROP TABLE public.viddis_flowersix;
       public         heap    postgres    false            ?            1259    21853    viddis_flowersix_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.viddis_flowersix_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.viddis_flowersix_id_seq;
       public          postgres    false    238                       0    0    viddis_flowersix_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.viddis_flowersix_id_seq OWNED BY public.viddis_flowersix.id;
          public          postgres    false    237            ?            1259    21866    viddis_flowerthree    TABLE     ?   CREATE TABLE public.viddis_flowerthree (
    id bigint NOT NULL,
    descriptionthree character varying(2000) NOT NULL,
    flowpicthree character varying(100) NOT NULL
);
 &   DROP TABLE public.viddis_flowerthree;
       public         heap    postgres    false            ?            1259    21864    viddis_flowerthree_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.viddis_flowerthree_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.viddis_flowerthree_id_seq;
       public          postgres    false    240                       0    0    viddis_flowerthree_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.viddis_flowerthree_id_seq OWNED BY public.viddis_flowerthree.id;
          public          postgres    false    239            ?            1259    21877    viddis_flowertwo    TABLE     ?   CREATE TABLE public.viddis_flowertwo (
    id bigint NOT NULL,
    descriptiontwo character varying(2000) NOT NULL,
    flowpictwo character varying(100) NOT NULL
);
 $   DROP TABLE public.viddis_flowertwo;
       public         heap    postgres    false            ?            1259    21875    viddis_flowertwo_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.viddis_flowertwo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.viddis_flowertwo_id_seq;
       public          postgres    false    242                        0    0    viddis_flowertwo_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.viddis_flowertwo_id_seq OWNED BY public.viddis_flowertwo.id;
          public          postgres    false    241            ?            1259    21772    viddis_koifishtank    TABLE     ?   CREATE TABLE public.viddis_koifishtank (
    id bigint NOT NULL,
    caption2 character varying(500) NOT NULL,
    video2 character varying(100) NOT NULL
);
 &   DROP TABLE public.viddis_koifishtank;
       public         heap    postgres    false            ?            1259    21770    viddis_koifishtank_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.viddis_koifishtank_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.viddis_koifishtank_id_seq;
       public          postgres    false    224            !           0    0    viddis_koifishtank_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.viddis_koifishtank_id_seq OWNED BY public.viddis_koifishtank.id;
          public          postgres    false    223            ?            1259    21761    viddis_onahillfaraway    TABLE     ?   CREATE TABLE public.viddis_onahillfaraway (
    id bigint NOT NULL,
    caption1 character varying(500) NOT NULL,
    video1 character varying(100) NOT NULL
);
 )   DROP TABLE public.viddis_onahillfaraway;
       public         heap    postgres    false            ?            1259    21759    viddis_onahillfaraway_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.viddis_onahillfaraway_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.viddis_onahillfaraway_id_seq;
       public          postgres    false    222            "           0    0    viddis_onahillfaraway_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.viddis_onahillfaraway_id_seq OWNED BY public.viddis_onahillfaraway.id;
          public          postgres    false    221            ?            1259    21794    viddis_post    TABLE     8  CREATE TABLE public.viddis_post (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    body text,
    author_id integer NOT NULL,
    title_tag character varying(255) NOT NULL,
    post_date date NOT NULL,
    snippet character varying(255) NOT NULL,
    header_image character varying(100)
);
    DROP TABLE public.viddis_post;
       public         heap    postgres    false            ?            1259    21792    viddis_post_id_seq    SEQUENCE     {   CREATE SEQUENCE public.viddis_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.viddis_post_id_seq;
       public          postgres    false    228            #           0    0    viddis_post_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.viddis_post_id_seq OWNED BY public.viddis_post.id;
          public          postgres    false    227            ?            1259    21899    viddis_post_likes    TABLE     }   CREATE TABLE public.viddis_post_likes (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    user_id integer NOT NULL
);
 %   DROP TABLE public.viddis_post_likes;
       public         heap    postgres    false            ?            1259    21897    viddis_post_likes_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.viddis_post_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.viddis_post_likes_id_seq;
       public          postgres    false    244            $           0    0    viddis_post_likes_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.viddis_post_likes_id_seq OWNED BY public.viddis_post_likes.id;
          public          postgres    false    243            ?            1259    21934    viddis_profile    TABLE     _  CREATE TABLE public.viddis_profile (
    id bigint NOT NULL,
    bio text NOT NULL,
    user_id integer,
    facebook_url character varying(255),
    instagram_url character varying(255),
    pintrest_url character varying(255),
    profile_pic character varying(100),
    twitter_url character varying(255),
    website_url character varying(255)
);
 "   DROP TABLE public.viddis_profile;
       public         heap    postgres    false            ?            1259    21932    viddis_profile_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.viddis_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.viddis_profile_id_seq;
       public          postgres    false    248            %           0    0    viddis_profile_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.viddis_profile_id_seq OWNED BY public.viddis_profile.id;
          public          postgres    false    247            ?            1259    21749    viddis_video    TABLE     ?   CREATE TABLE public.viddis_video (
    id bigint NOT NULL,
    caption character varying(500) NOT NULL,
    video character varying(100) NOT NULL,
    videodescription text
);
     DROP TABLE public.viddis_video;
       public         heap    postgres    false            ?            1259    21747    viddis_video_id_seq    SEQUENCE     |   CREATE SEQUENCE public.viddis_video_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.viddis_video_id_seq;
       public          postgres    false    220            &           0    0    viddis_video_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.viddis_video_id_seq OWNED BY public.viddis_video.id;
          public          postgres    false    219            ?            1259    21921    viddis_videoiterate    TABLE     ?   CREATE TABLE public.viddis_videoiterate (
    id bigint NOT NULL,
    caption character varying(500) NOT NULL,
    video character varying(100) NOT NULL,
    videodescription text
);
 '   DROP TABLE public.viddis_videoiterate;
       public         heap    postgres    false            ?            1259    21919    viddis_videoiterate_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.viddis_videoiterate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.viddis_videoiterate_id_seq;
       public          postgres    false    246            '           0    0    viddis_videoiterate_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.viddis_videoiterate_id_seq OWNED BY public.viddis_videoiterate.id;
          public          postgres    false    245            ?           2604    21613    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            ?           2604    21623    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            ?           2604    21605    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            ?           2604    21631    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            ?           2604    21641    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            ?           2604    21649    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            ?           2604    21709    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            ?           2604    21595    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            ?           2604    21584    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            ?           2604    21974    viddis_category id    DEFAULT     x   ALTER TABLE ONLY public.viddis_category ALTER COLUMN id SET DEFAULT nextval('public.viddis_category_id_seq'::regclass);
 A   ALTER TABLE public.viddis_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251    252            ?           2604    21956    viddis_comment id    DEFAULT     v   ALTER TABLE ONLY public.viddis_comment ALTER COLUMN id SET DEFAULT nextval('public.viddis_comment_id_seq'::regclass);
 @   ALTER TABLE public.viddis_comment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    250    250            ?           2604    21814    viddis_flowerfive id    DEFAULT     |   ALTER TABLE ONLY public.viddis_flowerfive ALTER COLUMN id SET DEFAULT nextval('public.viddis_flowerfive_id_seq'::regclass);
 C   ALTER TABLE public.viddis_flowerfive ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            ?           2604    21825    viddis_flowerfour id    DEFAULT     |   ALTER TABLE ONLY public.viddis_flowerfour ALTER COLUMN id SET DEFAULT nextval('public.viddis_flowerfour_id_seq'::regclass);
 C   ALTER TABLE public.viddis_flowerfour ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            ?           2604    21836    viddis_flowerone id    DEFAULT     z   ALTER TABLE ONLY public.viddis_flowerone ALTER COLUMN id SET DEFAULT nextval('public.viddis_flowerone_id_seq'::regclass);
 B   ALTER TABLE public.viddis_flowerone ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            ?           2604    21786    viddis_flowers id    DEFAULT     v   ALTER TABLE ONLY public.viddis_flowers ALTER COLUMN id SET DEFAULT nextval('public.viddis_flowers_id_seq'::regclass);
 @   ALTER TABLE public.viddis_flowers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            ?           2604    21847    viddis_flowerseven id    DEFAULT     ~   ALTER TABLE ONLY public.viddis_flowerseven ALTER COLUMN id SET DEFAULT nextval('public.viddis_flowerseven_id_seq'::regclass);
 D   ALTER TABLE public.viddis_flowerseven ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            ?           2604    21858    viddis_flowersix id    DEFAULT     z   ALTER TABLE ONLY public.viddis_flowersix ALTER COLUMN id SET DEFAULT nextval('public.viddis_flowersix_id_seq'::regclass);
 B   ALTER TABLE public.viddis_flowersix ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            ?           2604    21869    viddis_flowerthree id    DEFAULT     ~   ALTER TABLE ONLY public.viddis_flowerthree ALTER COLUMN id SET DEFAULT nextval('public.viddis_flowerthree_id_seq'::regclass);
 D   ALTER TABLE public.viddis_flowerthree ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            ?           2604    21880    viddis_flowertwo id    DEFAULT     z   ALTER TABLE ONLY public.viddis_flowertwo ALTER COLUMN id SET DEFAULT nextval('public.viddis_flowertwo_id_seq'::regclass);
 B   ALTER TABLE public.viddis_flowertwo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            ?           2604    21775    viddis_koifishtank id    DEFAULT     ~   ALTER TABLE ONLY public.viddis_koifishtank ALTER COLUMN id SET DEFAULT nextval('public.viddis_koifishtank_id_seq'::regclass);
 D   ALTER TABLE public.viddis_koifishtank ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            ?           2604    21764    viddis_onahillfaraway id    DEFAULT     ?   ALTER TABLE ONLY public.viddis_onahillfaraway ALTER COLUMN id SET DEFAULT nextval('public.viddis_onahillfaraway_id_seq'::regclass);
 G   ALTER TABLE public.viddis_onahillfaraway ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            ?           2604    21797    viddis_post id    DEFAULT     p   ALTER TABLE ONLY public.viddis_post ALTER COLUMN id SET DEFAULT nextval('public.viddis_post_id_seq'::regclass);
 =   ALTER TABLE public.viddis_post ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            ?           2604    21902    viddis_post_likes id    DEFAULT     |   ALTER TABLE ONLY public.viddis_post_likes ALTER COLUMN id SET DEFAULT nextval('public.viddis_post_likes_id_seq'::regclass);
 C   ALTER TABLE public.viddis_post_likes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            ?           2604    21937    viddis_profile id    DEFAULT     v   ALTER TABLE ONLY public.viddis_profile ALTER COLUMN id SET DEFAULT nextval('public.viddis_profile_id_seq'::regclass);
 @   ALTER TABLE public.viddis_profile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            ?           2604    21752    viddis_video id    DEFAULT     r   ALTER TABLE ONLY public.viddis_video ALTER COLUMN id SET DEFAULT nextval('public.viddis_video_id_seq'::regclass);
 >   ALTER TABLE public.viddis_video ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            ?           2604    21924    viddis_videoiterate id    DEFAULT     ?   ALTER TABLE ONLY public.viddis_videoiterate ALTER COLUMN id SET DEFAULT nextval('public.viddis_videoiterate_id_seq'::regclass);
 E   ALTER TABLE public.viddis_videoiterate ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246            ?          0    21610 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207          ?          0    21620    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   %       ?          0    21602    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   B       ?          0    21628 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    211   ?#      ?          0    21638    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   %      ?          0    21646    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   :%      ?          0    21706    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   W%      ?          0    21592    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   +      ?          0    21581    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   ?+      ?          0    21737    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    218   f/                0    21971    viddis_category 
   TABLE DATA           3   COPY public.viddis_category (id, name) FROM stdin;
    public          postgres    false    252    2                0    21953    viddis_comment 
   TABLE DATA           O   COPY public.viddis_comment (id, name, body, date_added, "Post_id") FROM stdin;
    public          postgres    false    250   2      ?          0    21811    viddis_flowerfive 
   TABLE DATA           M   COPY public.viddis_flowerfive (id, descriptionfive, flowpicfive) FROM stdin;
    public          postgres    false    230   4      ?          0    21822    viddis_flowerfour 
   TABLE DATA           M   COPY public.viddis_flowerfour (id, descriptionfour, flowpicfour) FROM stdin;
    public          postgres    false    232   Y4      ?          0    21833    viddis_flowerone 
   TABLE DATA           J   COPY public.viddis_flowerone (id, descriptionone, flowpicone) FROM stdin;
    public          postgres    false    234   ?4      ?          0    21783    viddis_flowers 
   TABLE DATA           B   COPY public.viddis_flowers (id, description, flowpic) FROM stdin;
    public          postgres    false    226   ?4      ?          0    21844    viddis_flowerseven 
   TABLE DATA           P   COPY public.viddis_flowerseven (id, descriptionseven, flowpicseven) FROM stdin;
    public          postgres    false    236   Q5      ?          0    21855    viddis_flowersix 
   TABLE DATA           J   COPY public.viddis_flowersix (id, descriptionsix, flowpicsix) FROM stdin;
    public          postgres    false    238   ?5      ?          0    21866    viddis_flowerthree 
   TABLE DATA           P   COPY public.viddis_flowerthree (id, descriptionthree, flowpicthree) FROM stdin;
    public          postgres    false    240   ?5      ?          0    21877    viddis_flowertwo 
   TABLE DATA           J   COPY public.viddis_flowertwo (id, descriptiontwo, flowpictwo) FROM stdin;
    public          postgres    false    242   6      ?          0    21772    viddis_koifishtank 
   TABLE DATA           B   COPY public.viddis_koifishtank (id, caption2, video2) FROM stdin;
    public          postgres    false    224   V6      ?          0    21761    viddis_onahillfaraway 
   TABLE DATA           E   COPY public.viddis_onahillfaraway (id, caption1, video1) FROM stdin;
    public          postgres    false    222   ?6      ?          0    21794    viddis_post 
   TABLE DATA           n   COPY public.viddis_post (id, title, body, author_id, title_tag, post_date, snippet, header_image) FROM stdin;
    public          postgres    false    228   ?6      ?          0    21899    viddis_post_likes 
   TABLE DATA           A   COPY public.viddis_post_likes (id, post_id, user_id) FROM stdin;
    public          postgres    false    244   ?7                0    21934    viddis_profile 
   TABLE DATA           ?   COPY public.viddis_profile (id, bio, user_id, facebook_url, instagram_url, pintrest_url, profile_pic, twitter_url, website_url) FROM stdin;
    public          postgres    false    248   ?7      ?          0    21749    viddis_video 
   TABLE DATA           L   COPY public.viddis_video (id, caption, video, videodescription) FROM stdin;
    public          postgres    false    220   ?8                0    21921    viddis_videoiterate 
   TABLE DATA           S   COPY public.viddis_videoiterate (id, caption, video, videodescription) FROM stdin;
    public          postgres    false    246   ?8      (           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            )           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            *           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 92, true);
          public          postgres    false    204            +           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            ,           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public          postgres    false    210            -           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            .           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 70, true);
          public          postgres    false    216            /           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 22, true);
          public          postgres    false    202            0           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 42, true);
          public          postgres    false    200            1           0    0    viddis_category_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.viddis_category_id_seq', 1, false);
          public          postgres    false    251            2           0    0    viddis_comment_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.viddis_comment_id_seq', 34, true);
          public          postgres    false    249            3           0    0    viddis_flowerfive_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.viddis_flowerfive_id_seq', 1, true);
          public          postgres    false    229            4           0    0    viddis_flowerfour_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.viddis_flowerfour_id_seq', 1, true);
          public          postgres    false    231            5           0    0    viddis_flowerone_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.viddis_flowerone_id_seq', 1, true);
          public          postgres    false    233            6           0    0    viddis_flowers_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.viddis_flowers_id_seq', 2, true);
          public          postgres    false    225            7           0    0    viddis_flowerseven_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.viddis_flowerseven_id_seq', 1, true);
          public          postgres    false    235            8           0    0    viddis_flowersix_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.viddis_flowersix_id_seq', 1, true);
          public          postgres    false    237            9           0    0    viddis_flowerthree_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.viddis_flowerthree_id_seq', 1, true);
          public          postgres    false    239            :           0    0    viddis_flowertwo_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.viddis_flowertwo_id_seq', 1, true);
          public          postgres    false    241            ;           0    0    viddis_koifishtank_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.viddis_koifishtank_id_seq', 1, true);
          public          postgres    false    223            <           0    0    viddis_onahillfaraway_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.viddis_onahillfaraway_id_seq', 4, true);
          public          postgres    false    221            =           0    0    viddis_post_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.viddis_post_id_seq', 21, true);
          public          postgres    false    227            >           0    0    viddis_post_likes_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.viddis_post_likes_id_seq', 2, true);
          public          postgres    false    243            ?           0    0    viddis_profile_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.viddis_profile_id_seq', 2, true);
          public          postgres    false    247            @           0    0    viddis_video_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.viddis_video_id_seq', 1, false);
          public          postgres    false    219            A           0    0    viddis_videoiterate_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.viddis_videoiterate_id_seq', 4, true);
          public          postgres    false    245            ?           2606    21735    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            ?           2606    21662 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            ?           2606    21625 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            ?           2606    21615    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            ?           2606    21653 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            ?           2606    21607 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205                       2606    21643 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    213            
           2606    21677 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    213    213                       2606    21633    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    211                       2606    21651 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    215                       2606    21691 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    215    215                       2606    21729     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    211                       2606    21715 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            ?           2606    21599 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            ?           2606    21597 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            ?           2606    21589 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201                       2606    21744 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    218            B           2606    21976 $   viddis_category viddis_category_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.viddis_category
    ADD CONSTRAINT viddis_category_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.viddis_category DROP CONSTRAINT viddis_category_pkey;
       public            postgres    false    252            @           2606    21961 "   viddis_comment viddis_comment_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.viddis_comment
    ADD CONSTRAINT viddis_comment_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.viddis_comment DROP CONSTRAINT viddis_comment_pkey;
       public            postgres    false    250            %           2606    21819 (   viddis_flowerfive viddis_flowerfive_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.viddis_flowerfive
    ADD CONSTRAINT viddis_flowerfive_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.viddis_flowerfive DROP CONSTRAINT viddis_flowerfive_pkey;
       public            postgres    false    230            '           2606    21830 (   viddis_flowerfour viddis_flowerfour_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.viddis_flowerfour
    ADD CONSTRAINT viddis_flowerfour_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.viddis_flowerfour DROP CONSTRAINT viddis_flowerfour_pkey;
       public            postgres    false    232            )           2606    21841 &   viddis_flowerone viddis_flowerone_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.viddis_flowerone
    ADD CONSTRAINT viddis_flowerone_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.viddis_flowerone DROP CONSTRAINT viddis_flowerone_pkey;
       public            postgres    false    234                        2606    21791 "   viddis_flowers viddis_flowers_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.viddis_flowers
    ADD CONSTRAINT viddis_flowers_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.viddis_flowers DROP CONSTRAINT viddis_flowers_pkey;
       public            postgres    false    226            +           2606    21852 *   viddis_flowerseven viddis_flowerseven_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.viddis_flowerseven
    ADD CONSTRAINT viddis_flowerseven_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.viddis_flowerseven DROP CONSTRAINT viddis_flowerseven_pkey;
       public            postgres    false    236            -           2606    21863 &   viddis_flowersix viddis_flowersix_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.viddis_flowersix
    ADD CONSTRAINT viddis_flowersix_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.viddis_flowersix DROP CONSTRAINT viddis_flowersix_pkey;
       public            postgres    false    238            /           2606    21874 *   viddis_flowerthree viddis_flowerthree_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.viddis_flowerthree
    ADD CONSTRAINT viddis_flowerthree_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.viddis_flowerthree DROP CONSTRAINT viddis_flowerthree_pkey;
       public            postgres    false    240            1           2606    21885 &   viddis_flowertwo viddis_flowertwo_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.viddis_flowertwo
    ADD CONSTRAINT viddis_flowertwo_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.viddis_flowertwo DROP CONSTRAINT viddis_flowertwo_pkey;
       public            postgres    false    242                       2606    21780 *   viddis_koifishtank viddis_koifishtank_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.viddis_koifishtank
    ADD CONSTRAINT viddis_koifishtank_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.viddis_koifishtank DROP CONSTRAINT viddis_koifishtank_pkey;
       public            postgres    false    224                       2606    21769 0   viddis_onahillfaraway viddis_onahillfaraway_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.viddis_onahillfaraway
    ADD CONSTRAINT viddis_onahillfaraway_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.viddis_onahillfaraway DROP CONSTRAINT viddis_onahillfaraway_pkey;
       public            postgres    false    222            3           2606    21904 (   viddis_post_likes viddis_post_likes_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.viddis_post_likes
    ADD CONSTRAINT viddis_post_likes_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.viddis_post_likes DROP CONSTRAINT viddis_post_likes_pkey;
       public            postgres    false    244            6           2606    21906 A   viddis_post_likes viddis_post_likes_post_id_user_id_ab13f517_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.viddis_post_likes
    ADD CONSTRAINT viddis_post_likes_post_id_user_id_ab13f517_uniq UNIQUE (post_id, user_id);
 k   ALTER TABLE ONLY public.viddis_post_likes DROP CONSTRAINT viddis_post_likes_post_id_user_id_ab13f517_uniq;
       public            postgres    false    244    244            #           2606    21802    viddis_post viddis_post_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.viddis_post
    ADD CONSTRAINT viddis_post_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.viddis_post DROP CONSTRAINT viddis_post_pkey;
       public            postgres    false    228            ;           2606    21942 "   viddis_profile viddis_profile_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.viddis_profile
    ADD CONSTRAINT viddis_profile_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.viddis_profile DROP CONSTRAINT viddis_profile_pkey;
       public            postgres    false    248            =           2606    21944 )   viddis_profile viddis_profile_user_id_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.viddis_profile
    ADD CONSTRAINT viddis_profile_user_id_key UNIQUE (user_id);
 S   ALTER TABLE ONLY public.viddis_profile DROP CONSTRAINT viddis_profile_user_id_key;
       public            postgres    false    248                       2606    21757    viddis_video viddis_video_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.viddis_video
    ADD CONSTRAINT viddis_video_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.viddis_video DROP CONSTRAINT viddis_video_pkey;
       public            postgres    false    220            9           2606    21929 ,   viddis_videoiterate viddis_videoiterate_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.viddis_videoiterate
    ADD CONSTRAINT viddis_videoiterate_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.viddis_videoiterate DROP CONSTRAINT viddis_videoiterate_pkey;
       public            postgres    false    246            ?           1259    21736    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            ?           1259    21673 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            ?           1259    21674 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            ?           1259    21659 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205                       1259    21689 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    213                       1259    21688 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    213                       1259    21703 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    215                       1259    21702 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    215                       1259    21730     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    211                       1259    21726 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217                       1259    21727 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217                       1259    21746 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    218                       1259    21745 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    218            >           1259    21967    viddis_comment_Post_id_896154d8    INDEX     a   CREATE INDEX "viddis_comment_Post_id_896154d8" ON public.viddis_comment USING btree ("Post_id");
 5   DROP INDEX public."viddis_comment_Post_id_896154d8";
       public            postgres    false    250            !           1259    21808    viddis_post_author_id_24b3be6a    INDEX     [   CREATE INDEX viddis_post_author_id_24b3be6a ON public.viddis_post USING btree (author_id);
 2   DROP INDEX public.viddis_post_author_id_24b3be6a;
       public            postgres    false    228            4           1259    21917 "   viddis_post_likes_post_id_25e12f25    INDEX     c   CREATE INDEX viddis_post_likes_post_id_25e12f25 ON public.viddis_post_likes USING btree (post_id);
 6   DROP INDEX public.viddis_post_likes_post_id_25e12f25;
       public            postgres    false    244            7           1259    21918 "   viddis_post_likes_user_id_2c34dc32    INDEX     c   CREATE INDEX viddis_post_likes_user_id_2c34dc32 ON public.viddis_post_likes USING btree (user_id);
 6   DROP INDEX public.viddis_post_likes_user_id_2c34dc32;
       public            postgres    false    244            E           2606    21668 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3060    209    205            D           2606    21663 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    207    3065            C           2606    21654 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    3055    203            G           2606    21683 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    213    207    3065            F           2606    21678 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    213    211    3073            I           2606    21697 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    205    3060    215            H           2606    21692 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    211    3073    215            J           2606    21716 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3055    217    203            K           2606    21721 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    211    217    3073            P           2606    21962 @   viddis_comment viddis_comment_Post_id_896154d8_fk_viddis_post_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.viddis_comment
    ADD CONSTRAINT "viddis_comment_Post_id_896154d8_fk_viddis_post_id" FOREIGN KEY ("Post_id") REFERENCES public.viddis_post(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.viddis_comment DROP CONSTRAINT "viddis_comment_Post_id_896154d8_fk_viddis_post_id";
       public          postgres    false    250    3107    228            L           2606    21803 :   viddis_post viddis_post_author_id_24b3be6a_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.viddis_post
    ADD CONSTRAINT viddis_post_author_id_24b3be6a_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.viddis_post DROP CONSTRAINT viddis_post_author_id_24b3be6a_fk_auth_user_id;
       public          postgres    false    211    228    3073            M           2606    21907 F   viddis_post_likes viddis_post_likes_post_id_25e12f25_fk_viddis_post_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.viddis_post_likes
    ADD CONSTRAINT viddis_post_likes_post_id_25e12f25_fk_viddis_post_id FOREIGN KEY (post_id) REFERENCES public.viddis_post(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.viddis_post_likes DROP CONSTRAINT viddis_post_likes_post_id_25e12f25_fk_viddis_post_id;
       public          postgres    false    3107    228    244            N           2606    21912 D   viddis_post_likes viddis_post_likes_user_id_2c34dc32_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.viddis_post_likes
    ADD CONSTRAINT viddis_post_likes_user_id_2c34dc32_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.viddis_post_likes DROP CONSTRAINT viddis_post_likes_user_id_2c34dc32_fk_auth_user_id;
       public          postgres    false    211    3073    244            O           2606    21945 >   viddis_profile viddis_profile_user_id_7eecd1a3_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.viddis_profile
    ADD CONSTRAINT viddis_profile_user_id_7eecd1a3_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.viddis_profile DROP CONSTRAINT viddis_profile_user_id_7eecd1a3_fk_auth_user_id;
       public          postgres    false    3073    211    248            ?      x?????? ? ?      ?      x?????? ? ?      ?   E  x?m?M?? F?p??`???\??????괉lw?}????*???C<??0Q??8?????.?%???x?????|?q?7?????????H4@?&??㮁?m\?an=o˯?????);*A)?`O](?>??@+B?h???״???Ej?C?#?c$?QXQC?"??d?PФ`Mo??~?$?Y????qTC??VA!D?? ???>|?z-?G??>???8??????im?????+?ͼ?_???>??? ?\??X-g0
1?Uvƣ?I?g4?26U????ڃ0?d?j>1?1V?	C???zOXE$U?????x\?e|??b 1?)kV????'??/&?t>??????OHi?4?uZ??8????5Kg??R?qTg8I?A??)=ׇy?e?Tq?ؔ5??3r,K?C??5$R??Ȥd=ͺ	???Y6,Ka8?w@??"r@???q??h???uzi?j?-?G6]?3e????ܟ@?-????R`?Fy??ۚ?E?????wl??@?[??-?Ua?,???l?lߪ"??C?M?? S?-M?e??v?'?D?"??g?Z??%۽t?'??{)	<O
?]??@??xV??ӏPu?~dW?{??:?ޱ?,wulS?z?z:.O?v_??z?	]???W??+?;	?<?E??X??3?yʶ??L??md??1??cw?,wul?/$???R??w??2nZT?t??>ٳ??qzώ3X??3??;?H??|??G?????N?????r?g???8?H\??~???I?z6__?%?
oxД?Sśr?>	otȑ?$???I?x?{w3?O????Ж'V?b?d?HɠIR???r???#?????      ?   v  x???[o?@???W??[?XH?Tk???F???P???P~}Q??M:'??d??3PJ^"??6?yH?e???d????{k??ܕ???1P>?`n?????@??Y??VnO?ʝ???O????p/VY??n%T?? ?????J4M?t??P?Lr/???X\'[?ܣ???vq????z??u?(?lBdjAC%z}??????j_?ONh?n'4???AO????????4?^4.?/???}????N'M?y?wV?[i3???K=m??u?oM??	???*2???MS<????<??CZ)???D6:?Ǚ?9SS??gC??,??Ptszꇯ????s??(?M@-,?Tj?k??4?????o?AK?FU?.&6j???????      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?  x????n?F???S?i??̜?r?$H E?4Ȣ?P???b-?I?0Ҽ{?p(?????L??w?????rvA????TؔC´??z??ƑmU??y$???fu?????<?s??????oK?;?{P? "e21?<O➴?d?U`?????????"w;_?????e?ʔ????
?UI2?)?[??j?=d??4???M?I,׳XtBE*!??? ?3qU$?M,㱼??ߗ&????x?L8ɥL?H(??}4{?:?	?"???c=c)^??	?N??*?E?i???|???	??6`$?<?
??s[de5?????@,S?R?%?OY???z?-V??:??:n]???-?????oY?t???d?nf? ?S`)7?Xvxpy^?W?&?W?Y?CM?I$?? y]?y?ݭn!=A?weﲎ@?a?Q??w?u*T\?#z???JR???nw??n??=??,듓JXk? W7??c[?IP?G???}	)@Sr?k???gc??^?[=? ?????L??Y?gSb?b??7???(???nv?????e?Moۗ?;??t??̟8Jo>r?!???????r*???\??w?X?? ??'???kVuq?Uy?+??M?B??x"QП񟮾??ScT???O˽-????? ?{?]򅻪???P?C5
埖{?r?xy??&?z?????6??Z?UF?????4G?)?Ī?i????l7?Mvsr???G???}b =??????X5??H??wco???޹0$!????DҾ??Z????T???UK~f?L%?oL?c?,?$8B?y??H????`5?&?c?a)?a????|?z???8????{?k?	??̸C?q????Q`??]???fSݵ?r :~?;??O-?ʭ??w9?K????ڄ%???wQ7-?????ⸯ`?????eaw??ϱ?L??? ?@0ި8P?M??-??w?)?߁`b??O9??0?e?u?.???K^???k??????!{L ??5????xW\??ϗ?t?2{? ?SW?:[?˪?&w?v?l???K?+3??c0?z??M? ????wb??OOF???.I?\?G;?	? ?b??/̄?p???w???J?8?i|)??VW?N?I??nԬ?M?D_???;ܡ??:i?N?ƃI]?s0????76?:2UP頣???O????q?>|7?<???e?fWuv?\??l}#`N%z(???1?D\lE??r?*J?G\{??Oemu??W4~_???y????????o?a4?n|?W? ???|?Gp???g??¢;&3?'?	???/zp;????v?0??;z?(	?_T"X?#?_?;\?O?=?b?f?Q*?il?شՓ??R??gy??Q?FEנ???Ȅ	}<%?56?????wn????kq??ogt????7???k	?A??????GWϱ?J?????"׌      ?   ?   x?]?ے? ?k???)????7??T?CP??/?????$?X3sӰ?$??k???B?+??M?3#ŁUYN/i?L#ί`R???ZB?iiI???g??n???q?{??V|?{?.?p?=??,?El?? ?`?[?<g<?P?{ޕ???e????n-u?r??N?}R?D??]V?Ͳ9Q?O?>?D??gyOS?0?%???/?גy      ?   i  x??U[??8?N?b.0?H??,?DI?v,?????CK?#?h7??v?H????C??_C?v?1p??s???O?2??+???Bp?????m?<???yF???^c?b??AJ?@???Kg?s?rc????(~r?xls(?"???? ???9?ޝ:v?K???řU???_j?=???[???_C?JX*S?M?t?????0^?4-)-xw??????բ??[i*?Q???6??>vOY,3Ek????e9r:i???(D?sM?6Yst~??#Uv??MW?X-3l,???u??&o??-??I??
2?ßzM??w???4N??a???a?????)`???i??Df????Lbc?i?-*?lA?w*`+?yL??[4??4j?wH???1}~U?l?c%@i??f???S?Y?UJ?&2?)?A?Up?'??)???x<?o??HYv?
???C*'4?ʔe?P!?K??Į;????&??6Ob???48G<׊?"??-?S?.??ߚ@֨?)PT@E?/}????dM1,?
s????xh2H?ek????47JY+?%QW?F;ERi}L?{?????{????s}?/c??c?H???炶r)?<?PU=9??0?a?1?B0????i??r??.?ٟ?X?5?k?W??Q??|,S??J0V茭,	?\??IGwj?U?W?r???%???o??H8??6%?ʍ ?Z?L??if???Vvu?????ck?p@{4{?W?]`S?!??EHɸ,a+????R?N?f???M`?D??	vٕ?صk?F(?W$????Ϡ???^??P?V??~??J?a??R????????%
%-fW??U??1t???5???v??м?WQY
EU???`B????B?rC??	???g????DK??      ?   ?  x????n?@?s?y?n???8???FB??W?5???HѼ?\?P??M?eZ??X?n]c>m?(/? Ct?o?H??|ן?"????|X;????zH??ʖk?.|\????`??5??F?n?B???M?r ???S!S3?F???c??+b????z?.??kU/j????izr>?Y??????=݇?d%d??x??????ڤ^?+?",'???L????
޽3??#?Ty~)y	?kne?+?k????m'o4?!8
?? ??ز??m|????g79?x???'??3N?(??"^?t????)?M??x???$Όx??/t8?IӲ?w??HL?@??Eny???M?????9?$???AB?fYpf???_???!G???vO???幂I??.?????i?pΩQ?J?P??ঁ;??p??^	?<??(	Zj??<T?"}?M(L?U?0g???pc`??C???W_[?1???????/=oK??????A??{???1?U?<_@?ޭ????U? ??,?-?X#??????]C??A??y???? ?!-"?e???T?k{9?e:t????? ?s_??%P?D?x<-?(??*H??$????ܖ??Dr?v4x???3W?_ ????"?zZf?#???v????)<?            x?????? ? ?         ?  x???Mn?@???)t????tSX?8@cÑ?=})k???F6</?G????v??s???C??{{8????q?ȴG?'j?I? ?~?~.?????Ɵ9?x#I"?]p)??0??)ɆD??5???_?1?h!m!??g?[Ąj??B\HW?c?????-.??$?Z?pK?`4
.??[?z;-K#?׬I??h?\a	7aY
D????????5?&li/j???׉??y??_?d?&?,s(d??rY?g?T???fչD???PՅ'u:?,??&>??KX???X???s?????{X?ބ2>\C??<?Y?-?%???Ἶ?D"^/??p?7?S~????Η???bc4?#?k??Z?o???"?+h???????????,??IW?|?#??Y?Ԯ?]ZY?֚?yuz,!
m?|?o?]???w}w?;?U???Mq,?(5?<u?zVu???x?F?n??;?w? ??#??4M??>s?      ?   8   x?3?tIL?O??)?,?L.?72?720??50?52?74?31?31??*H?????? @??      ?   <   x?3?t.?,N?+?H?M??,?L.?72?720??50?52?74?34?36??*H?????? ???      ?   6   x?3??J-J*J?,?L.?72?720??50?52?74?31?36??*H?????? ?      ?   V   x?3?H?+??,?L.?72?720??50?52?74?31?30??*H?2??K-W( ?--??OL?/H,??O??/O-J?/-+????? ??      ?   4   x?3??/N?,?L.?72?720??54?5??74?36?3???*H?????? ??
R      ?   0   x?3????,KU()JM?,?L.?72?O??/O-*ά??*H?????? ??      ?   *   x?3?L??/O-*?,?L.?72ԇ?K2?RS??
ҹb???? 	?~      ?   7   x?3?tJM???L?,?L.?72?720??50?52?74?31?3???*H?????? -2o      ?   0   x?3????L?,?(I??V????,?LI??72?	???p??qqq 4?      ?   ,   x?3???SHT?????,?LI??72?O*?˫??-0?????? ?w
c      ?   ?   x?????0?g?)? 44A??`C???ƴQ?]????ĀN?N???sP??????`???1??K??????F??47*??ˣ\	?`?Ҿ??Ĥ?a??s,?e?|?z	6?????????2m ?????FXL`O?:?q?U??N??b???(&Xv+?/z-?????Y?5?&/??????(?_ ??sPY?= ??"      ?      x?3?44?4?2?42 R1z\\\ jk         ?   x???M?0D??)z???????Z
TC[???EbLf??fF l"K???L$? ҙ??3??6?oT??????*????Y?@?Q??@?h?L\z>\?r?sΚ?f?2?NL
&
Q????{)????
??E?eAu?%??Q@L]?v_??W6??R???]?3V?c??+i?      ?      x?????? ? ?         ?   x?]??
?0E??W??]?F????!?fji?$?ؿ7>@??9?s?29(?Y?r?,??
?L?Z"?E?F.^܉f?????z_?q??A;?7.0h?<gC??|$??	2???6 zPt?@̶[?????ȳ*_?<??z??vx?I»A?w??HOW???+???	?Sfg?{?N     