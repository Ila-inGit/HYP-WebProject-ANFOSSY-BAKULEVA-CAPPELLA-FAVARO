PGDMP         "        	        y           CSS_project    13.2    13.2 2    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    CSS_project    DATABASE     X   CREATE DATABASE "CSS_project" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE "CSS_project";
                postgres    false            �           0    0    DATABASE "CSS_project"    COMMENT     �   COMMENT ON DATABASE "CSS_project" IS 'First attempt to create the DB for the HYP project of group CSS
It will store 3 tables:
Areas: 3 company areas
Products: 30 products
People: 20 employees';
                   postgres    false    3301            �            1259    16397    areas    TABLE     �   CREATE TABLE public.areas (
    "ID" smallint NOT NULL,
    "Title" text,
    "Short" text,
    "Long" text,
    "Image" text
);
    DROP TABLE public.areas;
       public         heap    postgres    false            �           0    0    TABLE areas    COMMENT     �   COMMENT ON TABLE public.areas IS 'This will hold information about the 3 areas of the company
Each area will have an ID,  a Title, a Short description, a Long description and an Image';
          public          postgres    false    201            �            1259    16395    Areas_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Areas_ID_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Areas_ID_seq";
       public          postgres    false    201            �           0    0    Areas_ID_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Areas_ID_seq" OWNED BY public.areas."ID";
          public          postgres    false    200            �            1259    16417    people    TABLE     �   CREATE TABLE public.people (
    "ID" smallint NOT NULL,
    "Name" text,
    "Role" text,
    "Email" text,
    "Bio" text,
    "Picture" text
);
    DROP TABLE public.people;
       public         heap    postgres    false            �           0    0    TABLE people    COMMENT     �   COMMENT ON TABLE public.people IS 'This will hold information about the 20 people that work in the company
Each person will have an ID,  a Name, a Role, an Email, a Bio, a Picture, an Area and a list of Products';
          public          postgres    false    205            �            1259    16415    People_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."People_ID_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."People_ID_seq";
       public          postgres    false    205            �           0    0    People_ID_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."People_ID_seq" OWNED BY public.people."ID";
          public          postgres    false    204            �            1259    16408    products    TABLE     �   CREATE TABLE public.products (
    "ID" smallint NOT NULL,
    "Title" text,
    "Short" text,
    "Long" text,
    "Image" text
);
    DROP TABLE public.products;
       public         heap    postgres    false            �           0    0    TABLE products    COMMENT     �   COMMENT ON TABLE public.products IS 'This will hold information about the 30 products of the company
Each product will have an ID,  a Title, a Short description, a Long description, and an Image';
          public          postgres    false    203            �            1259    16406    Products_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Products_ID_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Products_ID_seq";
       public          postgres    false    203            �           0    0    Products_ID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Products_ID_seq" OWNED BY public.products."ID";
          public          postgres    false    202            �            1259    16449    development    TABLE     Y   CREATE TABLE public.development (
    "ID_Person" smallint,
    "ID_Product" smallint
);
    DROP TABLE public.development;
       public         heap    postgres    false            �           0    0    TABLE development    COMMENT     �   COMMENT ON TABLE public.development IS 'This is the relational table between People and Products, which corresponds to a N:N relationship
It holds pairs of keys from people to each product they develop';
          public          postgres    false    207            �            1259    16459    offer    TABLE     Q   CREATE TABLE public.offer (
    "ID_Product" smallint,
    "ID_Area" smallint
);
    DROP TABLE public.offer;
       public         heap    postgres    false            �           0    0    TABLE offer    COMMENT     �   COMMENT ON TABLE public.offer IS 'This is the relational table between Products and Areas, which corresponds to a N:1 relationship
It holds pairs of keys from products to a certain area';
          public          postgres    false    208            �            1259    16436    work    TABLE     O   CREATE TABLE public.work (
    "ID_Person" smallint,
    "ID_Area" smallint
);
    DROP TABLE public.work;
       public         heap    postgres    false            �           0    0 
   TABLE work    COMMENT     �   COMMENT ON TABLE public.work IS 'This is the relational table between People and Areas, which corresponds to a N:1 relationship
