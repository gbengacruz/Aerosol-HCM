--------------------------------------------------------
--  DDL for Package PK_99_PYR_RUN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "HCM"."PK_99_PYR_RUN" AS 

-- Author       : Gbenga Cruz 
-- Description  : Payroll Period Setups 
-- Date         : January 18, 2017 

     --- Period Opening
  
     PROCEDURE PC_99_PYR_RUN_OPN (p_pyr v_99_pyr_run%ROWTYPE, p_err_msg OUT v_99_ssu_log%ROWTYPE);
     
     --- Get next Payroll period operation
     FUNCTION FN_99_PYR_NXT_PRD RETURN VARCHAR2 ;
     
     --- Get Payroll period status
    FUNCTION FN_99_PYR_STA RETURN NUMBER;
    
    -- Get current Payroll period operation
    FUNCTION FN_99_PYR_CUR_PRD RETURN VARCHAR2;
     
END PK_99_PYR_RUN;

/
