--------------------------------------------------------
--  DDL for Package PKG_99_SSU_HASH
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "HCM"."PKG_99_SSU_HASH" AS 
-- Author       : Gbenga Cruz 
-- Description  : Cloud Account Management 
-- Date         : January 18, 2017 
  /* TODO enter package declarations (types, exceptions, methods etc) here */ 
  FUNCTION FN_99_SSU_HASH(p_hash VARCHAR2, p_key VARCHAR2) RETURN VARCHAR2 ;

END PKG_99_SSU_HASH;

/
