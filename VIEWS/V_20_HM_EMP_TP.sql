--------------------------------------------------------
--  DDL for View V_20_HM_EMP_TP
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_20_HM_EMP_TP" ("R_K", "EMP_TP_CODE", "EMP_TP_DESC", "ACC_CD", "IUS_YN", "CRT_BY", "CRT_DT", "UPD_BY", "UPD_DT") AS 
  SELECT
    r_k,
    emp_tp_code,
    emp_tp_desc,
    acc_cd,
    ius_yn,
    crt_by,
    crt_dt,
    upd_by,
    upd_dt
FROM
    t_20_hm_emp_tp
;
