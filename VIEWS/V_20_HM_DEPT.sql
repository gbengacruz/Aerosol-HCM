--------------------------------------------------------
--  DDL for View V_20_HM_DEPT
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HCM"."V_20_HM_DEPT" ("R_K", "DEPT_CODE", "DEPT_DESC", "ACC_CD", "IUS_YN", "CRT_BY", "CRT_DT", "UPD_BY", "UPD_DT") AS 
  SELECT R_K , DEPT_CODE, DEPT_DESC,ACC_CD, IUS_YN, CRT_BY, CRT_DT, UPD_BY , UPD_DT FROM t_20_hm_dept
;
