--------------------------------------------------------
--  DDL for View V_20_HM_EMP_TRAN
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_20_HM_EMP_TRAN" ("R_K", "TRAN_CD", "TRAN_DESC", "ACC_CD", "APR_STA", "APR_DT", "CRT_BY", "CRT_DT", "UPD_BY", "UPD_DT", "RUN_CD", "EMP_NO", "PRC_YN", "NEW_TRAN", "OLD_TRAN", "NEW_TRAN2", "OLD_TRAN2", "NEW_TRAN3", "OLD_TRAN3", "NEW_TRAN4", "OLD_TRAN4", "NEW_TRAN5", "OLD_TRAN5", "APR_BY") AS 
  SELECT
    r_k,
    tran_cd,
    tran_desc,
    acc_cd,
    apr_sta,
    apr_dt,
    crt_by,
    crt_dt,
    upd_by,
    upd_dt,
    run_cd,
    emp_no,
    prc_yn,
    new_tran,
    old_tran,
    new_tran2,
    old_tran2,
    new_tran3,
    old_tran3,
    new_tran4,
    old_tran4,
    new_tran5,
    old_tran5,
    apr_by
FROM
    t_20_hm_emp_tran
;
