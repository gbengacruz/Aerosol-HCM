--------------------------------------------------------
--  DDL for Table T_20_HM_BRCH
--------------------------------------------------------

  CREATE TABLE "HCM"."T_20_HM_BRCH" 
   (	"R_K" NUMBER, 
	"BRCH_CODE" VARCHAR2(25 BYTE), 
	"BRCH_DESC" VARCHAR2(128 BYTE), 
	"ACC_CD" RAW(32), 
	"IUS_YN" NUMBER, 
	"CRT_BY" VARCHAR2(52 BYTE), 
	"CRT_DT" TIMESTAMP (6), 
	"UPD_BY" VARCHAR2(52 BYTE), 
	"UPD_DT" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
