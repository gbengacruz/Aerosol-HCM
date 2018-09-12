--------------------------------------------------------
--  DDL for Package PK_20_HM_EMP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "HCM"."PK_20_HM_EMP" AS 

-- Author       : Gbenga Cruz 
-- Description  : Cloud Employee Information
-- Date         : January 18, 2018 


  --Manage Employee Information
  PROCEDURE PC_20_HM_EMP (p_emp v_20_hm_emp%ROWTYPE, p_err_msg OUT v_99_ssu_log%ROWTYPE);

END PK_20_HM_EMP;

/
