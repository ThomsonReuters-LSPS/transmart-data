--
-- Type: TABLE; Owner: TM_WZ; Name: WT_SUBJECT_METABOLOMICS_LOGS
--
 CREATE TABLE "TM_WZ"."WT_SUBJECT_METABOLOMICS_LOGS" 
  (	"PROBESET" VARCHAR2(500 BYTE), 
"INTENSITY_VALUE" NUMBER, 
"PVALUE" FLOAT(126), 
"NUM_CALLS" NUMBER, 
"ASSAY_ID" NUMBER(18,0), 
"PATIENT_ID" NUMBER(18,0), 
"SAMPLE_ID" NUMBER(18,0), 
"SUBJECT_ID" VARCHAR2(50 BYTE), 
"TRIAL_NAME" VARCHAR2(50 BYTE), 
"TIMEPOINT" VARCHAR2(100 BYTE), 
"LOG_INTENSITY" NUMBER
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "TRANSMART" ;

--
-- Type: INDEX; Owner: TM_WZ; Name: WT_SUBJECT_MBOLOMICS_LOGS_I1
--
CREATE INDEX "TM_WZ"."WT_SUBJECT_MBOLOMICS_LOGS_I1" ON "TM_WZ"."WT_SUBJECT_METABOLOMICS_LOGS" ("TRIAL_NAME", "PROBESET")
TABLESPACE "INDX" ;

