This directory contains a set of scripts to migrate Oracle tranSMART database
from version 1.2.4 to 16.1.

  $ORACLE_HOME/bin/sqlplus system@$ORACLE_SID @run_all.sql 2>&1 | tee -a log

The script "run_all.sql" should be run as user with DBA role.
