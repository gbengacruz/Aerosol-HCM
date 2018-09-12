--------------------------------------------------------
--  DDL for View V_20_HM_EMP_SEX
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HCM"."V_20_HM_EMP_SEX" ("R_K", "SEX_CODE", "SEX_DESC", "ACC_CD", "IUS_YN", "CRT_BY", "CRT_DT", "UPD_BY", "UPD_DT") AS 
  SELECT R_K,
  SEX_CODE,
  SEX_DESC,
  ACC_CD,
  IUS_YN,
  CRT_BY,
  CRT_DT,
  UPD_BY,
  UPD_DT
FROM T_20_HM_EMP_SEX
;
