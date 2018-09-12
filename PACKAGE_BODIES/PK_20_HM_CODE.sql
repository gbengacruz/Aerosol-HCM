--------------------------------------------------------
--  DDL for Package Body PK_20_HM_CODE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "HCM"."PK_20_HM_CODE" AS
-- Author       : Gbenga Cruz 
-- Description  : Cloud HR Setups 
-- Date         : January 18, 2017 

    --Manage Branches
    PROCEDURE PC_20_HM_BRCH (p_brch v_20_hm_brch%rowtype, p_err_msg OUT v_99_ssu_log%ROWTYPE)AS
    
     v_err     v_99_ssu_log%ROWTYPE; 
     v_comp_key v_99_ssu_usr.comp_key%TYPE;
     v_brch    v_20_hm_brch%ROWTYPE;
     
         BEGIN
         
        v_comp_key       := PK_99_SSU_ACC.FN_99_SSU_ACC_KEY;
        v_brch.r_k       :=  p_brch.r_k;
        v_brch.brch_desc :=  p_brch.brch_desc;
        v_brch.ius_yn    :=  p_brch.ius_yn;
        v_brch.brch_code :=  p_brch.brch_code;
        
         IF v_brch.r_k IS NULL THEN
         
                 IF v_err.err_msg IS NULL THEN
                 INSERT INTO t_20_hm_brch(brch_code, brch_desc, acc_cd, ius_yn) 
                      VALUES 
                 (v_brch.brch_code ,v_brch.brch_desc, v_comp_key,v_brch.ius_yn);
                
                 END IF;
         
         ELSE 
         
                IF v_err.err_msg IS NULL THEN
                UPDATE  t_20_hm_brch SET brch_desc = v_brch.brch_desc, ius_yn = v_brch.ius_yn 
                     WHERE r_k = v_brch.r_k AND acc_cd = v_comp_key ;
                
                END IF;
         
         END IF;
         COMMIT;
         EXCEPTION WHEN OTHERS THEN 
          pk_99_ssu_err.pc_99_ssu_err(v_err);  
          p_err_msg := v_err; 
     END PC_20_HM_BRCH;
     
     
    --Manage Department
    PROCEDURE PC_20_HM_DEPT (p_dept v_20_hm_dept%rowtype, p_err_msg OUT v_99_ssu_log%ROWTYPE)AS
    
     v_err     v_99_ssu_log%ROWTYPE; 
     v_comp_key v_99_ssu_usr.comp_key%TYPE;
     v_dept    v_20_hm_dept%ROWTYPE;
     
         BEGIN
         
        v_comp_key       := PK_99_SSU_ACC.FN_99_SSU_ACC_KEY;
        v_dept.r_k       :=  p_dept.r_k;
        v_dept.dept_desc :=  p_dept.dept_desc;
        v_dept.ius_yn    :=  p_dept.ius_yn;
        v_dept.dept_code :=  p_dept.dept_code;
        
         IF v_dept.r_k IS NULL THEN
         
                 IF v_err.err_msg IS NULL THEN
                 INSERT INTO t_20_hm_dept(dept_code, dept_desc, acc_cd, ius_yn) 
                      VALUES 
                 (v_dept.dept_code ,v_dept.dept_desc, v_comp_key,v_dept.ius_yn);
                
                 END IF;
         
         ELSE 
         
                IF v_err.err_msg IS NULL THEN
                UPDATE  t_20_hm_dept SET dept_desc = v_dept.dept_desc, ius_yn = v_dept.ius_yn 
                     WHERE r_k = v_dept.r_k AND acc_cd = v_comp_key ;
                
                END IF;
         
         END IF;
         COMMIT;
         EXCEPTION WHEN OTHERS THEN 
          pk_99_ssu_err.pc_99_ssu_err(v_err);  
          p_err_msg := v_err; 
     END PC_20_HM_DEPT;
    
     --Manage Unit
    PROCEDURE PC_20_HM_UNT (p_unt v_20_hm_unt%rowtype, p_err_msg OUT v_99_ssu_log%ROWTYPE)AS
    
     v_err     v_99_ssu_log%ROWTYPE; 
     v_comp_key v_99_ssu_usr.comp_key%TYPE;
     v_unt    v_20_hm_unt%ROWTYPE;
     
         BEGIN
         
        v_comp_key       := PK_99_SSU_ACC.FN_99_SSU_ACC_KEY;
        v_unt.r_k        :=  p_unt.r_k;
        v_unt.unt_desc   :=  p_unt.unt_desc;
        v_unt.ius_yn     :=  p_unt.ius_yn;
        v_unt.unt_code   :=  p_unt.unt_code;
        
         IF v_unt.r_k IS NULL THEN
         
                 IF v_err.err_msg IS NULL THEN
                 INSERT INTO t_20_hm_unt(unt_code, unt_desc, acc_cd, ius_yn) 
                      VALUES 
                 (v_unt.unt_code ,v_unt.unt_desc, v_comp_key,v_unt.ius_yn);
                
                 END IF;
         
         ELSE 
         
                IF v_err.err_msg IS NULL THEN
                UPDATE  t_20_hm_unt SET unt_desc = v_unt.unt_desc, ius_yn = v_unt.ius_yn 
                     WHERE r_k = v_unt.r_k AND acc_cd = v_comp_key ;
                
                END IF;
         
         END IF;
         COMMIT;
         EXCEPTION WHEN OTHERS THEN 
          pk_99_ssu_err.pc_99_ssu_err(v_err);  
          p_err_msg := v_err; 
     END PC_20_HM_UNT;
     
     
    --Manage Job
    PROCEDURE PC_20_HM_JOB (p_job v_20_hm_job%rowtype, p_err_msg OUT v_99_ssu_log%ROWTYPE)AS
    
     v_err     v_99_ssu_log%ROWTYPE; 
     v_comp_key v_99_ssu_usr.comp_key%TYPE;
     v_job    v_20_hm_job%ROWTYPE;
     
         BEGIN
         
        v_comp_key       := PK_99_SSU_ACC.FN_99_SSU_ACC_KEY;
        v_job.r_k        :=  p_job.r_k;
        v_job.job_desc   :=  p_job.job_desc;
        v_job.ius_yn     :=  p_job.ius_yn;
        v_job.job_code   :=  p_job.job_code;
        
         IF v_job.r_k IS NULL THEN
         
                 IF v_err.err_msg IS NULL THEN
                 INSERT INTO t_20_hm_job(job_code, job_desc, acc_cd, ius_yn) 
                      VALUES 
                 (v_job.job_code ,v_job.job_desc, v_comp_key,v_job.ius_yn);
                
                 END IF;
         
         ELSE 
         
                IF v_err.err_msg IS NULL THEN
                UPDATE  t_20_hm_job SET job_desc = v_job.job_desc, ius_yn = v_job.ius_yn 
                     WHERE r_k = v_job.r_k AND acc_cd = v_comp_key ;
                
                END IF;
         
         END IF;
         COMMIT;
         EXCEPTION WHEN OTHERS THEN 
          pk_99_ssu_err.pc_99_ssu_err(v_err);  
          p_err_msg := v_err; 
     END PC_20_HM_JOB;
     
     
    --Manage Employee Type
    PROCEDURE PC_20_HM_EMP_TP (p_emp_tp v_20_hm_emp_tp%rowtype, p_err_msg OUT v_99_ssu_log%ROWTYPE)AS
    
     v_err     v_99_ssu_log%ROWTYPE; 
     v_comp_key v_99_ssu_usr.comp_key%TYPE;
     v_emp_tp    v_20_hm_emp_tp%ROWTYPE;
     
         BEGIN
         
        v_comp_key       := PK_99_SSU_ACC.FN_99_SSU_ACC_KEY;
        v_emp_tp.r_k        :=  p_emp_tp.r_k;
        v_emp_tp.emp_tp_desc   :=  p_emp_tp.emp_tp_desc;
        v_emp_tp.ius_yn     :=  p_emp_tp.ius_yn;
        v_emp_tp.emp_tp_code   :=  p_emp_tp.emp_tp_code;
        
         IF v_emp_tp.r_k IS NULL THEN
         
                 IF v_err.err_msg IS NULL THEN
                 INSERT INTO t_20_hm_emp_tp(emp_tp_code, emp_tp_desc, acc_cd, ius_yn) 
                      VALUES 
                 (v_emp_tp.emp_tp_code ,v_emp_tp.emp_tp_desc, v_comp_key,v_emp_tp.ius_yn);
                
                 END IF;
         
         ELSE 
         
                IF v_err.err_msg IS NULL THEN
                UPDATE  t_20_hm_emp_tp SET emp_tp_desc = v_emp_tp.emp_tp_desc, ius_yn = v_emp_tp.ius_yn 
                     WHERE r_k = v_emp_tp.r_k AND acc_cd = v_comp_key ;
                
                END IF;
         
         END IF;
         COMMIT;
         EXCEPTION WHEN OTHERS THEN 
          pk_99_ssu_err.pc_99_ssu_err(v_err);  
          p_err_msg := v_err; 
     END PC_20_HM_EMP_TP;
     
     --Manage Employee Status
    PROCEDURE PC_20_HM_EMP_STA (p_emp_sta v_20_hm_emp_sta%rowtype, p_err_msg OUT v_99_ssu_log%ROWTYPE)AS
    
     v_err        v_99_ssu_log%ROWTYPE; 
     v_comp_key   v_99_ssu_usr.comp_key%TYPE;
     v_emp_sta    v_20_hm_emp_sta%ROWTYPE;
     
         BEGIN
         
         v_comp_key               :=  PK_99_SSU_ACC.FN_99_SSU_ACC_KEY;
         v_emp_sta.r_k            :=  p_emp_sta.r_k;
         v_emp_sta.emp_sta_desc   :=  p_emp_sta.emp_sta_desc;
         v_emp_sta.ius_yn         :=  p_emp_sta.ius_yn;
         v_emp_sta.emp_sta_code   :=  p_emp_sta.emp_sta_code;
         v_emp_sta.sta_rt         :=  p_emp_sta.sta_rt;
        
         IF v_emp_sta.r_k IS NULL THEN
         
                 IF v_err.err_msg IS NULL THEN
                 INSERT INTO t_20_hm_emp_sta(emp_sta_code, emp_sta_desc, acc_cd, ius_yn,sta_rt) 
                      VALUES 
                 (v_emp_sta.emp_sta_code ,v_emp_sta.emp_sta_desc, v_comp_key,v_emp_sta.ius_yn,v_emp_sta.sta_rt);
                
                 END IF;
         
         ELSE 
         
                IF v_err.err_msg IS NULL THEN
                UPDATE  t_20_hm_emp_sta SET emp_sta_desc = v_emp_sta.emp_sta_desc, ius_yn = v_emp_sta.ius_yn , sta_rt = v_emp_sta.sta_rt 
                     WHERE r_k = v_emp_sta.r_k AND acc_cd = v_comp_key ;
                
                END IF;
         
         END IF;
         COMMIT;
         EXCEPTION WHEN OTHERS THEN 
          pk_99_ssu_err.pc_99_ssu_err(v_err);  
          p_err_msg := v_err; 
     END PC_20_HM_EMP_STA;
     
END PK_20_HM_CODE;

/
