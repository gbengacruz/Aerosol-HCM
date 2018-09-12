--------------------------------------------------------
--  DDL for Table T_99_SSU_HASH
--------------------------------------------------------

  CREATE TABLE "HCM"."T_99_SSU_HASH" 
   (	"R_K" NUMBER, 
	"HASH_CODE" VARCHAR2(52 BYTE), 
	"HASH_DESC" VARCHAR2(512 BYTE), 
	"HASH_KEY" VARCHAR2(20 BYTE), 
	"CRT_BY" VARCHAR2(512 BYTE), 
	"CRT_DT" DATE, 
	"UPD_BY" VARCHAR2(512 BYTE), 
	"UPD_DT" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
