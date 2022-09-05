
DROP TABLE IF EXISTS public."User";

CREATE TABLE IF NOT EXISTS public."User"
(
    id_User serial NOT NULL,
    userName text NOT NULL,
    password text NOT NULL,
    roles text NOT NULL,
    ip_Addres text NOT NULL,
    device_token text NOT NULL,
    user_agent text ,
    blocked text,
    profile_experience text,
    
    CONSTRAINT "pk_idName_User" PRIMARY KEY (id_User)
);


DROP TABLE IF EXISTS public."Posts";

CREATE TABLE IF NOT EXISTS public."Posts"
(
    id_Post serial,
    title text NOT NULL,
    tags text NOT NULL,
    profileImage text ,
    idauthorP integer NOT NULL,
    comments text ,


    CONSTRAINT "pk_id_Post" PRIMARY KEY (id_Post),

    CONSTRAINT "fk_author_Post" FOREIGN KEY (idauthorP)
        REFERENCES "public"."User" (id_User) MATCH SIMPLE


);

DROP TABLE IF EXISTS public."Comments";

CREATE TABLE IF NOT EXISTS public."Comments"
(
    id_comment serial NOT NULL,
    id_PostC integer NOT NULL,
    parent_id integer ,
    author integer NOT NULL,
    text_F text NOT NULL,


    CONSTRAINT "pk_id_Comments" PRIMARY KEY (id_comment),

    CONSTRAINT "fk_idPost_Comments" FOREIGN KEY (id_PostC)
        REFERENCES "public"."Posts" (id_Post) MATCH SIMPLE,

    CONSTRAINT "fk_idParent_Comments" FOREIGN KEY (parent_id)
        REFERENCES "public"."Comments" (id_comment) MATCH SIMPLE,

    CONSTRAINT "fk_author_Comments" FOREIGN KEY (author)
        REFERENCES "public"."User" (id_User) MATCH SIMPLE
);