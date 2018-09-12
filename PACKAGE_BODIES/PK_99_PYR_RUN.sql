--------------------------------------------------------
--  DDL for Package Body PK_99_PYR_RUN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "HCM"."PK_99_PYR_RUN" AS

-- Author       : Gbenga Cruz 
-- Description  : Payroll Period Setups 
-- Date         : January 18, 2017 

  --- Period Opening/closing
  
     PROCEDURE PC_99_PYR_RUN_OPN (p_pyr v_99_pyr_run%ROWTYPE, p_err_msg OUT v_99_ssu_log%ROWTYPE)AS
    
      v_err     v_99_ssu_log%ROWTYPE; 
      v_pyr     v_99_pyr_run%ROWTYPE;
      v_acc_cd  v_99_pyr_run.acc_cd%TYPE := PK_99_SSU_ACC.FN_99_SSU_ACC_KEY; 
      v_opn     v_99_pyr_run.r_k%TYPE;
      
      CURSOR c_opn IS SELECT max(r_k) FROM v_99_pyr_run WHERE acc_cd = v_acc_cd;
      
         BEGIN
         
              OPEN  c_opn;
              FETCH c_opn INTO v_opn;
              CLOSE c_opn;

               FOR i IN  (SELECT fst_day, lst_day , run_sta FROM  v_99_pyr_run WHERE r_k =  v_opn AND acc_cd = v_acc_cd)
                    LOOP
                      v_pyr.fst_day :=  i.fst_day;
                      v_pyr.lst_day :=  i.lst_day;
                      v_pyr.run_sta :=  i.run_sta;
                      
                      IF   v_pyr.run_sta  = 1 THEN 
                      
                      v_pyr.fst_day := ADD_MONTHS(TRUNC (v_pyr.fst_day,'MM'), 1);
                      v_pyr.lst_day := LAST_DAY (v_pyr.fst_day) ;
                      v_pyr.run_cd     := TO_CHAR(v_pyr.fst_day , 'MM/YYYY');
                      v_pyr.run_mon  := TO_CHAR(v_pyr.fst_day , 'Mon, YYYY');
                      v_pyr.run_sta := 0;
                      v_pyr.opn_dt  := SYSDATE;
                      
                      INSERT INTO t_99_pyr_run (r_k, fst_day, lst_day, run_cd, run_sta, opn_dt,run_mon, acc_cd) VALUES (v_pyr.r_k, v_pyr.fst_day, v_pyr.lst_day, v_pyr.run_cd, v_pyr.run_sta, v_pyr.opn_dt, v_pyr.run_mon,v_acc_cd);
                      
                      ELSIF v_pyr.run_sta  = 0 THEN 

                      v_pyr.run_sta := 1;
                      v_pyr.cls_dt  := SYSDATE;
                      
                      UPDATE t_99_pyr_run SET run_sta = v_pyr.run_sta, cls_dt = v_pyr.cls_dt WHERE  r_k =  v_opn AND acc_cd = v_acc_cd;
                      
                      END IF;
                      
                    
                    END LOOP;

               IF v_opn IS NULL THEN
                 
                  v_pyr.fst_day := TRUNC (SYSDATE,'MM');
                  v_pyr.lst_day := LAST_DAY (v_pyr.fst_day) ;
                  v_pyr.run_cd     := TO_CHAR(v_pyr.fst_day , 'MM/YYYY');
                  v_pyr.run_mon  := TO_CHAR(v_pyr.fst_day , 'Mon, YYYY');
                  v_pyr.run_sta := 0;
                  v_pyr.opn_dt  := SYSDATE;
                  
                  INSERT INTO t_99_pyr_run (r_k, fst_day, lst_day, run_cd, run_sta, opn_dt, run_mon,acc_cd) VALUES (v_pyr.r_k, v_pyr.fst_day, v_pyr.lst_day, v_pyr.run_cd, v_pyr.run_sta, v_pyr.opn_dt,v_pyr.run_mon,v_acc_cd );
                  
              END IF;        
       COMMIT; 
       
             EXCEPTION WHEN OTHERS THEN
      ROLLBACK;
      pk_99_ssu_err.pc_99_ssu_err(v_err);
      p_err_msg := v_err;

    END PC_99_PYR_RUN_OPN;
  
   -- Get next Payroll period operation
    FUNCTION FN_99_PYR_NXT_PRD RETURN VARCHAR2 AS

    v_pyr     v_99_pyr_run%ROWTYPE;
    v_acc_cd  v_99_pyr_run.acc_cd%TYPE := PK_99_SSU_ACC.FN_99_SSU_ACC_KEY; 
    
    CURSOR c_prd IS  select fst_day , run_sta FROM v_99_pyr_run WHERE acc_cd = v_acc_cd AND r_k IN (SELECT max(r_k)  FROM v_99_pyr_run WHERE acc_cd = v_acc_cd);
    BEGIN
        OPEN c_prd;
        FETCH c_prd INTO v_pyr.fst_day, v_pyr.run_sta;
        CLOSE c_prd;
        IF v_pyr.run_sta = 0 THEN
           v_pyr.run_mon  := TO_CHAR(v_pyr.fst_day , 'Mon, YYYY');
        ELSIF v_pyr.run_sta = 1 THEN
           v_pyr.fst_day := ADD_MONTHS(TRUNC (v_pyr.fst_day,'MM'), 1);
           v_pyr.run_mon  := TO_CHAR(v_pyr.fst_day , 'Mon, YYYY');
        ELSE
           v_pyr.run_mon  := TO_CHAR(SYSDATE , 'Mon, YYYY');
        END IF;
        
      RETURN v_pyr.run_mon;

     END FN_99_PYR_NXT_PRD;
     
     
    --- Get Payroll period status
    FUNCTION FN_99_PYR_STA RETURN NUMBER AS

    v_pyr     v_99_pyr_run%ROWTYPE;
    v_acc_cd  v_99_pyr_run.acc_cd%TYPE := PK_99_SSU_ACC.FN_99_SSU_ACC_KEY; 
    
    CURSOR c_prd IS  select run_sta FROM v_99_pyr_run WHERE acc_cd = v_acc_cd AND r_k IN (SELECT max(r_k)  FROM v_99_pyr_run WHERE acc_cd = v_acc_cd);
    BEGIN
        OPEN  c_prd;
        FETCH c_prd INTO  v_pyr.run_sta;
        CLOSE c_prd;
        
       IF v_pyr.run_sta IS NULL THEN
       v_pyr.run_sta := 1;
       END IF;

      RETURN v_pyr.run_sta;

     END FN_99_PYR_STA;
     
     
       -- Get current Payroll period operation
    FUNCTION FN_99_PYR_CUR_PRD RETURN VARCHAR2 AS

    v_pyr     v_99_pyr_run%ROWTYPE;
    v_acc_cd  v_99_pyr_run.acc_cd%TYPE := PK_99_SSU_ACC.FN_99_SSU_ACC_KEY; 
    
    CURSOR c_prd IS  select run_cd FROM v_99_pyr_run WHERE acc_cd = v_acc_cd AND r_k IN (SELECT max(r_k)  FROM v_99_pyr_run WHERE acc_cd = v_acc_cd);
    BEGIN
        OPEN c_prd;
        FETCH c_prd INTO v_pyr.run_cd;
        CLOSE c_prd;
  
        
      RETURN v_pyr.run_cd;

     END FN_99_PYR_CUR_PRD;

END PK_99_PYR_RUN;

/
