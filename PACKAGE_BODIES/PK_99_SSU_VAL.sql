--------------------------------------------------------
--  DDL for Package Body PK_99_SSU_VAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "PK_99_SSU_VAL" AS 
 
-- Author       : Gbenga Cruz 
-- Description  : Validation Management  
-- Date         : January 18, 2017 
 
   --- Validate account short code
   FUNCTION FN_99_SSU_ACC_SHT  (p_sht_nm IN v_99_ssu_acc.sht_nm%type)  RETURN BOOLEAN  AS

     v_sta BOOLEAN;
     v_acc_cd v_99_ssu_acc.sht_nm%type;

         CURSOR c_acc_cd IS SELECT count(sht_nm) sht_nm from v_99_ssu_acc where sht_nm = p_sht_nm;

                 BEGIN

                         OPEN  c_acc_cd;
                         FETCH c_acc_cd INTO v_acc_cd;
			             CLOSE c_acc_cd;



                         IF v_acc_cd = 0 THEN

                                 v_sta := true;
                         ELSE
                                 v_sta := false;
                         END IF;

                RETURN v_sta;

    END FN_99_SSU_ACC_SHT;


   ---- Validate Password
   FUNCTION FN_99_SSU_PWD_VAL  (p_prf_cd IN v_99_ssu_pwd_prf.prf_cd%type, p_usr_pwd IN v_99_ssu_usr.usr_pwd%type)  RETURN BOOLEAN  AS

     v_sta BOOLEAN;

	 v_prf_key v_99_ssu_pwd_prf.prf_key%TYPE;
	 v_usr_pwd v_99_ssu_usr.usr_pwd%TYPE;


	 CURSOR c_pwd_prf IS SELECT prf_key FROM v_99_ssu_pwd_prf WHERE prf_cd = p_prf_cd and ius_yn = '1';


                 BEGIN

		         OPEN  c_pwd_prf;
		         FETCH c_pwd_prf INTO v_prf_key;
		         CLOSE c_pwd_prf;

		         v_usr_pwd := p_usr_pwd;

                        IF p_prf_cd IN ('-20002','-20006','-20007','-20008')  THEN 

                        IF regexp_like(v_usr_pwd ,v_prf_key) THEN
                        v_sta := true;
                        ELSE
                        v_sta := false;
                        END IF;
                        END IF;

                       IF p_prf_cd IN ('-20004') THEN

                       IF LENGTH (v_usr_pwd) >=  to_number(v_prf_key) THEN

                        v_sta := true;
                        ELSE
                        v_sta := false;
                        END IF;
                        END IF;
                 RETURN v_sta;

    END FN_99_SSU_PWD_VAL;



  --- Validate User ID
   FUNCTION FN_99_SSU_USR_VAL (p_usr_id IN v_99_ssu_usr.usr_id%type)  RETURN BOOLEAN  AS

     v_sta BOOLEAN;
     v_usr_id  v_99_ssu_usr.usr_id%type;
         CURSOR c_usr_id IS SELECT count(usr_id) usr_id from v_99_ssu_usr where UPPER(usr_id) = UPPER(p_usr_id);

                 BEGIN

                         OPEN  c_usr_id;
                         FETCH c_usr_id INTO v_usr_id;
			             CLOSE c_usr_id;



                         IF v_usr_id = 0 THEN

                                 v_sta := true;
                         ELSE
                                 v_sta := false;
                         END IF;

                RETURN v_sta;

    END FN_99_SSU_USR_VAL;
    
    
        --- Get account code 
    FUNCTION FN_99_SSU_ACC_CD  RETURN VARCHAR2  AS
    
     v_usr  v_99_ssu_usr.usr_id%TYPE := lower(nvl(sys_context('APEX$SESSION','APP_USER'),user));
     v_comp_key v_99_ssu_usr.comp_key%type;

         CURSOR c_comp_key IS SELECT comp_key from v_99_ssu_usr where usr_id = v_usr;

                 BEGIN

                         OPEN  c_comp_key;
                         FETCH c_comp_key INTO v_comp_key;
			             CLOSE c_comp_key;


                RETURN v_comp_key;

    END FN_99_SSU_ACC_CD;

   END PK_99_SSU_VAL;

/
