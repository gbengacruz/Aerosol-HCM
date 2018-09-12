--------------------------------------------------------
--  DDL for Table T_99_SSU_REV
--------------------------------------------------------

  CREATE TABLE "HCM"."T_99_SSU_REV" 
   (	"R_K" NUMBER, 
	"UNT" VARCHAR2(30 BYTE), 
	"AMT" NUMBER, 
	"ROW_VSN" NUMBER, 
	"CRT_DT" TIMESTAMP (6) WITH LOCAL TIME ZONE, 
	"CRT_BY" VARCHAR2(255 BYTE), 
	"UPD_DT" TIMESTAMP (6) WITH LOCAL TIME ZONE, 
	"UPD_BY" VARCHAR2(255 BYTE), 
	"ACC_CD" RAW(32)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
