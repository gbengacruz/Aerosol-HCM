--------------------------------------------------------
--  DDL for View V_99_SSU_ACC
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_99_SSU_ACC" ("R_K", "ACC_CD", "ACC_NM", "NUM_USR", "EXP_DT", "HSH_CD", "IUS_YN", "ACC_EML", "ACC_PHO", "NUM_MON", "STA_DT", "IP_ADR", "ACC_CTY", "CRT_BY", "UPD_BY", "CRT_DT", "UPD_DT", "SHT_NM", "ACC_CITY") AS 
  SELECT R_K, 
  ACC_CD, 
  ACC_NM, 
  NUM_USR, 
  EXP_DT, 
  HSH_CD, 
  IUS_YN, 
  ACC_EML, 
  ACC_PHO, 
  NUM_MON, 
  STA_DT, 
  IP_ADR, 
  ACC_CTY, 
  CRT_BY, 
  UPD_BY, 
  CRT_DT, 
  UPD_DT, 
  SHT_NM, 
  ACC_CITY 
FROM T_99_SSU_ACC
;
