--------------------------------------------------------
--  DDL for Table T_20_HM_EMP_TRAN
--------------------------------------------------------

  CREATE TABLE "T_20_HM_EMP_TRAN" 
   (	"R_K" NUMBER, 
	"TRAN_CD" NUMBER, 
	"TRAN_DESC" VARCHAR2(128), 
	"ACC_CD" RAW(20), 
	"APR_STA" NUMBER, 
	"APR_DT" DATE, 
	"CRT_BY" VARCHAR2(52), 
	"CRT_DT" TIMESTAMP (6), 
	"UPD_BY" VARCHAR2(52), 
	"UPD_DT" TIMESTAMP (6), 
	"RUN_CD" VARCHAR2(52), 
	"EMP_NO" VARCHAR2(128), 
	"PRC_YN" NUMBER, 
	"NEW_TRAN" NUMBER, 
	"OLD_TRAN" NUMBER, 
	"NEW_TRAN2" NUMBER, 
	"OLD_TRAN2" NUMBER, 
	"NEW_TRAN3" NUMBER, 
	"OLD_TRAN3" NUMBER, 
	"NEW_TRAN4" NUMBER, 
	"OLD_TRAN4" NUMBER, 
	"NEW_TRAN5" NUMBER, 
	"OLD_TRAN5" NUMBER, 
	"APR_BY" VARCHAR2(52)
   ) ;
