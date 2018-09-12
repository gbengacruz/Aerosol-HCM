--------------------------------------------------------
--  DDL for Package PK_20_HM_CODE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "PK_20_HM_CODE" AS 
-- Author       : Gbenga Cruz 
-- Description  : Cloud HR Setups 
-- Date         : January 18, 2017 

    --Manage Branches
    PROCEDURE PC_20_HM_BRCH (p_brch v_20_hm_brch%rowtype, p_err_msg OUT v_99_ssu_log%ROWTYPE);  
    --Manage Departments
    PROCEDURE PC_20_HM_DEPT (p_dept v_20_hm_dept%rowtype, p_err_msg OUT v_99_ssu_log%ROWTYPE);
    --Manage Units
    PROCEDURE PC_20_HM_UNT (p_unt v_20_hm_unt%rowtype, p_err_msg OUT v_99_ssu_log%ROWTYPE);
    --Manage Jobs
    PROCEDURE PC_20_HM_JOB (p_job v_20_hm_job%rowtype, p_err_msg OUT v_99_ssu_log%ROWTYPE);
    --Manage Employee Type
    PROCEDURE PC_20_HM_EMP_TP (p_emp_tp v_20_hm_emp_tp%rowtype, p_err_msg OUT v_99_ssu_log%ROWTYPE);
    --Manage Employee Status
    PROCEDURE PC_20_HM_EMP_STA (p_emp_sta v_20_hm_emp_sta%rowtype, p_err_msg OUT v_99_ssu_log%ROWTYPE);
    
END PK_20_HM_CODE;

/
