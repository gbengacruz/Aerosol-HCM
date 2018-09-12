--------------------------------------------------------
--  DDL for View V_99_SSU_ACC_S
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_99_SSU_ACC_S" ("ROW_KEY", "NAME", "EMAIL", "MOBILE NO.", "IP ADDRESS", "COUNTRY", "SHORT NAME", "CITY") AS 
  SELECT 
  R_K  ROW_KEY,
  ACC_NM "NAME",
  ACC_EML "EMAIL",
  ACC_PHO "MOBILE NO.",
  IP_ADR "IP ADDRESS",
  ACC_CTY "COUNTRY",
  SHT_NM "SHORT NAME",
  ACC_CITY "CITY"
FROM V_99_SSU_ACC
;
