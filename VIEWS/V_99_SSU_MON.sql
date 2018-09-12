--------------------------------------------------------
--  DDL for View V_99_SSU_MON
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HCM"."V_99_SSU_MON" ("R_K", "MON_CD", "MON_NM", "ROW_VSN", "CRT_DT", "CRT_BY", "UPD_DT", "UPD_BY") AS 
  SELECT  R_K, 
  MON_CD, 
  MON_NM, 
  ROW_VSN, 
  CRT_DT, 
  CRT_BY, 
  UPD_DT, 
  UPD_BY 
FROM T_99_SSU_MON
;
