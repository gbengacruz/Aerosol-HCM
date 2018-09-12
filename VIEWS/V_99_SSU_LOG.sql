--------------------------------------------------------
--  DDL for View V_99_SSU_LOG
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HCM"."V_99_SSU_LOG" ("R_K", "R_T", "APP_ID", "PAGE_ID", "SCH_NM", "ERR_CD", "ERR_MSG", "USR_ID", "PRC_NM", "ERR_STK") AS 
  SELECT "R_K","R_T","APP_ID","PAGE_ID","SCH_NM","ERR_CD","ERR_MSG","USR_ID","PRC_NM","ERR_STK" FROM T_99_SSU_LOG
;
