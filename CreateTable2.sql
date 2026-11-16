
CREATE TABLE IF NOT EXISTS public.correspondence_types
(
    type_code integer NOT NULL,
    type_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    packaging character varying(100) COLLATE pg_catalog."default",
    min_weight numeric(10,2),
    max_weight numeric(10,2),
    min_length numeric(10,2),
    min_width numeric(10,2),
    min_height numeric(10,2),
    max_length numeric(10,2),
    max_width numeric(10,2),
    max_height numeric(10,2),
    CONSTRAINT correspondence_types_pkey PRIMARY KEY (type_code)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.correspondence_types
    OWNER to postgres;