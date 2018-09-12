--------------------------------------------------------
--  DDL for View V_20_HM_EMP_MRT_STA
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HCM"."V_20_HM_EMP_MRT_STA" ("R_K", "MRT_CODE", "MRT_DESC", "ACC_CD", "IUS_YN", "CRT_BY", "CRT_DT", "UPD_BY", "UPD_DT") AS 
  SELECT R_K,
  MRT_CODE,
  MRT_DESC,
  ACC_CD,
  IUS_YN,
  CRT_BY,
  CRT_DT,
  UPD_BY,
  UPD_DT
FROM T_20_HM_EMP_MRT_STA
;
