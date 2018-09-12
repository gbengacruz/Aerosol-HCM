--------------------------------------------------------
--  DDL for Table T_99_SSU_ACC
--------------------------------------------------------

  CREATE TABLE "T_99_SSU_ACC" 
   (	"R_K" NUMBER, 
	"ACC_CD" RAW(32), 
	"ACC_NM" VARCHAR2(128), 
	"NUM_USR" NUMBER, 
	"EXP_DT" DATE, 
	"HSH_CD" VARCHAR2(4000), 
	"ACC_EML" VARCHAR2(128), 
	"ACC_PHO" VARCHAR2(52), 
	"NUM_MON" VARCHAR2(20), 
	"STA_DT" DATE, 
	"IP_ADR" VARCHAR2(52), 
	"ACC_CTY" VARCHAR2(20), 
	"CRT_BY" VARCHAR2(52), 
	"UPD_BY" VARCHAR2(52), 
	"CRT_DT" TIMESTAMP (6) DEFAULT NULL, 
	"UPD_DT" TIMESTAMP (6), 
	"ROW_VSN" NUMBER, 
	"IUS_YN" VARCHAR2(1), 
	"SHT_NM" VARCHAR2(5), 
	"ACC_CITY" VARCHAR2(128)
   ) ;
