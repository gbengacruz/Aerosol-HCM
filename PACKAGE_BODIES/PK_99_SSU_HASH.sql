--------------------------------------------------------
--  DDL for Package Body PK_99_SSU_HASH
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "PK_99_SSU_HASH" AS
-- Author       : Gbenga Cruz 
-- Description  : Cloud Account Management 
-- Date         : January 18, 2017 
       
       -- Crypto Hash
       FUNCTION FN_99_SSU_HASH(p_hash VARCHAR2, p_key VARCHAR2) RETURN VARCHAR2 AS
       
         v_hash_resp CLOB;
         v_hash CLOB;
         v_key  NUMBER;
         
        BEGIN
          
            v_hash := p_hash;
            v_key  := p_key;
            v_hash_resp := rawtohex( dbms_crypto.hash( utl_raw.cast_to_raw(v_hash), v_key )) ;
            
            RETURN v_hash_resp;
       
        END FN_99_SSU_HASH;
       
        
END PK_99_SSU_HASH;

/
