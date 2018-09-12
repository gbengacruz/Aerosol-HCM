--------------------------------------------------------
--  Constraints for Table T_99_SSU_HASH
--------------------------------------------------------

  ALTER TABLE "T_99_SSU_HASH" MODIFY ("R_K" NOT NULL ENABLE);
  ALTER TABLE "T_99_SSU_HASH" ADD CONSTRAINT "T_99_SSU_HASH_PK" PRIMARY KEY ("R_K")
  USING INDEX  ENABLE;
