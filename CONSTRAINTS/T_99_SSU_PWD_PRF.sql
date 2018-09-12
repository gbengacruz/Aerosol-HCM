--------------------------------------------------------
--  Constraints for Table T_99_SSU_PWD_PRF
--------------------------------------------------------

  ALTER TABLE "HCM"."T_99_SSU_PWD_PRF" MODIFY ("R_K" NOT NULL ENABLE);
  ALTER TABLE "HCM"."T_99_SSU_PWD_PRF" MODIFY ("PRF_CD" NOT NULL ENABLE);
  ALTER TABLE "HCM"."T_99_SSU_PWD_PRF" MODIFY ("PRF_KEY" NOT NULL ENABLE);
  ALTER TABLE "HCM"."T_99_SSU_PWD_PRF" MODIFY ("PRF_DSC" NOT NULL ENABLE);
  ALTER TABLE "HCM"."T_99_SSU_PWD_PRF" ADD CONSTRAINT "T_99_SSU_PWD_PRF_CON" UNIQUE ("PRF_CD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HCM"."T_99_SSU_PWD_PRF" ADD CONSTRAINT "T_99_SSU_PWD_PRF_PK" PRIMARY KEY ("R_K")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
