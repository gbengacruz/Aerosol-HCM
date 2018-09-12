--------------------------------------------------------
--  DDL for Trigger TR_99_SSU_ACC_HST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TR_99_SSU_ACC_HST" BEFORE UPDATE OF EXP_DT,NUM_MON ON T_99_SSU_ACC   
FOR EACH ROW  
BEGIN  

SELECT s_99_ssu_acc_hst.NEXTVAL INTO :new.r_k FROM dual;  

INSERT INTO t_99_ssu_acc_hst(r_k,acc_cd,acc_nm,num_usr,exp_dt,hsh_cd,ius_yn,acc_eml,acc_pho,num_mon,sta_dt,ip_adr,acc_cty,crt_by,crt_dt,upd_by,upd_dt,row_vsn,trn_dt)  
                             VALUES  
          (:new.r_k,:old.acc_cd,:old.acc_nm,:old.num_usr,:old.exp_dt,:old.hsh_cd,:old.ius_yn,:old.acc_eml,:old.acc_pho,:old.num_mon,:old.sta_dt,:old.ip_adr,:old.acc_cty,:old.crt_by,:old.crt_dt,:old.upd_by,:old.upd_dt,:old.row_vsn,systimestamp);  

END;




/
ALTER TRIGGER "TR_99_SSU_ACC_HST" ENABLE;
