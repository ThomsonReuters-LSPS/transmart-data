--
-- Type: TABLE; Owner: BIOMART; Name: TMP_ANALYSIS_EQTL_TOP500
--
 CREATE TABLE "BIOMART"."TMP_ANALYSIS_EQTL_TOP500" 
  (	"BIO_ASY_ANALYSIS_EQTL_ID" NUMBER(22,0) NOT NULL ENABLE, 
"BIO_ASSAY_ANALYSIS_ID" NUMBER(22,0) NOT NULL ENABLE, 
"RS_ID" NVARCHAR2(50), 
"P_VALUE" BINARY_DOUBLE, 
"LOG_P_VALUE" BINARY_DOUBLE, 
"ETL_ID" NUMBER(18,0), 
"EXT_DATA" VARCHAR2(4000 BYTE), 
"P_VALUE_CHAR" VARCHAR2(100 BYTE), 
"GENE" VARCHAR2(50 BYTE), 
"CIS_TRANS" VARCHAR2(10 BYTE), 
"DISTANCE_FROM_GENE" VARCHAR2(10 BYTE), 
"RNUM" NUMBER
  ) SEGMENT CREATION IMMEDIATE
NOCOMPRESS NOLOGGING
 TABLESPACE "BIOMART" ;
--
-- Type: INDEX; Owner: BIOMART; Name: T_A_GAE_T500_IDX
--
CREATE INDEX "BIOMART"."T_A_GAE_T500_IDX" ON "BIOMART"."TMP_ANALYSIS_EQTL_TOP500" ("BIO_ASSAY_ANALYSIS_ID")
TABLESPACE "INDX" ;
--
-- Type: INDEX; Owner: BIOMART; Name: T_A_GE_T500_IDX
--
CREATE INDEX "BIOMART"."T_A_GE_T500_IDX" ON "BIOMART"."TMP_ANALYSIS_EQTL_TOP500" ("RS_ID")
TABLESPACE "INDX" ;
