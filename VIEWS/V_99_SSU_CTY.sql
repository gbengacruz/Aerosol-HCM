--------------------------------------------------------
--  DDL for View V_99_SSU_CTY
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HCM"."V_99_SSU_CTY" ("R_K", "CTY_CD", "CTY_NM", "IUS_YN", "ROW_VSN", "CRT_DT", "CRT_BY", "UPD_DT", "UPD_BY") AS 
  SELECT  R_K, 
  CTY_CD, 
  CTY_NM, 
  IUS_YN, 
  ROW_VSN, 
  CRT_DT, 
  CRT_BY, 
  UPD_DT, 
  UPD_BY 
FROM T_99_SSU_CTY
;
