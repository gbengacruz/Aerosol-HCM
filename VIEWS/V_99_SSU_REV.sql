--------------------------------------------------------
--  DDL for View V_99_SSU_REV
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_99_SSU_REV" ("R_K", "UNT", "AMT", "ROW_VSN", "CRT_DT", "CRT_BY", "UPD_DT", "UPD_BY", "ACC_CD") AS 
  SELECT
    r_k,
    unt,
    amt,
    row_vsn,
    crt_dt,
    crt_by,
    upd_dt,
    upd_by,
    acc_cd
FROM
    t_99_ssu_rev
;
