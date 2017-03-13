-- Table: public.roles

-- DROP TABLE public.roles;

CREATE TABLE public.roles
(
  id serial NOT NULL,
  name character varying(25) NOT NULL,
  CONSTRAINT roles_pkey PRIMARY KEY (id)
);


-- Table: public.users

-- DROP TABLE public.users;

CREATE TABLE public.users
(
  id serial NOT NULL,
  name character varying(30) NOT NULL,
  last_name character varying(60) NOT NULL,
  username character varying(25) NOT NULL,
  password character varying(128) NOT NULL,
  rol_id integer NOT NULL,
  phone character varying(9) NOT NULL,
  address character varying(150),
  CONSTRAINT users_pkey PRIMARY KEY (id),
  CONSTRAINT users_rol_id_fkey FOREIGN KEY (rol_id)
      REFERENCES public.roles (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);


-- Table: public.teams

-- DROP TABLE public.teams;

CREATE TABLE public.teams
(
  id serial NOT NULL,
  name character varying(50) NOT NULL,
  user_id integer NOT NULL,
  CONSTRAINT teams_pkey PRIMARY KEY (id),
  CONSTRAINT teams_user_id_fkey FOREIGN KEY (user_id)
      REFERENCES public.users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);


-- Table: public.players

-- DROP TABLE public.players;

CREATE TABLE public.players
(
  id serial NOT NULL,
  name character varying(30) NOT NULL,
  identification character varying(30) NOT NULL,
  last_name_1 character varying(30) NOT NULL,
  last_name_2 character varying(30),
  phone character varying(10),
  address character varying(150),
  team_id integer,
  CONSTRAINT players_pkey PRIMARY KEY (id),
  CONSTRAINT players_team_id_fkey FOREIGN KEY (team_id)
      REFERENCES public.teams (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);
