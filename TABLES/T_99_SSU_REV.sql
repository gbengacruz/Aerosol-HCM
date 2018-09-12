--------------------------------------------------------
--  DDL for Table T_99_SSU_REV
--------------------------------------------------------

  CREATE TABLE "T_99_SSU_REV" 
   (	"R_K" NUMBER, 
	"UNT" VARCHAR2(30), 
	"AMT" NUMBER, 
	"ROW_VSN" NUMBER, 
	"CRT_DT" TIMESTAMP (6) WITH LOCAL TIME ZONE, 
	"CRT_BY" VARCHAR2(255), 
	"UPD_DT" TIMESTAMP (6) WITH LOCAL TIME ZONE, 
	"UPD_BY" VARCHAR2(255), 
	"ACC_CD" RAW(32)
   ) ;
