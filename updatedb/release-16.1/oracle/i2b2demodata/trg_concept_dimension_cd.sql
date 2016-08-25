whenever sqlerror exit failure
whenever oserror exit failure
var cur_sch varchar2(32)
/
exec :cur_sch:=sys_context('userenv', 'current_schema');
/
alter session set current_schema=I2B2DEMODATA
/
-- TM_CZ.CONCEPT_ID is a synonym, so we can just replace sequence name without comparing nextvals.
CREATE OR REPLACE TRIGGER "I2B2DEMODATA"."TRG_CONCEPT_DIMENSION_CD" 
	 before insert on "CONCEPT_DIMENSION"
	 for each row begin
	 if inserting then
	 if :NEW."CONCEPT_CD" is null then
	 select CONCEPT_ID.nextval into :NEW."CONCEPT_CD" from dual;
	 end if;
	 end if;
	 end;

/
ALTER TRIGGER "I2B2DEMODATA"."TRG_CONCEPT_DIMENSION_CD" ENABLE
/
exec execute immediate 'alter session set current_schema='||:cur_sch
/
