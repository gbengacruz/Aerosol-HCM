--------------------------------------------------------
--  DDL for View V_99_SSU_PRIV
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_99_SSU_PRIV" ("R_K", "PG_ID", "BT_ID", "PG_DSC", "BT_DSC", "USR_RLE", "CRT_BY", "CRT_DT", "UPD_BY", "UPD_DT", "ROW_VSN", "ACC_CD", "APP_ID", "IUS_YN") AS 
  SELECT R_K, 
  PG_ID, 
  BT_ID, 
  PG_DSC, 
  BT_DSC, 
  USR_RLE, 
  CRT_BY, 
  CRT_DT, 
  UPD_BY, 
  UPD_DT, 
  ROW_VSN, 
  ACC_CD, 
  APP_ID, 
  IUS_YN 
FROM T_99_SSU_PRIV
;
