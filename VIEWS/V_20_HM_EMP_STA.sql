--------------------------------------------------------
--  DDL for View V_20_HM_EMP_STA
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_20_HM_EMP_STA" ("R_K", "EMP_STA_CODE", "EMP_STA_DESC", "STA_RT", "ACC_CD", "IUS_YN", "CRT_BY", "CRT_DT", "UPD_BY", "UPD_DT") AS 
  SELECT
    r_k,
    emp_sta_code,
    emp_sta_desc,
    sta_rt,
    acc_cd,
    ius_yn,
    crt_by,
    crt_dt,
    upd_by,
    upd_dt
FROM
    t_20_hm_emp_sta
;
