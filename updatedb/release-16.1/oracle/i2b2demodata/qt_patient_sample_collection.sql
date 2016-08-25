whenever sqlerror exit failure
whenever oserror exit failure
--
-- Type: TABLE; Owner: I2B2DEMODATA; Name: QT_PATIENT_SAMPLE_COLLECTION
--
 CREATE TABLE "I2B2DEMODATA"."QT_PATIENT_SAMPLE_COLLECTION" 
  (	"SAMPLE_ID" NUMBER(10,0) NOT NULL ENABLE, 
"PATIENT_ID" NUMBER(10,0) NOT NULL ENABLE, 
"RESULT_INSTANCE_ID" NUMBER(10,0) NOT NULL ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "TRANSMART" ;

grant select on i2b2demodata.qt_patient_sample_collection to biomart_user
/
grant all on i2b2demodata.qt_patient_sample_collection to tm_cz
/