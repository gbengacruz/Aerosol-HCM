--------------------------------------------------------
--  DDL for View V_99_SSU_PWD_PRF_YN
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_99_SSU_PWD_PRF_YN" ("V_CD", "SL", "CL", "NM", "SC") AS 
  SELECT V_CD ,  
 NVL(sum( decode(  PRF_CD, 'SL', IUS_YN, null ) ),0) SL , 
 NVL(sum( decode(  PRF_CD, 'CL', IUS_YN, null ) ),0) CL , 
 NVL(sum( decode(  PRF_CD, 'NM', IUS_YN, null ) ),0) NM , 
 NVL(sum( decode(  PRF_CD, 'SC', IUS_YN, null ) ),0) SC  
 FROM T_99_SSU_PWD_PRF 
 GROUP BY V_CD
;
