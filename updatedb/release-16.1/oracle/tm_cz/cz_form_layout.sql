whenever sqlerror exit failure
whenever oserror exit failure
-- There is no 'ALTER SEQUENCE ... RENAME ...' and 'RENAME ...' only works for connected user.
create procedure tm_cz.tmp_rename_seq_form_layout as
begin
  execute immediate 'rename seq_form_layout_id to seq_cz_form_layout_id';
end;
/
declare
  l_cnt number;
begin
  select count(*) into l_cnt from all_sequences where sequence_owner='TM_CZ' and sequence_name='SEQ_FORM_LAYOUT_ID';
  if l_cnt > 0 then
    tm_cz.tmp_rename_seq_form_layout();
  end if;
end;
/
drop procedure tm_cz.tmp_rename_seq_form_layout
/
--
-- Type: TRIGGER; Owner: TM_CZ; Name: TRG_CZ_FORM_LAYOUT_ID
--
  CREATE OR REPLACE TRIGGER "TM_CZ"."TRG_CZ_FORM_LAYOUT_ID" before
  INSERT ON "TM_CZ"."CZ_FORM_LAYOUT" FOR EACH row BEGIN IF inserting THEN IF :NEW."FORM_LAYOUT_ID" IS NULL THEN
  SELECT SEQ_CZ_FORM_LAYOUT_ID.nextval INTO :NEW."FORM_LAYOUT_ID" FROM dual;
END IF;
END IF;
END;
/
ALTER TRIGGER "TM_CZ"."TRG_CZ_FORM_LAYOUT_ID" ENABLE;
 
