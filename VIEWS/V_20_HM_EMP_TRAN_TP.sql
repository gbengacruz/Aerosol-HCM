--------------------------------------------------------
--  DDL for View V_20_HM_EMP_TRAN_TP
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_20_HM_EMP_TRAN_TP" ("R_K", "TRAN_DESC", "CRT_BY", "CRT_DT", "UPD_BY", "UPD_DT") AS 
  SELECT
    r_k,
    tran_desc,
    crt_by,
    crt_dt,
    upd_by,
    upd_dt
FROM
    t_20_hm_emp_tran_tp
;
