--------------------------------------------------------
--  DDL for View V_99_SSU_PWD_PRF
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HCM"."V_99_SSU_PWD_PRF" ("R_K", "PRF_CD", "PRF_KEY", "PRF_DSC", "ROW_VSN", "CRT_DT", "CRT_BY", "UPD_DT", "UPD_BY", "ACC_CD", "IUS_YN", "V_CD") AS 
  SELECT  R_K,
  PRF_CD,
  PRF_KEY,
  PRF_DSC,
  ROW_VSN,
  CRT_DT,
  CRT_BY,
  UPD_DT,
  UPD_BY,
  ACC_CD,
  IUS_YN,
  V_CD
FROM T_99_SSU_PWD_PRF
;
