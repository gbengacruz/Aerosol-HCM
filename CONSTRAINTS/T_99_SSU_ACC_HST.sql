--------------------------------------------------------
--  Constraints for Table T_99_SSU_ACC_HST
--------------------------------------------------------

  ALTER TABLE "T_99_SSU_ACC_HST" MODIFY ("R_K" NOT NULL ENABLE);
  ALTER TABLE "T_99_SSU_ACC_HST" ADD CONSTRAINT "T_99_SSU_ACC_HST_PK" PRIMARY KEY ("R_K")
  USING INDEX  ENABLE;
