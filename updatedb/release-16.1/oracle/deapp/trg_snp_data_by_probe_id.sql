whenever sqlerror exit failure
whenever oserror exit failure
declare
  l_cnt number;
begin
  select count(*) into l_cnt from all_source where owner='DEAPP' and name='TRG_SNP_DATA_BY_PPROBE_ID';
  if l_cnt > 0 then
    execute immediate 'alter trigger deapp.trg_snp_data_by_pprobe_id rename to trg_snp_data_by_probe_id';
  end if;
end;
/
