--------------------------------------------------------
--  Constraints for Table T_99_SSU_ACC_HST
--------------------------------------------------------

  ALTER TABLE "HCM"."T_99_SSU_ACC_HST" MODIFY ("R_K" NOT NULL ENABLE);
  ALTER TABLE "HCM"."T_99_SSU_ACC_HST" ADD CONSTRAINT "T_99_SSU_ACC_HST_PK" PRIMARY KEY ("R_K")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
