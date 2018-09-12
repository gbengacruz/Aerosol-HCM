--------------------------------------------------------
--  DDL for View V_99_PYR_RUN
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_99_PYR_RUN" ("R_K", "RUN_CD", "FST_DAY", "LST_DAY", "OPN_DT", "CLS_DT", "RUN_STA", "CRT_BY", "CRT_DT", "UPD_BY", "UPD_DT", "ACC_CD", "RUN_MON") AS 
  SELECT R_K,
  RUN_CD,
  FST_DAY,
  LST_DAY,
  OPN_DT,
  CLS_DT,
  RUN_STA,
  CRT_BY,
  CRT_DT,
  UPD_BY,
  UPD_DT,
  ACC_CD,
  RUN_MON
FROM T_99_PYR_RUN
;
