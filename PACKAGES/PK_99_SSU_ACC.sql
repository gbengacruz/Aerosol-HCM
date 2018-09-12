--------------------------------------------------------
--  DDL for Package PK_99_SSU_ACC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "HCM"."PK_99_SSU_ACC" AS  
 
-- Author       : Gbenga Cruz 
-- Description  : Cloud Account Management 
-- Date         : January 18, 2017 
 
  
    --- Cloud Account Management 
    PROCEDURE PC_99_SSU_ACC (p_acc IN v_99_ssu_acc%ROWTYPE, p_err_msg OUT v_99_ssu_log%ROWTYPE); 

    --- New Hash Key

    PROCEDURE PC_99_SSU_ACC_KEY(p_r_k IN v_99_ssu_acc.r_k%TYPE, p_err_msg OUT v_99_ssu_log.err_msg%TYPE);
   
    ---Get Cloud Account Key
      
    FUNCTION FN_99_SSU_ACC_KEY RETURN VARCHAR2;

END PK_99_SSU_ACC;

/
