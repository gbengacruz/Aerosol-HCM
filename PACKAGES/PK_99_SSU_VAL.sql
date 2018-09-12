--------------------------------------------------------
--  DDL for Package PK_99_SSU_VAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "HCM"."PK_99_SSU_VAL" AS  
 
-- Author       : Gbenga Cruz 
-- Description  : Validation Management 
-- Date         : January 18, 2017 
 
  
         --- Validate account short code
         FUNCTION FN_99_SSU_ACC_SHT  (p_sht_nm IN v_99_ssu_acc.sht_nm%type)  RETURN BOOLEAN ;

         --- Validate Password
         FUNCTION FN_99_SSU_PWD_VAL  (p_prf_cd IN v_99_ssu_pwd_prf.prf_cd%type, p_usr_pwd IN v_99_ssu_usr.usr_pwd%type)  RETURN BOOLEAN;

         --- Validate User ID
         FUNCTION FN_99_SSU_USR_VAL (p_usr_id IN v_99_ssu_usr.usr_id%type)  RETURN BOOLEAN;
         
         --- Get account code 
         FUNCTION FN_99_SSU_ACC_CD  RETURN VARCHAR2;

END PK_99_SSU_VAL;

/
