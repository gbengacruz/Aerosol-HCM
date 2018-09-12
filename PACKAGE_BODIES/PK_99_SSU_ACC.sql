--------------------------------------------------------
--  DDL for Package Body PK_99_SSU_ACC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "HCM"."PK_99_SSU_ACC" AS 
 
-- Author       : Gbenga Cruz 
-- Description  : Cloud Account Management 
-- Date         : January 18, 2017 
 
 
    --- Create Cloud Account Management
    PROCEDURE PC_99_SSU_ACC(p_acc IN v_99_ssu_acc%ROWTYPE, p_err_msg OUT v_99_ssu_log%ROWTYPE) AS 
     
 
         v_acc     v_99_ssu_acc%ROWTYPE; 
		 v_err     v_99_ssu_log%ROWTYPE; 
         v_sta     BOOLEAN;
         v_trp     v_99_ssu_pmv.v_v%TYPE;
         v_usr     v_99_ssu_usr%ROWTYPE;
         v_usr_rle v_99_ssu_usr_rle%ROWTYPE;
         l_status    varchar2(30);

         CURSOR c_trp IS SELECT v_v from v_99_ssu_pmv where v_cd = 'TRP';

           BEGIN 

            OPEN  c_trp;
            FETCH c_trp INTO v_trp;
            CLOSE c_trp;

                 v_acc.r_k := p_acc.r_k; 

                 IF v_acc.r_k IS NULL THEN 

			     v_acc.acc_cd  := sys_guid(); 
                 v_acc.ius_yn  := 1; 
                 v_acc.acc_nm  := INITCAP(p_acc.acc_nm); 
                 v_acc.num_usr := p_acc.num_usr; 
                 v_acc.num_mon := p_acc.num_mon; 
                 v_acc.acc_eml := p_acc.acc_eml; 
                 v_acc.acc_pho := p_acc.acc_pho; 
                 v_acc.acc_cty := p_acc.acc_cty; 
                 v_acc.acc_city := INITCAP(p_acc.acc_city); 
                 v_acc.sta_dt  := systimestamp; 
                 v_acc.ip_adr  := p_acc.ip_adr; 
                 v_acc.hsh_cd  := apex_util.get_hash(apex_t_varchar2(v_acc.acc_cd,v_acc.exp_dt,v_acc.ip_adr), null); 
                 v_acc.exp_dt  := ADD_MONTHS(SYSDATE , v_trp); 
                 v_acc.sht_nm  := UPPER(p_acc.sht_nm); 

                 v_sta := PK_99_SSU_VAL.FN_99_SSU_ACC_SHT(v_acc.sht_nm);
                 
                 --Admin User
                 v_usr.usr_id     :=  v_acc.sht_nm||'ADMIN';
	             v_usr.comp_key   :=  v_acc.acc_cd;
	             v_usr.fst_nm     :=  v_acc.acc_nm;
	             v_usr.usr_eml    :=  v_acc.acc_eml;
                 v_usr.usr_phn    :=  v_acc.acc_pho;
                 v_usr.usr_pwd    := DBMS_RANDOM.string('x', 8); 
                 v_usr.flex_01    := 'CAA';
               
                 
                 --App Admin Role
                 v_usr_rle.acc_cd  := v_acc.acc_cd ;
                 v_usr_rle.role_cd := 'CAA';
			     v_usr_rle.usr_cd  := v_usr.usr_id;


                 IF v_sta = false THEN

                 v_err.err_cd := '-20001';
                -- pk_99_ssu_err.pc_99_ssu_err(v_err);
                --p_err_msg := v_err.err_msg; 
                 raise_application_error(v_err.err_cd , v_err.err_msg);

                 END IF;

                  IF v_err.err_msg IS NULL THEN

                  INSERT INTO t_99_ssu_acc(acc_cd,acc_nm,num_usr,exp_dt,hsh_cd,ius_yn,acc_eml,acc_pho,num_mon,sta_dt,ip_adr,acc_cty,sht_nm,acc_city)  
			                                    VALUES  
                                         (v_acc.acc_cd,v_acc.acc_nm,v_acc.num_usr,v_acc.exp_dt,v_acc.hsh_cd,v_acc.ius_yn,v_acc.acc_eml,v_acc.acc_pho
                                          ,v_acc.num_mon,v_acc.sta_dt,v_acc.ip_adr,v_acc.acc_cty,v_acc.sht_nm,v_acc.acc_city); 
                  COMMIT;
                  
                  
                  
                         HM_email.send (
       p_email_addresses => v_usr.usr_eml,
       p_template_id     => 104491778632938544042972506405273020445,
       p_subject         => 'Aspire HCM User Authentication',
       p_body1_text      => 'Hi ' || v_usr.fst_nm ||', 
                             '||'<br/><br/>' || 'You have been given access to Aspire Human Capital Management, your Login details is below.'||'<br/><br/>',
       p_table_content   => '"Username": "'||v_usr.usr_id||'","Password": "'||v_usr.usr_pwd ,
       p_body2_text      => 'Click on the link below to redirect to Aspire Human Capital Management Application'||'<br/><br/>',
       p_action_label    => 'Aspire Human Capital Management'||'<br/><br/>',
       p_action_link     => 'https://apex.oracle.com/pls/apex/f?p=118733:101',
       p_can_opt_out_yn  => 'N',
       p_status          => l_status );
       
                  END IF;
                  
                  IF v_err.err_msg IS NULL THEN
                     PK_99_SSU_USR.PC_99_SSU_USR(v_usr, v_err);
                     p_err_msg.err_msg := v_err.err_msg;
                  END IF;
                  
                  IF v_err.err_msg IS NULL THEN
                     PK_99_SSU_USR.PC_99_SSU_USR_RLE(v_usr_rle, v_err.err_msg);
                     p_err_msg.err_msg := v_err.err_msg;
                  END IF;
                  
            ELSE 

                 v_acc.r_k      := p_acc.r_k; 
                 v_acc.acc_nm   := INITCAP(p_acc.acc_nm); 
                 v_acc.acc_eml  := LOWER(p_acc.acc_eml); 
                 v_acc.acc_pho  := p_acc.acc_pho; 
                 v_acc.acc_cty  := p_acc.acc_cty; 
                 v_acc.ip_adr   := p_acc.ip_adr; 
                 v_acc.acc_city := INITCAP(p_acc.acc_city); 
                 v_acc.ius_yn   := p_acc.ius_yn;

               IF v_err.err_msg IS NULL THEN     
                UPDATE t_99_ssu_acc SET acc_nm = v_acc.acc_nm, acc_eml = v_acc.acc_eml, acc_pho  = v_acc.acc_pho, acc_cty =  v_acc.acc_cty
                        , ip_adr = v_acc.ip_adr, acc_city = v_acc.acc_city ,ius_yn = v_acc.ius_yn
                       WHERE r_k =  v_acc.r_k; 
               END IF;
               COMMIT;
               
            END IF; 

             EXCEPTION WHEN OTHERS THEN 
                 pk_99_ssu_err.pc_99_ssu_err(v_err);  
                 p_err_msg.err_msg := v_err.err_msg; 
                 p_err_msg.err_cd := v_err.err_cd; 
         END PC_99_SSU_ACC; 

    --- Generate New Hash Key

   PROCEDURE PC_99_SSU_ACC_KEY(p_r_k IN v_99_ssu_acc.r_k%TYPE, p_err_msg OUT v_99_ssu_log.err_msg%TYPE) AS 

       
      v_acc_cd  v_99_ssu_acc.acc_cd%TYPE; 
	  v_exp_dt  v_99_ssu_acc.exp_dt%TYPE; 
	  v_ip_adr  v_99_ssu_acc.ip_adr%TYPE; 
	  v_hsh_cd  v_99_ssu_acc.hsh_cd%TYPE; 
      v_r_k     v_99_ssu_acc.r_k%TYPE; 

	  v_err         v_99_ssu_log%ROWTYPE;

      CURSOR c_acc IS SELECT acc_cd, exp_dt, ip_adr FROM v_99_ssu_acc WHERE r_k = p_r_k;



         BEGIN 

	         v_r_k   := p_r_k;

	         OPEN c_acc;
	         FETCH c_acc INTO v_acc_cd,v_exp_dt,v_ip_adr;
	         CLOSE c_acc;

	         v_hsh_cd  := apex_util.get_hash(apex_t_varchar2(v_acc_cd,v_exp_dt,v_ip_adr), null); 
                     
                     IF v_err.err_msg IS NULL THEN  
	                 UPDATE t_99_ssu_acc set hsh_cd = v_hsh_cd
	                 WHERE r_k = v_r_k;
                     END IF;
                     
                     COMMIT;
                     
	    EXCEPTION WHEN OTHERS THEN 
                 pk_99_ssu_err.pc_99_ssu_err(v_err);  
                 p_err_msg := v_err.err_msg; 


        END PC_99_SSU_ACC_KEY;   

    --- New Subscription
    
      PROCEDURE PC_99_SSU_ACC_SUB (p_rev IN v_99_ssu_rev%ROWTYPE, p_err_msg OUT v_99_ssu_log.err_msg%TYPE) AS 
      
          v_pmv v_99_ssu_pmv%ROWTYPE;
          CURSOR c_pmv IS SELECT  r_k, v_n, v_c, v_l, v_d,v_yn, v_v, v_w, v_cd, v_x1, v_x2 , v_x3 FROM v_99_ssu_pmv WHERE r_k = 93;
      
                BEGIN
                 
                FOR i IN c_pmv LOOP  
                  
                  NULL;
                END LOOP;
                
      END PC_99_SSU_ACC_SUB;
      
      
      ---Get Cloud Account Key
      
        FUNCTION FN_99_SSU_ACC_KEY RETURN VARCHAR2 AS
       
         v_comp_key v_99_ssu_usr.comp_key%TYPE;
        
         CURSOR c_acc IS SELECT comp_key FROM v_99_ssu_usr WHERE USR_ID = V('APP_USER');
         
              BEGIN
          
                 OPEN  c_acc;
                 FETCH c_acc INTO v_comp_key;
                 CLOSE c_acc;
            
            RETURN v_comp_key;
       
        END FN_99_SSU_ACC_KEY;
      
   END PK_99_SSU_ACC;

/