It holds pairs of keys from people to a certain area';
          public          postgres    false    206            F           2604    16400    areas ID    DEFAULT     h   ALTER TABLE ONLY public.areas ALTER COLUMN "ID" SET DEFAULT nextval('public."Areas_ID_seq"'::regclass);
 9   ALTER TABLE public.areas ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    200    201    201            H           2604    16420 	   people ID    DEFAULT     j   ALTER TABLE ONLY public.people ALTER COLUMN "ID" SET DEFAULT nextval('public."People_ID_seq"'::regclass);
 :   ALTER TABLE public.people ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    205    204    205            G           2604    16411    products ID    DEFAULT     n   ALTER TABLE ONLY public.products ALTER COLUMN "ID" SET DEFAULT nextval('public."Products_ID_seq"'::regclass);
 <   ALTER TABLE public.products ALTER COLUMN "ID" DROP DEFAULT;
       public          postgres    false    202    203    203            �          0    16397    areas 
   TABLE DATA           H   COPY public.areas ("ID", "Title", "Short", "Long", "Image") FROM stdin;
    public          postgres    false    201   �5       �          0    16449    development 
   TABLE DATA           @   COPY public.development ("ID_Person", "ID_Product") FROM stdin;
    public          postgres    false    207   �7       �          0    16459    offer 
   TABLE DATA           8   COPY public.offer ("ID_Product", "ID_Area") FROM stdin;
    public          postgres    false    208   =8       �          0    16417    people 
   TABLE DATA           Q   COPY public.people ("ID", "Name", "Role", "Email", "Bio", "Picture") FROM stdin;
    public          postgres    false    205   �8       �          0    16408    products 
   TABLE DATA           K   COPY public.products ("ID", "Title", "Short", "Long", "Image") FROM stdin;
    public          postgres    false    203   ?C       �          0    16436    work 
   TABLE DATA           6   COPY public.work ("ID_Person", "ID_Area") FROM stdin;
    public          postgres    false    206   W       �           0    0    Areas_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Areas_ID_seq"', 1, false);
          public          postgres    false    200            �           0    0    People_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."People_ID_seq"', 1, false);
          public          postgres    false    204            �           0    0    Products_ID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Products_ID_seq"', 1, false);
          public          postgres    false    202            J           2606    16405    areas Areas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.areas
    ADD CONSTRAINT "Areas_pkey" PRIMARY KEY ("ID");
 <   ALTER TABLE ONLY public.areas DROP CONSTRAINT "Areas_pkey";
       public            postgres    false    201            N           2606    16425    people People_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.people
    ADD CONSTRAINT "People_pkey" PRIMARY KEY ("ID");
 >   ALTER TABLE ONLY public.people DROP CONSTRAINT "People_pkey";
       public            postgres    false    205            L           2606    16468    products Products_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "Products_pkey" PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY public.products DROP CONSTRAINT "Products_pkey";
       public            postgres    false    203            P           2606    16444 	   work Area    FK CONSTRAINT     n   ALTER TABLE ONLY public.work
    ADD CONSTRAINT "Area" FOREIGN KEY ("ID_Area") REFERENCES public.areas("ID");
 5   ALTER TABLE ONLY public.work DROP CONSTRAINT "Area";
       public          postgres    false    3146    206    201            �           0    0    CONSTRAINT "Area" ON work    COMMENT     ^   COMMENT ON CONSTRAINT "Area" ON public.work IS 'It relates the FK ID_Area to the Area''s ID';
          public          postgres    false    3152            S           2606    16462 
   offer Area    FK CONSTRAINT     o   ALTER TABLE ONLY public.offer
    ADD CONSTRAINT "Area" FOREIGN KEY ("ID_Area") REFERENCES public.areas("ID");
 6   ALTER TABLE ONLY public.offer DROP CONSTRAINT "Area";
       public          postgres    false    208    201    3146            �           0    0    CONSTRAINT "Area" ON offer    COMMENT     _   COMMENT ON CONSTRAINT "Area" ON public.offer IS 'It relates the FK ID_Area to the Area''s ID';
          public          postgres    false    3155            O           2606    16439    work Person    FK CONSTRAINT     s   ALTER TABLE ONLY public.work
    ADD CONSTRAINT "Person" FOREIGN KEY ("ID_Person") REFERENCES public.people("ID");
 7   ALTER TABLE ONLY public.work DROP CONSTRAINT "Person";
       public          postgres    false    205    3150    206            �           0    0    CONSTRAINT "Person" ON work    COMMENT     d   COMMENT ON CONSTRAINT "Person" ON public.work IS 'It relates the FK ID_Person to the Person''s ID';
          public          postgres    false    3151            Q           2606    16452    development Person    FK CONSTRAINT     z   ALTER TABLE ONLY public.development
    ADD CONSTRAINT "Person" FOREIGN KEY ("ID_Person") REFERENCES public.people("ID");
 >   ALTER TABLE ONLY public.development DROP CONSTRAINT "Person";
       public          postgres    false    207    3150    205            �           0    0 "   CONSTRAINT "Person" ON development    COMMENT     k   COMMENT ON CONSTRAINT "Person" ON public.development IS 'It relates the FK ID_Person to the Person''s ID';
          public          postgres    false    3153            T           2606    16469    offer Product    FK CONSTRAINT     �   ALTER TABLE ONLY public.offer
    ADD CONSTRAINT "Product" FOREIGN KEY ("ID_Product") REFERENCES public.products("ID") NOT VALID;
 9   ALTER TABLE ONLY public.offer DROP CONSTRAINT "Product";
       public          postgres    false    3148    203    208            �           0    0    CONSTRAINT "Product" ON offer    COMMENT     h   COMMENT ON CONSTRAINT "Product" ON public.offer IS 'It relates the FK ID_Product to the Product''s ID';
          public          postgres    false    3156            R           2606    16474    development Product    FK CONSTRAINT     �   ALTER TABLE ONLY public.development
    ADD CONSTRAINT "Product" FOREIGN KEY ("ID_Product") REFERENCES public.products("ID") NOT VALID;
 ?   ALTER TABLE ONLY public.development DROP CONSTRAINT "Product";
       public          postgres    false    203    3148    207            �           0    0 #   CONSTRAINT "Product" ON development    COMMENT     n   COMMENT ON CONSTRAINT "Product" ON public.development IS 'It relates the FK ID_Product to the Product''s ID';
          public          postgres    false    3154            �   �  x��SMo�0=��
