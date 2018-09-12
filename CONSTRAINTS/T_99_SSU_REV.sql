--------------------------------------------------------
--  Constraints for Table T_99_SSU_REV
--------------------------------------------------------

  ALTER TABLE "T_99_SSU_REV" MODIFY ("R_K" NOT NULL ENABLE);
  ALTER TABLE "T_99_SSU_REV" MODIFY ("UNT" NOT NULL ENABLE);
  ALTER TABLE "T_99_SSU_REV" ADD CONSTRAINT "T_99_SSU_REV_PK" PRIMARY KEY ("R_K")
  USING INDEX  ENABLE;
