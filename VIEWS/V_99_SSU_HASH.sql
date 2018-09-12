--------------------------------------------------------
--  DDL for View V_99_SSU_HASH
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_99_SSU_HASH" ("R_K", "HASH_CODE", "HASH_DESC", "HASH_KEY", "CRT_BY", "CRT_DT", "UPD_BY", "UPD_DT") AS 
  SELECT
    r_k,
    hash_code,
    hash_desc,
    hash_key,
    crt_by,
    crt_dt,
    upd_by,
    upd_dt
FROM
    t_99_ssu_hash
;
