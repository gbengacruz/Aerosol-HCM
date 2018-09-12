--------------------------------------------------------
--  Constraints for Table T_99_PYR_RUN
--------------------------------------------------------

  ALTER TABLE "T_99_PYR_RUN" MODIFY ("R_K" NOT NULL ENABLE);
  ALTER TABLE "T_99_PYR_RUN" ADD CONSTRAINT "T_99_PYR_RUN_PK" PRIMARY KEY ("R_K")
  USING INDEX  ENABLE;
