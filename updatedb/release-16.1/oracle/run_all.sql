whenever sqlerror exit failure
whenever oserror exit failure

grant create synonym to biomart_user
/
grant create view to deapp
/
grant create sequence to galaxy
/
grant create sequence to tm_cz
/
grant create synonym to tm_cz
/

prompt biomart
@@biomart/run_all.sql

prompt biomart_user
@@biomart_user/run_all.sql

prompt deapp
@@deapp/run_all.sql

prompt galaxy
@@galaxy/run_all.sql

prompt i2b2demodata
@@i2b2demodata/run_all.sql

prompt searchapp
@@searchapp/run_all.sql

prompt tm_cz
@@tm_cz/run_all.sql

prompt tm_lz
@@tm_lz/run_all.sql

prompt tm_wz
@@tm_wz/run_all.sql

exit
