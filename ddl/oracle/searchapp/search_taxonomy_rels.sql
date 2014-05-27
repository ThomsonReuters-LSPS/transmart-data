--
-- Type: TABLE; Owner: SEARCHAPP; Name: SEARCH_TAXONOMY_RELS
--
 CREATE TABLE "SEARCHAPP"."SEARCH_TAXONOMY_RELS" 
  (	"SEARCH_TAXONOMY_RELS_ID" NUMBER(22,0) NOT NULL ENABLE, 
"CHILD_ID" NUMBER(22,0) NOT NULL ENABLE, 
"PARENT_ID" NUMBER(22,0), 
 CONSTRAINT "SEARCH_TAXONOMY_RELS_PKEY" PRIMARY KEY ("SEARCH_TAXONOMY_RELS_ID")
 USING INDEX
 TABLESPACE "BIOMART"  ENABLE, 
 CONSTRAINT "U_CHILD_ID_PARENT_ID" UNIQUE ("CHILD_ID", "PARENT_ID")
 USING INDEX
 TABLESPACE "BIOMART"  ENABLE
  ) SEGMENT CREATION DEFERRED
 TABLESPACE "BIOMART" ;

--
-- Type: TRIGGER; Owner: SEARCHAPP; Name: TGR_SEARCH_TAXONOMY_RELS_ID
--
  CREATE OR REPLACE TRIGGER "SEARCHAPP"."TGR_SEARCH_TAXONOMY_RELS_ID" 
  before insert on searchapp.Search_Taxonomy_rels for each row
begin
    If Inserting
      Then If :New.search_taxonomy_rels_Id Is Null
        Then Select SEQ_SEARCH_DATA_ID.nextval Into :New.search_taxonomy_rels_Id From Dual;
      End If;
    end if;
end;
/
ALTER TRIGGER "SEARCHAPP"."TGR_SEARCH_TAXONOMY_RELS_ID" ENABLE;
 
--
-- Type: REF_CONSTRAINT; Owner: SEARCHAPP; Name: FK_SEARCH_TAX_RELS_PARENT
--
ALTER TABLE "SEARCHAPP"."SEARCH_TAXONOMY_RELS" ADD CONSTRAINT "FK_SEARCH_TAX_RELS_PARENT" FOREIGN KEY ("PARENT_ID")
 REFERENCES "SEARCHAPP"."SEARCH_TAXONOMY" ("TERM_ID") ENABLE;

--
-- Type: REF_CONSTRAINT; Owner: SEARCHAPP; Name: FK_SEARCH_TAX_RELS_CHILD
--
ALTER TABLE "SEARCHAPP"."SEARCH_TAXONOMY_RELS" ADD CONSTRAINT "FK_SEARCH_TAX_RELS_CHILD" FOREIGN KEY ("CHILD_ID")
 REFERENCES "SEARCHAPP"."SEARCH_TAXONOMY" ("TERM_ID") ENABLE;

