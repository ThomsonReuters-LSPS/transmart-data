whenever sqlerror exit failure
whenever oserror exit failure
--
-- Type: TABLE; Owner: BIOMART; Name: BIO_REGULOME_SCORE
--
 CREATE TABLE "BIOMART"."BIO_REGULOME_SCORE" 
  (	"CHROMOSOME" VARCHAR2(20 BYTE),
"POSITION" NUMBER(18,0), 
"RS_ID" VARCHAR2(100 BYTE), 
"SCORE" VARCHAR2(10 BYTE)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "TRANSMART" ;

grant select,delete,insert,update on biomart.bio_regulome_score to biomart_user
/
grant all on biomart.bio_regulome_score to tm_cz
/
