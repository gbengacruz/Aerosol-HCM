--------------------------------------------------------
--  DDL for View V_99_SSU_SUB
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_99_SSU_SUB" ("R_K", "SUB_CODE", "SUB_DESC", "CRT_BY", "CRT_DT", "UPD_BY", "UPD_DT") AS 
  SELECT
    r_k,
    sub_code,
    sub_desc,
    crt_by,
    crt_dt,
    upd_by,
    upd_dt
FROM
    t_99_ssu_sub
;
