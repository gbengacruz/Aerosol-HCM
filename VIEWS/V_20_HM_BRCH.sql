--------------------------------------------------------
--  DDL for View V_20_HM_BRCH
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_20_HM_BRCH" ("R_K", "BRCH_CODE", "BRCH_DESC", "ACC_CD", "IUS_YN", "CRT_BY", "CRT_DT", "UPD_BY", "UPD_DT") AS 
  SELECT R_K , BRCH_CODE, BRCH_DESC,ACC_CD, IUS_YN, CRT_BY, CRT_DT, UPD_BY , UPD_DT FROM t_20_hm_brch
;
