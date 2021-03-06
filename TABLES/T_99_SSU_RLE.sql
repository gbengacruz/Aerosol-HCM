--------------------------------------------------------
--  DDL for Table T_99_SSU_RLE
--------------------------------------------------------

  CREATE TABLE "T_99_SSU_RLE" 
   (	"R_K" NUMBER, 
	"ROLE_CD" VARCHAR2(30), 
	"ROLE_NM" VARCHAR2(255), 
	"ROW_VSN" NUMBER, 
	"CRT_DT" TIMESTAMP (6) WITH LOCAL TIME ZONE, 
	"CRT_BY" VARCHAR2(255), 
	"UPD_DT" TIMESTAMP (6) WITH LOCAL TIME ZONE, 
	"UPD_BY" VARCHAR2(255), 
	"ACC_CD" RAW(32)
   ) ;
