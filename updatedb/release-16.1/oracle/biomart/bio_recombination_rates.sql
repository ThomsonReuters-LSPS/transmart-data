whenever sqlerror exit failure
whenever oserror exit failure
--
-- Type: TABLE; Owner: BIOMART; Name: BIO_RECOMBINATION_RATES
--
 CREATE TABLE "BIOMART"."BIO_RECOMBINATION_RATES" 
  (	"CHROMOSOME" VARCHAR2(20 BYTE),
"POSITION" NUMBER(18,0), 
"RATE" NUMBER(18,6),
"MAP" NUMBER(18,6)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "TRANSMART" ;

grant select,delete,insert,update on biomart.bio_recombination_rates to biomart_user
/
grant all on biomart.bio_recombination_rates to tm_cz
/
