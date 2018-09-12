--------------------------------------------------------
--  DDL for View V_20_HM_JOB
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_20_HM_JOB" ("R_K", "JOB_CODE", "JOB_DESC", "ACC_CD", "IUS_YN", "CRT_BY", "CRT_DT", "UPD_BY", "UPD_DT") AS 
  SELECT
    r_k,
    job_code,
    job_desc,
    acc_cd,
    ius_yn,
    crt_by,
    crt_dt,
    upd_by,
    upd_dt
FROM
    t_20_hm_job
;
