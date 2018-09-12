--------------------------------------------------------
--  Constraints for Table T_99_SSU_SUB
--------------------------------------------------------

  ALTER TABLE "T_99_SSU_SUB" MODIFY ("R_K" NOT NULL ENABLE);
  ALTER TABLE "T_99_SSU_SUB" ADD CONSTRAINT "T_99_SSU_SUB_PK" PRIMARY KEY ("R_K")
  USING INDEX  ENABLE;