�85���%�P�7$����cO�a�<����3N[
EB=��x���{�4�+g�HFtV�⋛Sis�P���\.�>Z �	�*�$��HH��g�̂?ANю��1���>W�\b��X��	��IXX�L�1��$��"��m��ӻ��ңE3�ʙ���T]�U7Tm�A7��a/�9t]R������<��w?n��n~
�����y����*�����dg"�{.��u�R�R\ݓ������u�R.��tR�����s��vˏ%�jvI��XZ��O}%���$��[�u��o���k��r���q���`��JFR�6����ظ�l��cV���̉��1�7�AZ�Ϩ��y�W��z� ��.x�8��"]�4̌"Y^>��3�a΍T�����S|r2N��Tj~C���Wc�~*���w2�b��ȮQ��� ��T����\����x���EY���9�ݾ;��e�Zn��_}�s�      �   �   x�%��D!�P�>AE�e��c'�!�#�'��'�(,}���&~�'��e�*�~ѱ�[����?�C��{r ��:�ٜ�\�-�Ez�i1�K!b�P�ʹ�(�Jݣ�B�%E0���>�dƕ��l�k�Z"WWۥl�=^_�%�(������?}�����w�./�      �   Q   x��� !C�3)fD�^迎�?�	b�e�)g4�t����*���q�6LX��p{�:$P��D��[�`_��b�}�Z�      �   �
  x��X�n��}���_dd�ù0Y�%{�b���"��$��^�l�ݜ��)���˗�T�ss4J6�C�4dߪNU�������vWI�p.�R���sΊVpò͛36�\p��R�,��Z�O9��"E�
&k��/�fe%j�/؝qv����U5��w�]��[jL�[��*��0b���EKs��h�u��%NG)v��ڭ�q�4�������F31݇�4�]L�V��[{]S*�i/��ϼ��{���E�����[S���y]ChY���{��r����;�؊t���ǀ�P5�57��d�oPr��$����V��[g:ծ�:OK#����w��rY
��|�O��H2�eQ[U"瓪��f{j܉Z��I��:��`oα�kTuDXY�KM���4��V��IZ%��xaQ�~yU�xy��eq�:L�.�4�q6��8H��8��8��I0��a��~��ƪUŭzZ���������r�ȫ� �9;�yk���\��B�;С|�	�u3�:a�x9R��[I����׌�]Us�U%̑�2U,��,y��ذ�6l£a�����Xt��Ժ3�ɪi�Eľ+iUv��Q
�V��#fi횕�
؎�7��'��pO�p<���{����K���m��$FPd�X�W����?[U����g��q�k��H�WI `�
��m]<�t���!�{,�8��}Z�����o��K���˧�$��~6g�ĻA:�e:	�<�����}�#�ȿf~M���`����'pN���;'��Vw%���|"$�v��OTg/����l��J�T��aO������|���F��Um1 瑆^腑�B��J��\��Ha��Sp�2P;C�W]fz�C��~9�_�5*n^-M�[A��G��T�= l�8�=_\��~]&[��rM�aZ�t����]88|ǿM�	c��&�-P.��9m�{'���XZ�<'X��!Q&��j͓R0"��qt�.���ې�G��rqƗ�œ��M=z��(0C�<1f�x��$~:��,f�p�g6Vg�W�(T���`ε,�p�r�}N8������\pp�7%k�Sյl����e[P ����͔MV�|w�:E/� ��8�����+��/?�����۫�Ly�x����yǳ0�>��|.�<��x>�՚�K�I*~LI�v���WB�r}P��Ā���&.;�^�rZ�뺐��H]����e�,��{rJ���1��	�i�@�$��X1�)!��UU� �	�Wyq����O#�H�ʆ�e��M��(�ģH;����Z7��=[�|�w��wW{�	![������4�P��Q
,jQ�1-�|�E����1���f��"%�� ;�ni�~�������3��E�r^�D[�\<]BbB ^�'#|�0��NôZx�#����hqP6Zd�L�jڪ.p��x�]�p�=���ϹN���R0�f(?�fd(J5��@0.��;m�	_�b����Z�J������R�$����y�D�ey0�$��=����������X�ʹ��J��M�iM'�侑��@��	l
�Q�������t����x����}��6�����y*������YȔY~b�F�5�5<�t���R�@��v��o�E˳�S±���u2H� ��̢�պ84!�t�+4f$koL�~����ȧ��w�=�ޟ�o���J^������C����5l-��Qă8'���SG��yb��U�i�f��it�۟�p����9���$�<�x�������d�h�Q���s�Bx���l�Rc��~v�O�_=��Ra͕��u�!]�.Kk낡hn�&Ho09�#�l�Jv�ai��%B�f�~�-݋�fV��_��2A!�'3�l��,����`��MC�c炷H[_xiT�\���|x��'��~��Ϧ����8�w<��}ƒ ���^IS(�WCD��Վ�E������)�}� I�����+ *���q�?ܱ�M����Z��	����Ȼ�yPS������w��fb磄۴"��L�s����-��~�����V�Ӗ����͞M��{�m�3@�z��nk�%����Z�����H������ D[�������T[	I�� IU{[��>,TYQ*UҞ�I��n���k�	�#i��]�J|s.>}�[��Ş �P�9�{�A��2��6�vd�r�����n�a+�P��ONГ��p�*�8���nb�i�z���\�&Z�2�Tʳ�:�!����I'4$�1��x��\���ߠ��&C3�������eܵ��(�&��Y0u��u�\k��b�`���Ԡu���	��/���`�WO�������( wG3��t�LJ��~�Jd�����̟6j%���I�u�
N���zϙ9w�,}^S�����v���9��������lJ�]��P�P�O-Y��HM�*�m���z�f��;2�K>H�j~�~a��ܹ��M#�-O���xI�T��`��"Y��A��$��m�� l��%;�!S�Nc�s�a�c�Y��Q�@����+5�A%�;��B�D���Ѷ��-&O���ѳ�\P���®rٰ/�b]	W�C���9�赦캹����VW��'�[C��=99�'{��      �      x��Zَ�Ȓ}����`���ZH-��@�B���U����"�K$��$�������|ɜ�$)V�m���g�n[�[ĉ�iծ����62dȒԘ�Ԙ� ����T�<�F*g.��F:�F����@d��"�H717�g�j.�e���+�iB_y��#�7�oV1�s�2�D���)�,aN�_��#�Ó��|��\�y6�l#�-ɓ%�%O�4��C�%~4S{[q����G����Ѿ��y���VJ6q��F:���L��h:"l�!�q���<�mt���uk��{Ãd�e�?d���/F_�k����1�vstp���O������8��M�����<��ɗxgot��];c.3.�ҟ�T$�x�)��5<��|��YJb[B�8����/"Kd\6?<и�Ѐ���od���"�ȅ�SF��1~�JI�`�&�&��K�#�0w�;\�aф-y���fV~:7�������$���:s�$��4+s� �U����_�_�旣��!<��L����׃����Ezy8m�ߩ&03���W��"��X�$˥���w)��~�'a���R��p><�V��F�1��WH9bi�`s���\Y�5ʺ��<'9{��S�,��qd�F(�t.�i]����L�1���QU�~3�#?�)�
X��#���k�nk��۝v��~oj���cu]w������:�ɚq4�ԭ���	[2�K�B�ɢv%V<��1��GW�x�;�ذX���1�4b�����Lj����3�ƟEu���SZ�w���dI�$�&�����〇�3�O��;�Cs	WΓ��c:X�2B͎�73ɷ�
��&<�p�\�B�l��D���'�>�k�i \4�D�������n�Ѓ�|ײl˲:]{��Ŏ�9����Y�X}Ӷ���j��<߹��&��}zF����ԖY��������C�?�Jy}ľ0g�S�=@����
>F�%�íUN�$�=�j:��vl� [�4�8͑¼�G�f̤��k�G?R:���~g�%$�,�e�]Mc��ۍ͙��L��4�D	<c
}d	�([�	��KN�7e�- 2ٴڝ�S8���U؊}�T�7���~2�N���w�g��4��Fd��
�-��x�/�l��d�W�0�[#�{���%g2�$F��У�L���Ģ)���M�W�5��f��J�ֿ�h���4�t,�@�8�Ѡ��/3��T1W!��d� ���%��~��\	�䎁S8 �5��7@Ůo����z�!<�,"h**¤�&İQ��D�r��@����)���xb�(�3Y�h��!m�5�:���6$7�����ON����x�^��dR*TNx$��d%p��יG��3"!��q
|tV����U��$`���P�*9!)�â����>�.�<��_�-��<{ ��O�o�q�cSx Z�~""�\7`4S�5@'y�-��l�o�V�Mq���VT��;!��}~2}&Ũ+��(��K{�[��W�?��S�.\��un�����<�Y_��������e4ow������zB,��B��1é�;!ӭ�Վ#r���XrXP�YN���p�M��*�'��3@�#���F�2��l�Cy�mB�%"�K2�ܤ ���2R��#J��BD�nIHA�Ju�b�����0�U�;bÂt���r�6~�py�O3�� ��m�b)L(("�\pE���opK��R�\�N��31�=�Y!gIdP&	�����٘�T���ԧ�Ka�z2l�5��'�n��d���n^�v?�s��y�M7���m��}5M��n��~�2�^�t�Q�� a�@L��C�a!��xMJ��mro�M5B>c���<,�P ��4�S��x-�6Q)Yق'�Q\�vP�*M�9�e2c��� B ��yΗOY���E^�P�Q�a��V�k
VM�U�&��9RA�W��F+�F��G1~������u6|1qxz���fa�<lN����\��������������I#��/���ѫ��bܲ�[4E�
��7�d("�>����R�7]F)$�����'������C=������o��@��M[����:�t���������l����?��۱y�#v79��d��a�����W�P|(IU���6���T����d��FfP���FRPUZܲBMU����Pn�_~�"���	���[n�C�m ���q����l˱{��Y=�&s�duj�Ҙc'�n˪<Jmښ��19J�$o?H9��>W��6�1�H�"'��OS�d�p�&71��7a�qT�P�1�Ȋ�d᫟����H���5�a.�ٽ�%Vs��P�\d�-��X
P�3ʐYL��p0������"|�Vtx0I��]X�����||%���eo}�>2s�.�14��wG���q��M�Peuk�,Z-�UrF>8w�N�^�}�������R��@��C�ݍ�F�X���Rr�(h@���T�?�A����O9x����pC�"�ETQ�c�6�����Ϊ;��=�ٹ�*�����?��нػ�ˇ����q���������t�� ��W;�1�TX��
Or�l�t�T@'�s�.��B�g�SXĈj���͕2�#�l��NX�{9��K��F�/�V�T�I8r<
E�B*���n����:l�U��Uh�٧��Ԑ+�N[:+��@,o���0/R��C�%�d���*���[�� $��k?h׎'�(����{
��������j����e*��BME{�� �UQ�T(�D ����68)U���u��ǣn��nټ5�-���7 ��9n��]���75��t�UЯ����1(.��*)���5��Д�%���ON��]������<���0�X��:&E���bp9������<�e�n���h�ޓ�Q�&�w�u�����B�]�|��6�9UA��)�ز�o�ԟ��4Ǽ�Z�Si�� �/Ϩ�����"�d�ۻ�����?މ��'G�݌_/z7W���'���h��G���
���4\��s٭���7�)U��ß��\N�S�L1�+��ȿ7����*R�\�G���ꤋ��@S!�����M� ]\���!g��[�i��β�������ؽZ���3k"��Yz{1x�ȆW��~|3�L#�ՙO_RV:�fm,T���ȄqL�_p?b'�&��z��o��*�Ջ�h��A�㈘$$��T~&bߩ�������-)�;?�����ngӼ[������?�|�rd�ь����d�3�?U��<4�%����g3���֒��Vjj` 2q���2p]-K��h�@b6W��VQ@��9�_[����|Zse�mZÖ��ia^`�RO�Ps4�$T怿߱́���=�糔����m��|�; >�&g�+-����ԩ��GEۏ�7'Z�M�����KI�-w�r���dD�����TP�zH��α
1o �Q�,�$q6̂�'s���ݖ��Bp���KH�RMN}e����b�o1�ґ�%r-Q�%��_O9�6�3}��>�f��%�?�����Գ�k�����6�a愼��
�w���5ڽݩ�ͮߗ&���O�⫤<���6��Q���K���";�"���=�<�����&����)KM�#_�㨊��m9��#����Eಪ^Y$u�y#:�0tن I���=29���kZH��~Ǟv->�۶���=>UT�ݩ�UE�	H�S:b],��G2��Ҋ��r(��8�э�}���!���%�Z��0�3����=�ցaM�,��$����N�K(�Y�u��>�wV7���\=xC]Et�I#��} _����}�-C�7�"+]G0�p$�O����9���Id�߯�w��7&/��լh�^�0��͈J�m�wN�ꛦZyF߫ �ٿ��O2���;O�V�W�#����P�U&���*��B���Q��ʅ����	2���0�s�̬KH0{�cFgz��E�z���,��:�n��I�\��y�"��t �  ��2�窝 |��{*.p�×��[�s�wkeW�a�t>��dg�����Ӈ�˻F�x�¢Ž�f'�ח^��FG��dQ�ս����M�je}��E$�����b��p�E$RMv-o
��-��qَf\j�/*�o�S�Щ��dk�|�GocdE�Afs�6!��Ö�YI�u��y�����e�7M��Z2qZ���S�NϤoݶ�ӹ�];2F(��*�O�n�
]�h�9�3u�����!�2� Q"���휜�(*�gt��ZhBՖ(h�ɨa�s�Bæ�W��)�{��M�Zf����I��65s�f�C�p��sݰF�SZ��J�iP�����ә3����Avr?�;�˫?�*��4{������<_>Mod�x�����y����dQ�<�T�_��<2�� �U�XSޅsWdS]��C���m��F���k�����³ |7�����"W5\uS�r߰���*�Z�x��穻'X�	�ʢ��INu4�+�5v��jK��?Si����bs��J=�������ϩ��t�|-S7<�:��$$�6�.$Z�͒%/��P�Q3�P�\E�w�W����F	�)�薁��B����օR&B��g��i��p&�����i<��w��� ���L�,Ԍl{�Bю5�������*[V��w�V�ݶZ��p�:8iX��A(����B�S�F��Fj��9�?���s�v���#%��!&��ϰ2��=5�Ȼ9D�"��r�;��ꕡ���P���7K�M/%	E<m�-���w �V��ӗ�v��iw;��[_�����{�l�{6{�|9;��^���\(�v��޿�g����p�M�n���hyen{���C�߹�Z��*���{��%S���c��O�2�BE�q�{�roD��Qv���D��7j��F�-W�UM]g`!{�%lcL�յ:��8ی����h�i������
����ӧ����      �   ?   x�˻�@��*�9�>@/�_�`�8�]V��V��T�NOzk�l`n���|���]�~G�F     