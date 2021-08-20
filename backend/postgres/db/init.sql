BEGIN;


CREATE TABLE IF NOT EXISTS public.users
(
    email character varying NOT NULL,
    pseudo character varying NOT NULL,
    user_id serial NOT NULL,
    password_users character varying NOT NULL,
    is_admin boolean NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE IF NOT EXISTS public.courses
(
    desciption text NOT NULL,
    title character varying NOT NULL,
    course_id serial NOT NULL,
    note int4range NOT NULL,
    PRIMARY KEY (course_id)
);

CREATE TABLE IF NOT EXISTS public.courses_step
(
    desciption text NOT NULL,
    title character varying NOT NULL,
    coursesstep_id serial NOT NULL,
    PRIMARY KEY (coursesstep_id)
);

CREATE TABLE IF NOT EXISTS public.courses_comments
(
    message_course text NOT NULL,
    date_course date NOT NULL,
    comment_id serial NOT NULL,
    PRIMARY KEY (comment_id)
);

ALTER TABLE public.courses
    ADD FOREIGN KEY (course_id)
    REFERENCES public.users (user_id)
    NOT VALID;


ALTER TABLE public.courses
    ADD FOREIGN KEY (course_id)
    REFERENCES public.courses_step (coursesstep_id)
    NOT VALID;


ALTER TABLE public.users
    ADD FOREIGN KEY (user_id)
    REFERENCES public.courses_comments (comment_id)
    NOT VALID;


ALTER TABLE public.courses
    ADD FOREIGN KEY (course_id)
    REFERENCES public.courses_comments (comment_id)
    NOT VALID;

END;