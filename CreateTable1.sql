
CREATE TABLE IF NOT EXISTS public.correspondence
(
    tracking_number character varying(50) COLLATE pg_catalog."default" NOT NULL,
    type_code integer NOT NULL,
    weight numeric(10,2),
    length numeric(10,2),
    width numeric(10,2),
    height numeric(10,2),
    sender_code character varying(50) COLLATE pg_catalog."default",
    stamps_amount numeric(10,2),
    CONSTRAINT correspondence_pkey PRIMARY KEY (tracking_number),
    CONSTRAINT fk_correspondence_type FOREIGN KEY (type_code)
        REFERENCES public.correspondence_types (type_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.correspondence
    OWNER to postgres;