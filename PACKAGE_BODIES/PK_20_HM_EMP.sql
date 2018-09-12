--------------------------------------------------------
--  DDL for Package Body PK_20_HM_EMP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "PK_20_HM_EMP" AS

-- Author       : Gbenga Cruz 
-- Description  : Cloud Employee Information
-- Date         : January 18, 2018 


  --Manage Employee Information
  PROCEDURE PC_20_HM_EMP (p_emp v_20_hm_emp%ROWTYPE, p_err_msg OUT v_99_ssu_log%ROWTYPE)AS

     v_err      v_99_ssu_log%ROWTYPE;
     v_comp_key v_99_ssu_usr.comp_key%TYPE;
     v_emp      v_20_hm_emp%ROWTYPE;

       BEGIN

           v_emp.acc_cd        :=  PK_99_SSU_ACC.FN_99_SSU_ACC_KEY;
           v_emp.r_k           :=  p_emp.r_k;
           v_emp.emp_no        :=  p_emp.emp_no;
           v_emp.emp_ttl       :=  p_emp.emp_ttl;
           v_emp.lst_nm        :=  p_emp.lst_nm;
           v_emp.fst_nm        :=  p_emp.fst_nm;
           v_emp.mdl_nm        :=  p_emp.mdl_nm;
           v_emp.bth_dt        :=  p_emp.bth_dt;
           v_emp.bth_plc       :=  p_emp.bth_plc;
           v_emp.emp_sex       :=  p_emp.emp_sex;
           v_emp.emp_nty       :=  p_emp.emp_nty;
           v_emp.nty_lga       :=  p_emp.nty_lga;
           v_emp.mrt_sta       :=  p_emp.mrt_sta;
           v_emp.emp_phn       :=  p_emp.emp_phn;
           v_emp.emp_eml       :=  p_emp.emp_eml;
           v_emp.emp_adr       :=  p_emp.emp_adr;
           v_emp.stf_ctg       :=  p_emp.stf_ctg;
           v_emp.emp_brch      :=  p_emp.emp_brch;
           v_emp.emp_dept      :=  p_emp.emp_dept;
           v_emp.emp_unt       :=  p_emp.emp_unt;
           v_emp.emp_desg      :=  p_emp.emp_desg;
           v_emp.emp_dt        :=  p_emp.emp_dt;
           v_emp.cfmt_dt       :=  p_emp.cfmt_dt;
           v_emp.emp_lvl       :=  p_emp.emp_lvl;
           v_emp.emp_stp       :=  p_emp.emp_stp;
           v_emp.stf_sta       :=  p_emp.stf_sta;
           v_emp.adr_cty       :=  p_emp.adr_cty;
           v_emp.adr_stt       :=  p_emp.adr_stt;
           v_emp.adr_city      :=  p_emp.adr_city;
           v_emp.nty_city      :=  p_emp.nty_city;
            v_emp.nty_stt      :=  p_emp.nty_stt;
           v_emp.adr_str       :=  p_emp.adr_str;
           v_emp.apr_sta       :=  p_emp.apr_sta;

             IF v_err.err_msg IS NULL THEN

                INSERT INTO t_20_hm_emp (r_k,acc_cd,emp_no,emp_ttl,lst_nm,fst_nm,mdl_nm,bth_dt,bth_plc,emp_sex,emp_nty
                ,nty_lga,mrt_sta,emp_phn,emp_eml,emp_adr,stf_ctg,emp_brch,emp_dept,emp_unt,emp_desg,emp_dt,cfmt_dt
                ,emp_lvl,emp_stp,stf_sta,adr_cty,adr_stt,adr_city,nty_city,adr_str,apr_sta,nty_stt) 
                    VALUES
                (v_emp.r_k,v_emp.acc_cd,v_emp.emp_no,v_emp.emp_ttl,v_emp.lst_nm,v_emp.fst_nm,v_emp.mdl_nm,v_emp.bth_dt,v_emp.bth_plc,v_emp.emp_sex,v_emp.emp_nty
               ,v_emp.nty_lga,v_emp.mrt_sta,v_emp.emp_phn,v_emp.emp_eml,v_emp.emp_adr,v_emp.stf_ctg,v_emp.emp_brch,v_emp.emp_dept,v_emp.emp_unt,v_emp.emp_desg,v_emp.emp_dt,v_emp.cfmt_dt
               ,v_emp.emp_lvl,v_emp.emp_stp,v_emp.stf_sta,v_emp.adr_cty,v_emp.adr_stt,v_emp.adr_city,v_emp.nty_city,v_emp.adr_str,v_emp.apr_sta,v_emp.nty_stt);

             END IF;
      COMMIT;
      
      EXCEPTION WHEN OTHERS THEN
      
      pk_99_ssu_err.pc_99_ssu_err(v_err);
      p_err_msg := v_err;
      
   END PC_20_HM_EMP;


END PK_20_HM_EMP;

/
