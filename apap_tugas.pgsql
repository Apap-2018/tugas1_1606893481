PGDMP     1    
            	    v            sipeg    10.5    10.5 9    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            8           1262    49152    sipeg    DATABASE     �   CREATE DATABASE sipeg WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE sipeg;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            9           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            :           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    67244    hibernate_sequences    TABLE     t   CREATE TABLE public.hibernate_sequences (
    sequence_name character varying(255) NOT NULL,
    next_val bigint
);
 '   DROP TABLE public.hibernate_sequences;
       public         postgres    false    3            �            1259    67189    instansi    TABLE     �   CREATE TABLE public.instansi (
    id integer NOT NULL,
    deskripsi character varying(255) NOT NULL,
    nama character varying(255) NOT NULL,
    id_provinsi numeric(19,2) NOT NULL
);
    DROP TABLE public.instansi;
       public         postgres    false    3            �            1259    49199    instansi_id_seq    SEQUENCE     x   CREATE SEQUENCE public.instansi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.instansi_id_seq;
       public       postgres    false    3            �            1259    67187    instansi_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.instansi_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.instansi_id_seq1;
       public       postgres    false    3    202            ;           0    0    instansi_id_seq1    SEQUENCE OWNED BY     D   ALTER SEQUENCE public.instansi_id_seq1 OWNED BY public.instansi.id;
            public       postgres    false    201            �            1259    67200    jabatan    TABLE     �   CREATE TABLE public.jabatan (
    id integer NOT NULL,
    deskripsi character varying(255) NOT NULL,
    gaji_pokok double precision NOT NULL,
    nama character varying(255) NOT NULL
);
    DROP TABLE public.jabatan;
       public         postgres    false    3            �            1259    49202    jabatan_id_seq    SEQUENCE     w   CREATE SEQUENCE public.jabatan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.jabatan_id_seq;
       public       postgres    false    3            �            1259    67198    jabatan_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.jabatan_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.jabatan_id_seq1;
       public       postgres    false    3    204            <           0    0    jabatan_id_seq1    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.jabatan_id_seq1 OWNED BY public.jabatan.id;
            public       postgres    false    203            �            1259    67211    jabatan_pegawai    TABLE     }   CREATE TABLE public.jabatan_pegawai (
    id integer NOT NULL,
    id_pegawai numeric(19,2),
    id_jabatan numeric(19,2)
);
 #   DROP TABLE public.jabatan_pegawai;
       public         postgres    false    3            �            1259    49205    jabatan_pegawai_id_seq    SEQUENCE        CREATE SEQUENCE public.jabatan_pegawai_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.jabatan_pegawai_id_seq;
       public       postgres    false    3            �            1259    67209    jabatan_pegawai_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.jabatan_pegawai_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.jabatan_pegawai_id_seq1;
       public       postgres    false    3    206            =           0    0    jabatan_pegawai_id_seq1    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.jabatan_pegawai_id_seq1 OWNED BY public.jabatan_pegawai.id;
            public       postgres    false    205            �            1259    67219    pegawai    TABLE     O  CREATE TABLE public.pegawai (
    id integer NOT NULL,
    nama character varying(255) NOT NULL,
    nip character varying(255) NOT NULL,
    tahun_masuk character varying(255) NOT NULL,
    tanggal_lahir timestamp without time zone NOT NULL,
    tempat_lahir character varying(255) NOT NULL,
    id_instansi numeric(19,2) NOT NULL
);
    DROP TABLE public.pegawai;
       public         postgres    false    3            �            1259    49208    pegawai_id_seq    SEQUENCE     w   CREATE SEQUENCE public.pegawai_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pegawai_id_seq;
       public       postgres    false    3            �            1259    67217    pegawai_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.pegawai_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pegawai_id_seq1;
       public       postgres    false    3    208            >           0    0    pegawai_id_seq1    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.pegawai_id_seq1 OWNED BY public.pegawai.id;
            public       postgres    false    207            �            1259    67230    provinsi    TABLE     �   CREATE TABLE public.provinsi (
    id integer NOT NULL,
    nama character varying(255) NOT NULL,
    presentase_tunjangan double precision NOT NULL
);
    DROP TABLE public.provinsi;
       public         postgres    false    3            �            1259    49211    provinsi_id_seq    SEQUENCE     x   CREATE SEQUENCE public.provinsi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.provinsi_id_seq;
       public       postgres    false    3            �            1259    67228    provinsi_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.provinsi_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.provinsi_id_seq1;
       public       postgres    false    210    3            ?           0    0    provinsi_id_seq1    SEQUENCE OWNED BY     D   ALTER SEQUENCE public.provinsi_id_seq1 OWNED BY public.provinsi.id;
            public       postgres    false    209            �
           2604    67192    instansi id    DEFAULT     k   ALTER TABLE ONLY public.instansi ALTER COLUMN id SET DEFAULT nextval('public.instansi_id_seq1'::regclass);
 :   ALTER TABLE public.instansi ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201    202            �
           2604    67203 
   jabatan id    DEFAULT     i   ALTER TABLE ONLY public.jabatan ALTER COLUMN id SET DEFAULT nextval('public.jabatan_id_seq1'::regclass);
 9   ALTER TABLE public.jabatan ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    204    204            �
           2604    67214    jabatan_pegawai id    DEFAULT     y   ALTER TABLE ONLY public.jabatan_pegawai ALTER COLUMN id SET DEFAULT nextval('public.jabatan_pegawai_id_seq1'::regclass);
 A   ALTER TABLE public.jabatan_pegawai ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205    206            �
           2604    67222 
   pegawai id    DEFAULT     i   ALTER TABLE ONLY public.pegawai ALTER COLUMN id SET DEFAULT nextval('public.pegawai_id_seq1'::regclass);
 9   ALTER TABLE public.pegawai ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    207    208            �
           2604    67233    provinsi id    DEFAULT     k   ALTER TABLE ONLY public.provinsi ALTER COLUMN id SET DEFAULT nextval('public.provinsi_id_seq1'::regclass);
 :   ALTER TABLE public.provinsi ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    210    210            2          0    67244    hibernate_sequences 
   TABLE DATA               F   COPY public.hibernate_sequences (sequence_name, next_val) FROM stdin;
    public       postgres    false    211   �:       )          0    67189    instansi 
   TABLE DATA               D   COPY public.instansi (id, deskripsi, nama, id_provinsi) FROM stdin;
    public       postgres    false    202   ;       +          0    67200    jabatan 
   TABLE DATA               B   COPY public.jabatan (id, deskripsi, gaji_pokok, nama) FROM stdin;
    public       postgres    false    204   `>       -          0    67211    jabatan_pegawai 
   TABLE DATA               E   COPY public.jabatan_pegawai (id, id_pegawai, id_jabatan) FROM stdin;
    public       postgres    false    206   @       /          0    67219    pegawai 
   TABLE DATA               g   COPY public.pegawai (id, nama, nip, tahun_masuk, tanggal_lahir, tempat_lahir, id_instansi) FROM stdin;
    public       postgres    false    208   QW       1          0    67230    provinsi 
   TABLE DATA               B   COPY public.provinsi (id, nama, presentase_tunjangan) FROM stdin;
    public       postgres    false    210   Ø       @           0    0    instansi_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.instansi_id_seq', 9406, true);
            public       postgres    false    196            A           0    0    instansi_id_seq1    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.instansi_id_seq1', 1, false);
            public       postgres    false    201            B           0    0    jabatan_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.jabatan_id_seq', 21, true);
            public       postgres    false    197            C           0    0    jabatan_id_seq1    SEQUENCE SET     >   SELECT pg_catalog.setval('public.jabatan_id_seq1', 1, false);
            public       postgres    false    203            D           0    0    jabatan_pegawai_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.jabatan_pegawai_id_seq', 1234, true);
            public       postgres    false    198            E           0    0    jabatan_pegawai_id_seq1    SEQUENCE SET     F   SELECT pg_catalog.setval('public.jabatan_pegawai_id_seq1', 1, false);
            public       postgres    false    205            F           0    0    pegawai_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pegawai_id_seq', 1021, true);
            public       postgres    false    199            G           0    0    pegawai_id_seq1    SEQUENCE SET     =   SELECT pg_catalog.setval('public.pegawai_id_seq1', 5, true);
            public       postgres    false    207            H           0    0    provinsi_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.provinsi_id_seq', 95, true);
            public       postgres    false    200            I           0    0    provinsi_id_seq1    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.provinsi_id_seq1', 1, false);
            public       postgres    false    209            �
           2606    67248 ,   hibernate_sequences hibernate_sequences_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.hibernate_sequences
    ADD CONSTRAINT hibernate_sequences_pkey PRIMARY KEY (sequence_name);
 V   ALTER TABLE ONLY public.hibernate_sequences DROP CONSTRAINT hibernate_sequences_pkey;
       public         postgres    false    211            �
           2606    67197    instansi instansi_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.instansi
    ADD CONSTRAINT instansi_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.instansi DROP CONSTRAINT instansi_pkey;
       public         postgres    false    202            �
           2606    67216 $   jabatan_pegawai jabatan_pegawai_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.jabatan_pegawai
    ADD CONSTRAINT jabatan_pegawai_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.jabatan_pegawai DROP CONSTRAINT jabatan_pegawai_pkey;
       public         postgres    false    206            �
           2606    67208    jabatan jabatan_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.jabatan
    ADD CONSTRAINT jabatan_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.jabatan DROP CONSTRAINT jabatan_pkey;
       public         postgres    false    204            �
           2606    67227    pegawai pegawai_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pegawai
    ADD CONSTRAINT pegawai_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pegawai DROP CONSTRAINT pegawai_pkey;
       public         postgres    false    208            �
           2606    67235    provinsi provinsi_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.provinsi
    ADD CONSTRAINT provinsi_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.provinsi DROP CONSTRAINT provinsi_pkey;
       public         postgres    false    210            �
           2606    67237 $   pegawai uk_gd6o4ahy2fhexgv529038ocqa 
   CONSTRAINT     ^   ALTER TABLE ONLY public.pegawai
    ADD CONSTRAINT uk_gd6o4ahy2fhexgv529038ocqa UNIQUE (nip);
 N   ALTER TABLE ONLY public.pegawai DROP CONSTRAINT uk_gd6o4ahy2fhexgv529038ocqa;
       public         postgres    false    208            2   /   x��JLJ,I��462�*HMO,O��4�07�ʂH��--L�b���� ��      )   >  x���Ko�@��u�+�bY�_�5�A vl\%*&���Z�O�9��T����z�y��ƞ���m�����͇q7��a�i�����4Lôz�{Uu�ݮ�j[�-]o���kȇ����8<�׿[��R{8N��0�����c/�e�y|�Vo8���?��m����?ϲ|Ŧj`�j��U�F�����������/���|���t�|�i���ێ*��A�J@�d�@�@nL�y�4&1����4��k��Z�Ak�@�@nL�y�t&1����4��k��z�Ao�@Z�ZI��U��k�3�Y+i��*7��t_�<��MbH�ȍi ��`����N]��4(ܠ�!��j��� IBnPܐ�;�T�Ĭ�4z5�Ƭ�t�mS��4%����rcH�5�S��45&1����4��k����ijMbH�ȍi �� O;���}��r��vy��ݲ�!�[.n�u!�w],S-���V&!�7(nH�������&1����4��k���g�6��4�F7��@���2��E]eҠhp��4(���M�E]m�@�@nL�y
x/�ILit�1���)`��5&1����4��k���}cך�4�F7��@���2���2	iP4�AqC�����{r_��4�F7��@��A���}2�i �n 7��t_�<ܓ��$��4��ܘ�}�pO�[����rcH�5�S��r��$��4��ܘ�}���\��LBnPܐEw5�)�hW��4�F7��@���2�~��IH����Ҡ�6<�����rcH�5�}�����׫�z����S      +   �  x����R�0��ݧ�8����Π�3���bC�mR&Max{�?�I�KI����fü5�B����ҋ�I��V��9��\�{��J�e%	����5����J1AT�K��҈�!�:lAI�}_�<��ͨ۽�A�-�T�S&����'r	��o�K�inP4�MV�!��[�t����.��RE��ՠ+�&��>:�R4�v́�xBA�(��]N�d���)lȵƲ9�6(i��:�6�7��ꠁ���A�k����D����� �~KԦiZ�<��NU�e�����$o��Ϛ\/����]���\%���E��#Pݚ>���0���a���%/�]Ȃ�h�me��cV����*�'�[�_6�w���W8��A[x���zӸ�t������G�9��gx�v���� |
��|      -      x�]�Q��*��g�`zͥ�?���>I~��
�:Qн���]�?����ׯ�?�ǿq��?�����������ߺ�����J��?��k�������_���ϫ���v��şWo�j��??��q�'�����o�՞������<|_(����������^��=�??�����	���iO��]���x_��z���E��ձ����y�ߖ�}�ߦ���o[���ocG��ok�r���1��������yl�X�����<|�v{����}���nG�{���������oE�ݎ�y���PT��PT��PT��+���O��o�g��۳_���9��������s^���������+~�=��ݞuM��ү�n�vM��Ꟈ��]���߷���v{����uW^�������v;�������n���n���ng\���Z��N������k�v;��~��u��no��o�w�.�Z����Z���q%v{�+��{]����y���}%v{����m�^�]���y��Wb�k|>��v����{�ST��RT��RT���kc������n���w�����q�ߎ�;����v�k�����ڿMow^�����śWl]��K����l]Ëm]����NW��U\���e\���u\��\W��\���\��B�.�4]�9h�����+>d�邮�G ��k���E]��˄.���_*ta���r�K��K��V"��+�t����K���K�.��@T��v0�};!�����T����ܷC��oc^�}�8t�o����C�p��M���G8Rf')�����3?�o�����6a�`o�6���o	7��`p�
��]f~DC��M8|�߹\�0?+>� "�8��]x��*7A��r[�������Ƒ���IG���#e~�F��-]�!?�J�R7��`uZ���������i0����� it���F��0i����.��Nד̏Hi�����+��7���x-���r��O���G9R�)�S���)׾�O~=jVA� {�4�wQӠ{�5�wa� |�6�wqӠ|�7�w��(}��Z�����wpH�������@�?>P��t��#���A��?FP����?%�����&�q�U@�?���A!��*�nP
t��Z��������@�?���AA��+�nXt�Ú�����*���eA�?���aa��+�nXt��ڠ����:����A�?������_!?�>��>��>�ӟ ���Qt��Qt��Qt��Qt��Yt��Yt��Yt��Yt��Yt��Y�5���ʟ�r�˟�r�˟~|�^�]x�J:R�#)ӑ���?��@�?���O?>��39�!~:?����r����r����r����r����r����r�˟�r�˟�r�˟N�����߻�?��w�ө�?��w�ө�?���߅���#e:ʑ2�H��ө/́t����� �����H������H������H��������N����b�=����~ȟN����~ȟN����~ȟN����~��.�o�9��?q�H�����!:���᯳����Y�~�-`?����V��������|��t��-b?�����!:m���!:m���!:m������p�LG8R�#)�!:m���!~:lҧ��a|`��=�}��>ll���ۇ�������a}h�0?�|�R>�)����Cʇ�!�����aH��?�|�R>�)�g��!(�g��!}(�g�����=��3@��=��3@��=���3H��>���3H��?���3H������|ȟAʇ��|��.�o�)�Q���(G�tȟAʇ��|���G�m����6�!{�U�=���!(�3@yȞ�C�R�g��>�����<��8�X����j�������g_�˟q|�.��{߅��4Gʯٛ#��͑�v�3Hyȟ�C�P��pϨ�&�/!{(�3@yȞ�C�P�g��=�����<�� �!~)�3Hy��`:��.�/�,�<|����o����R��B�÷[Hy��)�r!��.�<|���s��x� ����w^@y��(�3@yȞ�C�R�g��>�����<�� �1}w��?�����<�� �!)�վ��)ӱ)ӱ)�!)�3@y,��B:�� �a|@y�P�����a{@y�P�����!�a}Hy�R�����!�aHy�R�����!�aHy�R�����!�}c��?�C�(��<�O��=�C�(��<dO��=�C�)�~%R>�O��)~��O��|ʟ �S�)��'H��?Aʧ�	R>��.�7=�#E:fs���p�Hǔ?Aʧ�	P>�O��)}�O��|ʞ �S�(��'@�����'@��=Aʧ�	R>�O��)~��O��|ʟ �S�)��'H��?A���mk�c����V�#e:�#e:�#e:�O���O�ι�	�;�>����'��犒w�÷ב���.{���eO�N��	R>�O���;��|��?)���OʧO ���C �|>� � �ӧH�� R>}&����H���H���|ʟ �S�(��'@�\>��tȞ �S�(��'@��=ʧ�	P>eO��)|��O��|�� �S�)��L��	R>�O��)��O��|��]�;��H���H���H���|ʟ �s��!}�O�ʧ������i{@��=�|�P>m)�Ƈ�O�Cʧ�!������hI��?�|�R��)_���/�Cʗ�!�����eH��}��X�g��%~&(_�g��%|&(_�g��%{&(_�g��%{&(_�g��%{&)_�'x�G�LR���$�K�LR���$�K�LR���$�K�LR���$��w�}+Ñ2Ñ2Ñ2�g��%&(_�g��%}&(_�g��%{&(_�g��%{&(_�THG�$�>J�t�S1�g��%~&)_�g��%&)_�g��%&)_�g��%&)_s|޷2)�1)�1)�!&)_�g���Si�|�X(_>�ʗ����i�|�h(_��4��9��t<�Ә��|��j��8�Q;N����q��Ԏq>�v��S�ǩ8�3�sq�g���]x�J:R�#)ӱ)�!&)_�g��%~&(_�g��%|&(_�g��%{&(_�g��}��(��C:����3I��>��/�3I��?��/�3I��?��/�3I��?����!)ϻ}���H��đn>Ñ")&)O�3Ay��	�S�LP������i{@y�P������i{HyR�և���!�iHy�R������!�iHy�R������!�iHy�R��g��?���Y�<���)|(���H��Y�<e��){(Oٳ@yʞE�S�,R��g��?����Y�<��"����Y�<��"�))Ϩ���V�#e:�#e:�#e:��"�)(O�@yN��E:���){(Oٳ@yʞ�S�,P��g��=����Y�<��"�)~)ϕ���w-)O��HyʟE�S�,R��g����]xߊ�J���iiR�>0M��g�Iy>Ǧ����Ӡ<}x���O���jP��g��=���Y�<e�"�)|)����L��Y�<��"�))O��HyʟE�S�,R��g��+��[)G�t�#E:�w��o��H��?�o�@��>�o�@��=�8�� y�]�,~�=��ߛO��ұ���#[�����Y�1x񳎓��g��-)��g��-)����*)߽}���H���)��)�!)��g��-~(��g��m|@��=�|�P�m(߶�o�ʷ�!�����m}H�6?�|�R��)����o�Cʷ�)�����mH��?�|�R��)��'I��?	ʷ�IP��O��-|���~�C�$(߲'A��=	ʷ�IP�eO��-|��o铤|��$�[�$)��'I�^���IR���g�T�$)߫��3ґ2�H��t�L��IR��O��-~��t�ґ�A:dO��-{�oٓ�|˞�[�$(߲'I�v�)���!��=<�|���   �紐��x:y�����n��t����ow����R���Cʷ�zH�vg)����[�$(/�#(��MG�t��IP^�'Ayɞ�%{���IP^�'Iy	�$�%}����IR^�'Iy5�F!��w�}Y������g�T�$)��߅�g8R���#E:�;R���O��?	�K�$(��6.�����=	�K�$(/ٓ��dO��=	�K�$)/ᓤ��O��?I�K����6�m�tȟ<Z��O��l�]x�?y4�E�.�=Ñ2�H��p�L��IR^�'Ay��铠��(/������=��l(/������2>���)/�C�����?���)/�C�����?���)/�C�����?������Ay���K�lP^�g��=���٠�d��%{6(/ٳAyɞM�k���>����٤���&�%6)/��IyɟM�K�lR^�g����]x�Q���(G�t�#e:��&�%6(/�AyI��K�lP^�g��rc)�no<;���-(H����/=��n��]m��L���ۍ�G��^ӣ��v����vK�}t�ݢh�l�,�d]+n�En�2�+��8fdG+�y�q��%�>:�n����v��͞�[$m6��"i���I�mmww/�$�6�n����v���ֶ[.����L�hn�e�>��n鴏n�[>����P��g�%�>����#M2j�#MBj=m�����9��H�p�G��1i�T{iU{1M�j/�IT��4�;��&Q��$��b���^L��ڋiW{1M�j�&���H���y�Ij�<�$�vi�n�>�$�vi];�4ɮ�G����#M�}W>�q�G��c>Ҵ�&	��>w��N��t�I����݄��&��x�aGϻ;�����nƎ�w;v��ߖ��~�m���~[�����gG��mЎ��ۢ}�I;:�o�VG�����~[����6kG�m׎�۰]��v���&�V샿E[��m�N�[�[�o�V셿e[��n�n�[���o�V쇿�[�Se�wGG��'���
u��{�B=��PG�')���a
u��{�B�lh�PG#�3U���*0M�d�����p4�?��n�g����&,�!�����g�[�!,!�),!�1,!�9,!�AG	�Qu���PG	�iu���PG	�u���PG	�u���PG	��u���PG	��u��PG	��u��PG	�	���%�'0KO`(���P,!<��XBxC����b	�	���(!<����3�(!<����c�(!<���£�(!<������(!<����#�(!<����c�(!<����(!<��XBx2C���d�b	����%�'3KOf(���P,!<��XBx2C%�G3�QBx6C%��3�QBx:C%��3�QBxBC%�g4�QBxJC%��4�QBxRC%�g5�QBxZC%��5�QBx`C%�'6KOl(���P,!<��XBxbC���Ćb	����%�'6KOl�s|��;�X�s���;��ظ���؆:Jn�����:Jo��������:��y�cf�<ġ�1:6���A�9J��v��,����a�1P���c�N{�� Y�<����3��f)�Lt�YK<#n�L���&���9��sx&;�GA��v�����p%E�y{FE�3��>��g��}�Ϭ���+�q�QX<x�>�Gi��}���"��B���.������w�?�V������y��Y>��Y�+������g��[���O^y����H���|V|#�}�	�[�,��9������?�����L��      /      x����r�Ȳ��k=^�wg`��|��-���;&b�$B"DP� m��'����{�Xk���&�B�_Y�&�T]��j����oJ��`������
������4�m��������e�{����Z�'Ye�Z7e�)�#���O%�\]�w��h�6us`\�R���򁕥�� ������m�]ջbcn-_�Iv|kIF��E����{�x����3'HWq�y����9�[��*�-H_���J�k�;��ޕf`���Qe>�����������򠫶���(����7[��
�?.*dT�>4�����5�Zݔ̊VQ��%��EVTz�>x�����8x���Jϑ��������c|p)����R�o���`0����y���ˇᐭ�o0[�p�O<w�������<����J��bu��~�y��W^C|N%?�n,�aD��g\�ϘÈN�<����V��5��m��{�B��!BPH�!x䫳�u���|�gx\�
W)��!�B��'��A�A�}�]yϊ.�1���	��KH/��)N����ʝ��on���(\��4����\�z����a���we3���O9�z�{,+xB�ֻ(�gzJ1�rQ��?�>�$�~○����u�jxg�jW�����E�}�Lӗf-�L�ѝw_�Fi��hӹ���f����x����/��7�s�^�Tx�w0��bX��i0�b�~�OU��+�i��+�j�'O(a��+aT�C��4x嫏���� �/��U�JaJ���Wd&S�s�q�p{�,����o��������5ޜ�b8>|�K�Yf�.aƹӰx�d�w���j9��Y�Ӎ��׋�y�l�#OpX��[*�7���Gm��rk0�*9�������^�l���K7�d����Kɓ�O�i�w羔���7�2޷�1�Er&4�krf3�{����<�H��䨱��w��Ǣ1_i��P�J}r���2|���$_}xހ�9k��������[݂F� ���ǾҠ!�&5'h0շ�Fߖ��D�3}9����x}�`�/�b_�b����.K~���2V��V��z��D��h��D]�")�LeU�0��9Ka��7���S�7�<��9�Ca�[�Ki��L� ��P�����+B�3�����;R��w	Zz�ύD](U<'�>~�R��ntە����@������Ys�����	\���b7]2C� :A�@*�Gއ��~�.���	�����ce�я+TBS/�1�!X1Q\w%
>X�a�T2T��N@S������,�qvD��:A�ԗ��w�/+#�B�$:����7�F���J��(�����6%_�)�,X,����O����|$I#92ku���H}����M�d��.���v[��f�H#��E����� �	^d�(J'x������7���A$�K'`��~�Z����\:�J�k]��~��<�����iJ�<�`G۶�������-�ձ�����R?��A(�\\
j��˗e���ck�")u�����
won���R5ey� M���f+�W��r��BuQ��Q|��v��r*2�x��=�@aT�}��R��b��cYT�#|����9M��,��C��-HR���*�M1F���ߍ�rʒ2������na��ڌ����Bs�d��l���*2kyF[ꦄ́�J��-[�-�U�À�@y�03N���,W
��M��ҁ^��G�����,���;`yoۭ���w�����R�e�������n�'$�ʲ�X����x�[�ˬȬ�Y�>�&�/㾠��)�-�Y��?`��W޷roKo��*�3��Af`�E�ؓ�$-K�=9�`9v��\(�`�����,�FX��TqY��K�9�����^�\c�fq�uy��H��Æ.-�X�;�����Y�4�j,ˋ@A?j���.a�T%nH�'�A��Z�rIk]���E�jw`�B�ey	L���Qhs�K������q���ٕD[��b���	��ƻ��%��L*�,,W�`����[-����u�ԅ��PS���Z_�rg6��r�eq�3�MoXK��ea�
�Ӥ��v0�(L�\tY0.$[X�_o4��e�b����|��Ƙ]�m������ą��c�M��ir�����"�1�}vsm.-]��¸��a%�<�;��K/����n�g��Vx^/\��W���v����j+�5fN�[}���n�a�[��,�#����v�[��6\��,���v�����e�&��6%m��ܷXXYX��#��-x�[,�,-V��}k8��5�������-���P̼~؍�������M÷,�W/�S�B4k��G��Tc�@��-��?ו�B����V=Ď(RY��lM
<s���R���ǘ9j�2�X�M��œ/�P}��1;P簥xޘ�� �_/�BPt����wU�Q��^ F�{Q����+2��S@nj<��3K\�	)R_/ ����.���L�� L�i�9����x�2�cMC�<��X��@�9�
5�W�^�]�P�;1򵾇[�٣2�R��^ �x�q��(!��{����=/�f�9H)��!�o�
��tA(��<^�C\p��������0Q$�^ �0o;X����؜���1Q�SyWe�o��L������1��{3r�2�h�.�5>�߷̎�a�*��9�ͺ�1t
B��Ba6'�&�V��=�n:7f�H��@��u4�)�AP�2{�	V�u�Z�L���nX�="e�ddS����3��;`���g���-E��_c"l^�[\Z_�LÕ�`�r�62S�a��?p:.Pi#0�Mlɽ�x��_�h#1IUUE���\��,2^�IfA#hmů��s6�U���
ޯh��,�q����e	�rSt�Wt�e��-p�0��e���r���'���$�%����w�?C|�W$�E&��S�-��@��73�-f����C��%NH��X��ƴO�e8�;ݖG�%���r��2O���l`&+�E��z7ا�T��>H=�j�N�\Rq���In�=kJ�	�/@Cx�wE����^�%�fr�ӄ��x|?�~A�Y\L	��X�Ks�X�Yb�.7l?L�1=�i�*��Ru���k"�~A�YZf#o_��_Qe��X<Lqv���+���w6o$'���2"�5����������<��W4�Ņ� ��q���h���NO���F��lya�%!f��4���c��0�졫��2�S��f�q�C=�.�b�j71�.'Ŀ ��k�0Eդ�^`�1�aq��iz���ܰ�2Sq��P_������~@q��1�$p��S�q�W8ϊ�?���z;�B�X.�Է��e�H�9�H}���z_ʦ���	2��5�N�Iũ��&��4K2��;�T�~�½o�"gϏ$^ӳ�.���T��#܏����M�j<�O�i�sXc�F�MJF*ΣwP��[����]�i,�������v���K��r`�2�X����
g�3�G ��	����z���Ld�I$�Ȩ�D�W�Ϻ7���8��!��
���YSq�C���O |�N��D�8��A������p;�M��I�bg�<8���x�?z;�D2�����)ךBe0�i(6&�����;$f��t�\������a����v�]�]�o�	�g�Ɂ��2U|\�����8k~�LԹF૾��&#X�y������D�*�2��9lw�y�+W���ò��k�����$q���s�
���\�G�d�ȁa1�3<����8Q~ ��l�W������H�rCז�"9]Ȥ0i�"�$PD�2b�Iqf�É՟՘Y����P�޶8,&Em�8/ޡ��˄��	��MGw�P����oX�|�Geԋ8!ޡQ����PSmyh-TB+X�6��|����EBȒ|����z�@k�8��!Q�	f���x���S0;`�X7����2�	�򶀷����[c:_e���e��La    ��3�)�Y�+Q��u��'����,�C�������Su%�wh��5�Dp��&���2Md��:�;����\q����9�����1�3q��C�M-���O�Y�+���G����q�Lo�Byd����o�n����[&�,w��]Qygϔٕ��T��= ����u�[(�L6u&�x����n�S���[���@SE�|����E�e��i̣�������2�d�x��f�˨E�h@E���Ơ��L\5�����Dw�#c����N�E��� ���o:L|(��2yda�0��0�ꛊ�G�[$�,/�h�K��$K���GX��AA���T{������.ۺb�2�dY)*��$� ��ƌ�T��>�x��2�ŀ�Mǚ�B�dQ9���+B�5؛�q&���Z**P��~�E�v��r|�#��L2YZ��J,7���u�����o�F2��Y��o�]�X���r�:��^�[|��p��PI.�s�@%Yf� �1UȄ��2�dq� ���ģ�f�"�dI���Їa�.TG���TU#d�W
#��%+�
�z�%g�;,_q��sF-RE����������ѿPYO�x�2�m���Z��v�gk��K���c\0��P��>�x�Mu�Y��ڼ�����'��,&�CwH �0M�gkT�tM�}��]=A��# ��gm�ַ*'�C��i��t;�ϭ���2	4��X���b��T1(1�0�㸅݀)I9�;�?(�C3n�>�bb&C4���"�&�е�*(&�H�Ќ��;� ��P�G'SC3���z>z�5���R�9w��:����1T(�(��)Y)�`��zSa~,�f��n��vem��H�2���&*`�,�'�B3f*�(5n|xA��f�@]��t{�bwK�Q)�,ĝ6zu�}$�^B-4�x�"��ݏ.Eɠ(Voh�7��W�A?�>3P�;�j0��̤�H�ό�*�5`��܊D�f��Fs��4��|&R4#�RP��Л��͂i"�B���|�/:�����Xo0��<��������Z�������&e�AIF�����]����Ѽ��Q�T�hf�m������)�gBhF�My<n�WJ�ëo�#i��t�'���R��qU>�h�<�~,�f��U�n��t��t���\}�ܡiT4Y�|*���lwG*����cI�z�{Ɖ������u��L�V�G��m�oMan�ҵ*gD�4`j5S�d⢺-R�7}[����n�����L��`��$��I��KÎ�,�,�L\D7c� -�6Й��n ������U~�$:#͔�����V2L�u,�������c�\�8Cam�{U�mR&.���z���������y>��p��F�c�_��[�K�NfJ�r��P��~�a�dPr�3�`�K.��ĵq3e��F�)�Ϡ�,=#/eGX��{�&��n�������|"��g��N"�-K��uo��Vx��{h�f��2q���/�*���"�3#e�B�(���y.[��@ό�P�[E��i�|q��Y�Y�'�z���mƊ���%|%�.�KK$Mfʤ� �}Ng�#W4#'����������f�e���A��5���A3��o���h`��)�$�3�b���1��"��JmF��񴔕��&0+k؍�l�7�8�*@4џZ�p,44�f�qdڦ\׺���"uQ47T�}���N��ƅa`�s��_Ʉ�J�p��M�|�Bq��R�~�4�w��5hS/�aF�3���a�1�'����0�4����ʺ18��qpъw�6x~��wN&s\��m1�e⚳���'�Κ̘L\nv�G�4�'�V�����fS"��X��������h����N�b�6���H&�4;K�%�V��:�(e��)'h)�V��b�5�(�>.1�]���KB	����@G׳�	�+q���kr�R�U�^� ��^<י�`��m)Y#��i2Q����k��m�Z��'�F.	z�.���n�P���g7�$�L\dv�QF��̦4^��DQ��oh{..0;AC���!�=n����Nв��N�3qQ�	X�'��Eu�*[���Ɂ%+������c�7*TL.�Wq��xoa?�����͇�DP�
����uj�C/���\^8��O6E�<:�#uU4��h㽹<>��q�$C�(���cF.��SP|�#V����s}S�	���x��ky��;&���!�\8r��2��:��sy�ȡ���D
�5���T[�@_�o�M���[�v�����#LS�\?ri�5U��r{ߏ/�Re�Q�4�l%��������jd��D�A4��Q%��^كV.�*��s<P#����%��V�W��|ry�ɥ��k�w�~�T]�C�#C�2�
�ry�ɥ�k�o�m3��cM.,�F������Ņ�j��[S�t��e��<���"E��q(2�u=e����ˍG~V�;�/��*�j��ʇ�U'c������)���˂2����}{����kGQ�,�޳�8][��F\n�WŮ�h|.M9�|59�z"��1p���&ӈ�sMː\\�6�Lq��W�}yUx�u����TbY\���{rz��Ui'`�ps�1ץ� aQnō�C..M;�J`C��6ʛ�k�N�R����Ķ��i..R�2y�3[�z�np�ר���&�vnL�J�-�R��]���/��6��TG�0_��b����^1+'׫��+�le��|��M�i�.�T#������[���..�S�P�Ǚ��c,��/l�PH����1�¶`]�a"5��
V���I��7����R5��8|]�����&.TR#1S�O�}�� ]x6X��F^��ρG�9x�

�޸Ţ�M᎙�-�����]Ϳ�bY5�|��@�^3��KЋ��H�yW��r_�D�XZ��P}h5Zo�)�5,����K��H��G�/0l�v
�k�㠮�5���N��]Ͽ�b9eJ�|\�?��v�?sS{W�rS̅�jd���$�^o�#�TW��L�y��/�WX+�/i�,VV#0��� :��au������'���vKu� Toj*}�����ǭ>�-,�7��~d�a�9|q�j�
�~�g��l��"E�jN�&��7�_�;�5VV��QVsZ���S��\�B�CSsL�v�l��-|qljKٓi�����Ĺö�ÇkXx`R���9�.�i]B�85g�sx�R���E}q4����֤2�ǣ\04
xh(�,�rrX��R���85��R�%�-���'��	E\2��I?L)Q�o��|^��M)5ި���U}M�̾8�� 3�ӷ���s鋃N�:?n�b�CXtM(�&4Z�q�on�t��
C�#��Ӡ��|q��!Q��@G�?jj
��k2M��@�6z�>#T#�cM*b+2n3�cK'�^c���m��I��A�L i8���%�>.U��d��@˾8��2P�-v0p�8�䠰dK�0!>�D(<sV�2M��Q��2��|���Q��pĩM�c�j�`�v5��|qR����0'��-ܠM�řM�`x��5�2W��ؠJ��ttCH&wN�cS9h2̙&R=�h�pr:&��d�S@[į�1�/�w:���fT��vk�8��)�ĺ�+(��':��E+c�Dݱ�%�>�X>���/g�N:���t�S���J�޿8��ӝN�B��ƵѾ8��U��������`���24'Ŧi�9�V�aN����{�n=}qz��r��kYmAhco2�B4ǡ���\n�T���ܞ�Sٳ�޼�B4�h5�W܉��t��|�9�7'Q��lH<��)Ms`@�֛-�'ڕ4�
u�Z��l��y�8�i��L1��u��S�����=�����P�,Z��d��Lol��'��90�����W����/Nc��2�=t���)Lsz{Q������L3V����̴�+�8}i��M���4��^,c����3���I)m�Ş�sf�b�[�����|������W���_Kv�6��>-���~�sVb���~Plv='aKw:E��1_�x=�    �wnf[���:f�X��Y�iq^�����gFJ���(��ŀD�g��ޤ�/����Xk�9���k�Μ��%ֆS��[�ݭG[+G�_�e�}ƹOln=�\V\/�o�H�0ʽ۔k�k����+�΀J���fLP����sR�c
��V�Y�)�̸Q��56�]b[�)�+�@��j���m[,줳.yPō�� ?�4ڕOXLJd��e����gX꥛�(8.1R��5�݃��/��vq���zi~M�ƙ����:k��-� `�H߸�Ԅ���0LB��ҲA���5]����,z��� ��q@��D ��v|����d"ǥ��k�>p�/�m�9C#kHY	`���u��[Tq�
ջ���0��3�\�r_�g���S��qA1��J4F�D��JK���2��R��;�)�Sq�Д�R�6wǥl�u���qa�³�e�1H$q<u����5���ܠ(��h�U�sj���v��%	��q"�s�6��|�k�bB�3%��H]����kA���8�;?��n�C��6��8�-1ǰ�7fp	��	T����9��_��s���|�ⱨ�*;̓7���8�g��,�����<i��Ų�}P=f�ˊ�G|q��	^`z�P#>_��s�iǥ#�8��*BԳ��}q��	V<R~ջ����b�3����L͆q�JK�-�<�����s�ڮ<�I��e���̼!nw��<1R����IE�/��Â�:��VﰺzXx�M�f�����(��S,c�**�M���}�V��W�wQ�b0FlI��Țw�q
���ג����b|��� �oJ�fҶ�3ZBt_Qc_lI�`R�"�N�v􍄂gD�������禆��Q;���� ;��b�9)\��0���Q�؄����`w���z�9is�)PuU�M%:�0I�vF
�?z�P��؉�b�Ƌm�,�i��5���`g�X}����`g����m��c��q8��C���I���댅Y;T���31J��u�ʍ���m��⎯��he\�3���j�	[��`���$7Il;���Y_��+��oS��u��T���^��cis�g�]��cRob�i�Ҧ��˅>�^wvP��F	��bw���]g�tp��?g_�8���i.G���%a���z�dOl2=G�+�dc�3�}��j�E�Ǒv��� 2��~��v���g�v���C�N�Ŧ�-v��bWi�����bWi����b+�W ?{F��J�N��Ů�.1?���M�P�:o{J�8o�J���t�]l.���v���g򁣣x��`��N�]l2��7�.6�vi�o[L���(�.v�vA�o�JOh�ަ�y�]�(��|��+i�6 YZ�
`�����S�.��]��8<,O��Kt�bW���7�f�8����Lx�w����2̩�%�4CgD��&�kYtE�}���Q�����u�W5����������)�h�Pv&�8���7=����Y��	:s�B��g��-}4ޤ�:t b?��`��L���u`j��,�H�]����Rq���
շ�z��޻����0[ǁE�sݗmb��oR����0g纸����m]v��%�88�N|��i�&^ֿ�l�z�MT㝖8Z�;�W�*��x9�2��+�b��Iѻ���_ESWܶ��S�(�S߱��a�w��5zxW�U»P_���;��	K�]P ��>��材ֽ��ﴨ
G]W��W����O���vƠ�ۖ�'U}c��� ���:wS����rN�Q�KK�e}�>a7&�XX��R�Yoћ��������;��G�����`>T�X�3L�-���B�	єqa��q��k��m��? ,vw�X�s�u��W��:�a,�vw�h��b׀�uu���H��]`�>����Ϻ�7��`;1�,�ww����)�M�c���VO�?�N'��z��%�We�����}��b�U21r���~C�U���T]5�S�&G��T���L�﫮o�#ay�K��ö�I}�=G�j�f�*w�	�(���mu/��%熧�Jw�c�<�ƀ��l7N���A��2S���������g�&mpB!�k�v[z��~�_�4���K�&Xa�z��kX���Fȥ�D���Z_c�悁2/!���ʛ�n�WX��W�*)K�v�ڑ�u�A�d��T�+x �2��������S�TXY`�`�9����XI� �)�+p嘎��"��|n�z�gW>h2GȖk)����{�)Α-�R���4(���zڲ���R%UPzB!##���#���v�s`&VR.0&7&ܞ]��{�,��R��%��@��Q���^4��rQ)0������$�3��ry����)��ջ'�O��ra9������+RM5���q������F����	*請6h��,��rY�zM����$��h���Z�E��l]�� e�eb�¢��Cg-�eb�c��g��m�۾��5����x��-{;M[����̓�(��b��>.JXl�#�O��#_��*�������U��Ĳ���P��Zs ;+*�����M(�'�a۟$�NJE���Z`&���bMeq�Yʣ�z/a۸���tM��\Z�����1���(�U.0R����[����rY����uq����w�'�T./Q���c���pE��\X�.��}��k��bj�%�Ϩ;*��"����A�Bsy��#e��A���ܣk��|.TT.��hR�A��z���\,�\X��nt��F	���y.�T.��ž�k�������ł*7y��蟻����-_��,-V_��29{��{���9R��,21g�C:��u
�����r�澢�I�J�\_Y ���G=�]㕥���r��~0�ȗ���,��ʤ���i�yh�-TV�SLd�SjA��@���E&���h���nZ.�W��ێ=fN�C�X��,M����S�\`YX���ow����nw���[�D]�y���/�W�*<}�[���XRueYh�Ki�F2j����ܖ�m����Ţj���R�o��������u�E�Tʽ�~S����y󁼉�@7F쎀y�C	���
�D\(����xl��T���LS��hH�����,U#,6V�dt�0�e�j�%��f�޷�im��i�P��){z3y��	���4c�ȯ�VU�0��a��mW���+��j o� �eÿ�ɩc�HM]�y��Zj"ob	�}Z�Eh��O]��i vitH!u�,�Uh�/	5���:���5���rr1o P���;��h&�a}>#0A�@l�� S��o*<�e�m��
�F�2�#�޻:��c�Rr8�BzL����>l�i�	��H�9Ǐt�հ�6���_V���fx��$�C���w��;kz~�B��`ѷ]��%�(r8��{Sc�JW��� &� ��cg��x�]G�q4���.(�f�b�F�e���U���uX?�G+S�p��o`�\��>rP��Rlkbc�@��8���n�"�����=]��#��o���T�A��b]d`��+S����E.��:�!�t�16!g�J1}rؚ�b%��b�\c�j�w�4�rhF�~��L�,���? �B+ܺ�+0ut�B4��`q�ۃ���M�f]^�#؏e��a��|�`��W�в5�9�y�)�h�.B#ɷ���rM��+uKn�&�c��ʨ�o�H��Є0ޡ���W����,�!L\���L��Re4rb9�b��e�hd%����PO<�¥�hĥ�,���L.C#(����a�o�LZ$�FRn}.�M��m�T�fM�c�� ��~�&iƺzÕ��XHʼ%�h��V�keJå�h���<�*¥�h$EXc�~���¥�hD�;�1�?\���aI���M"�Ih��i�bm�<�R
����ú'�C3\�F��%+�1+C3���>�-�jUw�e�L�����w���jhBs�]i���B VB
�逊�a��{l�T�%���س�;/���@24    ���h��B�3Y;��B$�����n�o��=�{�*�=3Z�`~�e�ŗ��W�b�j��e띱k�t��'�g��)�� B�C�����U�c)��J&uf(_]��G?�l\a��T��hG����(�s���q����~��ؑ��x��R��m�g�MU�T��`0�hJ6�H3ҏΌ���${P��Al��ؚz�D�a��L�M&uf�Ϧ����Մ؞z���,���6FO�����km�2�+���Ys;��'t��F�s���3�,B�?��s�����y�J�Ό��"���� {T�i�S��+͉Q(���sb��g�Ir(���,^mㄾ�V	T���%��"SuN9`g�T�U�إz�`�����eK�	���V7d�/v��/;*Y�n�C�PlR='�ؾ�F�7|�*�TZ8���'����e�U����ݪ���4ŠZ?4�
�V�sT����sȞ��H�XN�,ƽ�اzN"G==��N�sV:B\��tw�D��K�깺k`q�а�/*��E��sl(
cu��bK���IW�[� 28x,󝖈��1��h�hJՐ�z(6������NQBюT�U=G�8s�������v����ԏ�M�H�V2x��f��cI,}���z���it^
���s*��>P@��AW�KJ�E��7�~�]$|,(S�{Xl�d6�V�19�c�'4خ� [�w�Or�a�?�C����={V�a>��m1��b��W�?���~�[,���b��(��R�vJ�K�V-��IGG4�z6 �Aۡ��H���9A��x|dd�=��^w3���6Xu���"�
6���'ة��o�dζ��'pئ���zܤ�sz@(6�>A���N������]T���r6�������v8H_q��i,U�i=�r�g �K�M���ci��/	�iܑŜ�Ŧ�'��2�ͦ�bk�8x9����c��ݭO�(���y�&�.Jy8�T���/���	��cڍe�cݢ��p Q���C���	��qM�M��nj�	�y�x�
������i<@^� �(L��~���@�]=�:6�u%ӄ�=�9 �����b��)�;i����3q����6�pxh��v�wk�ú���yv�?���PaϬ��9��������pX�q[�[S���)���0��]�[Ӡ�>���f6�厳�n5��f�S����b~����7shh��M����� \��,0`ѷ�%��A�L��TYY n*�gԘ�!v�>��]46W��:j6g��G�\UY(�#h���]�Q<?����4Gh�M� l�r���PNYZ�>aql�yu�Ly�-�U�����u^���O��7�m��;q�\��^�����`(v�>A��������o;�H�١�6{�����¶j��5���:�/d�����;���[*�,/R��6��F^l�}����A��C�.Q�ʮ,����[i���c8�8�(6՞BM��L�},�K�_X7{Ē*,���WLY���Ϯ��[(�ZkS0���[���C���	�O�^�~u��d���Z*�`��݁i����&�pA�618����-/VZ� :
�W��Luf-TY���ܕr�i+�JH�����z�,����Ĩ��ʢ2�'�髻�����)K�Շv_6�W�vMw�XL��(1Ur��;Vfb��0�B ;p͍@B���	X��*�m�� b�����|0I_Q����O ��׿ڀ�؀�/Vow��p��P��=e�B��|�-m(U��}�E�8�{�n�6��N�'���������h�<R�'��Mk�W�c6�؜�e�+����o�b�dQ>�ri���#˸DG1��������jɂB����>4��yܖ�=�O#�����x�eՁ..L��4x*�t�@%�}Չ��e�	p
�f���X-��(ΨRJ�M|B�_�UAEe#+�`J@�)6잓��'8xr߰F�h��W����n��6����I�
9�|.;t�,ө>�w�:xop��\֌V��P6U	M�����@��j����$�埱RS�MI*�Z�*�*So��ػ��ͳ؝�A�%3���k�W�u����t��O�����X�S����l(��v`���0<����~�� 뉪���P����"�a8��r;��f�DB�1��e7�,��V�1.%��v�)|tM���lIK�[q���@��G\B@W�e�3:��04ݵ��f��b�����O��13�>����8>�3�1�p�/(�'ZlJ��,P�S�1',^P�?�c=Û��5HG
K�g�Ȥ4R�U����]5��^`�dmp���.�|�7��cie����������rg��m�)E�\��ٕG0��a�k��>�����%Z�rr��=�k��24��-y`��G5��������������\Y�xFT8��;���^\�ybS�($�K}�+Z-Q<#(����ܞ7�9Є,C��@�B^2cq!��C+�F��e�s�cq9���W\��Eh�P�Zbqڈ��7��>4-��;CZ"|F��!�߯1����N�gUCQB,.9s8��(~�s�2�3b�����oo�$��I�լu��/S9�)v�W	�:a$��d@.8#,5��h�f���b3�ٴ�+�=�Ȍ�g�گ��-%W��9��Τ�����tΈ����"����`��	x����$�7��!��2�F�T�Xd8���A�ʦ�0q�ұ��vD�B��=��\��,�<�q������=*��K2a���g<��k�4���0!���>bq%ڈ
���O�(:q1���q#�Xr�a:�:0n��p�
Mr��)���,����Z�1E5W�9� �QмҶ��ťi,��v�<q�L,.La!�"u����w=�t��i�ԏ����+��}֦�e,.Ns`��-��T�{����4-��9��TW�G,�Ns�������#�]�Ec:�j]��,4W�UG�O�E\�6�x��j���>�Z!צ9,ӟ)����8	����^$�,:������п��.�I�e�q.�K��whR�����^�!��{��^Y(�L�T��ʶl�	��R5�ښ�/�#��;���šw<�)�5���j5���om*$O%� �V�N��:t��ϗ	&�z��=xgf:��$S0G����^� q��2�di!NI�+r�-&-RH��>u-�8�rC/E��n�M���X\�氰Q�f ���+�Z�؟����Ǟ�8cq���9Bc��C�},�VsX��9�g��W��H�x5�0���U\��|��hl�]Y��,*0ͱ?�b7ܡL�f���B��W��z����� �7���a��8� ���I���z��s��[}]bџmC�]��f�T}�Q �$)�	��*�)��`LU{�t]&}f8�����'���Xm`�J��L�����F$zf_�͕��<mF`h0�?�����	�n�E�ђ�уJ�)�����۝��f������(U��̀������a��鷌i�
��yU_o�P��P�)Z�����zcf)����r�����nБ�m�x�g&3ǸtEU��b䌸�l���'�w�&��8�f#��O����C�8l=�M�"���G">�1�|�Y&�3�&��g�{Hd�fƉI�b���výF">�A1��xp"R���k��6�|�f�X�i���56�F��||װf7���c�3�6����6us`�H���֗SV�7̊,�%�73����E����7(83V0I�|_`~�M�4��i8�w吀����/�Y4�[L�B">ꚁbx���`�������3�"�e">ךq�7���HćY39+R��`�����f(<�"����9/Q2�pĂǹ0�`����:��=Zm��\ʌ�@]�湮�*}��@ؽ���%�f$��;֕y�?�EU?r�eU��/7#3�ef�����$�6#)�Lb">�P������h��X.�4��i�$����dk�ʆJ鳊�ti��I�����
�(�,m��+������h7 N  �_l��a>��g��2Jħ[3G)	��R��`x�-r��n͈���`���O�f�H��X��� �q��;]"p,,6N�7��s��HćZ3 ������hZM�T��D누����T���������B��ӷ��l�'��᩿H��[�������NO|�X����i�%~�Q�>�~�q������d:}o�bS����4��1��+��|'�LF�Z߮�C��GF]�v0!�hN� ���������7�� " �7X�4�� L�������_ �5���[���HaK����>������������@| �̟`~�	����������JA      1   H  x�]R[��0��O���8	�i��M	QUi��uy���xƎ�@��`�d`J���(�4�(``����,�A���]�2 [$p�*�,P��AYuu��*T�C�vH]��T@S)J�N��>U�N��)d�[.wid��#���#2!�
��,:#[��˳����sd��B�F�+��"��#���Ҵ����������]��[f{	�Eo���2z>���4���5����Ff���QMau�9�}#J���4Hf?��r
3u?�j���?x�i8�	Z��I`3�����9,���<vE���$���     