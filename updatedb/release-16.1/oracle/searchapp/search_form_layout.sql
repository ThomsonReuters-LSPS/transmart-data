whenever sqlerror exit failure
whenever oserror exit failure
--
-- Type: TABLE; Owner: SEARCHAAPP; Name: SEARCH_FORM_LAYOUT
--
 CREATE TABLE "SEARCHAPP"."SEARCH_FORM_LAYOUT" 
  (	"FORM_LAYOUT_ID" NUMBER(22,0) NOT NULL ENABLE, 
"FORM_KEY" NVARCHAR2(50), 
"FORM_COLUMN" NVARCHAR2(50), 
"DISPLAY_NAME" NVARCHAR2(50), 
"DATA_TYPE" NVARCHAR2(50), 
"SEQUENCE" NUMBER(22,0), 
"DISPLAY" CHAR(1 BYTE), 
 CONSTRAINT "SEARCH_FORM_LAYOUT_PK" PRIMARY KEY ("FORM_LAYOUT_ID")
 USING INDEX
 TABLESPACE "TRANSMART"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "TRANSMART" ;

--
-- Type: SEQUENCE; Owner: SEARCHAPP; Name: SEQ_SEARCH_FORM_LAYOUT_ID
--
CREATE SEQUENCE  "SEARCHAPP"."SEQ_SEARCH_FORM_LAYOUT_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;

--
-- Type: TRIGGER; Owner: SEARCHAPP; Name: TRG_SEARCH_FORM_LAYOUT_ID
--
  CREATE OR REPLACE TRIGGER "SEARCHAPP"."TRG_SEARCH_FORM_LAYOUT_ID" before
  INSERT ON "SEARCHAPP"."SEARCH_FORM_LAYOUT" FOR EACH row BEGIN IF inserting THEN IF :NEW."FORM_LAYOUT_ID" IS NULL THEN
  SELECT SEQ_SEARCH_FORM_LAYOUT_ID.nextval INTO :NEW."FORM_LAYOUT_ID" FROM dual;
END IF;
END IF;
END;
/
ALTER TRIGGER "SEARCHAPP"."TRG_SEARCH_FORM_LAYOUT_ID" ENABLE;

grant select,delete,insert,update on searchapp.search_form_layout to biomart_user
/
grant all on searchapp.search_form_layout to tm_cz
/
insert into searchapp.search_form_layout(form_layout_id, form_key, form_column, display_name, data_type, sequence, display) values (1, 'file', 'displayName', 'Name', 'string', 1, 'Y')
/
insert into searchapp.search_form_layout(form_layout_id, form_key, form_column, display_name, data_type, sequence, display) values (2, 'file', 'fileType', 'File Type', 'string', 2, 'Y')
/
insert into searchapp.search_form_layout(form_layout_id, form_key, form_column, display_name, data_type, sequence, display) values (3, 'file', 'fileSize', 'Size', 'dataSize', 3, 'Y')
/
insert into searchapp.search_form_layout(form_layout_id, form_key, form_column, display_name, data_type, sequence, display) values (4, 'file', 'createDate', 'Created', 'date', 4, 'Y')
/
insert into searchapp.search_form_layout(form_layout_id, form_key, form_column, display_name, data_type, sequence, display) values (5, 'file', 'updateDate', 'Updated', 'date', 5, 'Y')
/
insert into searchapp.search_form_layout(form_layout_id, form_key, form_column, display_name, data_type, sequence, display) values (6, 'file', 'fileDescription', 'Description', 'prestring', 6, 'Y')
/
