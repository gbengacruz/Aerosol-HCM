--------------------------------------------------------
--  DDL for View V_20_HM_UNT
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "HCM"."V_20_HM_UNT" ("R_K", "UNT_CODE", "UNT_DESC", "ACC_CD", "IUS_YN", "CRT_BY", "CRT_DT", "UPD_BY", "UPD_DT") AS 
  SELECT
    r_k,
    unt_code,
    unt_desc,
    acc_cd,
    ius_yn,
    crt_by,
    crt_dt,
    upd_by,
    upd_dt
FROM
    t_20_hm_unt
;
