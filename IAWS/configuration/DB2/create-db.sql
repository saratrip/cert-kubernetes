create database IAWSDB automatic storage yes using codeset UTF-8 territory US pagesize 32768;
-- connect to the created database:
connect to IAWSDB;
-- A user temporary tablespace is required to support stored procedures in BPM.
CREATE USER TEMPORARY TABLESPACE USRTMPSPC1;
UPDATE DB CFG FOR IAWSDB USING LOGFILSIZ 16384 DEFERRED;
UPDATE DB CFG FOR IAWSDB USING LOGSECOND 64 IMMEDIATE;
-- The following grant is used for databases without enhanced security.
-- For more information, review the IBM Knowledge Center for Enhancing Security for DB2.
grant dbadm on database to user db2inst1 ;
connect reset;